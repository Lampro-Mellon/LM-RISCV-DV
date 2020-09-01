.include "user_define.h"
.globl _start
.section .text
_start:
                  li x0, 0x80000000
                  li x1, 0xfd5c0736
                  li x2, 0xf8689316
                  li x3, 0x0
                  li x4, 0x9621c82c
                  li x5, 0x80000000
                  li x6, 0xff949614
                  li x7, 0xf6560661
                  li x8, 0x0
                  li x9, 0xf7d4d13e
                  li x10, 0xa8720d72
                  li x11, 0xa4c13f4d
                  li x12, 0x80000000
                  li x13, 0xf3a1f901
                  li x14, 0x790595fc
                  li x15, 0xd
                  li x16, 0x0
                  li x17, 0x0
                  li x18, 0x0
                  li x19, 0x98cb0e9f
                  li x20, 0xb
                  li x21, 0x80000000
                  li x22, 0x916bf104
                  li x23, 0x415d7268
                  li x24, 0x8
                  li x25, 0x9a25844b
                  li x26, 0x0
                  li x27, 0xa8d09dce
                  li x28, 0xf8ec6bd9
                  li x29, 0xe305fe94
                  li x30, 0x8ddb0080
                  li x31, 0x4d0a330f
                  li x20, 0x40001104
                  csrw misa, x20
kernel_sp:        
                  la x24, _kernel_stack_end

trap_vec_init:    
                  la x20, mtvec_handler
                  ori x20, x20, 1
                  csrw 0x305, x20 # MTVEC

mepc_setup:       
                  la x20, _init
                  csrw mepc, x20
                  j init_machine_mode

_init:            
                  la x2, _user_stack_end
_main:            la         s6, region_3+137 #start riscv_hazard_instr_stream_2
                  fence.i
                  sltiu      gp, ra, 944
                  sltu       tp, s1, tp
                  csrrc      a3, 0x340, gp
                  lb         a3, 19(s6)
                  mulhsu     t5, s1, s1
                  sh         tp, 7(s6)
                  c.nop
                  mulhu      s1, a3, a3
                  csrrwi     gp, 0x340, 19
                  lbu        ra, -79(s6)
                  lb         s1, 284(s6)
                  lb         s1, -112(s6)
                  lh         tp, 233(s6)
                  lb         s1, 278(s6)
                  c.and      s1, s1
                  lb         gp, 170(s6)
                  auipc      t5, 832699
                  xor        a3, tp, ra
                  xori       a3, ra, -536
                  lbu        gp, 90(s6)
                  sb         tp, -23(s6)
                  lbu        tp, 310(s6)
                  c.add      a3, tp
                  lbu        tp, 89(s6)
                  sb         t5, 162(s6)
                  addi       t5, ra, -981
                  mulh       t5, a3, t5
                  c.srli     s1, 29
                  slti       tp, ra, -743
                  c.slli     gp, 14
                  sb         s1, 276(s6)
                  and        s1, gp, a3
                  lh         tp, 199(s6) #end riscv_hazard_instr_stream_2
                  la         s1, region_4+355 #start load_store_instr_stream_2
                  la         a6, region_0+2556 #start load_store_instr_stream_3
                  la         a0, region_3+338 #start load_store_instr_stream_1
                  lbu        s10, -477(a6)
                  la         gp, region_1+8610 #start load_store_instr_stream_0
                  lb         s3, -92(s1)
                  lb         t4, -72(s1)
                  sh         s8, -133(s1)
                  lbu        a5, 5(a0)
                  lbu        a3, 242(s1)
                  lbu        a1, 375(a6)
                  lbu        s9, 808(gp)
                  sh         t1, -1602(a6)
                  sb         tp, 88(s1)
                  sh         s11, 4(a6)
                  sb         t6, 398(a6)
                  sb         a3, -1105(gp)
                  sb         s8, 172(s1)
                  sb         s1, 437(a6)
                  lhu        s2, 183(s1)
                  lb         s3, 9(a0)
                  sb         s6, 1577(gp)
                  sb         s5, -67(s1)
                  sb         s6, -2(s1)
                  sb         t1, -601(a6)
                  lb         s9, -99(s1) #end load_store_instr_stream_2
                  sb         a6, -5(a0)
                  lh         a4, -212(a6)
                  lb         s0, -1307(gp)
                  lh         s4, -1658(a6) #end load_store_instr_stream_3
                  sh         t5, 6(a0)
                  sw         t1, -6(a0) #end load_store_instr_stream_1
                  lbu        s2, -656(gp) #end load_store_instr_stream_0
main_7:           jal        ra, 6f
0:                c.j        22f
1:                jal        gp, 5f
2:                c.j        25f
3:                c.jal      24f
4:                jal        a2, 14f
5:                jal        ra, 2b
6:                c.jal      11f
7:                jal        ra, 15f
8:                c.jal      27f
9:                jal        t1, 17f
10:               c.j        19f
11:               c.jal      13f
12:               c.j        28f
13:               c.j        16f
14:               jal        a1, 20f
15:               c.j        0b
16:               c.j        1b
17:               c.j        23f
18:               jal        ra, 10b
19:               jal        s6, 29f
20:               c.jal      26f
21:               jal        t1, 8b
22:               jal        ra, 4b
23:               jal        tp, 18b
24:               jal        ra, 7b
25:               c.j        21b
26:               jal        t1, 12b
27:               jal        ra, 3b
28:               jal        ra, 9b
29:               mulh       s0, t4, s7
                  la         t0, region_0+3467 #start riscv_load_store_rand_instr_stream_3
                  slt        s7, s8, t5
                  nop
                  lbu        a5, -166(t0)
                  sb         s2, -106(t0)
                  sw         s11, 101(t0)
                  sb         t4, 15(t0)
                  sw         a6, -255(t0)
                  lbu        a5, 132(t0)
                  addi       a7, a4, 42
                  lb         t5, 176(t0)
                  lb         ra, -46(t0)
                  csrrsi     tp, 0x340, 21
                  add        a4, s5, a6
                  mulh       gp, a3, a6
                  c.addi     t1, 28
                  lb         s2, 210(t0)
                  lui        s5, 894946
                  slti       s1, zero, -143
                  lui        a7, 734581
                  lbu        s11, 152(t0)
                  c.mv       gp, t4
                  lw         gp, -47(t0)
                  lb         a4, -242(t0)
                  sb         t0, 30(t0)
                  sh         sp, 89(t0)
                  sb         t4, -230(t0)
                  slt        s3, a7, t2
                  lh         s5, 49(t0)
                  c.lui      t6, 25
                  sll        a3, s7, a6
                  sb         s4, -23(t0)
                  sb         s11, 224(t0)
                  c.xor      a5, a2
                  c.addi     s7, -1
                  fence
                  xor        s6, t6, a5
                  c.add      t6, t3
                  lbu        t1, 47(t0)
                  sw         s1, 101(t0)
                  mulhsu     t6, t3, s8
                  lb         tp, 152(t0)
                  lh         t2, 233(t0)
                  andi       s2, a0, -751
                  lbu        tp, -108(t0)
                  lbu        s0, 212(t0)
                  sh         a1, -19(t0)
                  rem        a5, s1, a6
                  lb         s1, -58(t0)
                  csrrc      a5, 0x340, a6
                  c.mv       s5, s6
                  sb         t2, -50(t0)
                  sw         s0, 137(t0)
                  c.and      a5, s1
                  c.andi     a2, -1
                  csrrci     s4, 0x340, 9
                  lb         s7, 12(t0)
                  lhu        s2, 35(t0) #end riscv_load_store_rand_instr_stream_3
                  la         s11, region_1+3355 #start riscv_hazard_instr_stream_3
                  csrrsi     ra, 0x340, 17
                  slli       t1, s0, 7
                  mulhsu     t4, s10, tp
                  or         s10, s10, t1
                  sll        t1, tp, tp
                  csrrwi     s10, 0x340, 9
                  srai       s10, tp, 2
                  lb         t1, -29(s11)
                  sw         s0, 125(s11)
                  sb         t4, -207(s11)
                  or         s10, s10, ra
                  lhu        tp, -145(s11)
                  sw         t1, 205(s11)
                  c.srai     s0, 24
                  sh         tp, -193(s11)
                  fence.i
                  c.sub      s0, s0
                  lbu        t1, 224(s11)
                  mulhsu     s0, ra, s10
                  srai       s0, t1, 4
                  slt        s10, t4, ra
                  or         s0, t4, s0
                  c.add      t1, ra
                  lhu        tp, -105(s11)
                  lh         t1, 243(s11)
                  lbu        tp, 81(s11)
                  lw         ra, -223(s11)
                  lbu        t1, -250(s11)
                  fence.i
                  lbu        s10, -160(s11)
                  srli       s10, t4, 30
                  csrrci     tp, 0x340, 24
                  lbu        t1, 244(s11)
                  and        tp, s0, tp
                  lbu        s10, 143(s11)
                  mulhsu     tp, t1, t4
                  xori       t4, ra, -601
                  lh         s0, -19(s11)
                  lb         ra, -41(s11)
                  lh         ra, 45(s11)
                  lbu        t1, 212(s11) #end riscv_hazard_instr_stream_3
                  addi       t0, zero, -7 #init loop 1 counter
                  rem        s10, zero, s6
                  addi       s5, zero, 15 #init loop 1 limit
                  ori        t4, a5, 14
                  fence
main_26_1_t:      nop
                  sub        t2, s10, s0
                  addi       t0, t0, 2 #update loop 1 counter
                  remu       s9, ra, a4
                  mulhu      zero, s10, tp
                  addi       t1, zero, -4 #init loop 0 counter
                  addi       s0, zero, 13 #init loop 0 limit
                  ori        s11, zero, -351
                  c.mv       a1, a1
                  div        ra, s1, zero
                  c.andi     a5, 13
                  mulhu      a2, zero, sp
                  csrrs      a7, 0x340, s7
                  c.li       s7, 10
main_26_0_t:      or         s1, a7, a3
                  mulhsu     ra, a0, sp
                  addi       t1, t1, 10 #update loop 0 counter
                  bltu       t1, s0, main_26_0_t #branch for loop 0
                  add        a5, s6, s8
                  rem        a6, t6, t6
                  beq        t0, s5, main_26_1_t #branch for loop 1
                  sltu       t4, s2, a2
                  la         a0, region_1+11954 #start riscv_load_store_rand_instr_stream_5
                  sb         a5, 28(a0)
                  lb         s2, 43(a0)
                  lh         t1, 4(a0)
                  lhu        t2, -54(a0)
                  rem        a2, a7, s7
                  sw         t6, -22(a0)
                  addi       s6, a5, 389
                  lb         s11, -49(a0)
                  slli       zero, zero, 30
                  csrrsi     s1, 0x340, 14
                  lhu        s9, 0(a0)
                  lb         s9, 35(a0)
                  c.srli     a1, 20
                  srli       a3, t1, 28
                  lbu        t4, 54(a0)
                  lb         s11, -7(a0)
                  sb         a6, -25(a0)
                  lb         a5, 25(a0)
                  mulh       t6, s0, s10
                  sb         t1, -40(a0)
                  sltu       s7, s1, s3
                  sra        a4, a4, s10
                  csrrsi     t1, 0x340, 17
                  c.add      s6, s9
                  c.addi     t0, 22
                  lbu        s7, 38(a0)
                  div        s5, a6, t5
                  lh         s9, 28(a0)
                  lbu        s7, 45(a0)
                  lhu        s7, -14(a0)
                  lb         tp, 39(a0) #end riscv_load_store_rand_instr_stream_5
                  la         gp, region_3+486 #start riscv_hazard_instr_stream_1
                  c.li       s6, 25
                  c.addi     s9, -1
                  sb         a7, -145(gp)
                  lb         a7, -147(gp)
                  sw         a5, -46(gp)
                  lb         s6, -139(gp)
                  lb         ra, 9(gp)
                  sw         s0, -230(gp)
                  csrrs      s9, 0x340, s6
                  div        a5, a7, ra
                  c.andi     s0, -1
                  c.nop
                  remu       ra, ra, s6
                  sw         a7, -130(gp)
                  slt        s9, s6, s0
                  fence.i
                  c.and      a5, s0
                  lbu        s0, -177(gp)
                  add        s9, ra, s0
                  lbu        s6, -215(gp)
                  c.or       a5, a5
                  lb         s6, -182(gp)
                  sb         s6, -60(gp)
                  fence.i
                  sb         ra, 7(gp)
                  lbu        s9, -53(gp)
                  slt        s0, a5, s9
                  rem        s9, a5, a7
                  sh         s6, -166(gp)
                  ori        ra, ra, -638
                  div        s9, s0, ra
                  lhu        ra, -164(gp)
                  csrrwi     s9, 0x340, 2
                  sw         s6, -66(gp)
                  c.sub      a5, a5
                  lb         ra, -183(gp)
                  slt        ra, s6, ra
                  sb         s0, -205(gp)
                  c.slli     ra, 28
                  srli       s6, s6, 10
                  xori       a7, s0, -763
                  csrrsi     ra, 0x340, 11
                  auipc      ra, 658174
                  c.nop
                  mulhsu     s9, s9, s9
                  lui        a7, 532026
                  lb         a5, -43(gp)
                  lb         s6, -167(gp)
                  fence.i
                  sb         ra, -147(gp)
                  lb         s9, -113(gp)
                  mul        s6, a7, s0
                  sh         a5, -42(gp) #end riscv_hazard_instr_stream_1
                  la         a2, region_0+3635 #start riscv_load_store_rand_instr_stream_2
                  lbu        s0, 6(a2)
                  sh         s10, 15(a2)
                  sh         s3, -9(a2)
                  ori        a6, t0, -1009
                  sb         s4, 14(a2)
                  sb         s1, 10(a2)
                  c.lui      a6, 30
                  sb         zero, -14(a2)
                  sb         s8, 9(a2)
                  divu       t2, s10, t5
                  sh         t0, 5(a2)
                  lbu        a0, -13(a2)
                  sw         s1, 5(a2)
                  lbu        s7, 7(a2)
                  andi       s0, t6, 18
                  srl        a5, a6, s10
                  lb         s1, 3(a2)
                  lh         s1, 5(a2)
                  mulhsu     a0, t2, s4
                  csrrc      s7, 0x340, s3
                  lbu        a5, -5(a2)
                  lbu        s3, 16(a2)
                  c.slli     s0, 3
                  or         t4, t3, s7
                  lb         a7, 16(a2)
                  lhu        s1, -13(a2)
                  addi       s9, a6, -494
                  addi       t6, sp, 326
                  sb         s2, -12(a2)
                  lh         t5, -9(a2)
                  lh         ra, 7(a2)
                  lhu        a7, 13(a2)
                  lh         s9, 1(a2)
                  csrrwi     a3, 0x340, 16
                  lhu        tp, 9(a2)
                  lhu        s9, 11(a2)
                  lbu        gp, -5(a2)
                  lbu        s3, -12(a2)
                  c.addi     ra, 2
                  csrrw      zero, 0x340, s1
                  lb         ra, -9(a2)
                  lbu        s7, -6(a2)
                  lbu        s3, -16(a2) #end riscv_load_store_rand_instr_stream_2
main_8:           jal        ra, 15f
0:                c.j        8f
1:                jal        s1, 14f
2:                jal        ra, 5f
3:                c.jal      6f
4:                c.j        3b
5:                c.j        10f
6:                c.jal      18f
7:                jal        ra, 12f
8:                c.jal      1b
9:                c.jal      0b
10:               jal        t1, 7b
11:               c.j        4b
12:               jal        ra, 16f
13:               jal        s7, 9b
14:               c.jal      11b
15:               c.j        2b
16:               c.j        13b
17:               jal        t1, 19f
18:               jal        t1, 17b
19:               c.j        20f
20:               mulh       a0, a5, a1
main_11:          jal        ra, 2f
0:                c.j        7f
1:                c.jal      23f
2:                c.j        15f
3:                c.j        5f
4:                c.jal      10f
5:                c.jal      16f
6:                c.jal      22f
7:                jal        t1, 1b
8:                c.jal      14f
9:                c.j        6b
10:               c.jal      21f
11:               c.j        13f
12:               c.j        26f
13:               c.j        0b
14:               c.jal      19f
15:               jal        ra, 9b
16:               c.j        17f
17:               jal        t5, 8b
18:               c.j        12b
19:               c.j        18b
20:               jal        gp, 11b
21:               jal        t1, 20b
22:               c.jal      24f
23:               jal        t1, 25f
24:               c.j        4b
25:               c.j        3b
26:               rem        a6, tp, s6
                  la         a3, region_2+7656 #start load_store_instr_stream_3
                  lb         zero, -209(a3)
                  sb         a0, 239(a3)
                  la         s0, region_2+3243 #start load_store_instr_stream_1
                  la         t1, region_2+6535 #start load_store_instr_stream_2
                  sb         s11, 1232(t1)
                  la         a2, region_2+2676 #start load_store_instr_stream_0
                  lbu        s7, 121(a3)
                  lh         a6, -11(s0)
                  sh         s8, -106(a3)
                  sb         s4, -14(s0)
                  lbu        a0, 79(a3)
                  lb         s9, -1094(t1)
                  lh         s3, 74(a2)
                  lb         ra, -44(s0)
                  lbu        s3, -68(a2)
                  lb         ra, 96(a3)
                  lh         a4, 224(a2)
                  lh         tp, -1767(t1)
                  lw         a5, -979(t1)
                  lbu        t2, -1879(t1)
                  sw         t6, -15(s0)
                  lb         gp, -210(a2)
                  lh         tp, 200(a2)
                  lb         s1, 173(a3)
                  lbu        tp, 53(s0) #end load_store_instr_stream_1
                  sb         s10, -63(a3)
                  lbu        s1, -1769(t1)
                  lbu        a7, -192(a3)
                  lbu        s5, 1100(t1)
                  sh         s7, -1521(t1)
                  lh         t0, 222(a3) #end load_store_instr_stream_3
                  lbu        s5, -1988(t1) #end load_store_instr_stream_2
                  lhu        s4, 146(a2) #end load_store_instr_stream_0
                  la         a3, region_3+295 #start load_store_instr_stream_0
                  la         a2, region_0+1247 #start load_store_instr_stream_1
                  sh         t5, 1(a2)
                  lbu        a1, -60(a3)
                  sb         a5, -2(a2)
                  lh         t5, -231(a3)
                  lbu        s1, -14(a2)
                  lb         s6, -238(a3)
                  lbu        a0, 0(a2)
                  lh         s7, 89(a3)
                  lbu        s10, -4(a2)
                  lb         a7, -7(a2) #end load_store_instr_stream_1
                  sb         s10, 110(a3) #end load_store_instr_stream_0
                  la         t5, region_3+454 #start riscv_load_store_rand_instr_stream_0
                  csrrw      s5, 0x340, s6
                  or         t1, s0, s1
                  srai       a3, s6, 29
                  sb         s8, -222(t5)
                  fence
                  lbu        s3, -64(t5)
                  csrrc      tp, 0x340, a2
                  mulhsu     ra, s0, t2
                  csrrs      a2, 0x340, s0
                  sb         sp, -189(t5)
                  csrrw      a5, 0x340, s10
                  lb         t0, -77(t5)
                  csrrci     s7, 0x340, 28
                  fence.i
                  mulhu      s9, zero, a0
                  lhu        t0, -92(t5)
                  slti       t6, a0, -1006
                  c.sub      s0, a2
                  divu       s5, a3, a6
                  lbu        a6, -137(t5)
                  mulhu      ra, s3, s7
                  sh         a1, -236(t5)
                  sub        t1, s4, a0
                  xori       t2, a1, -362
                  c.add      a6, a3
                  mulhsu     a6, s3, ra
                  csrrc      t4, 0x340, a7
                  fence
                  or         s6, t4, s8
                  lui        a2, 842229
                  remu       s3, a2, s5
                  addi       s3, s0, 830
                  or         a0, s3, s2
                  sb         t6, -57(t5)
                  c.mv       t0, s8
                  sra        s6, a3, t5
                  c.addi     a6, 20
                  lbu        t0, -47(t5)
                  lbu        a5, -245(t5) #end riscv_load_store_rand_instr_stream_0
                  addi       s11, zero, 5 #init loop 0 counter
                  or         a7, gp, gp
                  lui        a4, 769379
                  csrrci     t1, 0x340, 2
                  sra        t5, t4, s8
                  addi       t0, zero, 17 #init loop 0 limit
                  srl        s3, t2, s5
                  csrrs      t6, 0x340, a1
                  div        s0, a3, a0
main_25_0_t:      c.mv       s7, s1
                  addi       s11, s11, 5 #update loop 0 counter
                  slt        t1, zero, a2
                  sltu       a6, s8, gp
                  mul        s6, a4, a3
                  csrrw      t6, 0x340, s9
                  rem        t5, sp, t5
                  sll        a3, a5, t0
                  csrrwi     ra, 0x340, 13
                  csrrci     s0, 0x340, 13
                  srai       a2, t2, 28
                  nop
                  bltu       s11, t0, main_25_0_t #branch for loop 0
                  c.andi     a1, 24
                  la         s4, region_2+1371 #start riscv_hazard_instr_stream_5
                  c.andi     a5, -1
                  lbu        s3, 6(s4)
                  lb         a7, -32(s4)
                  sltu       s2, s2, s3
                  lhu        a7, 41(s4)
                  lhu        a7, 57(s4)
                  divu       tp, s3, a7
                  addi       tp, a5, -776
                  div        a7, s0, s3
                  lw         tp, 37(s4)
                  sh         a5, -23(s4)
                  ori        a5, s3, -148
                  sw         tp, 9(s4)
                  c.nop
                  lb         s3, 8(s4)
                  lhu        tp, 5(s4)
                  c.add      s0, s3
                  lbu        s3, 6(s4)
                  slti       s0, s3, -289
                  xori       a5, tp, -732
                  c.or       a5, a5
                  sll        tp, tp, tp
                  andi       a5, tp, -614
                  sltu       s0, s0, tp
                  c.srli     s0, 29
                  lb         a7, 56(s4)
                  ori        s0, s2, -755
                  c.slli     a7, 8
                  srai       tp, a5, 14
                  lui        a5, 95675
                  sll        tp, s3, a7
                  or         s3, s2, s3
                  c.slli     tp, 10
                  mulhsu     s2, tp, s2
                  srli       s0, a5, 15
                  c.and      s0, a5
                  lbu        a5, -17(s4)
                  c.lui      s0, 13
                  mul        tp, a7, a7
                  lh         a7, 37(s4) #end riscv_hazard_instr_stream_5
                  la         a1, region_1+13864 #start riscv_hazard_instr_stream_4
                  csrrc      t6, 0x340, ra
                  addi       t6, a7, -317
                  c.addi     s4, -1
                  mul        s4, s4, ra
                  mulhu      ra, ra, a5
                  sb         a7, 3(a1)
                  lb         t2, -9(a1)
                  c.xor      a5, a5
                  lbu        ra, 0(a1)
                  lb         a7, 7(a1)
                  sub        a7, t6, t6
                  andi       t2, a7, 466
                  sh         t6, 10(a1)
                  add        a7, s4, s4
                  c.mv       t6, t6
                  lbu        t2, -13(a1)
                  lb         t6, -12(a1)
                  c.nop
                  sra        a5, t6, a5
                  csrrs      a7, 0x340, a7
                  lbu        s4, 7(a1)
                  c.or       a5, a5
                  c.andi     a5, -1
                  add        ra, ra, t6
                  lb         a5, 6(a1)
                  c.slli     t6, 21
                  lb         s4, -1(a1)
                  c.srai     a5, 4
                  mul        t2, a7, ra
                  ori        a5, t6, 295
                  sltu       a7, a7, s4
                  c.sub      a5, a5
                  lbu        ra, -6(a1)
                  sb         a7, -16(a1) #end riscv_hazard_instr_stream_4
                  addi       tp, zero, 5 #init loop 1 counter
                  csrrsi     s3, 0x340, 21
                  c.srai     a5, 26
                  addi       s4, zero, 8 #init loop 1 limit
main_29_1_t:      c.lui      t1, 30
                  srai       t5, ra, 24
                  addi       tp, tp, 6 #update loop 1 counter
                  add        t4, a2, t5
                  addi       s1, zero, 10 #init loop 0 counter
                  c.slli     s7, 30
                  remu       t4, s11, tp
                  addi       a7, s4, -373
                  addi       zero, zero, 0 #init loop 0 limit
main_29_0_t:      c.nop
                  addi       s1, s1, -10 #update loop 0 counter
                  c.slli     a5, 7
                  div        t0, t6, ra
                  div        s6, a1, t0
                  add        a0, zero, s10
                  ori        t0, s0, -837
                  csrrci     s0, 0x340, 2
                  c.bnez     s1, main_29_0_t #branch for loop 0
                  bltu       tp, s4, main_29_1_t #branch for loop 1
                  csrrsi     gp, 0x340, 4
                  la         a4, region_3+475 #start load_store_instr_stream_2
                  la         s11, region_4+2368 #start load_store_instr_stream_1
                  sw         s4, -7(a4)
                  la         s1, region_2+1022 #start load_store_instr_stream_0
                  lhu        t6, -42(s11)
                  la         s4, region_1+4263 #start load_store_instr_stream_3
                  sb         s6, 1652(s4)
                  lhu        a3, 3(a4)
                  lb         a7, 1644(s4)
                  sb         tp, 230(s4)
                  sh         s8, 32(s11)
                  lbu        zero, 1657(s4)
                  sb         a0, 5(s11)
                  sb         ra, -31(s11)
                  lb         a5, 62(s1)
                  sb         s0, -37(s11)
                  lw         tp, -1415(s4)
                  lb         a2, 13(s1)
                  sh         s7, 24(s1)
                  lbu        a7, -45(s11)
                  sb         a5, -19(s11)
                  lh         a1, -14(s1)
                  sw         s6, 13(a4)
                  lb         a3, -12(a4)
                  sb         s2, -61(s1)
                  lw         a7, -7(a4)
                  sb         a2, -2028(s4)
                  lh         zero, -11(a4)
                  lb         ra, 43(s11)
                  sb         s5, -1021(s4)
                  sb         a0, 57(s1)
                  lbu        a2, 27(s11)
                  lbu        a1, 27(s1)
                  lbu        s10, 11(a4) #end load_store_instr_stream_2
                  lbu        t1, -62(s11) #end load_store_instr_stream_1
                  sh         a2, -1919(s4) #end load_store_instr_stream_3
                  lh         t1, -64(s1) #end load_store_instr_stream_0
                  la         tp, region_2+1282 #start load_store_instr_stream_4
                  la         s9, region_4+3934 #start load_store_instr_stream_2
                  la         s2, region_0+2777 #start load_store_instr_stream_0
                  lb         a5, 11(s9)
                  la         s11, region_1+10511 #start load_store_instr_stream_3
                  la         s7, region_3+175 #start load_store_instr_stream_1
                  sb         a2, -10(s2)
                  lbu        s5, -16(s11)
                  lbu        t2, -44(s9)
                  sb         a0, -18(s2)
                  sb         a5, 0(s11)
                  sb         t1, 14(s7)
                  lhu        t2, 2(tp)
                  lb         s0, -1(tp)
                  lb         a3, 15(s11)
                  sb         sp, -41(s9)
                  lbu        t5, -16(s7)
                  sh         a0, -11(s11)
                  lb         t0, 7(tp)
                  lh         a5, -15(s11)
                  lbu        t0, 0(tp)
                  lbu        s5, 4(s2)
                  lb         s10, -14(s7)
                  lb         s4, 16(tp)
                  lh         a2, -58(s9)
                  lbu        ra, 16(s7)
                  lbu        s4, -27(s2)
                  lh         s10, 16(tp)
                  lbu        t4, 16(s7)
                  lbu        s3, -15(tp)
                  lb         zero, 23(s9) #end load_store_instr_stream_2
                  lh         zero, -1(s11)
                  sb         t4, 16(s2)
                  sb         a5, -12(s7) #end load_store_instr_stream_1
                  sb         s8, -6(s11) #end load_store_instr_stream_3
                  lhu        a4, 17(s2)
                  lb         t4, -5(tp) #end load_store_instr_stream_4
                  lb         s1, -16(s2) #end load_store_instr_stream_0
main_9:           jal        ra, 8f
0:                c.jal      11f
1:                c.jal      0b
2:                c.j        9f
3:                jal        t0, 6f
4:                jal        t0, 2b
5:                c.jal      10f
6:                c.j        5b
7:                c.jal      1b
8:                c.j        3b
9:                c.jal      7b
10:               c.j        4b
11:               c.jal      12f
12:               div        s4, t3, s9
                  addi       t6, zero, 9 #init loop 0 counter
                  xori       s1, s9, 831
                  sub        t4, zero, a1
                  addi       gp, zero, -11 #init loop 0 limit
                  srli       s6, s6, 24
                  c.lui      s5, 26
                  fence.i
                  c.or       s1, a1
main_24_0_t:      mul        a0, a7, a4
                  c.srli     a3, 24
                  sra        s2, a0, gp
                  mulhu      a5, t3, ra
                  slti       a3, t2, 440
                  srl        zero, zero, a2
                  c.mv       t4, t0
                  csrrsi     a7, 0x340, 18
                  auipc      a2, 112646
                  sll        s0, a3, ra
                  csrrc      s6, 0x340, t4
                  fence.i
                  slti       tp, s10, 206
                  addi       t6, t6, -10 #update loop 0 counter
                  and        ra, s6, s7
                  and        a5, s8, s11
                  bge        t6, gp, main_24_0_t #branch for loop 0
                  csrrsi     ra, 0x340, 5
                  la         a4, region_4+234 #start load_store_instr_stream_3
                  lbu        s5, -59(a4)
                  sb         t3, -55(a4)
                  la         gp, region_4+95 #start load_store_instr_stream_0
                  la         ra, region_4+806 #start load_store_instr_stream_1
                  lbu        a2, 62(a4)
                  lb         tp, 56(gp)
                  lb         a0, 59(a4)
                  lb         a6, 239(gp)
                  lh         s2, -6(ra)
                  lw         a2, 38(a4)
                  lb         t6, 5(ra)
                  sb         t4, -9(ra)
                  sb         s5, -59(a4)
                  lhu        t5, 239(gp)
                  la         a1, region_4+920 #start load_store_instr_stream_2
                  sb         zero, -14(ra)
                  lb         s4, -134(a1)
                  lw         t6, -2(ra)
                  lbu        t2, -58(gp)
                  lh         a5, 58(a4)
                  sb         a4, 11(ra)
                  lbu        t0, -185(a1)
                  lhu        s3, 27(gp)
                  sb         gp, -23(a4)
                  lb         a0, -167(a1)
                  lb         s9, 120(a1)
                  lhu        s6, -4(ra)
                  sb         s5, -59(a1) #end load_store_instr_stream_2
                  lbu        s1, -1(ra) #end load_store_instr_stream_1
                  lbu        s11, 56(a4) #end load_store_instr_stream_3
                  lh         t4, 191(gp) #end load_store_instr_stream_0
                  la         s7, region_4+371 #start load_store_instr_stream_2
                  la         s9, region_0+3110 #start load_store_instr_stream_4
                  la         t2, region_2+7245 #start load_store_instr_stream_3
                  sh         t1, 151(s7)
                  lb         s10, -1969(s9)
                  la         t1, region_1+3479 #start load_store_instr_stream_1
                  sw         t2, -110(s9)
                  lbu        a2, 1893(t1)
                  sb         t5, 1848(t1)
                  sb         s9, -1704(s9)
                  lw         zero, -33(t2)
                  la         t6, region_3+261 #start load_store_instr_stream_0
                  lb         a7, 387(s9)
                  sh         s7, 227(t2)
                  lbu        s2, 794(s9)
                  sh         s10, -1817(t1)
                  lw         a6, -1882(s9)
                  lbu        ra, -267(s9)
                  sh         t5, 13(t6)
                  sb         zero, 743(t1)
                  sh         a4, 1749(s7)
                  lb         gp, -178(t2)
                  sh         t6, 69(t2)
                  lbu        a6, 8(t6)
                  sb         a7, 346(t1)
                  lhu        a5, -700(s9)
                  lb         gp, -4(t6)
                  lbu        s5, -1068(t1)
                  lb         s5, 874(t1)
                  lbu        s10, -6(t6)
                  lb         s10, 896(s7)
                  lbu        a2, 296(s7)
                  lhu        a4, -1739(t1)
                  sh         a3, -1384(s9)
                  lhu        a3, -243(t2) #end load_store_instr_stream_3
                  lw         a4, -1578(s9) #end load_store_instr_stream_4
                  lb         s10, -1426(t1) #end load_store_instr_stream_1
                  sh         sp, 1797(s7) #end load_store_instr_stream_2
                  sb         tp, 15(t6) #end load_store_instr_stream_0
                  la         t1, region_0+1440 #start load_store_instr_stream_2
                  la         gp, region_4+920 #start load_store_instr_stream_3
                  la         s3, region_1+7848 #start load_store_instr_stream_1
                  la         t5, region_2+3997 #start load_store_instr_stream_0
                  sb         s8, 247(gp)
                  lbu        a1, 3(t1)
                  sb         a1, -36(t1)
                  lbu        a6, 47(s3)
                  lb         s2, -163(s3)
                  sb         a7, 1992(t5)
                  lw         a5, -120(gp)
                  sb         t2, 83(gp)
                  sb         a4, -39(s3)
                  lhu        s9, 419(t5)
                  sb         t6, -65(s3)
                  lb         a0, 13(t1)
                  sb         s1, 669(t5)
                  lbu        a6, 79(gp)
                  lbu        s11, 46(t1)
                  sb         s2, -39(t1)
                  sh         sp, -695(t5)
                  lb         s4, -43(t1)
                  lb         s2, 25(t1)
                  lbu        s2, 115(gp)
                  lh         s4, -8(t1)
                  sh         t6, 222(s3) #end load_store_instr_stream_1
                  lbu        s5, 61(t1)
                  lbu        t0, -42(t1) #end load_store_instr_stream_2
                  lb         a5, -1070(t5)
                  lb         s10, -106(gp)
                  sh         a1, 208(gp)
                  sb         t1, 47(gp) #end load_store_instr_stream_3
                  sb         a5, -1686(t5) #end load_store_instr_stream_0
main_6:           jal        ra, 5f
0:                jal        t1, 12f
1:                c.j        2f
2:                jal        ra, 4f
3:                c.j        13f
4:                jal        t1, 0b
5:                c.jal      7f
6:                c.jal      1b
7:                jal        ra, 6b
8:                c.j        9f
9:                c.j        10f
10:               c.j        3b
11:               c.jal      8b
12:               c.jal      11b
13:               nop
main_10:          jal        ra, 0f
0:                jal        t1, 16f
1:                c.jal      8f
2:                c.jal      11f
3:                c.jal      12f
4:                c.j        1b
5:                c.j        4b
6:                c.j        15f
7:                c.j        13f
8:                c.j        3b
9:                jal        t1, 17f
10:               c.jal      9b
11:               c.j        7b
12:               c.jal      6b
13:               c.j        10b
14:               jal        ra, 2b
15:               jal        gp, 14b
16:               jal        ra, 5b
17:               csrrc      a4, 0x340, t0
                  la         s10, region_3+239 #start riscv_load_store_rand_instr_stream_1
                  c.srli     a2, 23
                  sb         s6, -29(s10)
                  sh         t3, 63(s10)
                  c.lui      t0, 22
                  lh         t0, -9(s10)
                  sh         s3, -57(s10)
                  lbu        s3, 20(s10)
                  csrrw      a1, 0x340, t5
                  sb         a7, -4(s10)
                  lb         t4, 0(s10)
                  c.addi     s0, 30
                  and        s6, a6, s8
                  lbu        ra, 50(s10)
                  sb         s0, 30(s10)
                  csrrci     t1, 0x340, 5
                  lbu        gp, 46(s10)
                  or         s11, t1, t2
                  c.srli     a5, 7
                  lhu        t0, -37(s10)
                  c.mv       s5, s0
                  c.xor      a2, s0
                  lbu        s9, 41(s10)
                  srl        s5, s1, s6
                  lh         a3, -13(s10)
                  remu       a1, t0, sp
                  lbu        s9, -2(s10)
                  sll        t2, a6, s3
                  sub        s5, a0, a1
                  lbu        s11, -10(s10)
                  c.addi     t6, -1
                  lh         s11, 51(s10)
                  lbu        s5, 59(s10)
                  lb         s11, 6(s10)
                  sh         t4, 53(s10)
                  lb         t6, -52(s10)
                  lhu        t4, -35(s10)
                  sb         s0, -45(s10)
                  lb         s5, 30(s10)
                  c.srai     a4, 13
                  lbu        t5, -6(s10)
                  lbu        t6, 6(s10)
                  lbu        s3, -24(s10)
                  sb         a1, 46(s10)
                  mulhu      s0, a5, t4
                  lb         s3, -1(s10)
                  csrrsi     a4, 0x340, 22
                  fence
                  lb         t4, -40(s10) #end riscv_load_store_rand_instr_stream_1
                  remu       t5, t4, a1
                  c.add      t1, a1
                  mul        s3, s2, a5
                  mulh       zero, t6, t0
                  c.and      a5, s1
                  c.beqz     s1, 16f
                  csrrs      s7, 0x340, sp
                  srai       s1, s2, 25
                  c.beqz     a0, 19f
                  sltu       s7, s2, s8
                  c.lui      a4, 26
                  bne        s11, t5, 15f
                  csrrsi     ra, 0x340, 2
                  divu       s9, a5, s9
                  bltu       t3, a6, 32f
15:               c.add      s3, a6
16:               mulhu      a5, a6, gp
                  srl        a1, s10, a2
                  c.lui      a3, 3
19:               mulhsu     t5, t6, gp
                  c.addi     gp, 30
                  slt        t2, a6, t3
                  sra        tp, s6, t3
                  bltu       a1, t2, 27f
                  sltiu      t5, a3, 7
                  slt        gp, t4, a6
                  fence
27:               c.or       a4, s0
                  csrrs      s6, 0x340, a0
                  beq        zero, t0, 39f
                  slt        s3, t0, s8
                  remu       s11, s0, a5
32:               mul        a6, a4, gp
                  fence.i
                  andi       a1, tp, -290
                  srai       t6, t1, 0
                  blt        s7, zero, 42f
                  c.beqz     a4, 54f
                  auipc      s2, 219579
39:               sll        t4, t1, t6
                  c.sub      a5, a0
                  beq        a3, t2, 57f
42:               csrrsi     t5, 0x340, 24
                  mul        tp, s2, s7
                  div        a7, s0, s0
                  xori       a6, s9, 493
                  lui        a4, 636543
                  lui        t1, 528269
                  c.xor      a0, a4
                  xori       a6, a2, 300
                  beq        a2, s9, 57f
                  bltu       sp, a1, 56f
                  fence
                  csrrs      t0, 0x340, a0
54:               ori        s4, zero, -945
                  slli       t2, t4, 28
56:               c.nop
57:               sub        s11, s8, a3
                  divu       t2, s8, s9
                  srli       s11, t2, 25
                  nop
                  sltu       a1, s7, s11
                  srli       s3, zero, 31
                  rem        s6, a5, t0
                  sltiu      a4, s6, -558
                  c.srli     a2, 27
                  bgeu       t5, s11, 76f
                  beq        a6, a7, 71f
                  c.slli     s1, 21
                  csrrci     s3, 0x340, 9
                  c.li       a1, 2
71:               c.xor      a3, a0
                  nop
                  fence
                  c.nop
                  bgeu       t0, s8, 82f
76:               c.lui      s11, 2
                  remu       t6, t2, gp
                  srl        a1, s7, s5
                  andi       a7, a1, 217
                  sltu       gp, s10, s3
                  mulhsu     a4, s0, a0
82:               xori       zero, t6, -629
                  c.lui      s6, 14
                  slt        s6, a2, zero
                  c.beqz     a4, 102f
                  csrrw      a5, 0x340, a1
                  bge        a1, s11, 99f
                  bge        s2, s3, 107f
                  csrrs      s11, 0x340, a2
                  ori        a0, a7, 91
                  addi       a3, zero, 7 #init loop 1 counter
                  addi       zero, zero, 0 #init loop 1 limit
main_27_1_t:      c.andi     a0, 4
                  c.or       a5, a0
                  c.srai     s0, 2
                  addi       a3, a3, -7 #update loop 1 counter
                  c.addi     a5, 26
                  remu       s1, t2, sp
                  addi       tp, zero, 1 #init loop 0 counter
                  rem        s1, s4, t5
                  addi       s5, zero, 8 #init loop 0 limit
                  c.slli     a6, 1
main_27_0_t:      rem        t0, s2, t1
                  divu       t5, s0, s10
                  c.srai     a2, 7
                  addi       tp, tp, 1 #update loop 0 counter
                  c.nop
                  bltu       tp, s5, main_27_0_t #branch for loop 0
                  fence
                  c.sub      s1, a3
                  sltiu      a6, s6, 106
                  c.or       s1, a1
                  c.bnez     a3, main_27_1_t #branch for loop 1
                  c.and      a4, a4
                  c.sub      a1, a1
                  srai       s7, zero, 4
                  fence.i
                  mulhsu     s5, s5, s0
                  c.bnez     a2, 112f
                  mulh       s10, s6, s8
                  c.slli     s10, 23
                  slli       a3, a3, 13
99:               lui        a2, 111791
                  srli       t1, tp, 0
                  slt        tp, s8, a1
102:              csrrs      s10, 0x340, s1
                  srli       a2, t3, 19
                  c.mv       s2, a6
                  c.nop
                  mulhsu     t6, zero, s1
107:              ori        ra, a6, -729
                  c.xor      a2, s0
                  blt        s6, t5, 118f
                  fence.i
                  addi       ra, t2, 7
112:              beq        a0, gp, 131f
                  srl        zero, s8, t0
                  c.beqz     a4, 115f
115:              bne        s2, zero, 116f
116:              csrrw      ra, 0x340, a3
                  csrrwi     s4, 0x340, 22
118:              xor        t0, a4, s3
                  c.and      s0, a3
                  bltu       t2, s6, 125f
                  sltu       s3, a0, s7
                  slti       s7, s3, -774
                  mulh       a6, s7, tp
                  la         t6, region_3+327 #start riscv_hazard_instr_stream_0
                  sb         gp, -6(t6)
                  div        s10, a7, s10
                  csrrsi     a7, 0x340, 11
                  fence
                  sltiu      a4, s0, 810
                  mulhu      gp, s10, a4
                  lb         s10, 73(t6)
                  srl        a4, s10, s0
                  fence
                  lbu        a4, -160(t6)
                  sb         a7, 76(t6)
                  xor        s4, a4, gp
                  lb         s4, 114(t6)
                  lb         a7, -171(t6)
                  sh         s4, -55(t6)
                  ori        s10, gp, 546
                  lbu        s10, 2(t6)
                  sra        a7, a7, a4
                  csrrsi     a4, 0x340, 23
                  c.add      a7, s0
                  sra        a4, gp, a7
                  c.mv       s0, gp
                  sw         gp, -99(t6)
                  sub        a7, a4, a7
                  sw         gp, -211(t6) #end riscv_hazard_instr_stream_0
                  ori        s4, a2, 757
125:              csrrci     s1, 0x340, 10
                  mul        s10, a4, a2
                  remu       a7, a0, t3
                  remu       a6, a7, s3
                  sll        s1, s6, t4
                  slt        a1, s11, s3
131:              c.and      a5, s1
                  rem        s3, s11, s7
                  xor        a0, s5, s5
                  c.andi     a0, -1
                  c.andi     a1, 11
                  addi       a7, s8, -322
                  c.xor      a1, a0
                  lui        a4, 515007
                  beq        gp, s2, 158f
                  c.add      a1, a5
                  c.mv       s9, gp
                  c.nop
                  divu       s9, t6, t0
                  c.sub      a1, a3
                  c.andi     a5, -1
                  beq        a5, s5, 155f
                  divu       s7, a7, a1
                  csrrci     ra, 0x340, 24
                  bltu       s6, t2, 163f
                  csrrsi     a6, 0x340, 6
                  c.slli     s10, 14
                  c.beqz     a5, 162f
                  blt        s3, a2, 158f
                  fence.i
155:              c.li       s9, 19
                  c.bnez     s0, 165f
                  sll        s10, t5, t5
158:              div        s9, s6, s5
                  slli       a2, s4, 9
                  sub        a7, s1, a3
                  c.and      a1, a3
162:              slti       a5, a6, -793
163:              mulh       ra, t6, a7
                  mul        a6, t3, s6
165:              csrrs      t5, 0x340, t3
                  bltu       s4, a6, 182f
                  sltu       a7, s0, zero
                  c.beqz     a4, 184f
                  lui        a3, 944385
                  xor        tp, t0, s0
                  c.li       t5, 22
                  sub        s7, t4, gp
                  c.srai     a5, 20
                  add        a1, s10, a1
                  or         t6, t3, a3
                  blt        t0, s2, 195f
                  rem        s6, t2, s11
                  srl        s0, t5, zero
                  add        s4, a3, ra
                  divu       s4, a1, tp
                  csrrc      a3, 0x340, a3
182:              andi       gp, a5, 340
                  c.addi     a4, 6
184:              c.mv       s1, s11
                  c.srai     a3, 11
                  blt        a5, s10, 204f
                  mulhsu     s4, s6, a2
                  srli       s2, t3, 6
                  beq        t3, gp, 193f
                  mulhu      zero, a0, a0
                  c.xor      a0, a1
                  c.addi     a6, 13
193:              sltu       t6, t2, t4
                  addi       t6, t4, 485
195:              srli       t6, a2, 7
                  csrrwi     s7, 0x340, 0
                  fence.i
                  xori       a4, a4, -818
                  sub        tp, ra, t5
                  fence
                  nop
                  lui        a2, 770029
                  csrrs      ra, 0x340, sp
204:              mulh       a3, t4, t1
                  remu       a3, s0, ra
                  c.srai     a0, 8
                  csrrs      s10, 0x340, a2
                  div        gp, t4, s10
                  andi       a7, t3, -1007
                  c.nop
                  c.add      t1, s3
                  c.nop
                  c.mv       t1, a4
                  ori        gp, a3, -37
                  ori        a3, s8, -629
                  c.lui      a5, 2
                  div        t6, sp, s5
                  divu       a6, s6, zero
                  c.xor      a0, a5
                  auipc      s1, 538255
                  csrrci     a5, 0x340, 30
                  mul        a5, s4, t6
                  c.srai     a1, 1
                  add        a5, a3, a4
                  c.or       a5, a3
                  mulhu      s9, a7, t0
                  and        s4, s9, a6
                  slli       tp, s9, 2
                  addi       zero, t1, -434
                  slti       a3, s5, 829
                  mulhu      s11, gp, gp
                  bne        s4, s4, 249f
                  beq        s0, gp, 242f
                  bne        t5, t6, 253f
                  addi       a1, zero, 517
                  mulhsu     t2, t1, s11
                  slli       t2, tp, 4
                  c.and      a5, a1
                  andi       t5, s6, 506
                  bge        t0, a6, 252f
                  divu       s10, s1, a2
242:              c.nop
                  c.srai     a0, 28
                  lui        s0, 86307
                  srl        t1, a7, t0
                  sltiu      a1, t4, 288
                  auipc      s9, 900542
                  ori        s3, s1, -792
249:              csrrwi     a3, 0x340, 0
                  c.or       s0, a4
                  c.xor      s0, a3
252:              mulhu      t1, s7, a2
253:              mul        a4, s7, s5
                  sltiu      s7, s0, 341
                  c.xor      a0, a1
                  c.srli     a4, 9
                  div        a1, t5, sp
                  mulhu      t6, s3, s11
                  blt        a4, zero, 269f
                  mulhu      t5, s2, a5
                  sltiu      a1, sp, -567
                  remu       a6, t5, a6
                  rem        zero, s0, t6
                  csrrc      a0, 0x340, s5
                  slt        a2, s6, a1
                  c.andi     a3, -1
                  c.addi     t4, -1
                  mulhu      s5, t4, s8
269:              sub        t6, a2, a3
                  blt        t1, s5, 277f
                  sltu       s2, a0, s9
                  sll        s7, t2, t1
                  c.sub      a4, a0
                  mulhsu     s2, zero, a3
                  c.srai     s1, 7
                  c.lui      gp, 6
277:              c.andi     a0, -1
                  csrrw      s4, 0x340, a2
                  sra        a7, zero, s8
                  xor        a7, a4, s4
                  and        a4, t2, a3
                  csrrc      t2, 0x340, s1
                  srl        s0, s3, sp
                  c.addi     a6, 17
                  c.addi     a5, 9
                  bltu       a0, a6, 296f
                  sltu       s0, s5, t0
                  and        a1, gp, a3
                  srl        s3, a2, t5
                  c.and      a5, a5
                  beq        a7, s11, 292f
292:              c.add      s7, ra
                  andi       a3, t6, -128
                  and        a1, s1, s6
                  c.lui      a2, 18
296:              srai       a4, s9, 4
                  bge        s5, tp, 306f
                  bge        t5, t2, 317f
                  mulhsu     a7, t2, s8
                  bgeu       s11, a7, 306f
                  add        a2, t0, s6
                  c.xor      s1, s1
                  slt        gp, a7, t5
                  xori       s9, a6, -274
                  mul        s10, t5, t1
306:              auipc      t5, 462778
                  c.li       a7, 7
                  c.nop
                  mul        t1, s0, t2
                  addi       t5, ra, -946
                  c.lui      a5, 30
                  c.andi     a3, 8
                  xori       t4, t5, -177
                  bge        a1, s1, 324f
                  sltu       gp, t5, a6
                  xori       s11, tp, 215
317:              c.nop
                  addi       t1, s5, -891
                  and        s9, a0, a3
                  or         s7, t1, s7
                  fence
                  csrrci     s10, 0x340, 7
                  c.mv       a1, s8
324:              c.bnez     a5, 335f
                  c.slli     a3, 29
                  c.srli     a1, 22
                  c.beqz     a5, 341f
                  mulhsu     a5, s11, ra
                  lui        s7, 780531
                  ori        s7, t5, -196
                  c.beqz     a5, 342f
                  srli       s3, ra, 6
                  c.xor      a2, a5
                  csrrw      t0, 0x340, s9
335:              slti       a1, a0, -466
                  csrrc      s3, 0x340, s9
                  ori        a3, s0, -23
                  c.and      s1, a2
                  srli       s1, sp, 4
                  andi       t4, s1, 889
341:              sll        t1, t1, t4
342:              mulhsu     s4, t2, t4
                  auipc      s9, 615919
                  mulh       s5, a1, ra
                  c.addi     s1, -1
                  c.lui      a7, 8
                  sub        s2, a7, t4
                  mul        a1, s10, s2
                  addi       s0, s8, -1000
                  blt        ra, s3, 357f
                  c.or       a0, a4
                  la         a2, region_3+499 #start riscv_load_store_rand_instr_stream_4
                  lb         a5, -34(a2)
                  lui        a6, 1006575
                  sb         s1, -20(a2)
                  sb         a4, -42(a2)
                  lbu        gp, 12(a2)
                  c.or       s1, a2
                  csrrsi     s7, 0x340, 13
                  csrrs      t4, 0x340, a2
                  lbu        s5, -54(a2)
                  lbu        s10, -48(a2)
                  csrrc      s6, 0x340, t1
                  lb         t0, -26(a2)
                  mulh       a7, gp, a4
                  sw         a7, -19(a2)
                  csrrs      s6, 0x340, s7
                  lhu        a0, 7(a2)
                  lbu        a0, -20(a2)
                  lui        a1, 758390
                  sltu       a6, tp, s5
                  xori       t5, a6, 752
                  lbu        s9, -42(a2)
                  lb         a3, -13(a2)
                  csrrc      s6, 0x340, a5
                  lbu        s4, 10(a2)
                  sb         a5, -60(a2)
                  lb         gp, 9(a2)
                  csrrwi     s6, 0x340, 6
                  c.andi     a1, 15
                  lbu        s4, -45(a2)
                  srli       tp, t4, 2
                  lb         s9, -58(a2)
                  c.andi     a4, -1
                  c.or       s0, a3
                  lh         t0, -61(a2)
                  ori        s2, tp, -198
                  ori        ra, s8, -824
                  sltiu      t0, s10, -857
                  lbu        t6, -30(a2)
                  c.addi     a5, -1
                  lb         s1, -18(a2)
                  remu       t5, s4, s11
                  lb         tp, -55(a2)
                  c.mv       s10, t3
                  sh         a3, -21(a2)
                  lui        tp, 394578
                  csrrwi     s5, 0x340, 1
                  lbu        zero, -42(a2)
                  fence.i
                  sb         s8, 3(a2)
                  remu       t1, a7, tp
                  lb         s7, -36(a2)
                  lbu        s10, -30(a2) #end riscv_load_store_rand_instr_stream_4
                  ori        s6, s11, 568
                  c.xor      a0, a0
                  andi       s9, a1, 758
                  andi       ra, tp, -2
                  c.sub      a3, a0
357:              bne        a4, s0, 362f
                  sra        tp, sp, t1
                  auipc      s4, 849352
                  bne        a1, gp, 377f
                  srai       a6, s6, 28
362:              srai       a3, a3, 19
                  rem        t5, tp, t4
                  c.nop
                  bge        s4, s4, 369f
                  and        a1, t5, tp
                  mulhsu     t2, s10, t0
                  sltiu      s3, s6, 728
369:              c.andi     a0, -1
                  bgeu       s0, s3, 374f
                  csrrwi     s10, 0x340, 6
                  csrrs      t5, 0x340, t0
                  c.beqz     s1, 389f
374:              sra        a7, s4, s1
                  bltu       a2, s8, 376f
376:              fence.i
377:              csrrs      tp, 0x340, s2
                  auipc      gp, 560614
                  csrrc      s5, 0x340, s3
                  csrrs      t6, 0x340, s5
                  c.nop
                  csrrci     s7, 0x340, 11
                  csrrs      tp, 0x340, a2
                  bgeu       s9, t5, 401f
                  lui        s0, 118462
                  mulh       t0, s3, t2
                  c.beqz     a2, 392f
                  andi       a6, a2, 254
389:              c.or       a3, s1
                  c.lui      s3, 3
                  mulhsu     t5, t2, s8
392:              csrrw      t1, 0x340, a1
                  div        s3, tp, ra
                  fence
                  c.sub      s1, a1
                  sltiu      s5, t1, 930
                  mul        s6, s1, t0
                  srli       s5, s8, 20
                  c.mv       s4, t3
                  c.srai     a4, 21
401:              c.lui      s1, 17
                  c.addi     gp, -1
                  c.and      a0, a2
                  div        s2, s11, t1
                  c.lui      a6, 4
                  and        t2, t6, t1
                  c.xor      a3, a1
                  c.addi     s10, -1
                  fence.i
                  srl        zero, s9, a4
                  c.lui      s9, 4
                  srai       gp, ra, 18
                  xori       gp, s9, 546
                  c.add      s5, gp
                  divu       a6, a1, a7
                  addi       s5, gp, 827
                  auipc      t4, 894773
                  sltu       s5, s8, a5
                  fence
                  andi       s9, s4, 860
                  csrrwi     gp, 0x340, 10
                  mulhsu     s6, s2, s4
                  and        s4, sp, s0
                  remu       a1, s9, s11
                  div        zero, a2, t5
                  csrrw      zero, 0x340, t4
                  rem        s4, s7, s3
                  mul        gp, s6, s10
                  or         s10, s6, s0
                  blt        a5, s4, 439f
                  srl        t1, a5, s9
                  csrrsi     a7, 0x340, 15
                  c.addi     ra, 13
                  c.andi     s0, 15
                  c.li       a0, -1
                  slti       s5, t0, -364
                  csrrwi     s0, 0x340, 25
                  or         s1, a6, s11
439:              srai       t0, t0, 22
                  slli       s4, sp, 17
                  bge        t3, a5, 446f
                  fence
                  mulhsu     tp, s5, s11
                  ori        s9, a2, 605
                  csrrw      a3, 0x340, s0
446:              c.addi     a3, 20
                  addi       s11, a1, 108
                  auipc      t0, 645210
                  srli       a6, tp, 3
                  csrrsi     a0, 0x340, 23
                  csrrs      ra, 0x340, t4
                  srl        t6, s1, t4
                  c.and      s0, a0
                  mul        t1, a4, t6
                  bge        s5, s2, 460f
                  xor        t0, a5, a1
                  csrrw      s0, 0x340, s6
                  mulh       s0, a3, s1
                  csrrw      s1, 0x340, ra
460:              div        t5, zero, t4
                  add        t5, a6, a3
                  mulh       s4, s3, s5
                  bltu       s1, s7, 473f
                  mulh       a7, a2, t1
                  fence.i
                  bltu       a4, ra, 484f
                  sltu       s1, a0, a5
                  bge        gp, s6, 477f
                  c.sub      a1, a2
                  c.add      t0, a4
                  sub        a7, a3, s1
                  sll        s10, s7, s7
473:              sra        t1, s6, a5
                  mulh       t6, s2, a7
                  mulhsu     t4, s2, s9
                  mulhsu     gp, t4, t5
477:              mul        gp, s10, s10
                  srli       a1, t0, 31
                  sltiu      s6, s11, 99
                  fence
                  csrrw      a2, 0x340, a3
                  beq        a3, sp, 486f
                  c.srai     a0, 11
484:              slt        s4, gp, t0
                  fence.i
486:              c.mv       t5, a6
                  remu       s5, t0, s10
                  andi       t0, t4, 583
                  and        ra, gp, a6
                  csrrwi     s7, 0x340, 29
                  c.srli     s1, 4
                  divu       s9, s5, s4
                  remu       a7, s0, s11
                  addi       s4, zero, -343
                  lui        t1, 476964
                  c.beqz     s0, 503f
                  bgeu       a7, sp, 508f
                  mulh       s11, s9, a5
                  c.add      a1, t5
                  c.li       s11, 4
                  srai       a1, t4, 29
                  divu       s9, s6, a4
503:              csrrsi     a4, 0x340, 25
                  mulh       s2, s3, t2
                  c.nop
                  c.slli     t2, 14
                  csrrwi     gp, 0x340, 20
508:              and        t2, ra, a6
                  blt        a4, t1, 510f
510:              beq        tp, s7, 520f
                  csrrc      t1, 0x340, t0
                  csrrc      a1, 0x340, s3
                  nop
                  c.andi     a5, -1
                  andi       t6, t6, 861
                  mulh       s5, s2, sp
                  srai       s7, gp, 23
                  c.addi     t6, 15
                  mulhu      s9, a4, t4
520:              c.addi     a5, -1
                  csrrsi     a1, 0x340, 5
                  mulhsu     s5, t0, t2
                  c.slli     s10, 16
                  csrrc      zero, 0x340, s11
                  fence
                  mulh       t6, t1, s2
                  bgeu       s10, s4, 534f
                  csrrci     a4, 0x340, 22
                  c.srai     s1, 12
                  c.sub      a1, a5
                  sltu       t1, gp, s7
                  div        s0, s3, s7
                  slt        s2, zero, s1
534:              bgeu       a7, a2, 551f
                  csrrci     t5, 0x340, 21
                  slli       s9, s4, 14
                  c.or       s0, a4
                  bltu       s3, sp, 555f
                  csrrwi     s2, 0x340, 5
                  fence
                  c.beqz     s0, 547f
                  andi       s9, s7, -219
                  c.nop
                  c.srli     a2, 22
                  or         a2, ra, ra
                  sra        ra, s9, a1
547:              lui        s10, 474223
                  slti       ra, a6, -72
                  srai       s11, s3, 20
                  c.beqz     a2, 564f
551:              csrrci     a0, 0x340, 2
                  sll        s10, gp, tp
                  csrrwi     s1, 0x340, 9
                  fence
555:              c.and      a2, a1
                  fence.i
                  c.slli     a5, 24
                  or         s5, a1, s6
                  sra        tp, a0, t4
                  blt        s7, s11, 569f
                  csrrsi     a1, 0x340, 12
                  andi       s5, s7, 944
                  add        s9, gp, a5
564:              add        zero, zero, s6
                  andi       a6, s6, 947
                  c.and      a4, a5
                  c.andi     a3, -1
                  add        a7, s9, s6
569:              srli       s5, a4, 24
                  c.lui      s2, 15
                  csrrc      s1, 0x340, t2
                  mulhu      s2, a2, t0
                  sll        s3, tp, tp
                  lui        s7, 426222
                  blt        t4, a2, 580f
                  addi       a4, s11, -543
                  c.slli     s1, 11
                  add        a1, t2, zero
                  srl        a6, s6, t5
580:              srai       t5, tp, 19
                  bge        a7, s1, 592f
                  csrrs      s4, 0x340, s8
                  auipc      s11, 186533
                  mul        ra, s3, s0
                  bge        s11, a3, 604f
                  srl        s1, t5, a5
                  mulhu      ra, s8, a5
                  c.add      a1, s8
                  bgeu       s1, s5, 599f
                  sltiu      s6, a5, -131
                  c.li       s6, 7
592:              c.xor      a3, a4
                  fence.i
                  bne        t1, a2, 613f
                  fence
                  mulh       t2, gp, t4
                  csrrsi     s2, 0x340, 21
                  mulhsu     a7, s5, zero
599:              and        gp, a0, gp
                  bltu       t2, a5, 619f
                  bgeu       a6, s6, 605f
                  mulhsu     s6, s8, s1
                  srai       a5, sp, 17
604:              c.li       s11, 27
605:              c.add      a7, t1
                  la         s5, region_1+1297 #start load_store_instr_stream_2
                  la         s10, region_1+9851 #start load_store_instr_stream_1
                  sh         s1, -19(s5)
                  lbu        a7, -96(s10)
                  lbu        s9, -91(s10)
                  la         t4, region_1+13628 #start load_store_instr_stream_0
                  sb         t0, 96(s5)
                  lb         zero, 15(s5)
                  lbu        a3, 226(s10)
                  lb         a3, 18(s5)
                  lbu        s7, -253(t4)
                  lhu        s3, -237(s10)
                  sb         s10, 116(s5)
                  lb         s11, -178(s10)
                  lh         t2, -58(t4)
                  lhu        t0, 219(s10)
                  lbu        a0, 16(s5)
                  lbu        s1, 76(s10)
                  lbu        tp, 110(s10)
                  sb         s9, 216(s5)
                  lbu        s4, -178(s5) #end load_store_instr_stream_2
                  lb         a1, 143(t4)
                  sb         s6, -10(s10)
                  lb         s11, 28(s10) #end load_store_instr_stream_1
                  sb         t4, 230(t4)
                  lbu        a2, 107(t4) #end load_store_instr_stream_0
                  blt        a2, s1, 623f
                  bne        a3, gp, 623f
                  c.slli     a0, 8
                  c.add      s5, t0
                  c.li       t6, -1
                  c.li       s1, 23
                  c.add      gp, t1
613:              blt        t0, a5, 614f
614:              rem        a6, a2, s2
                  mulh       tp, t6, t4
                  xori       a1, t4, 971
                  remu       t5, a7, s6
                  csrrsi     a1, 0x340, 15
619:              c.bnez     a5, 628f
                  csrrwi     a3, 0x340, 21
                  slt        a5, t2, s3
                  csrrsi     a2, 0x340, 27
623:              srl        s5, sp, a6
                  lui        tp, 505845
                  mulh       a0, a1, s11
                  c.li       s11, 21
                  div        s4, t5, a6
628:              csrrwi     t2, 0x340, 6
                  csrrw      s5, 0x340, s4
                  sra        a1, s5, a2
                  c.or       s1, a5
                  mul        t0, s10, a2
                  remu       t1, sp, a2
                  fence
                  sltiu      t5, s1, 361
                  srl        t4, a0, s11
                  blt        s11, t3, 649f
                  lui        zero, 12475
                  c.xor      a0, a1
                  srl        a1, t4, tp
                  c.li       ra, 17
                  xor        t2, gp, s5
                  c.srli     s1, 5
                  bgeu       t0, a3, 649f
                  c.xor      s0, a1
                  sra        tp, sp, t5
                  nop
                  csrrc      s1, 0x340, gp
649:              csrrwi     t4, 0x340, 30
                  auipc      s4, 586708
                  bgeu       a7, ra, 655f
                  ori        gp, t1, 607
                  mulhu      a1, sp, s11
                  rem        a7, a5, a1
655:              sltiu      gp, s1, -307
                  c.beqz     a1, 672f
                  xori       s0, a7, 684
                  addi       t1, t1, -978
                  mulhsu     s4, t4, s2
                  mulh       s0, a6, s3
                  sub        a7, t1, t5
                  srli       a6, t4, 6
                  c.nop
                  fence
                  c.add      s10, s9
                  divu       t0, a4, s9
                  bge        s0, s5, 677f
                  fence.i
                  slli       s4, s2, 1
                  c.sub      a4, a1
                  c.beqz     s0, 678f
672:              rem        s3, s3, t4
                  c.lui      s0, 24
                  div        tp, s6, s0
                  bgeu       s11, t5, 694f
                  andi       s1, s7, -55
677:              c.nop
678:              slli       a7, s8, 25
                  mulhu      zero, a6, s6
                  c.add      t5, tp
                  lui        s1, 888049
                  xori       s5, t0, -625
                  slt        t2, s7, a4
                  c.li       t5, 10
                  c.bnez     a1, 696f
                  remu       a6, s6, s0
                  c.addi     s5, -1
                  andi       a7, t0, 443
                  remu       t6, t5, a4
                  sub        s5, a2, tp
                  xor        s5, t2, a4
                  c.slli     s6, 14
                  blt        s9, ra, 707f
694:              beq        t2, s7, 713f
                  slt        s4, t5, zero
696:              mulh       tp, a4, s1
                  sltu       s11, gp, a2
                  srai       a6, s8, 3
                  c.or       a1, s1
                  c.slli     t5, 4
                  rem        s6, s7, s3
                  c.add      a7, s0
                  ori        s11, s5, -356
                  bne        s5, zero, 709f
                  mulh       a1, a7, a2
                  add        s11, t4, a0
707:              csrrc      t1, 0x340, a6
                  fence
709:              sub        s4, sp, gp
                  sltu       t5, t2, t2
                  mulhsu     a7, a3, a6
                  c.beqz     a3, 721f
713:              remu       a3, s10, s3
                  mulh       zero, s5, a5
                  slt        t5, a3, t0
                  c.srai     a3, 1
                  c.beqz     s1, 721f
                  srli       s2, s7, 29
                  bgeu       s5, a3, 729f
                  csrrci     ra, 0x340, 17
721:              xor        a6, ra, sp
                  sltiu      t4, t5, -967
                  bne        a3, s3, 741f
                  srai       t0, gp, 5
                  addi       t4, t6, -238
                  c.lui      t6, 18
                  c.xor      a0, a0
                  xor        a7, s6, s1
729:              bgeu       s6, t4, 745f
                  c.beqz     a5, 747f
                  csrrc      ra, 0x340, t6
                  bge        t3, sp, 748f
                  c.mv       a2, s11
                  slti       t4, sp, -522
                  addi       s1, ra, 551
                  slti       s6, t2, -523
                  c.or       a2, a5
                  c.srli     a3, 13
                  addi       a1, t0, 96
                  bne        t6, t5, 745f
741:              c.lui      tp, 14
                  c.lui      a3, 15
                  csrrci     a6, 0x340, 30
                  slti       gp, s10, 555
745:              bne        s7, s4, 752f
                  sub        gp, gp, s1
747:              c.sub      a0, a5
748:              c.add      s5, s2
                  c.or       s1, a1
                  bne        s4, t5, 751f
751:              c.nop
752:              bltu       a3, a1, 757f
                  div        s7, s9, a5
                  c.srli     a3, 19
                  csrrsi     a3, 0x340, 23
                  c.mv       a3, s6
757:              c.or       a3, a5
                  c.addi     s0, 20
                  mulh       s9, t1, a3
                  c.sub      s0, s0
                  fence.i
                  xori       a0, ra, -456
                  c.srli     a1, 18
                  divu       t0, t5, s6
                  or         s2, a1, s4
                  c.xor      s1, a4
                  csrrs      a7, 0x340, t0
                  sra        a6, s1, sp
                  c.xor      a0, s0
                  sltu       s1, t5, s7
                  addi       t5, s11, 514
                  bne        s6, t5, 784f
                  c.add      s10, t1
                  csrrwi     s4, 0x340, 20
                  lui        s9, 806775
                  auipc      s7, 286281
                  la         a5, region_4+3024 #start load_store_instr_stream_1
                  sb         s3, -123(a5)
                  la         a6, region_4+2679 #start load_store_instr_stream_0
                  lhu        t2, -93(a6)
                  lbu        t5, -59(a5)
                  sh         a1, -1281(a6)
                  sb         s4, 242(a5)
                  lhu        t1, -240(a5)
                  lh         ra, -517(a6)
                  sh         s9, -92(a5)
                  lbu        s1, 1026(a6)
                  sb         s8, 114(a5)
                  sh         s5, -659(a6)
                  lbu        s10, -793(a6)
                  sb         s3, 1248(a6)
                  lbu        s2, 226(a5)
                  lb         a0, -945(a6)
                  lb         s11, -146(a5) #end load_store_instr_stream_1
                  lh         a7, -1467(a6)
                  sh         s6, -1833(a6) #end load_store_instr_stream_0
                  c.beqz     a1, 794f
                  c.srli     s0, 28
                  nop
                  mulhu      zero, a7, t4
                  beq        a6, t0, 785f
                  auipc      t1, 495196
                  andi       a3, zero, 79
784:              c.add      t4, s0
785:              srli       t5, s7, 1
                  mul        a0, tp, tp
                  sra        s4, a2, a6
                  c.mv       s7, s11
                  c.sub      a2, a0
                  c.andi     a5, -1
                  c.slli     s5, 10
                  srl        t5, s6, a3
                  remu       s10, t1, t3
794:              or         s9, t2, tp
                  c.srai     s0, 27
                  divu       t0, a6, zero
                  mulh       s1, s1, t4
                  srl        s5, tp, a3
                  c.nop
                  auipc      s10, 890553
                  srl        s1, tp, s3
                  sub        s6, t1, a5
                  divu       a4, s3, zero
                  mul        s1, s1, s9
                  csrrs      tp, 0x340, s4
                  andi       s2, s8, 982
                  c.andi     a0, 26
                  and        gp, t5, a1
                  csrrw      ra, 0x340, s8
                  srai       t4, t5, 15
                  sll        t0, a1, s9
                  c.sub      a5, a5
                  mulhsu     s0, t0, a4
                  or         s1, gp, zero
                  csrrci     s5, 0x340, 8
                  ori        s5, s4, -113
                  blt        s5, a2, 826f
                  csrrs      t2, 0x340, s4
                  c.slli     gp, 8
                  c.addi     a2, -1
                  bltu       s11, t5, 831f
                  c.xor      a4, s0
                  xori       s1, a0, -727
                  rem        s6, t6, s10
                  and        s5, s8, s10
826:              slli       t5, gp, 24
                  beq        zero, t6, 838f
                  sub        t2, a1, t1
                  andi       s2, t4, -446
                  c.sub      s1, a0
831:              andi       a1, t2, -543
                  andi       s6, a3, 461
                  divu       t1, s2, s2
                  bne        t2, s1, 851f
                  csrrwi     a4, 0x340, 27
                  bne        t6, t5, 842f
                  c.sub      a3, a2
838:              mul        a6, s7, a7
                  srli       s1, s9, 4
                  c.sub      a1, a4
                  c.li       a7, -1
842:              nop
                  c.srli     a2, 11
                  csrrwi     s2, 0x340, 10
                  c.slli     s10, 5
                  ori        s1, a1, 235
                  nop
                  sltu       t6, tp, t6
                  c.slli     s4, 5
                  xor        s2, a6, a2
851:              and        s7, a5, t4
                  bgeu       ra, zero, 871f
                  ori        t5, t4, 307
                  c.mv       t1, a6
                  c.bnez     s1, 864f
                  mulh       t4, t4, a6
                  c.add      a4, ra
                  c.lui      a2, 15
                  rem        t4, s2, t6
                  mul        a4, a3, s8
                  slt        zero, a4, t0
                  c.nop
                  mulh       s6, s1, s8
864:              slt        a1, s0, a3
                  andi       ra, a3, 719
                  csrrci     s6, 0x340, 8
                  srl        a4, a7, s0
                  addi       t1, t1, 443
                  c.slli     s1, 22
                  mulh       a5, s7, t5
871:              c.slli     tp, 6
                  c.srai     a2, 12
                  mulhsu     a5, s2, t5
                  fence
                  add        s1, ra, s4
                  bgeu       s10, a4, 880f
                  addi       s5, a6, -638
                  c.slli     s11, 6
                  c.sub      a4, a3
880:              bne        s2, a4, 881f
881:              mulhsu     a1, tp, a6
                  c.andi     a1, 22
                  c.or       a5, s1
                  slt        t1, s11, s3
                  mul        s10, s11, t6
                  bne        s10, a5, 892f
                  lui        ra, 32430
                  xor        a4, a2, ra
                  c.srli     a1, 28
                  mul        s11, a5, t4
                  nop
892:              srli       a4, zero, 23
                  c.add      s0, s4
                  beq        t6, a6, 913f
                  mulhu      s4, s2, sp
                  c.beqz     a4, 907f
                  srai       s5, a4, 5
                  andi       ra, zero, 543
                  xor        s2, s2, s6
                  c.andi     a5, -1
                  sub        t6, sp, a4
                  slli       s6, t1, 1
                  divu       s1, a1, t3
                  c.li       a0, 26
                  c.mv       a1, s10
                  bge        s10, ra, 907f
907:              blt        sp, zero, 911f
                  c.xor      a0, s0
                  fence.i
                  c.or       a2, a1
911:              add        tp, a3, sp
                  c.andi     a3, 24
913:              auipc      a2, 56607
                  fence.i
                  xori       t5, t1, -1008
                  addi       t6, s3, 467
                  sub        s7, zero, s10
                  csrrs      t2, 0x340, s11
                  xor        s9, sp, t4
                  or         t4, gp, t1
                  csrrci     a7, 0x340, 24
                  c.addi     s5, 4
                  sra        t1, a5, s7
                  srl        t5, t6, a1
                  nop
                  divu       s10, s6, s0
                  sll        s6, a4, s4
                  c.andi     s1, 2
                  srai       a1, t6, 6
                  bne        s4, s10, 934f
                  c.and      a1, a0
                  fence
                  c.and      a5, a2
934:              csrrwi     s10, 0x340, 13
                  mulhsu     gp, s8, s8
                  add        a3, s8, s4
                  slti       s1, a7, -68
                  and        a4, a0, s0
                  mulhu      s1, s9, s9
                  blt        sp, t3, 949f
                  fence.i
                  c.mv       a0, s2
                  lui        a3, 791109
                  and        s5, a4, s0
                  c.slli     s9, 7
                  sltiu      a3, sp, -216
                  lui        s6, 364348
                  bltu       a4, t0, 955f
949:              c.slli     s2, 18
                  csrrc      t0, 0x340, t3
                  srl        t5, gp, a5
                  c.and      a4, s1
                  fence
                  rem        gp, t5, tp
955:              beq        sp, s11, 966f
                  c.and      a5, a0
                  c.li       a4, 30
                  srli       s11, a4, 26
                  c.add      s5, a5
                  csrrwi     a0, 0x340, 24
                  csrrc      s4, 0x340, zero
                  srl        s7, s1, s9
                  div        s3, s3, s6
                  and        s10, a6, s11
                  csrrc      s2, 0x340, a1
966:              csrrci     s10, 0x340, 7
                  c.xor      a2, a1
                  div        a1, t3, sp
                  mul        s5, s1, s10
                  c.xor      s0, a4
                  slti       a3, a3, 819
                  srl        t1, a4, a0
                  fence
                  c.srli     a2, 20
                  srli       s6, sp, 22
                  blt        a6, ra, 985f
                  divu       s7, s4, a3
                  csrrci     a0, 0x340, 27
                  or         a3, s7, t0
                  srai       a5, t0, 3
                  mul        a4, t2, gp
                  c.bnez     s1, 992f
                  c.nop
                  c.beqz     a5, 994f
985:              blt        a0, a5, 990f
                  csrrwi     s10, 0x340, 2
                  c.sub      a1, a3
                  mulhsu     ra, tp, a6
                  srl        s5, a2, s3
990:              c.mv       t6, t0
                  xor        a2, a6, zero
992:              div        ra, tp, s1
                  sra        s1, zero, a2
994:              c.srli     a2, 11
                  bltu       a1, t3, 1014f
                  xori       tp, s2, 581
                  remu       gp, zero, s7
                  slti       a6, t3, -869
                  c.srai     s0, 29
                  xor        t6, s4, a0
                  bne        s1, ra, 1008f
                  xor        s7, s8, s2
                  sub        a6, a7, a4
                  c.and      a1, a3
                  c.xor      s1, a5
                  remu       a6, s1, t3
                  remu       s4, s5, s8
1008:             bltu       s9, t1, 1024f
                  or         s3, t0, a7
                  divu       s9, tp, sp
                  sub        s2, t6, t2
                  fence.i
                  fence
1014:             c.slli     s1, 11
                  mulh       t2, s3, a3
                  xor        t5, s4, s5
                  blt        s8, a7, 1034f
                  addi       a7, t3, 131
                  bltu       s4, s0, 1033f
                  csrrsi     ra, 0x340, 30
                  c.or       a5, a0
                  mulh       a0, a2, t5
                  srai       zero, s7, 30
1024:             fence
                  srl        s5, zero, t4
                  addi       a5, zero, 5 #init loop 0 counter
                  c.li       s5, 12
                  mulh       s9, t2, s1
                  srli       a2, t3, 29
                  slt        s5, sp, t0
                  addi       a4, zero, -1 #init loop 0 limit
                  srli       a3, t0, 27
main_28_0_t:      nop
                  csrrc      s10, 0x340, t1
                  sra        t0, t4, s5
                  addi       a5, a5, -5 #update loop 0 counter
                  c.slli     tp, 20
                  sltu       s10, t3, s10
                  sub        s4, s5, zero
                  remu       ra, zero, s4
                  nop
                  bge        a5, a4, main_28_0_t #branch for loop 0
                  mul        s10, s5, t1
                  sltiu      a5, s3, -120
                  bne        a0, s8, 1043f
                  c.mv       s7, s5
                  csrrsi     t4, 0x340, 6
                  c.add      s10, s9
                  mulhsu     a3, a6, a3
                  c.lui      t5, 29
1033:             sra        s0, t2, s8
1034:             c.andi     a3, 7
                  c.li       ra, -1
                  csrrc      ra, 0x340, t2
                  slli       t2, s4, 21
                  and        t4, zero, s1
                  xor        s1, s3, t2
                  bge        a0, s5, 1052f
                  srli       t1, s4, 18
                  csrrw      a1, 0x340, s10
1043:             slli       t4, s11, 24
                  c.srli     a5, 13
                  xori       s11, zero, -202
                  remu       s5, a6, a2
                  xor        t4, s6, s9
                  sltiu      a6, s5, -850
                  and        s1, t1, a4
                  c.or       a0, a1
                  slt        t5, a2, s0
1052:             add        a3, s7, s6
                  blt        a2, gp, 1071f
                  mulhsu     s0, a3, a7
                  csrrs      s2, 0x340, s11
                  ori        ra, zero, -292
                  or         a7, t1, a3
                  csrrwi     s10, 0x340, 9
                  fence.i
                  mulh       zero, t2, a6
                  bgeu       t3, gp, 1070f
                  mulhsu     a2, a2, s2
                  c.bnez     s1, 1068f
                  c.nop
                  c.xor      a1, a5
                  c.srli     a3, 4
                  bltu       s0, t0, 1077f
1068:             c.bnez     a5, 1069f
1069:             srli       zero, t3, 1
1070:             c.mv       t5, s5
1071:             c.bnez     a1, 1075f
                  xori       a0, s0, 217
                  c.srai     a1, 21
                  nop
1075:             mulh       ra, t4, s10
                  slti       ra, a2, -867
1077:             c.or       a3, s1
                  c.bnez     a2, 1095f
                  c.andi     a2, -1
                  csrrc      s3, 0x340, s9
                  slt        t4, zero, s5
                  c.and      s1, a0
                  srli       tp, s7, 20
                  sll        t1, ra, sp
                  sub        a7, s7, a3
                  beq        s10, gp, 1103f
                  bltu       s4, a6, 1092f
                  c.add      tp, a0
                  c.slli     gp, 20
                  xori       s7, tp, -498
                  remu       t0, a4, t4
1092:             fence
                  addi       s3, s9, -419
                  sltiu      s9, s3, 1023
1095:             slli       s6, a7, 25
                  beq        s4, sp, 1115f
                  c.and      a0, s1
                  ori        a4, a1, 978
                  mulh       t2, s7, t6
                  bgeu       t6, s5, 1107f
                  c.beqz     a1, 1110f
                  slli       tp, s11, 25
1103:             mul        ra, a5, a1
                  addi       s2, a0, -197
                  div        s4, s2, tp
                  mulhsu     a5, a0, zero
1107:             sltu       a5, sp, a0
                  mulhsu     t5, s0, s11
                  c.nop
1110:             mulhsu     s10, t5, t0
                  andi       t2, s2, 750
                  c.andi     a2, -1
                  slli       a5, t1, 10
                  sltu       a1, t3, a3
1115:             sub        s6, s11, s6
                  beq        s9, s9, 1125f
                  srli       s10, s9, 10
                  srli       s11, s2, 24
                  c.and      a0, a3
                  divu       s5, t5, tp
                  xori       s6, t6, 279
                  lui        a5, 294262
                  csrrsi     a6, 0x340, 26
                  rem        s7, t0, a3
1125:             remu       t6, s10, a1
                  divu       s1, a7, gp
                  csrrs      gp, 0x340, t0
                  divu       gp, t5, s1
                  c.li       s3, -1
                  c.slli     a4, 7
                  slti       s5, a7, 823
                  rem        s5, sp, a0
                  slt        s3, s7, a7
                  sub        zero, a6, s11
                  csrrc      s3, 0x340, a5
                  bgeu       t4, s2, 1141f
                  bltu       a4, t4, 1138f
1138:             c.nop
                  or         s7, sp, s8
                  c.beqz     a1, 1141f
1141:             c.bnez     s1, 1147f
                  bltu       ra, s5, 1154f
                  srli       s4, s11, 20
                  addi       t6, s10, -720
                  csrrwi     ra, 0x340, 10
                  mulhu      s6, tp, t5
1147:             c.li       a6, 26
                  c.mv       a0, a0
                  sll        s7, t3, t0
                  sra        t0, ra, s0
                  ori        zero, s1, -191
                  c.add      s1, s9
                  csrrci     s4, 0x340, 16
1154:             srl        t0, t2, s2
                  sltu       t0, sp, s0
                  c.or       a3, a2
                  divu       a3, a3, a1
                  c.and      a0, a4
                  c.beqz     a2, 1170f
                  rem        tp, s0, s10
                  bgeu       s4, a3, 1170f
                  csrrsi     t1, 0x340, 26
                  c.addi     s7, -1
                  c.nop
                  mulhsu     t6, a5, t5
                  c.sub      s0, a0
                  slli       a1, s0, 27
                  csrrsi     t1, 0x340, 29
                  c.nop
1170:             sltu       s5, t3, a4
                  add        s7, a5, t3
                  add        s5, s6, a7
                  bge        a5, t2, 1177f
                  xori       s7, a7, 683
                  slti       a0, t0, -650
                  csrrs      a6, 0x340, s11
1177:             div        s7, t4, s10
                  c.addi     s0, 4
                  sub        a7, s4, s8
                  c.or       a2, a3
                  c.or       s1, a1
                  or         zero, a7, a4
                  c.slli     t1, 11
                  bltu       s11, s5, 1194f
                  xor        s0, s4, a2
                  divu       a7, t4, s5
                  c.add      s0, s9
                  mulh       s7, t2, t2
                  nop
                  ori        s0, s11, -704
                  c.beqz     a3, 1207f
                  mulhu      ra, sp, s10
                  srl        tp, a1, gp
1194:             csrrs      t6, 0x340, a5
                  xor        a7, s8, t6
                  beq        s7, s3, 1210f
                  csrrw      s9, 0x340, t6
                  c.srli     a2, 23
                  c.bnez     a4, 1204f
                  add        s11, t5, s2
                  mul        a0, s3, t2
                  ori        s3, s5, -643
                  sll        s9, t4, s6
1204:             xori       s7, t0, -493
                  c.nop
                  andi       s5, a6, -280
1207:             divu       s9, sp, a1
                  slli       s10, t2, 14
                  rem        tp, a5, t1
1210:             c.srai     a1, 15
                  lui        zero, 644062
                  div        s4, s10, a1
                  c.srli     a4, 2
                  slli       t0, s9, 1
                  addi       t2, sp, -952
                  slti       gp, a0, 584
                  c.addi     gp, -1
                  mulh       zero, a1, t6
                  slt        tp, s0, zero
                  csrrs      s9, 0x340, zero
                  c.li       s9, 16
                  fence
                  c.li       s11, 15
                  sltiu      s6, t4, -893
                  bge        s4, t4, 1241f
                  fence.i
                  mulh       a5, t3, s10
                  c.bnez     a5, 1245f
                  c.andi     a4, 11
                  c.srli     a3, 9
                  bgeu       t1, a1, 1248f
                  c.add      s4, t2
                  csrrci     a7, 0x340, 28
                  xor        s3, zero, a5
                  auipc      t6, 813979
                  bne        a0, s2, 1246f
                  beq        gp, s7, 1247f
                  bltu       a1, a2, 1257f
                  slt        a1, t5, t3
                  sll        s0, ra, a6
1241:             csrrs      a6, 0x340, tp
                  csrrw      s6, 0x340, gp
                  ori        t4, s6, 159
                  or         s0, sp, s11
1245:             c.mv       t5, a2
                  sub        t2, a7, s0
                  remu       a2, s4, s3
                  c.or       s1, a1
                  csrrsi     s11, 0x340, 13
                  la         t0, sub_1
                  slli       a1, t1, 2
                  csrrsi     t1, 0x340, 11
                  addi       t0, t0, 782
                  auipc      a0, 567128
                  c.srli     a0, 26
                  blt        a1, s2, j__main_sub_1_1 #branch to jump instr
                  c.andi     a0, -1
j__main_sub_1_1:  jalr       ra, t0, -782
1246:             c.sub      a4, a4
1247:             csrrci     s2, 0x340, 2
1248:             c.li       s3, -1
                  or         s6, gp, a2
                  sltiu      s2, s10, -627
                  remu       a5, a1, s0
                  c.andi     a1, -1
                  bge        a5, a5, 1257f
                  bgeu       a5, t4, 1265f
                  mul        a7, s5, s1
                  c.srai     a1, 8
1257:             c.add      t6, s6
                  mulhu      zero, s4, zero
                  divu       s11, a1, t6
                  auipc      t2, 418722
                  c.xor      a5, s1
                  mulh       t6, a5, s11
                  c.or       a1, a1
                  srai       a2, zero, 3
1265:             nop
                  mulh       a3, t2, s9
                  csrrsi     s11, 0x340, 19
                  csrrc      s0, 0x340, s1
                  sltiu      a6, a7, -994
                  mulhsu     s7, s6, a4
                  slt        s10, gp, s7
                  div        s9, s7, s4
                  xor        a6, a2, s11
                  andi       s11, a0, -361
                  c.mv       s2, sp
                  mul        s9, s2, s4
                  sub        s1, s6, a6
                  c.bnez     a1, 1297f
                  slli       t0, s4, 17
                  slti       t4, t5, -247
                  remu       a5, t5, s2
                  csrrc      s7, 0x340, s7
                  mulh       s11, a3, t4
                  fence.i
                  bltu       a4, a3, 1302f
                  srl        ra, t2, gp
                  slt        t4, s6, t5
                  c.sub      a0, a3
                  c.slli     tp, 30
                  c.bnez     a4, 1295f
                  csrrw      zero, 0x340, a5
                  csrrw      t2, 0x340, a4
                  srli       t2, a0, 27
                  addi       t6, a4, 362
1295:             div        a7, s9, s10
                  sub        s3, a6, a1
1297:             csrrci     a2, 0x340, 19
                  c.xor      a4, a2
                  divu       a4, s2, a7
                  fence
                  c.slli     a5, 24
1302:             c.add      a5, s2
                  mulh       a3, s0, s2
                  csrrc      a7, 0x340, t4
                  nop
                  c.srai     s1, 23
                  c.add      tp, a7
                  and        zero, s6, t3
                  xori       t2, gp, 850
                  la         ra, sub_1
                  addi       a2, s4, -278
                  addi       ra, ra, -751
                  sltiu      t4, s7, 937
                  csrrs      a0, 0x340, t4
                  csrrci     s3, 0x340, 8
                  fence.i
                  csrrsi     s7, 0x340, 24
                  sll        tp, s10, s6
                  and        s11, t6, s10
                  xori       a5, s3, 161
j__main_sub_1_2:  jalr       ra, ra, 751
                  sltiu      t0, t6, 707
                  sra        s9, a4, a4
                  csrrci     t1, 0x340, 26
                  add        a1, zero, s7
                  mulhsu     s5, s11, s4
                  divu       t2, s1, s1
                  remu       s3, s2, a6
                  csrrsi     zero, 0x340, 24
                  srai       s5, s7, 10
                  sll        a7, a2, s9
                  csrrci     a3, 0x340, 17
                  csrrwi     tp, 0x340, 27
                  csrrwi     t6, 0x340, 0
                  csrrsi     a3, 0x340, 0
                  or         t1, t2, t6
                  c.andi     a3, 17
                  mulhu      t6, a4, a2
                  c.li       a5, -1
                  srai       t0, a5, 31
                  c.andi     a3, -1
                  srl        s2, s9, a0
                  bgeu       s5, a5, 1337f
                  csrrwi     a6, 0x340, 17
                  csrrsi     t1, 0x340, 14
                  c.beqz     a5, 1351f
                  c.or       a5, s0
                  addi       t2, s3, 414
                  divu       t5, s10, t4
1337:             csrrsi     t0, 0x340, 7
                  slli       s3, s6, 15
                  slli       s11, t4, 26
                  srl        a5, t6, s9
                  bge        a4, tp, 1345f
                  slt        t0, a4, a3
                  csrrw      a0, 0x340, a4
                  c.li       s5, -1
1345:             csrrs      a0, 0x340, t4
                  c.xor      a3, s1
                  c.xor      s0, a1
                  c.add      t6, ra
                  c.add      t1, s11
                  bne        s8, s7, 1369f
1351:             beq        t5, a0, 1362f
                  c.addi     s10, -1
                  srai       s10, zero, 18
                  c.addi     s6, 10
                  c.or       s1, a0
                  sltu       s5, s7, a3
                  slti       tp, gp, 713
                  sll        s0, t2, a0
                  bltu       s6, zero, 1369f
                  div        a2, a1, tp
                  xori       t2, t5, -549
1362:             nop
                  slt        a5, s8, a5
                  c.mv       s2, s10
                  srai       a6, s1, 14
                  csrrw      gp, 0x340, t0
                  sra        t1, tp, t1
                  srli       s3, s7, 4
1369:             c.addi     s2, 3
                  andi       zero, a3, 773
                  csrrc      s7, 0x340, zero
                  fence.i
                  c.slli     a4, 9
                  add        s0, t1, a6
                  bne        sp, t5, 1382f
                  c.or       a3, s1
                  lui        gp, 48017
                  blt        a5, t2, 1394f
                  remu       a0, a6, a6
                  beq        a2, s3, 1385f
                  csrrc      t0, 0x340, t5
1382:             sub        s7, a3, t4
                  csrrsi     s0, 0x340, 15
                  fence.i
1385:             sltiu      a6, s6, 800
                  auipc      a4, 999207
                  c.srli     a3, 18
                  srl        s10, s3, s9
                  slti       a3, a4, 385
                  c.xor      a1, a1
                  remu       t0, s0, a2
                  mulhsu     s1, t1, t0
                  auipc      s10, 927828
1394:             c.srai     a0, 4
                  srai       zero, s1, 24
                  c.xor      a1, a4
                  mulh       a0, a0, s8
                  auipc      t5, 299713
                  add        t0, t4, gp
                  or         a2, a2, a7
                  xor        s0, gp, zero
                  c.srli     a5, 20
                  csrrw      gp, 0x340, t1
                  c.or       a0, s0
                  lui        s4, 735409
                  bne        a7, a1, 1424f
                  bge        ra, a1, 1426f
                  csrrs      tp, 0x340, s10
                  c.sub      a5, a1
                  c.lui      ra, 21
                  fence
                  mulh       s7, a5, a6
                  sll        s5, s6, s2
                  c.beqz     a0, 1428f
                  and        s5, a1, s10
                  auipc      gp, 783103
                  bne        t4, s0, 1428f
                  c.li       a6, -1
                  bgeu       s4, a7, 1429f
                  csrrci     a3, 0x340, 11
                  c.sub      a1, s0
                  bltu       sp, s3, 1426f
                  mulh       s3, a1, a7
1424:             bne        s4, t6, 1433f
                  xor        gp, s0, a5
1426:             c.bnez     a4, 1430f
                  nop
1428:             c.addi     a2, 11
1429:             ori        a7, s7, 861
1430:             c.slli     t1, 29
                  andi       t1, sp, -455
                  c.li       s5, 14
1433:             c.addi     t5, -1
                  sltu       gp, a7, a4
                  sub        s10, zero, t3
                  addi       s7, s9, -638
                  sub        s11, a2, a5
                  remu       t2, s6, a7
                  csrrw      a0, 0x340, s5
                  srai       t5, s2, 19
                  c.beqz     a3, 1448f
                  c.li       t5, 16
                  slti       s9, zero, 79
                  andi       t5, t0, -686
                  fence.i
                  add        tp, a3, s8
                  add        tp, s0, a2
1448:             slli       s3, gp, 17
                  c.li       a7, -1
                  c.or       a0, a5
                  c.andi     a0, 9
                  csrrsi     t1, 0x340, 11
                  mulh       s6, a5, s8
                  csrrw      tp, 0x340, ra
                  mulh       t2, s0, t5
                  c.li       ra, -1
                  c.or       a3, s1
                  auipc      t4, 361585
                  srai       tp, a0, 1
                  auipc      a7, 505839
                  div        zero, t0, t1
                  sub        s1, s6, s3
                  c.xor      a4, s1
                  c.beqz     s1, 1480f
                  blt        tp, zero, 1474f
                  csrrci     s1, 0x340, 18
                  remu       s9, t4, s0
                  sltiu      s1, tp, -453
                  blt        s4, s7, 1488f
                  and        s1, a2, ra
                  lui        s0, 906883
                  bgeu       t1, a1, 1476f
                  c.or       s1, s1
1474:             c.slli     t2, 7
                  mulhu      s10, t5, s11
1476:             csrrci     a4, 0x340, 19
                  mulh       zero, t3, t2
                  lui        a7, 180620
                  nop
1480:             csrrci     gp, 0x340, 6
                  c.beqz     s1, 1486f
                  addi       s3, s4, -341
                  mulhu      a5, s8, a5
                  fence
                  c.srli     a4, 23
1486:             beq        s2, s1, 1487f
1487:             c.srli     a2, 17
1488:             or         s2, s3, s6
                  csrrsi     s7, 0x340, 0
                  c.li       a4, 22
                  c.and      a4, a3
                  la         s4, region_1+4175 #start load_store_instr_stream_3
                  la         s5, region_1+4580 #start load_store_instr_stream_1
                  sb         s9, 49(s5)
                  la         s3, region_1+6673 #start load_store_instr_stream_2
                  la         a1, region_1+4443 #start load_store_instr_stream_4
                  sh         s3, 17(s3)
                  lb         s7, -42(a1)
                  la         tp, region_1+13829 #start load_store_instr_stream_0
                  lbu        t0, 275(s4)
                  lbu        s2, -243(s5)
                  lb         s2, 1597(s4)
                  lbu        t1, -1832(s4)
                  lbu        t4, -97(tp)
                  lb         s2, 60(s5)
                  sb         s0, 220(tp)
                  lb         t1, -24(s3)
                  lbu        s9, -207(s5)
                  lb         t2, 235(tp)
                  sb         sp, 49(s5)
                  lbu        gp, -655(s4)
                  lb         s10, 18(s3)
                  sb         s3, -186(tp)
                  lb         a0, -158(a1)
                  lw         gp, 15(s3)
                  sb         s10, 75(tp)
                  lb         a4, -62(s3) #end load_store_instr_stream_2
                  sb         a3, 26(a1)
                  lbu        s7, 23(tp)
                  sb         t5, 199(s5)
                  sw         t5, -124(s5)
                  sb         sp, 94(a1)
                  lbu        a6, 147(a1)
                  lb         t2, -179(s5)
                  lhu        a2, -115(a1)
                  lbu        a7, 182(a1)
                  sh         s0, 83(tp)
                  lbu        t6, -172(a1)
                  lbu        a3, -1616(s4) #end load_store_instr_stream_3
                  lb         a0, 253(s5)
                  lbu        s0, 156(a1) #end load_store_instr_stream_4
                  sb         s10, -14(s5) #end load_store_instr_stream_1
                  sb         t0, -86(tp) #end load_store_instr_stream_0
                  ori        t0, a4, 492
                  fence
                  csrrs      s11, 0x340, s6
                  bge        s5, t4, 1504f
                  c.andi     a2, -1
                  xori       t6, s9, 169
                  sltiu      s4, t1, -824
                  div        s9, t2, a0
                  c.addi     gp, 7
                  csrrwi     s9, 0x340, 0
                  bltu       t5, t3, 1519f
                  c.and      a2, a3
1504:             mul        s1, s9, s10
                  add        a5, sp, a6
                  mulh       s1, gp, t4
                  andi       tp, a0, -575
                  bgeu       s0, tp, 1527f
                  beq        s6, a5, 1526f
                  c.and      a5, a5
                  c.xor      a1, a0
                  c.sub      a3, a0
                  csrrci     a2, 0x340, 0
                  csrrw      s0, 0x340, zero
                  remu       a6, a6, a7
                  srl        a0, t5, a7
                  sll        s11, s3, t2
                  bne        a5, a4, 1524f
1519:             blt        s7, s3, 1536f
                  c.srli     s0, 23
                  csrrw      a0, 0x340, s6
                  csrrci     s1, 0x340, 31
                  addi       s11, a0, -1021
1524:             addi       a4, s1, -679
                  bge        s10, s8, 1530f
1526:             xori       s4, t3, 708
1527:             c.nop
                  beq        gp, s9, 1540f
                  c.srli     a1, 16
1530:             div        tp, s6, a5
                  mul        s10, s9, a2
                  sltiu      gp, t6, 179
                  csrrc      a5, 0x340, a2
                  sra        s11, zero, t2
                  xori       t2, t1, -541
1536:             sll        s5, t4, a4
                  nop
                  csrrwi     t1, 0x340, 8
                  csrrw      s10, 0x340, s4
1540:             c.slli     gp, 24
                  c.slli     ra, 3
                  srai       s10, s2, 14
                  csrrci     s11, 0x340, 21
                  sll        tp, tp, s1
                  bltu       gp, s2, 1546f
1546:             srli       t1, s10, 1
                  c.mv       s7, a5
                  div        t2, a3, a2
                  andi       tp, s5, -722
                  csrrs      a1, 0x340, s8
                  c.or       s0, a1
                  srli       t2, s3, 11
                  fence
                  mulhsu     a6, s0, a7
                  bge        a7, s6, 1565f
                  srai       t4, t3, 31
                  c.addi     t5, -1
                  bgeu       s4, s11, 1577f
                  xori       a0, s1, 558
                  c.or       a0, a3
                  srl        ra, s8, a5
                  bne        tp, t0, 1568f
                  andi       s5, t1, -501
                  fence
1565:             bge        s6, a0, 1581f
                  c.xor      a2, s1
                  c.andi     a2, 16
1568:             c.addi     s6, 6
                  c.beqz     a4, 1574f
                  c.bnez     a2, 1580f
                  mul        a7, t2, s5
                  bgeu       s0, tp, 1579f
                  c.srli     a4, 15
1574:             c.xor      a0, a3
                  sra        zero, s0, s2
                  sra        s9, a1, sp
1577:             mulhu      zero, a2, s0
                  bgeu       s10, s3, 1596f
1579:             c.sub      a1, a3
1580:             divu       a3, sp, s3
1581:             c.lui      a6, 9
                  csrrci     s5, 0x340, 6
                  fence
                  sub        t0, s6, a0
                  csrrsi     s6, 0x340, 17
                  bne        t1, t3, 1597f
                  c.xor      a2, s1
                  c.and      a3, a3
                  auipc      a3, 1044100
                  srl        tp, gp, a0
                  c.srai     a0, 8
                  mulhu      a6, s10, t0
                  mulhu      s7, t1, t0
                  c.srai     a3, 22
                  and        t2, a0, s5
1596:             csrrsi     tp, 0x340, 5
1597:             sltu       ra, t1, s6
                  div        a2, t4, t6
                  srl        gp, t0, zero
                  slt        s1, ra, s6
                  blt        a7, s9, 1608f
                  div        a5, s10, s3
                  c.nop
                  csrrw      gp, 0x340, t0
                  and        zero, t4, s3
                  fence
                  sub        s0, a0, sp
1608:             mulh       s0, gp, sp
                  and        a4, a6, zero
                  slt        t2, a4, sp
                  add        s10, s4, s8
                  c.andi     a3, -1
                  la         t5, region_2+678 #start load_store_instr_stream_1
                  la         t1, region_2+1696 #start load_store_instr_stream_0
                  lb         a7, -5(t1)
                  lhu        a2, -44(t1)
                  sb         s9, 40(t1)
                  lbu        a7, -19(t5)
                  lb         ra, 31(t1)
                  lbu        a3, 31(t5)
                  sh         s11, 18(t1)
                  sb         s3, 47(t5)
                  sw         a2, 26(t5)
                  lbu        t6, 25(t1)
                  lbu        a2, -59(t5) #end load_store_instr_stream_1
                  sb         a4, 12(t1) #end load_store_instr_stream_0
                  sll        a5, a5, a3
                  xor        a3, a3, t2
                  c.mv       s9, a0
                  slli       t5, tp, 29
                  mulh       s6, gp, t1
                  sltu       s7, t5, ra
                  csrrc      s11, 0x340, a4
                  csrrwi     s4, 0x340, 29
                  sltu       t2, tp, a3
                  c.srai     a5, 5
                  and        s2, s0, a5
                  xori       t4, s4, -181
                  andi       a4, a4, -492
                  fence.i
                  xori       a7, a0, 1016
                  or         s3, t4, t5
                  c.or       a5, s1
                  srli       a5, t3, 4
                  addi       tp, zero, -624
                  c.beqz     a5, 1649f
                  slti       s4, s10, 119
                  c.li       s2, -1
                  fence.i
                  or         a0, a3, s8
                  csrrw      a1, 0x340, s6
                  divu       gp, sp, s6
                  mulhu      a4, s11, s6
                  add        s5, s2, s9
                  add        s11, sp, t1
                  mulhu      tp, s8, a5
                  srai       s1, a3, 18
                  sltiu      a4, a1, -789
                  sra        a1, t3, a0
                  mulhsu     s1, s6, s5
                  csrrci     s9, 0x340, 5
                  mulh       s9, zero, zero
1649:             add        a4, a0, t5
                  csrrw      zero, 0x340, t2
                  sub        s7, t4, sp
                  lui        s3, 772712
                  c.add      t1, a1
                  srai       zero, s3, 3
                  c.beqz     a4, 1669f
                  fence
                  c.slli     s9, 3
                  or         a1, s5, gp
                  blt        s2, sp, 1668f
                  slti       t1, s11, -210
                  c.sub      a3, s0
                  srl        s1, t4, s6
                  srl        t5, a0, a2
                  c.bnez     a4, 1674f
                  c.beqz     a4, 1681f
                  c.or       a4, a0
                  sra        s11, t5, t4
1668:             c.xor      a1, a0
1669:             auipc      s5, 77445
                  csrrw      s0, 0x340, s1
                  slli       a6, s4, 11
                  sra        a5, t4, zero
                  c.slli     s0, 8
1674:             remu       a5, s8, sp
                  mulhsu     t2, a1, t0
                  remu       t2, a5, a5
                  csrrc      a1, 0x340, s9
                  slt        a2, s7, t2
                  c.mv       t4, s1
                  sltu       t0, a6, t0
1681:             sub        a7, sp, s8
                  bgeu       zero, s9, 1687f
                  c.sub      a1, a1
                  csrrsi     t6, 0x340, 12
                  fence.i
                  c.or       s0, a0
1687:             c.mv       t2, a5
                  srai       s6, t6, 5
                  srli       t2, s11, 26
                  remu       s7, t6, s4
                  csrrwi     s5, 0x340, 7
                  c.or       a5, a0
                  andi       s9, s9, -857
                  add        ra, ra, a6
                  fence
                  sub        a1, t3, sp
                  ori        a2, a5, 363
                  fence.i
                  bne        s11, tp, 1716f
                  c.bnez     a0, 1719f
                  csrrwi     s10, 0x340, 6
                  c.srai     s0, 9
                  csrrsi     t2, 0x340, 11
                  remu       t0, t4, t5
                  csrrc      a7, 0x340, t4
                  lui        a3, 481569
                  slli       a4, s6, 23
                  bne        s9, tp, 1713f
                  mulhsu     tp, t5, t0
                  bltu       s7, gp, 1721f
                  bne        tp, a3, 1721f
                  c.sub      s0, a1
1713:             sltu       s1, t2, s0
                  c.or       a2, a2
                  sltu       t4, sp, s5
1716:             slti       a7, ra, 972
                  srai       t1, t5, 22
                  c.sub      s1, a5
1719:             mulh       a4, a6, sp
                  rem        a0, a4, a0
1721:             blt        a5, s10, 1725f
                  slli       t5, t0, 26
                  mul        a7, s0, zero
                  csrrs      s0, 0x340, tp
1725:             mulhu      t4, sp, a4
                  csrrci     s0, 0x340, 22
                  csrrc      a6, 0x340, s5
                  slli       t1, s6, 6
                  div        s9, a3, ra
                  srli       a7, s4, 20
test_done:        
                  li gp, 1
                  ecall
sub_1:            addi       sp, sp, -16
                  mulhsu     t6, a6, a0
                  xor        s11, a2, s8
                  sll        t6, a2, t6
                  c.lui      s4, 7
                  c.or       a3, a4
                  c.li       s4, 4
                  sw         ra, 4(sp)
                  fence
                  mulhu      t4, s8, a1
                  divu       s7, s0, a5
                  la         a3, region_2+523 #start riscv_hazard_instr_stream_8
                  lh         s0, -45(a3)
                  c.nop
                  lb         a0, 64(a3)
                  xor        s0, t1, a0
                  sw         s0, 25(a3)
                  sb         s3, 18(a3)
                  sb         s10, -44(a3)
                  sra        s0, a1, s10
                  sb         s10, -49(a3)
                  lb         s3, 62(a3)
                  lb         a1, 16(a3)
                  divu       a1, a1, s0
                  c.sub      a0, a0
                  sh         t1, 9(a3)
                  mulhu      s3, s3, s10
                  c.andi     a1, -1
                  c.or       s0, s0
                  lb         s0, 18(a3)
                  lb         a0, 61(a3)
                  andi       s3, s10, -754
                  c.li       s3, -1
                  lw         t1, -63(a3)
                  slli       a0, a0, 9
                  lbu        t1, 15(a3)
                  c.addi     s0, 12
                  lb         a0, -4(a3)
                  sb         a0, -54(a3)
                  c.addi     s3, -1
                  sh         t1, 39(a3)
                  lw         a0, -3(a3)
                  sb         a1, -49(a3)
                  c.srai     a1, 18
                  lb         s10, 4(a3)
                  add        t1, a0, s10
                  c.mv       a1, t1
                  c.mv       s10, s0
                  lb         s10, -32(a3)
                  lb         t1, 63(a3)
                  csrrwi     s0, 0x340, 6
                  sh         s0, 15(a3)
                  lh         a0, 9(a3)
                  remu       s3, s0, a0
                  c.lui      a0, 20
                  rem        a1, a1, s3
                  addi       t1, s10, -968
                  lhu        a0, -57(a3)
                  lb         a1, -19(a3)
                  mul        s3, t1, a1
                  divu       t1, s0, t1
                  c.slli     a0, 11
                  sb         s3, -50(a3) #end riscv_hazard_instr_stream_8
sub_1_14:         jal        ra, 10f
0:                c.jal      3f
1:                c.jal      22f
2:                jal        ra, 18f
3:                jal        ra, 26f
4:                c.j        19f
5:                c.jal      20f
6:                jal        ra, 25f
7:                c.j        29f
8:                c.jal      2b
9:                c.jal      15f
10:               c.j        9b
11:               c.j        12f
12:               c.j        1b
13:               c.jal      24f
14:               c.j        8b
15:               c.j        11b
16:               jal        ra, 23f
17:               jal        ra, 0b
18:               c.j        4b
19:               jal        tp, 13b
20:               c.jal      6b
21:               jal        ra, 14b
22:               c.jal      5b
23:               c.jal      21b
24:               c.jal      7b
25:               jal        ra, 27f
26:               jal        ra, 16b
27:               c.jal      28f
28:               jal        a5, 17b
29:               c.addi     s4, -1
sub_1_15:         jal        ra, 7f
0:                jal        t1, 13f
1:                c.jal      19f
2:                jal        a2, 10f
3:                c.j        14f
4:                jal        t1, 3b
5:                c.j        9f
6:                jal        ra, 4b
7:                c.jal      15f
8:                c.j        16f
9:                c.jal      18f
10:               jal        ra, 5b
11:               c.jal      2b
12:               c.jal      1b
13:               c.j        11b
14:               jal        ra, 0b
15:               c.jal      8b
16:               c.j        12b
17:               jal        ra, 20f
18:               c.j        17b
19:               jal        ra, 6b
20:               c.j        21f
21:               sltiu      t2, s8, -180
                  la         a3, region_2+8127 #start riscv_hazard_instr_stream_6
                  lbu        s0, -1194(a3)
                  lw         s4, -1659(a3)
                  csrrw      s11, 0x340, s0
                  fence.i
                  lh         s11, -293(a3)
                  divu       s4, s11, s11
                  andi       s4, a2, -153
                  sb         a2, -1553(a3)
                  c.slli     a2, 13
                  c.mv       s3, a2
                  mul        s0, a2, a2
                  sub        a2, a2, a2
                  lb         s0, -1378(a3)
                  slli       a2, s0, 19
                  lb         s4, -38(a3)
                  divu       s4, a2, s3
                  sb         s4, -926(a3)
                  remu       s3, s4, s4
                  lb         s3, -826(a3)
                  srai       s4, s4, 23
                  lhu        s11, -1793(a3)
                  lb         s3, -410(a3)
                  sb         s4, -28(a3)
                  sw         s3, -1835(a3)
                  sb         s0, -1692(a3)
                  csrrci     s4, 0x340, 31
                  sh         a6, -577(a3)
                  csrrsi     a2, 0x340, 20
                  sh         s3, -1975(a3)
                  lbu        s11, -1826(a3)
                  and        s0, a6, s11
                  lb         a6, -343(a3)
                  csrrc      s11, 0x340, a6
                  remu       a6, s11, s4
                  slti       a6, a2, 261
                  divu       a6, a6, s11
                  lbu        a2, -1938(a3)
                  sh         s3, -1057(a3)
                  rem        s4, s4, s0
                  ori        s11, s11, -977
                  addi       s4, s3, 352
                  addi       s11, a6, -500
                  csrrw      s4, 0x340, s11
                  mulhu      s0, s11, a2
                  csrrsi     s0, 0x340, 12
                  lh         a2, -667(a3)
                  lbu        a6, -18(a3)
                  sw         s11, -551(a3)
                  lb         s0, -1704(a3) #end riscv_hazard_instr_stream_6
                  la         t6, region_0+3504 #start load_store_instr_stream_1
                  la         a4, region_4+20 #start load_store_instr_stream_2
                  la         s3, region_3+224 #start load_store_instr_stream_3
                  lb         zero, 147(s3)
                  la         a1, region_2+4494 #start load_store_instr_stream_0
                  la         a7, region_1+6878 #start load_store_instr_stream_4
                  lw         a6, 1312(a4)
                  lb         s7, 128(a7)
                  lw         a3, 80(t6)
                  lh         zero, 814(a4)
                  sb         a7, -957(a7)
                  lbu        s7, 151(s3)
                  sb         s0, 707(a7)
                  lbu        a6, 717(a7)
                  lb         s4, -149(t6)
                  lbu        a6, -125(a1)
                  lb         t1, -1665(a7)
                  lb         a2, 31(t6)
                  lbu        s1, 165(s3)
                  lb         zero, 71(a1)
                  lb         t4, 1945(a4)
                  lh         t0, 254(s3)
                  lh         gp, -1026(a7)
                  lbu        zero, 1451(a7)
                  lb         ra, 794(a4)
                  sb         zero, 136(a1)
                  lb         s11, -183(t6)
                  sb         t3, 212(s3)
                  lhu        a0, -98(t6)
                  sb         t4, -243(t6)
                  lb         zero, -47(s3)
                  sb         a2, 108(a1)
                  sw         t6, -24(s3)
                  lbu        a3, 187(s3)
                  lh         ra, -40(t6)
                  lhu        t5, 10(a4) #end load_store_instr_stream_2
                  lb         a0, 201(a1)
                  lbu        a6, 194(t6)
                  lb         s11, -65(s3) #end load_store_instr_stream_3
                  lb         zero, 247(t6) #end load_store_instr_stream_1
                  sh         gp, 10(a7) #end load_store_instr_stream_4
                  lb         s4, 45(a1)
                  lb         t0, 11(a1) #end load_store_instr_stream_0
                  la         a4, region_4+210 #start riscv_load_store_rand_instr_stream_8
                  c.sub      s0, a2
                  lb         t1, 1228(a4)
                  csrrs      a5, 0x340, s2
                  sub        t6, t0, s10
                  or         t2, s4, s10
                  lb         a3, 617(a4)
                  fence.i
                  c.nop
                  c.nop
                  lw         t4, 1234(a4)
                  c.srai     s1, 14
                  lhu        s0, 724(a4)
                  c.slli     a7, 23
                  rem        ra, a0, t3
                  slti       s0, a3, 365
                  nop
                  sltiu      t2, a1, -266
                  divu       s11, tp, t1
                  lb         a0, 447(a4)
                  divu       s7, a4, s1
                  csrrci     s3, 0x340, 3
                  lh         s6, 382(a4)
                  or         gp, t6, s4
                  lbu        t6, 255(a4)
                  c.addi     s7, -1
                  lbu        s5, 1721(a4)
                  sb         zero, 1863(a4)
                  lb         s3, 153(a4)
                  lb         a7, -140(a4)
                  c.nop
                  andi       t5, t5, 463
                  lb         a7, 201(a4)
                  andi       zero, s0, -209
                  c.xor      a0, a3
                  csrrs      t2, 0x340, a6
                  and        s7, s8, a3
                  or         s0, s2, s1
                  lbu        s0, -30(a4)
                  addi       s7, gp, -663
                  auipc      a6, 423849
                  divu       a7, t6, t4
                  div        s6, a5, zero
                  c.li       t2, -1
                  lhu        t2, 870(a4) #end riscv_load_store_rand_instr_stream_8
                  la         a7, region_4+2969 #start load_store_instr_stream_2
                  la         s7, region_4+3679 #start load_store_instr_stream_1
                  la         t0, region_4+2668 #start load_store_instr_stream_0
                  sb         a1, 30(s7)
                  lhu        a4, -14(t0)
                  lh         s5, 33(s7)
                  lb         zero, -10(a7)
                  lb         a5, -12(a7)
                  lh         gp, 37(s7)
                  sb         s11, -5(a7)
                  lh         zero, -56(t0)
                  sh         a2, 58(t0)
                  sb         s4, -62(s7)
                  lbu        s2, 6(a7)
                  lbu        s4, -2(a7)
                  lbu        zero, -16(t0)
                  lh         gp, -49(s7)
                  sb         gp, -13(a7)
                  lbu        s2, 7(a7)
                  sb         t6, 10(t0)
                  lbu        ra, 2(a7)
                  lb         s9, -25(s7)
                  lb         s6, -14(a7)
                  lb         a0, -52(s7)
                  lhu        s6, -15(s7) #end load_store_instr_stream_1
                  sh         a1, -1(a7) #end load_store_instr_stream_2
                  sh         a3, -32(t0) #end load_store_instr_stream_0
                  addi       a4, zero, -6 #init loop 0 counter
                  xori       t0, s8, -632
                  auipc      t0, 1040972
                  csrrwi     s5, 0x340, 28
                  addi       zero, zero, 0 #init loop 0 limit
                  sub        s0, s8, s8
                  xori       s11, tp, -767
                  c.slli     tp, 27
sub_1_50_0_t:     rem        a1, t0, s8
                  c.nop
                  addi       a4, a4, 3 #update loop 0 counter
                  c.bnez     a4, sub_1_50_0_t #branch for loop 0
                  mul        gp, s5, a2
                  la         t0, region_3+171 #start riscv_load_store_rand_instr_stream_6
                  rem        s9, t2, s3
                  c.xor      a4, a0
                  lhu        s5, -49(t0)
                  lbu        s10, -109(t0)
                  lbu        t1, 43(t0)
                  fence
                  sb         t4, 54(t0)
                  sltiu      zero, s4, -408
                  lb         t1, 88(t0)
                  mulh       a4, zero, t1
                  lhu        s11, -37(t0)
                  c.sub      s1, a5
                  xor        tp, s6, gp
                  lh         a1, -69(t0)
                  lb         s2, 27(t0)
                  c.slli     s6, 3
                  andi       t6, s6, -998
                  addi       t4, s3, 16
                  mulhu      s2, s11, t1
                  sw         t6, 121(t0)
                  add        gp, s4, s1
                  sh         a6, -71(t0)
                  lbu        s11, 210(t0)
                  lbu        a1, 256(t0)
                  lh         a5, 255(t0)
                  lb         s9, -149(t0)
                  lb         s1, -111(t0)
                  lh         a3, 31(t0)
                  addi       s5, s11, -657
                  xor        a6, a2, s11
                  mulhu      ra, s9, s3
                  sra        gp, t4, a0
                  lb         a0, -121(t0)
                  c.xor      a5, s1
                  c.lui      gp, 3
                  sh         s9, -109(t0)
                  mul        gp, s1, s2
                  csrrwi     t1, 0x340, 8
                  srai       a5, zero, 1
                  lbu        a1, 136(t0) #end riscv_load_store_rand_instr_stream_6
                  la         a6, region_3+172 #start riscv_hazard_instr_stream_7
                  andi       s11, s11, 663
                  lh         s1, 14(a6)
                  sub        a5, a2, s1
                  lb         a4, -12(a6)
                  lb         a4, -7(a6)
                  fence.i
                  lhu        a5, 2(a6)
                  c.addi     s6, 12
                  sb         a5, -11(a6)
                  sb         s1, -3(a6)
                  sb         a5, 5(a6)
                  sb         a4, 9(a6)
                  csrrs      a2, 0x340, s11
                  div        a4, a2, a4
                  lh         a4, 14(a6)
                  lb         a5, 4(a6)
                  lb         a5, -1(a6)
                  csrrs      s1, 0x340, a5
                  c.li       a4, 21
                  mulhsu     s1, s6, s6
                  lbu        s11, -13(a6)
                  lbu        s11, 7(a6)
                  lb         a4, 15(a6)
                  lh         s11, -10(a6)
                  lhu        a4, -4(a6)
                  lb         a2, 3(a6)
                  lw         a2, -12(a6)
                  lb         a4, 13(a6)
                  lh         a5, 2(a6)
                  andi       a5, a4, -394
                  or         a4, s11, a4
                  mul        s6, s11, a4
                  sb         a2, -9(a6)
                  csrrc      s11, 0x340, s6
                  sb         a5, -15(a6) #end riscv_hazard_instr_stream_7
                  la         t6, region_1+3256 #start load_store_instr_stream_1
                  lh         t5, -42(t6)
                  la         t1, region_1+6042 #start load_store_instr_stream_0
                  sb         t5, -54(t6)
                  lbu        zero, 1183(t1)
                  lb         s2, 56(t6)
                  sh         s8, -1332(t1)
                  lb         s1, -21(t6)
                  sb         zero, 40(t6)
                  sb         t6, 1881(t1)
                  lb         a6, -2014(t1)
                  lhu        a7, -2016(t1)
                  lh         s3, 62(t6)
                  lhu        ra, 34(t6)
                  sb         s8, -47(t6)
                  lbu        t4, -15(t6) #end load_store_instr_stream_1
                  lb         s1, 420(t1) #end load_store_instr_stream_0
                  la         s10, region_0+2651 #start load_store_instr_stream_2
                  la         tp, region_0+1908 #start load_store_instr_stream_3
                  sb         s0, 10(s10)
                  la         t1, region_0+2087 #start load_store_instr_stream_0
                  la         a7, region_0+571 #start load_store_instr_stream_1
                  sb         s8, -1(tp)
                  lhu        a2, -13(a7)
                  lw         a0, -107(s10)
                  lh         a5, -4(tp)
                  lbu        t2, 11(tp)
                  lh         gp, 83(t1)
                  sw         s6, 8(tp)
                  sb         tp, 211(s10)
                  sb         a6, -242(s10)
                  lbu        t0, 2(a7)
                  sb         s2, -6(a7)
                  sb         zero, -13(tp)
                  lb         t2, -217(s10)
                  lbu        t0, -702(t1)
                  lbu        t4, -5(a7)
                  sb         t4, -13(tp)
                  lb         gp, -174(s10)
                  lbu        s3, -3(tp)
                  sb         a3, 13(a7)
                  lb         s9, -110(s10)
                  lbu        s9, -6(a7)
                  sh         s1, 8(tp)
                  lb         t6, -984(t1)
                  lbu        a6, -15(a7)
                  lbu        a5, 13(tp) #end load_store_instr_stream_3
                  lh         gp, 1323(t1)
                  sb         a7, 38(s10) #end load_store_instr_stream_2
                  lb         s9, 8(a7) #end load_store_instr_stream_1
                  sb         s2, -1967(t1) #end load_store_instr_stream_0
                  addi       s1, zero, -4 #init loop 0 counter
                  addi       zero, zero, 0 #init loop 0 limit
sub_1_45_0_t:     c.xor      a4, a5
                  addi       s1, s1, 4 #update loop 0 counter
                  c.bnez     s1, sub_1_45_0_t #branch for loop 0
                  mulh       a1, s10, s2
                  la         t4, region_3+49 #start riscv_hazard_instr_stream_10
                  sb         a3, -8(t4)
                  sw         gp, -9(t4)
                  addi       s3, tp, -864
                  c.srli     a3, 17
                  slti       tp, gp, 266
                  c.srai     a3, 12
                  lbu        t2, 18(t4)
                  lbu        s3, 36(t4)
                  fence.i
                  lhu        gp, -35(t4)
                  sb         a3, -48(t4)
                  lhu        t2, -15(t4)
                  sb         gp, -13(t4)
                  lb         gp, 22(t4)
                  lbu        gp, -31(t4)
                  or         t2, gp, s4
                  ori        s3, a3, -773
                  lb         gp, 6(t4)
                  xori       tp, t2, 280
                  xor        s4, s4, s4
                  sh         a3, 17(t4)
                  and        s4, a3, gp
                  sll        s3, a3, t2
                  rem        gp, t2, t2
                  ori        gp, t2, -773
                  sb         s3, 34(t4)
                  lbu        tp, -26(t4)
                  c.srai     a3, 30
                  ori        s4, s4, -547
                  sb         tp, -22(t4)
                  sra        tp, gp, t2
                  sb         s3, -31(t4)
                  ori        a3, gp, 961
                  lb         s3, -38(t4)
                  c.li       tp, -1
                  lb         gp, 36(t4)
                  csrrwi     tp, 0x340, 29
                  lb         s4, -2(t4)
                  lbu        s4, 41(t4)
                  c.slli     t2, 16
                  mulh       a3, a3, a3
                  c.andi     a3, 31
                  lbu        gp, 5(t4) #end riscv_hazard_instr_stream_10
                  la         s11, region_0+3090 #start riscv_hazard_instr_stream_2
                  lb         t5, 55(s11)
                  lbu        gp, -177(s11)
                  sh         t5, 96(s11)
                  lhu        s6, 200(s11)
                  sw         s3, -114(s11)
                  c.addi     gp, 3
                  andi       gp, s3, -369
                  auipc      t5, 286210
                  lb         s6, -212(s11)
                  or         gp, t5, gp
                  lbu        t5, 165(s11)
                  andi       s3, s3, -310
                  sltu       t5, a2, a2
                  lbu        gp, -62(s11)
                  lb         s6, 191(s11)
                  lh         a2, -226(s11)
                  c.xor      a2, a2
                  lbu        a2, -104(s11)
                  sh         t5, -222(s11)
                  lhu        s3, -126(s11)
                  sb         s7, 227(s11)
                  lb         t5, 100(s11)
                  lw         s6, -162(s11)
                  c.addi     a2, -1
                  srl        gp, t5, s6
                  xor        t5, s7, s6
                  nop
                  sh         s7, -96(s11)
                  sb         t5, 149(s11)
                  lw         gp, 46(s11)
                  lbu        a2, 39(s11)
                  lw         t5, -2(s11)
                  lh         s3, 216(s11)
                  mulh       gp, s7, s6
                  sb         s6, 217(s11)
                  lb         t5, 144(s11) #end riscv_hazard_instr_stream_2
                  la         t1, region_0+387 #start riscv_hazard_instr_stream_3
                  andi       gp, a7, 726
                  lbu        a1, 208(t1)
                  sb         s1, 230(t1)
                  and        a3, gp, s10
                  andi       a1, s1, 120
                  slti       a1, gp, 38
                  sb         a3, -24(t1)
                  sb         a7, 229(t1)
                  fence
                  sb         s1, -42(t1)
                  sub        a1, a3, a1
                  sh         s1, -53(t1)
                  lbu        gp, -4(t1)
                  lui        s10, 58843
                  fence.i
                  add        a7, gp, a7
                  div        a1, s1, s1
                  lb         a3, 137(t1)
                  lb         a3, -246(t1)
                  add        s10, a7, s10
                  lb         s1, 126(t1)
                  lhu        s10, -153(t1)
                  lbu        a7, -190(t1)
                  lhu        gp, 61(t1)
                  lb         a7, -250(t1)
                  lb         a3, 116(t1)
                  andi       a1, a1, 846
                  sb         gp, -71(t1)
                  lbu        gp, 134(t1)
                  lb         a3, 30(t1)
                  lbu        s10, -98(t1)
                  c.srli     a1, 1
                  sltiu      s1, a3, -931
                  lbu        a1, 142(t1)
                  lbu        s1, -48(t1)
                  sra        s10, a7, gp
                  mul        s10, a1, gp
                  sb         gp, -19(t1)
                  slt        s10, gp, gp
                  c.or       s1, a3
                  lhu        a1, 67(t1)
                  mulhsu     a1, gp, s1
                  lbu        a7, -50(t1)
                  lbu        a3, -220(t1)
                  lb         s10, 46(t1) #end riscv_hazard_instr_stream_3
                  la         gp, region_4+308 #start load_store_instr_stream_2
                  la         s10, region_0+2317 #start load_store_instr_stream_1
                  sb         gp, -132(s10)
                  la         s1, region_2+655 #start load_store_instr_stream_0
                  la         s3, region_3+135 #start load_store_instr_stream_3
                  lbu        s7, 1003(gp)
                  lbu        s11, -16(s3)
                  lb         a7, -1843(s10)
                  lbu        s6, -71(gp)
                  lb         t0, -28(s3)
                  lw         a1, -36(gp)
                  sb         s3, 4(s1)
                  lb         a1, 824(s1)
                  lb         a0, 1702(gp)
                  sb         s8, 48(s3)
                  lb         s9, 984(gp)
                  lb         s11, -62(s3)
                  sb         gp, -1295(s10)
                  lw         a5, 1477(s1)
                  lb         tp, -332(s1)
                  lb         s6, -1294(s10)
                  lh         a4, -3(s3)
                  sb         t1, 370(s10)
                  lbu        t6, -1669(s10)
                  sb         s2, 16(s3)
                  sb         s11, 1381(gp)
                  sb         a6, 1663(gp)
                  lbu        zero, -620(s10)
                  lhu        a4, -53(s3)
                  sb         t3, -15(gp) #end load_store_instr_stream_2
                  sb         t1, 1526(s10) #end load_store_instr_stream_1
                  sw         a5, -7(s3) #end load_store_instr_stream_3
                  sb         s6, -99(s1) #end load_store_instr_stream_0
                  la         s0, region_4+1685 #start load_store_instr_stream_1
                  la         t0, region_4+2523 #start load_store_instr_stream_0
                  lb         t4, 1316(s0)
                  lb         s9, -5(t0)
                  sb         t6, 389(s0)
                  sw         t0, 2027(s0)
                  sw         t2, 1003(s0)
                  lh         s6, -9(t0)
                  sb         t2, -10(t0)
                  lbu        s11, -4(t0)
                  lb         s2, 1054(s0)
                  lb         gp, 370(s0)
                  lw         s5, 9(t0)
                  sw         s5, -7(t0)
                  lbu        s9, -4(t0)
                  sb         t0, -715(s0)
                  lbu        s2, 1567(s0) #end load_store_instr_stream_1
                  sb         sp, -2(t0)
                  sb         gp, 5(t0) #end load_store_instr_stream_0
                  la         a7, region_2+7812 #start riscv_hazard_instr_stream_9
                  c.xor      a4, a3
                  lui        tp, 928436
                  c.or       a3, a4
                  sh         t1, 12(a7)
                  lhu        t1, -4(a7)
                  c.li       a4, -1
                  lb         zero, 6(a7)
                  xori       a4, a4, -740
                  c.srli     a3, 31
                  sb         tp, 16(a7)
                  c.lui      a4, 21
                  sb         zero, -12(a7)
                  srai       tp, a4, 15
                  lbu        t1, 13(a7)
                  lb         a3, 1(a7)
                  c.xor      a4, a4
                  sb         a4, -11(a7)
                  divu       zero, a4, a3
                  lbu        zero, -11(a7)
                  mul        zero, zero, tp
                  c.andi     s0, 19
                  lw         s0, 8(a7)
                  or         t1, a3, a4
                  ori        s0, s0, -695
                  add        tp, s0, a4
                  sltiu      zero, tp, 994
                  sb         s0, -4(a7)
                  lh         a3, 6(a7)
                  lb         a4, -13(a7)
                  slti       s0, s0, -466
                  sh         s0, 16(a7)
                  csrrc      a3, 0x340, tp
                  lw         a3, -4(a7)
                  lhu        a3, -10(a7)
                  c.andi     s0, -1
                  remu       s0, tp, tp
                  lb         s0, 3(a7)
                  srl        a3, a4, s0
                  c.sub      s0, a4
                  sh         tp, -14(a7)
                  lbu        a4, 0(a7)
                  sb         a3, -3(a7) #end riscv_hazard_instr_stream_9
                  la         s6, region_3+479 #start load_store_instr_stream_1
                  la         a5, region_4+345 #start load_store_instr_stream_0
                  lh         a3, -461(s6)
                  sb         t2, -377(s6)
                  lbu        s10, -8(s6)
                  sb         t4, -138(s6)
                  lbu        ra, -230(a5)
                  sb         a0, 241(a5)
                  lhu        a3, -41(s6) #end load_store_instr_stream_1
                  lb         a1, -25(a5)
                  lb         ra, -211(a5)
                  lbu        s4, 244(a5) #end load_store_instr_stream_0
                  la         a6, region_0+753 #start load_store_instr_stream_3
                  la         t2, region_2+2021 #start load_store_instr_stream_1
                  sb         s8, -194(a6)
                  lbu        s4, 136(a6)
                  la         s6, region_3+202 #start load_store_instr_stream_4
                  lb         a0, 405(t2)
                  sb         a2, 46(s6)
                  lbu        s2, -214(a6)
                  sb         t5, -1048(t2)
                  la         s0, region_4+89 #start load_store_instr_stream_2
                  sb         s9, 217(s6)
                  lb         t5, 1894(t2)
                  lbu        zero, 136(a6)
                  lh         s7, 120(s6)
                  la         ra, region_1+7890 #start load_store_instr_stream_0
                  sb         s4, 37(s0)
                  sb         s4, 356(t2)
                  lb         t1, -805(ra)
                  lb         tp, -805(ra)
                  lb         t1, -22(s0)
                  lb         tp, 172(a6)
                  lbu        s7, 956(t2)
                  lbu        a5, 112(a6)
                  lb         gp, -1882(t2)
                  lbu        zero, 932(ra)
                  lbu        s9, 823(ra)
                  lbu        t5, -49(a6)
                  lb         a3, 83(a6)
                  lb         a7, 57(s0)
                  lbu        t0, -150(a6)
                  lhu        s9, 1208(ra)
                  lbu        t1, -16(s0)
                  lb         s4, 20(s0)
                  lbu        t0, 861(ra)
                  sb         zero, 718(t2)
                  sh         s9, 109(a6) #end load_store_instr_stream_3
                  lh         t4, 17(s0)
                  sw         a0, -1789(t2)
                  lb         s9, 14(s0)
                  lbu        gp, 248(s6)
                  lbu        s10, 160(ra)
                  lbu        s7, 133(s6) #end load_store_instr_stream_4
                  lbu        tp, 1958(t2) #end load_store_instr_stream_1
                  lhu        s10, 5(s0) #end load_store_instr_stream_2
                  sb         s9, -1661(ra) #end load_store_instr_stream_0
                  la         s11, region_4+1260 #start riscv_hazard_instr_stream_4
                  sb         s0, -1(s11)
                  lw         s7, -16(s11)
                  c.mv       s7, gp
                  sb         a4, -15(s11)
                  sw         gp, 0(s11)
                  c.and      a5, a4
                  sb         a5, 13(s11)
                  lbu        a5, -10(s11)
                  sw         a4, 8(s11)
                  lhu        a4, -14(s11)
                  sh         a4, 14(s11)
                  lh         s0, 2(s11)
                  lbu        s0, -15(s11)
                  lhu        a5, -8(s11)
                  sb         gp, -3(s11)
                  sb         s7, 15(s11)
                  lb         s7, 11(s11)
                  sb         s7, -1(s11)
                  c.nop
                  sh         s0, 16(s11)
                  lbu        a5, -1(s11)
                  csrrwi     a7, 0x340, 25
                  sb         s0, 5(s11)
                  c.and      s0, a4
                  lhu        s7, -12(s11)
                  lb         a7, -14(s11)
                  lhu        a5, -2(s11)
                  lb         a4, -5(s11)
                  sb         a4, -7(s11)
                  sw         a5, 8(s11)
                  c.slli     s0, 1
                  csrrci     a4, 0x340, 4
                  xor        s0, s0, a5
                  lb         a7, 0(s11)
                  lhu        a4, 14(s11)
                  c.slli     a4, 30
                  divu       gp, a5, s0
                  lui        s7, 244703
                  sb         a5, 2(s11)
                  sb         a5, 3(s11)
                  and        a7, a5, a7
                  lb         s0, -12(s11) #end riscv_hazard_instr_stream_4
                  addi       tp, zero, -10 #init loop 0 counter
                  c.and      s1, s0
                  c.addi     s1, -1
                  andi       gp, t2, -529
                  slti       s0, a6, -546
                  slt        s4, a0, a4
                  rem        ra, a6, t6
                  c.li       t5, 21
                  c.lui      s6, 17
                  addi       t2, zero, 0 #init loop 0 limit
sub_1_48_0_t:     c.mv       s1, t0
                  c.xor      a4, s0
                  fence.i
                  c.mv       s2, s8
                  sub        a2, t4, s4
                  addi       tp, tp, 1 #update loop 0 counter
                  c.addi     ra, 13
                  c.slli     s2, 26
                  slti       s0, s2, -930
                  sll        a4, s2, a4
                  c.srai     a3, 3
                  blt        tp, t2, sub_1_48_0_t #branch for loop 0
                  csrrci     s6, 0x340, 20
sub_1_21:         jal        ra, 1f
0:                jal        t1, 2f
1:                jal        t1, 8f
2:                c.jal      14f
3:                c.j        0b
4:                c.j        7f
5:                c.jal      11f
6:                c.j        13f
7:                c.jal      6b
8:                jal        a3, 10f
9:                jal        a2, 12f
10:               c.jal      4b
11:               c.jal      15f
12:               c.j        3b
13:               c.j        9b
14:               jal        t1, 5b
15:               c.mv       s9, s11
                  la         s11, region_4+389 #start riscv_hazard_instr_stream_1
                  sb         a6, -144(s11)
                  lbu        t0, 84(s11)
                  remu       a5, a6, a5
                  lbu        a7, -213(s11)
                  slti       a5, tp, -154
                  lb         a4, -86(s11)
                  sb         t0, -147(s11)
                  lb         a7, -36(s11)
                  lw         tp, -81(s11)
                  lbu        a7, -224(s11)
                  sb         tp, 90(s11)
                  csrrw      a5, 0x340, tp
                  sb         a4, -12(s11)
                  srli       a5, a6, 11
                  lb         tp, -142(s11)
                  andi       a7, a4, -231
                  fence
                  lbu        a7, -4(s11)
                  lw         t0, 215(s11)
                  lb         a6, -88(s11)
                  c.mv       a7, a4
                  lbu        t0, -235(s11)
                  lb         t0, 209(s11)
                  addi       tp, a5, -611
                  lh         a7, 135(s11)
                  lbu        tp, 82(s11)
                  lbu        a6, 120(s11)
                  remu       a5, t0, a7
                  xori       a6, t0, 373
                  mulh       a6, t0, a6
                  lb         a7, 12(s11)
                  lb         a6, 217(s11)
                  lb         t0, -141(s11)
                  lbu        a7, -231(s11)
                  andi       a6, a6, 231
                  sra        a4, a6, t0
                  lbu        tp, 203(s11) #end riscv_hazard_instr_stream_1
                  la         t1, region_2+5071 #start riscv_load_store_rand_instr_stream_5
                  sb         t2, 1160(t1)
                  srl        a4, s1, a0
                  lw         s2, -455(t1)
                  lb         a5, -1573(t1)
                  rem        s5, a1, a0
                  mulhu      s0, t0, s2
                  sub        a2, s4, s8
                  lb         gp, 1211(t1)
                  lb         s9, -1370(t1)
                  c.srli     a1, 7
                  fence.i
                  mulhsu     a3, s2, s6
                  fence.i
                  lhu        tp, 1817(t1)
                  sw         s11, -467(t1)
                  lb         a3, -769(t1)
                  sb         s2, -918(t1)
                  lbu        s0, 859(t1)
                  lb         zero, 135(t1)
                  sra        t4, sp, a3
                  nop
                  c.and      a3, s0
                  c.slli     gp, 9
                  lb         s11, 172(t1)
                  sra        t2, s3, a5
                  lbu        s7, 1127(t1)
                  lh         a4, -973(t1)
                  lb         s3, -1866(t1)
                  lw         zero, -1967(t1)
                  csrrsi     a1, 0x340, 26
                  sb         s8, -1834(t1)
                  sll        s4, t3, s10
                  lb         t4, -154(t1)
                  xor        t5, t0, t0
                  remu       t5, t4, a1
                  lb         gp, 1366(t1)
                  lb         s5, -1612(t1)
                  c.sub      a2, a1
                  sb         tp, 1140(t1)
                  c.li       s4, -1
                  c.srli     a2, 8
                  sll        a4, t3, s5
                  sh         a2, 1457(t1)
                  xori       t0, a1, -966
                  lbu        s5, 2014(t1)
                  lb         zero, 1928(t1)
                  c.lui      a2, 8
                  lb         a2, -1659(t1) #end riscv_load_store_rand_instr_stream_5
                  la         s3, region_0+1461 #start riscv_load_store_rand_instr_stream_0
                  lh         s7, -45(s3)
                  lbu        tp, -174(s3)
                  lbu        a6, -218(s3)
                  lbu        t2, 70(s3)
                  c.nop
                  ori        s0, a7, -21
                  lhu        t6, -35(s3)
                  mul        ra, t3, t5
                  csrrci     s7, 0x340, 3
                  csrrw      zero, 0x340, ra
                  sb         s2, -148(s3)
                  rem        s2, s8, ra
                  rem        s5, s0, a2
                  csrrsi     s9, 0x340, 21
                  lb         s9, -152(s3)
                  andi       t5, t4, -26
                  sb         s3, 60(s3)
                  sb         s3, -215(s3)
                  lbu        s5, 48(s3)
                  sll        a0, s6, s4
                  lb         s2, 4(s3)
                  fence
                  csrrw      t0, 0x340, s4
                  lw         a6, 75(s3)
                  divu       s2, t3, a5
                  lb         t5, -252(s3)
                  c.li       t0, -1
                  csrrc      a7, 0x340, gp
                  sb         s7, -203(s3)
                  lb         t1, 218(s3)
                  csrrs      a3, 0x340, tp
                  auipc      s9, 1034697
                  csrrci     t5, 0x340, 31
                  csrrci     tp, 0x340, 0
                  rem        a5, s11, ra
                  lbu        a4, -28(s3)
                  sb         s0, -98(s3)
                  sb         s10, 212(s3)
                  srli       a4, a5, 16
                  csrrs      s11, 0x340, tp
                  lbu        s7, -63(s3)
                  c.or       s0, s1
                  sb         sp, 56(s3)
                  sb         s10, -48(s3)
                  lb         a3, 87(s3)
                  lbu        zero, -76(s3)
                  sb         sp, -54(s3) #end riscv_load_store_rand_instr_stream_0
                  la         a1, region_0+4090 #start riscv_load_store_rand_instr_stream_1
                  csrrwi     t4, 0x340, 12
                  lb         ra, -45(a1)
                  srl        ra, t5, zero
                  c.li       a5, -1
                  sw         s2, -210(a1)
                  mul        s1, t4, tp
                  sb         t6, -58(a1)
                  c.or       a4, a2
                  lhu        a4, -194(a1)
                  sb         t3, -4(a1)
                  sb         t2, -127(a1)
                  sb         t0, -83(a1)
                  lbu        s10, -230(a1)
                  lb         s11, -39(a1)
                  mulh       s4, s10, ra
                  c.or       s1, a2
                  div        gp, a1, a3
                  lhu        s1, -228(a1)
                  rem        a5, ra, t4
                  srli       s10, tp, 26
                  remu       s9, s7, s11
                  ori        t0, a5, -490
                  c.andi     a5, -1
                  sh         a4, -28(a1) #end riscv_load_store_rand_instr_stream_1
                  addi       a4, zero, -10 #init loop 1 counter
                  divu       t1, s0, a2
                  ori        t6, s8, 206
                  csrrci     s4, 0x340, 8
                  c.mv       t6, t4
                  addi       s7, zero, 11 #init loop 1 limit
                  add        t0, s9, s0
                  c.and      a3, a3
sub_1_44_1_t:     xori       s5, s1, 432
                  remu       gp, s1, t4
                  addi       a4, a4, 7 #update loop 1 counter
                  c.srai     a1, 14
                  c.lui      t4, 18
                  slli       gp, a2, 18
                  addi       a0, zero, 9 #init loop 0 counter
                  addi       zero, zero, 0 #init loop 0 limit
sub_1_44_0_t:     c.mv       ra, t3
                  addi       a0, a0, -3 #update loop 0 counter
                  remu       t0, s9, a4
                  csrrsi     s5, 0x340, 23
                  addi       a6, s8, -139
                  sra        s2, a5, t4
                  c.beqz     a0, sub_1_44_0_t #branch for loop 0
                  c.mv       s3, a2
                  sub        a1, t2, t0
                  csrrc      s6, 0x340, s7
                  bne        a4, s7, sub_1_44_1_t #branch for loop 1
                  mul        a7, ra, s11
sub_1_20:         jal        ra, 10f
0:                c.jal      15f
1:                jal        t1, 13f
2:                jal        ra, 19f
3:                c.jal      6f
4:                c.jal      14f
5:                c.j        12f
6:                c.jal      1b
7:                c.j        17f
8:                jal        ra, 18f
9:                jal        ra, 23f
10:               c.j        7b
11:               jal        a1, 20f
12:               c.jal      0b
13:               c.jal      16f
14:               jal        t1, 21f
15:               c.jal      22f
16:               c.j        8b
17:               c.jal      9b
18:               jal        ra, 25f
19:               c.jal      24f
20:               jal        ra, 3b
21:               c.jal      5b
22:               c.jal      2b
23:               jal        ra, 4b
24:               c.j        11b
25:               csrrsi     a6, 0x340, 30
                  la         s0, region_1+2421 #start riscv_load_store_rand_instr_stream_10
                  sb         s2, 6(s0)
                  and        t2, s8, s6
                  lhu        a7, -59(s0)
                  nop
                  lb         gp, 12(s0)
                  lb         s9, -14(s0)
                  lb         zero, -58(s0)
                  lhu        a7, -59(s0)
                  xor        s9, a6, s3
                  csrrw      s9, 0x340, s10
                  sb         a5, 28(s0)
                  lbu        a7, 10(s0)
                  c.lui      s10, 2
                  lh         a2, -9(s0)
                  lbu        a3, -4(s0)
                  sh         t5, 25(s0)
                  lh         s10, 15(s0)
                  sb         s8, 49(s0)
                  csrrc      a1, 0x340, s5
                  lb         s11, 52(s0)
                  mulh       a5, s3, s10
                  c.srli     a4, 15
                  sb         s7, -28(s0)
                  lb         s6, -43(s0)
                  sb         t0, -6(s0)
                  lb         s11, 46(s0)
                  lhu        a5, -63(s0)
                  c.addi     t1, -1
                  lbu        a3, -32(s0)
                  c.or       a2, a3
                  lhu        s3, -43(s0)
                  lb         s7, 3(s0)
                  xori       a4, a3, -517
                  lh         tp, 37(s0)
                  lbu        a0, -17(s0)
                  sb         a4, 16(s0)
                  sb         s1, -62(s0)
                  c.andi     s1, 31
                  and        a3, tp, s7
                  c.lui      s7, 11
                  sb         gp, -20(s0)
                  remu       a1, s1, s11
                  lbu        t5, -61(s0)
                  fence.i
                  sb         s0, -24(s0)
                  c.srai     a5, 18
                  lbu        a1, -1(s0) #end riscv_load_store_rand_instr_stream_10
                  la         t4, region_3+466 #start riscv_load_store_rand_instr_stream_9
                  c.li       t6, -1
                  c.srli     a2, 10
                  c.andi     a1, 9
                  lbu        s4, -358(t4)
                  lbu        a5, -415(t4)
                  sltu       s2, s5, gp
                  lb         ra, -7(t4)
                  lbu        s7, -385(t4)
                  sh         a2, -268(t4)
                  or         t1, s5, s7
                  c.andi     a0, -1
                  slti       t6, sp, 67
                  lh         t1, -408(t4)
                  csrrs      t1, 0x340, t2
                  divu       t0, s4, a7
                  sh         t2, -328(t4)
                  lbu        tp, -126(t4)
                  lb         a2, -73(t4)
                  lbu        a6, -131(t4)
                  lbu        a6, -209(t4)
                  mulhu      s9, t6, t2
                  lbu        a1, -82(t4)
                  lui        a3, 585967
                  srai       s3, t0, 20
                  and        t1, s1, ra
                  sb         a0, -300(t4)
                  sb         s5, -124(t4)
                  srai       s3, a3, 27
                  lb         t1, 24(t4)
                  lbu        a5, -222(t4)
                  c.addi     a4, -1
                  mulh       s7, s7, t3
                  c.lui      s1, 21
                  rem        t1, s9, s7
                  nop
                  sb         zero, 25(t4)
                  lbu        s3, -291(t4)
                  rem        s4, t5, t1
                  and        t5, a1, gp
                  lb         s10, -449(t4)
                  c.mv       ra, a1
                  lb         a1, -297(t4)
                  lb         s9, -340(t4)
                  lw         a1, -174(t4)
                  lh         a3, -94(t4)
                  lb         a1, -115(t4)
                  lb         gp, -403(t4)
                  c.add      t2, a2
                  slt        a5, t4, a3
                  sh         s8, -154(t4)
                  sb         t0, -107(t4)
                  lb         zero, -86(t4)
                  lb         a4, -273(t4) #end riscv_load_store_rand_instr_stream_9
                  addi       t2, zero, -7 #init loop 0 counter
                  or         t5, gp, a1
                  addi       s1, zero, -6 #init loop 0 limit
                  lui        a4, 840608
                  c.slli     a5, 31
sub_1_51_0_t:     c.add      gp, s8
                  remu       ra, t2, s6
                  mulhu      a4, s0, s0
                  addi       t2, t2, 4 #update loop 0 counter
                  blt        t2, s1, sub_1_51_0_t #branch for loop 0
                  c.li       tp, 15
                  la         a5, region_4+1426 #start load_store_instr_stream_3
                  la         t5, region_3+222 #start load_store_instr_stream_2
                  la         t4, region_0+949 #start load_store_instr_stream_1
                  lbu        s11, -15(a5)
                  lb         s3, -142(a5)
                  la         a3, region_1+3825 #start load_store_instr_stream_4
                  lb         t0, 232(a5)
                  la         tp, region_2+246 #start load_store_instr_stream_0
                  sb         s4, -119(t5)
                  lbu        t0, -3(tp)
                  lbu        a4, 25(t4)
                  lbu        a2, -14(tp)
                  lw         zero, -21(t4)
                  lhu        s11, -113(a3)
                  lb         a7, 14(tp)
                  lb         gp, -5(a5)
                  sb         t0, -242(a3)
                  sb         s6, 36(t4)
                  lbu        s4, -32(t4)
                  lb         t1, -60(a3)
                  lb         s5, -132(a3)
                  lbu        ra, 57(t4)
                  sb         s3, 142(a3)
                  lbu        s11, 15(tp)
                  lbu        s6, 11(a5)
                  lb         s2, -92(a3)
                  lb         s6, -147(t5)
                  sb         s10, -14(a3)
                  lhu        s2, 170(t5)
                  sb         tp, -162(a5)
                  lhu        a7, -43(t4)
                  lb         t1, 114(t5)
                  lbu        a6, -208(a3)
                  lbu        t6, -6(t4)
                  lh         s11, 64(t5)
                  lbu        s10, 78(a5)
                  sh         a1, -3(t4)
                  sh         s10, -158(a5)
                  lbu        a6, 7(tp)
                  lbu        a0, 107(t5)
                  sb         s9, 176(a3) #end load_store_instr_stream_4
                  lhu        t1, -134(a5)
                  sh         s8, -44(t5)
                  lb         t1, -53(t5) #end load_store_instr_stream_2
                  lb         a1, 64(t4) #end load_store_instr_stream_1
                  sb         s9, 99(a5) #end load_store_instr_stream_3
                  sh         gp, 6(tp) #end load_store_instr_stream_0
                  la         s11, region_3+362 #start load_store_instr_stream_4
                  la         t4, region_4+2798 #start load_store_instr_stream_0
                  la         s3, region_1+11362 #start load_store_instr_stream_3
                  la         a3, region_2+4585 #start load_store_instr_stream_2
                  sb         s6, -1863(s3)
                  sb         t1, 59(t4)
                  sb         t6, -118(a3)
                  sh         a6, -250(t4)
                  sb         s8, -3(s11)
                  lb         s2, -210(s3)
                  la         t2, region_0+2727 #start load_store_instr_stream_1
                  sb         t6, 43(t2)
                  lhu        ra, -456(s3)
                  lb         t6, 8(a3)
                  lb         zero, 165(t4)
                  lw         s5, -21(a3)
                  lb         zero, -5(s11)
                  sw         s2, 237(t2)
                  sb         a7, -324(s3)
                  lb         s1, -205(t2)
                  lhu        ra, -63(t2)
                  lbu        s7, 162(a3)
                  lb         gp, 172(a3)
                  sw         s1, -162(t4)
                  lh         a0, -1820(s3)
                  sb         t1, 56(t2)
                  lhu        a6, -200(t4)
                  lb         t1, 73(s3)
                  lb         tp, -245(t2)
                  sb         s6, 98(a3)
                  sb         s9, 254(t4)
                  lbu        s5, 56(a3)
                  lb         gp, -155(t4)
                  lbu        s4, -2018(s3)
                  lh         s7, 6(s11)
                  lbu        t0, -156(a3)
                  lbu        s9, 0(s11)
                  sw         a5, 63(a3)
                  lb         a7, 100(t2)
                  sb         s8, -1920(s3) #end load_store_instr_stream_3
                  sb         s2, -6(s11) #end load_store_instr_stream_4
                  sh         a3, -163(a3) #end load_store_instr_stream_2
                  lbu        t0, -80(t2) #end load_store_instr_stream_1
                  lbu        t6, 45(t4) #end load_store_instr_stream_0
sub_1_16:         jal        ra, 4f
0:                c.jal      1f
1:                c.jal      12f
2:                c.j        9f
3:                c.jal      8f
4:                c.jal      10f
5:                c.jal      0b
6:                c.j        13f
7:                c.j        14f
8:                c.j        11f
9:                c.jal      5b
10:               c.jal      6b
11:               jal        ra, 15f
12:               c.j        3b
13:               jal        ra, 7b
14:               c.j        2b
15:               divu       a1, t1, a0
                  la         s11, region_3+256 #start load_store_instr_stream_1
                  la         a1, region_4+4024 #start load_store_instr_stream_0
                  lbu        s2, -1(s11)
                  lbu        t6, 3(a1)
                  sh         s10, -2(s11)
                  sb         s3, -9(a1)
                  lb         s4, 14(a1)
                  lbu        t6, -15(s11)
                  sh         sp, 6(a1)
                  lw         zero, 16(s11)
                  sb         t0, -14(a1)
                  sb         a4, 5(a1)
                  lbu        t0, -3(s11)
                  lh         t6, -8(s11)
                  lb         s1, 14(a1)
                  lbu        t2, 0(s11) #end load_store_instr_stream_1
                  sb         s8, -11(a1) #end load_store_instr_stream_0
                  la         a0, region_3+4 #start riscv_load_store_rand_instr_stream_2
                  sll        s0, s3, t3
                  sb         s6, 11(a0)
                  lbu        gp, 9(a0)
                  lb         t5, 53(a0)
                  mulh       a4, sp, s5
                  sb         t3, 13(a0)
                  sb         sp, 47(a0)
                  sltu       s2, s10, s4
                  fence.i
                  c.addi     t4, -1
                  lb         s3, 20(a0)
                  sh         a4, 52(a0)
                  sb         a0, 57(a0)
                  sb         s1, 21(a0)
                  fence
                  csrrsi     s5, 0x340, 14
                  mulhsu     s10, a2, t3
                  c.andi     s0, 31
                  lbu        a1, 59(a0)
                  divu       a7, t1, s7
                  sb         t4, 51(a0)
                  sub        s2, ra, t1
                  srai       s1, a2, 23
                  lbu        s9, 60(a0)
                  c.andi     a5, 4
                  sh         a4, 50(a0)
                  mul        a1, a1, t3
                  sb         s5, 13(a0)
                  lb         tp, 9(a0)
                  c.li       t5, 0
                  lhu        s9, 58(a0)
                  sll        t4, s3, t5
                  fence.i
                  sh         t2, 54(a0)
                  lhu        s3, 48(a0)
                  sb         s2, 55(a0)
                  lbu        s7, 15(a0)
                  sub        s0, sp, a2
                  sb         s6, 43(a0)
                  slli       t2, s9, 16
                  lbu        s11, 49(a0)
                  c.or       a2, a5
                  lbu        t1, 25(a0)
                  srai       s9, s5, 18
                  sb         ra, 1(a0)
                  rem        a1, s8, s1
                  srli       a2, t3, 29
                  sb         t2, 21(a0)
                  lhu        a6, 38(a0)
                  lbu        a6, 51(a0)
                  c.lw       a1, 44(a0) #end riscv_load_store_rand_instr_stream_2
sub_1_17:         jal        ra, 18f
0:                jal        t1, 27f
1:                c.j        24f
2:                jal        ra, 8f
3:                c.jal      19f
4:                c.jal      15f
5:                jal        ra, 0b
6:                c.jal      5b
7:                c.jal      26f
8:                c.j        6b
9:                c.jal      3b
10:               jal        t1, 21f
11:               c.j        9b
12:               jal        ra, 1b
13:               jal        t1, 20f
14:               c.jal      10b
15:               c.jal      7b
16:               jal        t5, 14b
17:               jal        ra, 2b
18:               c.jal      16b
19:               c.j        13b
20:               jal        t4, 22f
21:               jal        ra, 11b
22:               c.jal      12b
23:               jal        s4, 4b
24:               c.jal      23b
25:               c.jal      29f
26:               c.j        17b
27:               c.jal      28f
28:               c.jal      25b
29:               mulhsu     s3, t5, t2
                  la         s0, region_2+7470 #start load_store_instr_stream_1
                  la         s1, region_2+848 #start load_store_instr_stream_4
                  la         ra, region_2+3657 #start load_store_instr_stream_3
                  sb         s4, -9(s1)
                  la         a1, region_2+1088 #start load_store_instr_stream_2
                  lb         a4, -6(ra)
                  lb         t6, -201(a1)
                  la         s4, region_2+2691 #start load_store_instr_stream_0
                  lb         s6, 65(a1)
                  sw         s6, -6(s0)
                  lh         a5, -16(s0)
                  lbu        tp, -179(ra)
                  lb         s3, -12(s0)
                  lhu        zero, 199(ra)
                  sh         a6, 200(a1)
                  lbu        a6, -6(s4)
                  lb         s6, -7(a1)
                  lb         t1, 9(s0)
                  sb         t0, -234(a1)
                  lbu        t5, -9(s1)
                  sb         s4, 101(a1)
                  sb         s10, 15(s1)
                  lb         s2, -15(s4)
                  sb         s5, -220(a1)
                  lbu        a4, -4(s4)
                  sb         t5, 126(ra)
                  sb         t0, -12(s0)
                  lb         tp, 7(s0)
                  lhu        s7, 6(s1)
                  lb         a5, -196(ra)
                  lb         t4, -3(s0)
                  lbu        t5, 0(s4)
                  sb         zero, 1(s1)
                  sb         s9, 7(s0)
                  sb         a6, 75(a1)
                  lhu        s10, 4(s0)
                  lw         zero, 252(a1) #end load_store_instr_stream_2
                  sb         s8, -40(ra)
                  lbu        s6, -143(ra)
                  lb         s10, -7(s1) #end load_store_instr_stream_4
                  sb         s5, -165(ra) #end load_store_instr_stream_3
                  sb         a2, 10(s0) #end load_store_instr_stream_1
                  lb         s5, -5(s4) #end load_store_instr_stream_0
                  la         tp, region_2+7365 #start riscv_hazard_instr_stream_0
                  c.srli     a5, 2
                  lbu        a7, 661(tp)
                  lbu        a3, -1894(tp)
                  ori        a5, s0, -404
                  srli       s0, a5, 30
                  lb         a5, 210(tp)
                  lhu        s0, 93(tp)
                  lbu        a4, -595(tp)
                  sb         t5, -496(tp)
                  sw         t5, -1673(tp)
                  lb         t5, -160(tp)
                  lb         s0, -161(tp)
                  csrrwi     a7, 0x340, 18
                  c.xor      a5, a4
                  c.srai     a4, 8
                  sb         a5, -1751(tp)
                  lb         a3, 343(tp)
                  lb         t5, 650(tp)
                  addi       s0, a3, -728
                  lbu        a3, -644(tp)
                  sb         a5, -88(tp)
                  sb         a4, -2020(tp)
                  lh         a5, -1891(tp)
                  lb         a4, -1512(tp)
                  lb         s0, -359(tp)
                  andi       a4, s0, 441
                  c.sub      s0, s0
                  rem        a4, a4, a4
                  lhu        a4, -415(tp)
                  lbu        a5, -1607(tp)
                  lb         a3, -2013(tp)
                  lb         s0, -518(tp)
                  csrrwi     a5, 0x340, 0
                  lb         a5, -295(tp)
                  sb         t5, 415(tp)
                  c.slli     a4, 23
                  sb         a5, -683(tp)
                  lb         s0, -1290(tp) #end riscv_hazard_instr_stream_0
                  addi       a0, zero, 10 #init loop 0 counter
                  c.li       s7, 4
                  div        s7, zero, s8
                  c.slli     s10, 28
                  c.andi     s1, 13
                  add        s5, a4, a4
                  mul        t2, t0, t4
                  and        tp, a7, s0
                  c.mv       s3, s8
                  addi       a7, zero, 10 #init loop 0 limit
                  c.slli     ra, 30
                  add        s4, s3, s10
sub_1_53_0_t:     c.addi     t5, -1
                  c.add      a6, s2
                  c.lui      s7, 25
                  csrrwi     t6, 0x340, 22
                  c.slli     gp, 29
                  csrrs      s4, 0x340, ra
                  csrrs      zero, 0x340, a2
                  auipc      a2, 227148
                  or         s5, gp, a1
                  csrrs      t0, 0x340, a1
                  addi       a0, a0, -9 #update loop 0 counter
                  sltu       s6, s0, t4
                  c.sub      a3, s0
                  ori        t6, s4, -699
                  bgeu       a0, a7, sub_1_53_0_t #branch for loop 0
                  sra        s4, sp, t2
                  la         s1, region_4+1513 #start load_store_instr_stream_0
                  la         a5, region_4+3543 #start load_store_instr_stream_1
                  lhu        a3, 1(s1)
                  sb         t1, -4(a5)
                  sw         t6, -1(s1)
                  sb         s7, -14(s1)
                  sb         t1, -10(s1)
                  lb         s11, -6(a5)
                  lh         s7, 15(a5)
                  lh         s10, 1(s1)
                  lb         t4, -4(s1)
                  lbu        gp, 15(a5)
                  lb         s9, 2(s1)
                  sw         a4, -11(a5)
                  sb         s4, -10(a5)
                  lh         s0, -15(s1)
                  lbu        s9, -8(a5)
                  lbu        tp, -5(s1)
                  sh         a2, -7(a5) #end load_store_instr_stream_1
                  lhu        s11, 13(s1) #end load_store_instr_stream_0
                  la         t4, region_1+2339 #start load_store_instr_stream_2
                  la         s2, region_1+12995 #start load_store_instr_stream_0
                  lbu        s5, -25(t4)
                  lb         s7, 146(s2)
                  la         a2, region_1+12833 #start load_store_instr_stream_1
                  lhu        t0, -33(a2)
                  la         ra, region_1+8519 #start load_store_instr_stream_4
                  lb         zero, 38(a2)
                  sb         gp, -37(t4)
                  la         s4, region_1+130 #start load_store_instr_stream_3
                  lb         s7, -20(s4)
                  lbu        s10, -14(ra)
                  lbu        a6, 26(a2)
                  lbu        s10, 0(t4)
                  sb         s11, -240(s2)
                  sb         ra, 222(s2)
                  lb         a5, 37(ra)
                  lh         a7, -63(a2)
                  sb         s3, -37(t4)
                  sh         s7, -11(ra)
                  lhu        s5, -31(t4)
                  lb         t2, -18(s4)
                  sb         s0, -145(s2)
                  lh         t1, -1(s2)
                  lbu        tp, -176(s2)
                  lb         t2, -37(t4)
                  sb         a6, -11(ra)
                  sb         s5, 14(t4)
                  sh         a7, 11(ra)
                  lbu        s3, 60(s4)
                  lbu        s1, 3(s4)
                  lbu        s5, -24(a2) #end load_store_instr_stream_1
                  lbu        t2, 7(s4)
                  lhu        t1, 157(s2)
                  lbu        a4, 22(s2)
                  sb         a6, 2(t4)
                  lb         t2, -63(ra)
                  sb         s2, -46(t4) #end load_store_instr_stream_2
                  lbu        s5, -13(s4) #end load_store_instr_stream_3
                  sb         s1, -18(ra) #end load_store_instr_stream_4
                  lhu        a1, 7(s2) #end load_store_instr_stream_0
                  la         s3, region_4+1588 #start load_store_instr_stream_2
                  la         t1, region_4+3126 #start load_store_instr_stream_1
                  sh         s2, 130(s3)
                  lhu        s2, -42(t1)
                  la         s6, region_4+2631 #start load_store_instr_stream_0
                  sh         a5, 680(t1)
                  lb         a0, 308(t1)
                  lw         t4, -674(t1)
                  sb         ra, 88(s3)
                  sb         s2, -1450(t1)
                  sb         s7, -16(s6)
                  lh         a2, -15(s6)
                  lb         a0, -1(s6)
                  sb         a4, -3(s3)
                  lb         a1, -2005(t1)
                  sb         a5, 106(s3)
                  lb         t4, 149(s3)
                  lbu        s0, 87(s3)
                  sb         s10, -405(t1)
                  lhu        a7, -256(s3)
                  lbu        t2, -429(t1)
                  lhu        a5, -1(s6)
                  sb         s9, 39(s3)
                  lhu        t6, -82(t1)
                  lbu        s0, -1115(t1) #end load_store_instr_stream_1
                  lhu        s9, 250(s3) #end load_store_instr_stream_2
                  sb         zero, -14(s6)
                  sw         t6, -7(s6) #end load_store_instr_stream_0
                  addi       a5, zero, -3 #init loop 0 counter
                  srli       s11, tp, 15
                  slli       s11, s9, 6
                  addi       zero, zero, 0 #init loop 0 limit
                  mulh       s4, s2, t4
sub_1_46_0_t:     or         s6, a5, a5
                  sltiu      a3, s6, -942
                  c.mv       s0, s11
                  csrrsi     a0, 0x340, 5
                  addi       a5, a5, 3 #update loop 0 counter
                  ori        t5, s3, 364
                  rem        s1, t0, t5
                  c.beqz     a5, sub_1_46_0_t #branch for loop 0
                  csrrwi     s0, 0x340, 21
                  la         ra, region_0+3269 #start riscv_hazard_instr_stream_5
                  lb         zero, -1030(ra)
                  sltiu      a1, s0, 493
                  c.add      gp, s0
                  divu       s11, a1, s0
                  sb         zero, 504(ra)
                  c.add      s1, s11
                  lw         a1, -1497(ra)
                  lh         s11, 753(ra)
                  sb         s1, -497(ra)
                  slt        gp, s1, s1
                  c.andi     a1, 31
                  c.and      a1, a1
                  lbu        s1, -1960(ra)
                  and        s1, gp, s1
                  lh         gp, 461(ra)
                  fence.i
                  sh         gp, -431(ra)
                  c.andi     s1, 17
                  lbu        zero, 52(ra)
                  sb         a1, 372(ra)
                  sub        s1, s1, a1
                  slli       s0, zero, 5
                  lb         s1, -22(ra)
                  lbu        a1, -1950(ra)
                  csrrsi     zero, 0x340, 5
                  sb         s11, -239(ra)
                  lbu        gp, -1449(ra)
                  c.addi     gp, -1
                  and        a1, a1, gp
                  lb         gp, -1014(ra)
                  sra        a1, gp, s0
                  lb         s1, 367(ra)
                  sh         s11, -525(ra)
                  lw         a1, -1005(ra)
                  lhu        s0, -1061(ra)
                  c.xor      s0, s1
                  sb         gp, 434(ra)
                  srai       s0, s0, 3
                  sll        a1, s11, s0
                  csrrsi     s1, 0x340, 21
                  c.addi     gp, -1
                  lbu        a1, 695(ra)
                  mulhu      gp, s0, s11
                  lbu        gp, -1051(ra)
                  nop
                  sub        a1, s1, s1
                  lb         s1, 230(ra) #end riscv_hazard_instr_stream_5
                  addi       a5, zero, 6 #init loop 1 counter
                  add        a1, a1, s9
                  mulh       s0, a4, tp
                  addi       zero, zero, 0 #init loop 1 limit
sub_1_47_1_t:     nop
                  addi       a5, a5, -3 #update loop 1 counter
                  and        s9, a3, s9
                  addi       s3, zero, -10 #init loop 0 counter
                  addi       s11, zero, -20 #init loop 0 limit
sub_1_47_0_t:     c.li       s6, 23
                  sltu       t6, s7, gp
                  addi       s3, s3, -8 #update loop 0 counter
                  csrrsi     t0, 0x340, 19
                  srl        s0, t2, s8
                  bge        s3, s11, sub_1_47_0_t #branch for loop 0
                  c.beqz     a5, sub_1_47_1_t #branch for loop 1
                  divu       a0, a1, s1
                  addi       t2, zero, 1 #init loop 1 counter
                  add        tp, t4, t0
                  sltu       s11, a3, t0
                  and        t0, t0, s8
                  addi       s2, zero, 9 #init loop 1 limit
                  csrrci     a5, 0x340, 11
                  c.or       a4, a3
sub_1_49_1_t:     c.sub      s1, a0
                  ori        gp, a6, -961
                  c.nop
                  addi       t2, t2, 8 #update loop 1 counter
                  addi       s0, zero, 1 #init loop 0 counter
                  addi       zero, zero, 0 #init loop 0 limit
sub_1_49_0_t:     sltiu      a2, a6, 111
                  addi       s0, s0, -1 #update loop 0 counter
                  rem        s5, a1, s5
                  and        t5, t6, s2
                  rem        t5, s0, s1
                  csrrw      t5, 0x340, tp
                  sltu       t1, a0, s7
                  sra        tp, s0, a3
                  c.slli     t0, 14
                  c.bnez     s0, sub_1_49_0_t #branch for loop 0
                  srai       a5, s8, 11
                  bltu       t2, s2, sub_1_49_1_t #branch for loop 1
                  lui        tp, 992954
                  la         t2, region_2+7675 #start load_store_instr_stream_3
                  la         s5, region_0+2947 #start load_store_instr_stream_2
                  sw         gp, -35(s5)
                  sb         a5, 44(s5)
                  la         s0, region_4+2658 #start load_store_instr_stream_1
                  lw         s11, 13(t2)
                  la         s4, region_1+13743 #start load_store_instr_stream_0
                  sb         t5, 249(s0)
                  lb         zero, 2(t2)
                  sb         t1, -4(s5)
                  lb         a0, 7(t2)
                  lbu        t4, -113(s4)
                  lbu        a3, -15(t2)
                  lbu        s9, 161(s0)
                  sb         sp, 38(s5)
                  lb         s11, -8(t2)
                  lb         s1, 13(t2)
                  lb         s9, 46(s5)
                  sb         s4, -6(s5)
                  lbu        ra, 145(s0)
                  lb         a6, 37(s5)
                  lb         t4, 114(s4)
                  lb         gp, 254(s4)
                  sb         a1, -15(t2)
                  lb         t0, 40(s0)
                  lbu        gp, -225(s4)
                  sh         gp, -254(s0) #end load_store_instr_stream_1
                  lhu        tp, -1(t2)
                  sh         zero, -207(s4)
                  lb         s9, -52(s5) #end load_store_instr_stream_2
                  lw         s10, 1(t2)
                  sb         s11, -214(s4)
                  sh         t0, -5(t2) #end load_store_instr_stream_3
                  lbu        zero, -163(s4) #end load_store_instr_stream_0
sub_1_19:         jal        ra, 12f
0:                c.jal      3f
1:                c.jal      10f
2:                jal        ra, 13f
3:                c.jal      30f
4:                c.jal      7f
5:                c.j        6f
6:                c.j        19f
7:                c.jal      21f
8:                c.j        18f
9:                c.j        1b
10:               c.jal      2b
11:               jal        a7, 14f
12:               c.j        27f
13:               c.j        4b
14:               c.jal      5b
15:               c.j        11b
16:               c.j        17f
17:               c.jal      25f
18:               c.j        29f
19:               c.jal      20f
20:               c.jal      16b
21:               c.j        26f
22:               c.jal      9b
23:               c.j        24f
24:               jal        ra, 22b
25:               jal        ra, 28f
26:               c.j        0b
27:               c.jal      15b
28:               c.j        8b
29:               c.j        23b
30:               slli       ra, s4, 8
sub_1_18:         jal        ra, 0f
0:                jal        ra, 7f
1:                c.jal      4f
2:                jal        ra, 8f
3:                c.jal      2b
4:                jal        a5, 3b
5:                jal        a5, 10f
6:                c.j        5b
7:                jal        ra, 1b
8:                c.jal      9f
9:                jal        t6, 6b
10:               xori       ra, sp, -153
                  la         s6, region_4+1265 #start load_store_instr_stream_2
                  la         t6, region_4+3299 #start load_store_instr_stream_1
                  sb         s5, -255(s6)
                  lbu        t1, -45(s6)
                  la         s0, region_4+1953 #start load_store_instr_stream_0
                  sb         a2, 540(t6)
                  sb         sp, 17(s6)
                  lb         t5, 46(t6)
                  lbu        t2, 27(s0)
                  lb         s3, -1202(t6)
                  sw         s10, 59(s0)
                  lb         ra, -368(t6)
                  lb         a5, 251(s6)
                  lb         s4, -49(s0)
                  lbu        zero, 536(t6)
                  sb         s8, 168(s6)
                  lb         t5, 30(s0)
                  lhu        s5, -143(s6)
                  sb         sp, 236(s6) #end load_store_instr_stream_2
                  sh         sp, -1641(t6) #end load_store_instr_stream_1
                  lb         t4, -10(s0) #end load_store_instr_stream_0
sub_1_12:         jal        ra, 10f
0:                c.j        15f
1:                c.jal      7f
2:                jal        s3, 9f
3:                c.jal      19f
4:                c.j        6f
5:                c.j        17f
6:                jal        s5, 18f
7:                c.j        0b
8:                jal        ra, 5b
9:                c.j        4b
10:               c.jal      1b
11:               c.j        13f
12:               jal        ra, 3b
13:               jal        ra, 12b
14:               c.j        16f
15:               c.jal      14b
16:               jal        ra, 2b
17:               c.jal      11b
18:               c.jal      8b
19:               c.nop
                  la         gp, region_0+1061 #start load_store_instr_stream_3
                  la         s10, region_0+149 #start load_store_instr_stream_2
                  lh         t0, 9(gp)
                  la         tp, region_0+1228 #start load_store_instr_stream_1
                  la         s4, region_0+3832 #start load_store_instr_stream_0
                  sb         gp, -2(gp)
                  sb         t2, -5(gp)
                  la         ra, region_0+3298 #start load_store_instr_stream_4
                  lh         a4, 45(s10)
                  lh         t6, -1164(tp)
                  lbu        a5, 25(s10)
                  lbu        s2, 5(gp)
                  lbu        s1, -1342(s4)
                  lb         t0, -479(ra)
                  lbu        t5, 32(s10)
                  sb         tp, -569(ra)
                  lbu        a3, -877(ra)
                  lbu        a0, 2021(tp)
                  lbu        s1, 306(ra)
                  sb         s1, 145(s4)
                  sb         sp, -2(gp)
                  lb         t2, -1167(s4)
                  sb         s6, 1381(tp)
                  sh         s2, 184(s4)
                  lb         t2, -64(s10)
                  lbu        s11, -12(gp)
                  sb         s4, -1029(tp)
                  lbu        s2, 1495(tp)
                  lbu        a2, 10(gp)
                  lbu        s11, -35(s10) #end load_store_instr_stream_2
                  lh         s2, -2026(s4)
                  sb         a7, 559(tp)
                  lhu        a3, -1666(s4)
                  lb         t4, 9(gp)
                  lbu        s1, -1562(s4)
                  lbu        s11, 1173(tp)
                  sh         s8, -716(s4)
                  lbu        t6, 1630(tp) #end load_store_instr_stream_1
                  sb         s2, -14(gp)
                  lw         s1, 498(ra)
                  sb         s2, -555(ra) #end load_store_instr_stream_4
                  sh         ra, 15(gp) #end load_store_instr_stream_3
                  lb         zero, -306(s4) #end load_store_instr_stream_0
                  c.lui      a2, 10
                  addi       a1, zero, -4 #init loop 0 counter
                  fence
                  slli       s3, zero, 4
                  remu       ra, s10, gp
                  csrrci     a3, 0x340, 10
                  addi       zero, zero, 0 #init loop 0 limit
                  c.slli     t1, 25
                  c.xor      a2, a0
                  csrrwi     a4, 0x340, 4
                  c.slli     tp, 28
                  add        a3, ra, zero
sub_1_54_0_t:     c.mv       a5, t6
                  c.andi     a3, 16
                  addi       a1, a1, 4 #update loop 0 counter
                  andi       ra, s1, -678
                  and        t6, s9, s3
                  c.or       a5, s1
                  mul        a0, s5, s8
                  sltiu      a0, a5, 13
                  csrrsi     a7, 0x340, 9
                  ori        t2, s0, 166
                  mulhu      t2, s5, tp
                  divu       a4, s5, a7
                  c.bnez     a1, sub_1_54_0_t #branch for loop 0
                  slli       a5, s11, 15
                  and        t2, t0, t0
                  c.mv       t6, t2
                  or         gp, a0, a5
                  csrrc      s7, 0x340, s10
                  blt        t2, gp, 13f
                  remu       a7, s3, s6
                  fence.i
                  slt        s2, s8, s4
                  bltu       s9, s4, 10f
10:               bne        ra, s9, 15f
                  slt        s10, a0, t6
                  c.nop
13:               nop
                  remu       s6, s10, s0
15:               c.sub      a4, a1
                  csrrc      s4, 0x340, a7
                  remu       t4, a0, a6
                  slt        s10, s5, a1
                  fence
                  la         s7, region_3+415 #start load_store_instr_stream_1
                  la         s0, region_4+3877 #start load_store_instr_stream_0
                  lbu        tp, 191(s0)
                  sb         a2, 62(s7)
                  sb         a5, -28(s7)
                  sb         s5, -30(s7)
                  sb         tp, -180(s0)
                  lbu        a6, -142(s0)
                  lb         s6, -50(s0)
                  lb         t0, -26(s7)
                  sw         t4, 9(s7) #end load_store_instr_stream_1
                  sb         a4, 55(s0) #end load_store_instr_stream_0
                  andi       s1, t3, 385
                  slli       s3, t6, 11
                  sub        zero, a5, a6
                  csrrc      a4, 0x340, a0
                  c.andi     a1, 18
                  c.slli     a0, 7
                  or         ra, t3, s9
                  csrrwi     t2, 0x340, 21
                  c.srai     a5, 1
                  c.lui      tp, 13
                  csrrc      gp, 0x340, a6
                  mul        s4, t2, gp
                  mulhu      zero, t2, s5
                  c.addi     a4, 2
                  add        zero, s9, a4
                  sltu       gp, t1, s8
                  c.addi     a4, -1
                  or         s2, zero, t2
                  xori       a6, s10, -266
                  sltu       s3, tp, t0
                  sll        s5, s11, sp
                  srl        t5, a3, s2
                  c.addi     s11, -1
                  sltu       a5, zero, s9
                  beq        a4, a6, 47f
                  xor        a7, s5, ra
                  slt        a2, s6, a0
47:               nop
                  csrrwi     gp, 0x340, 28
                  slti       t4, s7, -315
                  c.addi     a1, 6
                  slt        a2, s6, a4
                  c.or       a5, s1
                  c.or       a1, a1
                  andi       ra, s7, -103
                  c.and      a0, a2
                  c.li       s4, 13
                  csrrc      s9, 0x340, a0
                  c.and      a3, a2
                  rem        s3, s0, t2
                  ori        s5, t0, 911
                  fence.i
                  ori        t5, a0, -510
                  c.and      a2, a3
                  and        t6, t4, t5
                  csrrsi     a2, 0x340, 1
                  bne        t1, s6, 70f
                  slti       a1, t2, 525
                  bltu       s5, s7, 81f
                  bge        s1, sp, 80f
70:               c.beqz     s1, 84f
                  divu       ra, s5, t4
                  csrrwi     a2, 0x340, 14
                  c.srli     a4, 25
                  srl        zero, s4, zero
                  c.add      s9, a2
                  fence.i
                  slt        t2, t3, s10
                  c.li       a3, 24
                  srli       t0, s2, 16
80:               mulh       s4, t2, gp
81:               c.sub      a5, a4
                  sra        t4, ra, s6
                  bne        s4, sp, 92f
84:               fence.i
                  c.li       t1, -1
                  slt        s6, s3, a3
                  bltu       s9, a4, 90f
                  slli       s3, a4, 15
                  c.li       s11, 19
90:               csrrw      a5, 0x340, s7
                  and        s2, s1, t2
92:               fence.i
                  nop
                  divu       t2, t1, s4
                  sub        t5, s0, s3
                  bltu       a6, s4, 103f
                  la         a4, region_4+2237 #start riscv_load_store_rand_instr_stream_7
                  sb         s4, -24(a4)
                  lh         s2, 49(a4)
                  sb         t1, 3(a4)
                  lbu        s1, -58(a4)
                  c.slli     a2, 10
                  lbu        gp, 40(a4)
                  lb         s11, -4(a4)
                  sb         a7, -38(a4)
                  lb         s1, 2(a4)
                  lbu        a2, -50(a4)
                  lbu        s7, -52(a4)
                  and        zero, a1, a1
                  lbu        t4, 44(a4)
                  lb         s11, -40(a4)
                  c.xor      s1, a0
                  sb         tp, -29(a4)
                  sb         gp, 44(a4)
                  sb         t0, 51(a4)
                  divu       a1, ra, ra
                  sw         t6, -17(a4)
                  csrrc      s0, 0x340, a7
                  sra        s11, s8, tp
                  lh         t1, -63(a4)
                  fence.i
                  lb         s1, -56(a4)
                  sb         t2, -12(a4)
                  remu       s2, s11, t3
                  lbu        a3, -6(a4)
                  sh         zero, -51(a4)
                  lh         a2, -47(a4)
                  lb         a5, -6(a4)
                  c.addi     a2, -1
                  sb         s4, -48(a4)
                  fence
                  sb         s9, -14(a4)
                  sb         a4, -24(a4)
                  lbu        tp, 41(a4)
                  sb         s8, 38(a4)
                  lbu        a2, 24(a4) #end riscv_load_store_rand_instr_stream_7
                  fence.i
                  c.or       s1, a0
                  c.andi     s0, 26
                  c.srai     a4, 1
                  c.bnez     a4, 115f
                  bne        a1, a6, 117f
103:              c.bnez     s0, 120f
                  auipc      a2, 321889
                  blt        t5, s0, 108f
                  sltu       s10, s4, a2
                  csrrsi     s2, 0x340, 22
108:              sll        s7, tp, ra
                  xori       s9, s2, 147
                  fence.i
                  csrrw      a5, 0x340, s4
                  c.or       a1, s1
                  c.beqz     a5, 117f
                  div        ra, t0, s10
115:              addi       t0, t0, -218
                  mulhsu     s9, s3, gp
117:              csrrw      a2, 0x340, s1
                  srai       s3, a0, 12
                  and        t0, a1, s0
120:              remu       s2, t1, s4
                  c.or       s0, a1
                  c.beqz     a4, 133f
                  ori        ra, a3, -274
                  c.nop
                  c.andi     a4, -1
                  c.andi     a4, 1
                  c.xor      s0, a0
                  bge        s1, a3, 137f
                  mulhu      t0, s9, t4
                  sll        s10, gp, s0
                  remu       s11, a7, t4
                  mulhu      a5, s1, zero
133:              rem        a7, s10, s3
                  rem        a0, a0, s2
                  csrrc      s9, 0x340, a1
                  c.bnez     a2, 139f
137:              mulhsu     s1, s7, a0
                  sll        s11, t3, t4
139:              fence.i
                  auipc      s6, 883378
                  c.mv       a4, s3
                  srai       a1, s11, 4
                  c.lui      s10, 26
                  mulh       t5, a5, a2
                  bge        t4, t2, 164f
                  nop
                  fence.i
                  divu       a4, zero, a5
                  c.slli     s1, 11
                  remu       ra, s10, s4
                  blt        s9, a2, 171f
                  c.xor      a2, a4
                  xor        s5, s1, t3
                  sra        a0, a0, s0
                  auipc      s6, 631020
                  csrrsi     a1, 0x340, 12
                  addi       a3, a6, -457
                  mul        zero, a2, a6
                  beq        s0, s9, 168f
                  csrrwi     tp, 0x340, 30
                  csrrwi     t1, 0x340, 13
                  srl        t5, t6, s0
                  mulhsu     a6, a7, zero
164:              blt        t4, gp, 178f
                  xor        s11, a7, s6
                  c.slli     s5, 15
                  c.add      t5, a0
168:              c.bnez     a2, 180f
                  bltu       s10, s9, 188f
                  c.beqz     a3, 178f
171:              auipc      ra, 295241
                  slli       a3, s11, 8
                  blt        t5, s4, 191f
                  slti       s9, a1, -760
                  mul        s9, a5, s10
                  srli       a6, s5, 12
                  c.xor      a1, a3
178:              srai       t2, t1, 30
                  auipc      s3, 457930
180:              c.andi     a0, -1
                  add        t5, s6, s5
                  remu       s9, a4, a4
                  csrrs      a5, 0x340, tp
                  rem        s3, s10, ra
                  blt        s1, s11, 190f
                  slli       s3, s8, 31
                  c.nop
188:              csrrw      t5, 0x340, a7
                  c.bnez     a4, 193f
190:              and        t6, s8, a6
191:              c.xor      a3, a1
                  beq        a0, sp, 211f
193:              nop
                  add        t2, s9, t0
                  sra        s5, t5, s1
                  sra        t1, a7, s8
                  c.slli     s3, 27
                  c.sub      s0, a3
                  csrrwi     s10, 0x340, 20
                  or         s2, a0, a2
                  csrrwi     t6, 0x340, 31
                  xor        s9, tp, s9
                  csrrs      s10, 0x340, ra
                  slli       s5, s8, 20
                  addi       s0, a2, 781
                  c.and      a2, a3
                  sra        t1, sp, s6
                  mulhsu     s5, t6, s4
                  csrrwi     a3, 0x340, 17
                  csrrwi     a2, 0x340, 9
211:              or         a1, sp, gp
                  c.sub      a4, a5
                  divu       s10, s4, gp
                  fence.i
                  c.slli     a6, 5
                  ori        s5, s7, 151
                  srl        gp, s3, a7
                  xori       a4, s9, 179
                  c.sub      a1, a5
                  c.bnez     a1, 225f
                  c.xor      a3, s1
                  xori       t1, s2, -170
                  and        s5, a2, sp
                  or         zero, s5, s11
225:              div        t5, s10, a0
                  slti       a4, a4, -57
                  and        s6, a1, t0
                  c.sub      a1, a5
                  div        a2, s4, zero
                  bge        sp, a7, 239f
                  lui        tp, 109385
                  xori       t0, s6, -932
                  sltiu      a7, s2, -268
                  c.addi     t0, -1
                  xori       s10, s0, 1
                  c.beqz     a4, 240f
                  sra        a0, t4, t1
                  mul        s9, a2, s9
239:              auipc      s4, 591429
240:              bge        ra, a3, 260f
                  xori       s4, s11, -222
                  or         s7, a4, a2
                  addi       s5, s0, -413
                  bge        t2, a6, 258f
                  or         t5, s1, ra
                  c.sub      a5, a5
                  slli       zero, s1, 21
                  sub        zero, s0, a3
                  csrrs      t6, 0x340, t3
                  mulh       t2, gp, s0
                  xori       s0, s4, -786
                  sra        a6, t6, s7
                  c.andi     a4, -1
                  andi       s1, s5, 287
                  c.srai     a5, 18
                  c.mv       a2, a1
                  c.xor      a0, s1
258:              c.sub      s1, s1
                  ori        a0, s1, 966
260:              csrrw      a2, 0x340, a3
                  csrrs      t6, 0x340, t3
                  csrrs      s7, 0x340, t1
                  c.add      a1, t6
                  slli       a4, s0, 10
                  xori       s1, t4, -1005
                  divu       s2, s6, t5
                  csrrsi     a7, 0x340, 21
                  csrrs      a1, 0x340, gp
                  fence.i
                  mulhsu     t5, a5, a7
                  c.nop
                  or         gp, s3, zero
                  bne        ra, t0, 292f
                  mul        s6, s2, a1
                  or         s4, t1, a5
                  lui        gp, 681221
                  csrrc      a5, 0x340, s1
                  la         s2, region_2+4762 #start riscv_load_store_rand_instr_stream_3
                  c.srai     s1, 1
                  sb         a7, -7(s2)
                  rem        gp, t5, s2
                  sh         s1, 12(s2)
                  csrrwi     s6, 0x340, 9
                  lbu        a1, -4(s2)
                  lb         t1, -3(s2)
                  c.srai     a4, 30
                  rem        s9, s10, t2
                  mulhu      a2, a3, s9
                  sb         s2, 1(s2)
                  c.nop
                  lb         a6, -15(s2)
                  srai       s7, s1, 17
                  sra        a3, gp, a4
                  lbu        a0, -5(s2)
                  sb         zero, -6(s2)
                  c.and      a4, s1
                  c.addi     tp, -1
                  mul        s11, ra, s7
                  sra        t2, gp, s3
                  sra        t0, s0, a3
                  csrrc      a3, 0x340, zero
                  c.slli     ra, 17
                  lbu        t6, 9(s2)
                  sb         t3, 1(s2)
                  lbu        s11, 16(s2)
                  sh         s4, 2(s2)
                  lh         a3, -4(s2)
                  sb         a3, -5(s2)
                  sb         s10, -9(s2)
                  sltiu      a0, a0, 555
                  and        s0, tp, a3
                  lh         a0, 14(s2)
                  sb         t1, 3(s2)
                  ori        a3, a3, -263
                  divu       s4, a4, t2
                  sb         t1, -15(s2)
                  divu       zero, a5, s6
                  csrrw      t5, 0x340, s2
                  auipc      s6, 875883
                  csrrc      s10, 0x340, t1
                  mulh       a0, s1, s6
                  lbu        gp, -9(s2)
                  sb         a7, 10(s2) #end riscv_load_store_rand_instr_stream_3
                  c.srli     a3, 29
                  c.lui      tp, 15
                  sra        t0, s7, sp
                  div        t5, t5, t3
                  beq        t5, s6, 290f
                  csrrs      s1, 0x340, t2
                  bne        t6, s8, 303f
                  divu       zero, t6, s11
                  sub        t1, s3, a5
                  c.li       tp, 28
                  ori        s2, a6, -204
                  nop
290:              slli       ra, t1, 3
                  c.nop
292:              c.mv       s11, a7
                  c.andi     a0, -1
                  sltu       s0, a7, zero
                  csrrw      tp, 0x340, zero
                  mulhu      ra, t3, s10
                  fence
                  div        s4, sp, zero
                  sub        a6, gp, a4
                  bgeu       s0, s7, 304f
                  srai       s10, a2, 4
                  slti       s6, a1, -718
303:              csrrci     a7, 0x340, 22
304:              mulh       tp, s9, s7
                  c.slli     s6, 21
                  bltu       s7, s4, 314f
                  bltu       t1, s7, 314f
                  auipc      s10, 117377
                  mulh       t2, a2, s6
                  rem        t2, t6, s7
                  mul        gp, s6, a2
                  bne        s6, s7, 315f
                  and        s0, sp, zero
314:              bge        a3, t2, 317f
315:              mulhu      a4, s3, a4
                  sltu       s7, t1, t4
317:              divu       s9, t5, s10
                  and        t5, t2, s9
                  c.srai     a0, 11
                  xor        s5, t4, ra
                  c.beqz     a4, 335f
                  fence.i
                  csrrc      t0, 0x340, s1
                  c.andi     a2, 26
                  csrrwi     a2, 0x340, 4
                  blt        ra, a5, 338f
                  and        s10, t2, a2
                  c.beqz     s1, 337f
                  beq        a5, a0, 340f
                  c.and      s0, s1
                  sltu       s5, a3, s10
                  fence
                  bne        s4, t0, 334f
334:              mul        a2, s10, t6
335:              fence
                  xori       a4, t5, -631
337:              fence
338:              fence.i
                  sra        tp, t6, a1
340:              nop
                  c.andi     a2, 15
                  csrrci     s11, 0x340, 30
                  sltu       s1, sp, t3
                  slt        a0, s4, ra
                  c.beqz     a4, 348f
                  addi       t1, t6, -143
                  remu       s10, t1, a1
348:              lui        s6, 1043542
                  blt        s3, tp, 362f
                  c.or       a3, s0
                  fence.i
                  bgeu       s5, s10, 357f
                  srli       t4, s6, 15
                  fence
                  fence
                  ori        s7, gp, 189
357:              bgeu       s2, s1, 376f
                  c.nop
                  csrrwi     s6, 0x340, 7
                  slt        a5, ra, a5
                  lui        a6, 48541
362:              addi       t5, t0, 933
                  c.add      s4, sp
                  c.slli     t6, 22
                  divu       t6, a7, t0
                  srai       a3, s5, 3
                  c.or       a2, s0
                  csrrc      s1, 0x340, s10
                  mulhu      s3, tp, t6
                  c.and      a0, a1
                  ori        t6, s0, 781
                  divu       a2, a6, s5
                  beq        tp, a4, 391f
                  fence.i
                  auipc      t0, 680687
376:              mulh       t0, t6, sp
                  mulhu      t1, s2, s11
                  bgeu       s0, t4, 381f
                  sltiu      t6, zero, 302
                  srai       s4, a1, 1
381:              c.add      tp, t2
                  slli       s9, t4, 20
                  c.mv       s7, ra
                  c.andi     s1, 19
                  c.or       a1, a1
                  c.addi     s7, -1
                  c.andi     a0, 27
                  divu       t0, s7, s3
                  sltu       t5, zero, t0
                  csrrsi     s0, 0x340, 13
391:              c.lui      ra, 19
                  lui        s10, 174670
                  c.slli     t5, 17
                  mulhsu     s6, s8, s10
                  c.slli     s3, 15
                  csrrci     s6, 0x340, 18
                  addi       t1, a2, 966
                  c.srli     s1, 9
                  sra        a1, a7, t6
                  srli       tp, t0, 5
                  mulh       s9, a2, s6
                  csrrwi     s6, 0x340, 15
                  bne        t1, s9, 414f
                  c.nop
                  csrrc      s7, 0x340, s6
                  mulhu      s7, a7, t0
                  srli       a0, t0, 19
                  add        s3, s10, t3
                  csrrwi     s2, 0x340, 29
                  c.bnez     a2, 425f
                  beq        a0, t0, 415f
                  c.lui      t6, 23
                  c.xor      a0, a4
414:              mul        s10, t2, a4
415:              c.srai     s0, 8
                  bgeu       t4, s6, 425f
                  and        a0, a2, zero
                  andi       s11, s7, 651
                  c.srli     a0, 7
                  bge        t1, s4, 437f
                  csrrs      t4, 0x340, t6
                  sub        gp, gp, a7
                  slti       gp, s4, -244
                  sltu       a2, t5, s10
425:              c.add      s2, s0
                  slt        a2, a7, tp
                  c.beqz     a5, 441f
                  csrrs      s10, 0x340, tp
                  sltiu      s3, ra, 921
                  c.beqz     a5, 434f
                  nop
                  bne        a3, s10, 436f
                  c.addi     s10, 4
434:              c.mv       tp, t2
                  remu       t4, s7, s6
436:              mulh       s4, a4, s9
437:              c.and      a1, a0
                  beq        tp, t6, 457f
                  andi       t1, t4, -396
                  nop
441:              srli       s3, s7, 4
                  c.and      a4, a2
                  div        s6, s4, t5
                  addi       a0, t2, -226
                  srl        s7, s10, s1
                  blt        a0, s3, 449f
                  c.lui      t4, 5
                  c.beqz     a1, 451f
449:              slt        t5, s0, s2
                  c.slli     s9, 30
451:              c.or       a4, a0
                  c.nop
                  srli       a7, t1, 6
                  xor        s2, s7, zero
                  remu       s3, s4, s6
                  sltiu      s7, s1, 312
457:              fence
                  mulhu      s6, s1, s8
                  c.srai     a3, 30
                  addi       gp, s8, 498
                  sra        zero, a2, s3
                  auipc      a7, 119446
                  c.xor      a5, a5
                  mulh       tp, t1, a7
                  c.li       s11, 1
                  c.sub      s1, a3
                  beq        tp, a2, j_sub_1_sub_4_4 #branch to jump instr
                  c.srai     a4, 7
j_sub_1_sub_4_4:  jal        ra, sub_4
                  csrrc      s11, 0x340, a5
                  mulhsu     s6, t1, s6
                  sub        t4, s6, a7
                  beq        t3, s0, 481f
                  sub        t4, t1, a3
                  xor        a5, s0, gp
                  bne        a1, s9, 481f
                  c.srli     a2, 18
                  lui        s3, 920161
                  div        s2, t5, t2
                  c.lui      gp, 7
                  csrrw      gp, 0x340, s9
                  sra        s6, s10, a1
                  bltu       t5, s8, 488f
                  bltu       t0, t6, 495f
                  sltu       zero, tp, s7
                  srai       s9, s9, 18
                  add        s9, t1, s5
                  xori       gp, a7, -234
                  csrrsi     s11, 0x340, 7
481:              mulh       t2, s5, sp
                  srli       t1, s5, 22
                  c.nop
                  csrrsi     a1, 0x340, 14
                  srai       t0, a1, 1
                  csrrsi     a0, 0x340, 10
                  c.nop
488:              c.add      s11, t0
                  csrrs      s9, 0x340, t1
                  fence.i
                  sub        s10, s6, zero
                  csrrs      s9, 0x340, t1
                  c.beqz     a2, 507f
                  c.bnez     a2, 502f
495:              sltu       t6, sp, s1
                  beq        s7, zero, 503f
                  mulh       t5, a2, s4
                  beq        s0, t4, 507f
                  blt        t2, t4, 504f
                  c.xor      a5, a4
                  divu       zero, s11, a1
502:              slli       a2, a7, 31
503:              andi       ra, s2, -941
504:              c.xor      a0, a4
                  csrrw      a6, 0x340, a5
                  beq        a7, a3, 524f
507:              c.bnez     a0, 515f
                  xor        tp, s8, a3
                  bne        s9, a3, 514f
                  slti       s9, a1, 643
                  c.and      a3, s1
                  c.andi     a4, 21
                  sltiu      s6, s9, -936
514:              sub        t1, s3, zero
515:              andi       s7, a1, 295
                  auipc      zero, 560976
                  c.beqz     a4, 520f
                  mulhsu     t1, s6, t2
                  slli       t6, s9, 11
520:              sll        s1, sp, t5
                  c.xor      s0, a2
                  sltiu      s1, sp, -561
                  nop
524:              c.nop
                  c.lui      a2, 6
                  beq        t0, gp, 535f
                  csrrsi     a2, 0x340, 9
                  bne        a1, a0, 531f
                  nop
                  mulhsu     s5, s5, s3
531:              csrrc      a5, 0x340, tp
                  add        gp, s4, t1
                  c.sub      a0, a3
                  andi       s1, s0, 266
535:              csrrci     s9, 0x340, 5
                  c.addi     t2, 9
                  srl        a4, t3, t1
                  nop
                  csrrwi     s6, 0x340, 30
                  remu       t5, a0, t0
                  c.srli     s0, 31
                  c.andi     s0, -1
                  ori        a4, t4, 378
                  sltu       a6, a5, a2
                  nop
                  fence
                  csrrs      a6, 0x340, a1
                  c.add      s1, s9
                  fence
                  slli       s10, s6, 21
                  sra        s1, s1, s8
                  c.li       s11, -1
                  lui        a0, 760789
                  c.addi     a2, -1
                  srl        s0, s8, gp
                  sltu       s9, zero, s11
                  c.or       a1, a1
                  bne        a7, s7, 569f
                  slt        s2, a2, zero
                  c.srai     s0, 26
                  csrrsi     a7, 0x340, 21
                  csrrw      tp, 0x340, t2
                  beq        s9, s1, 575f
                  fence
                  c.or       a2, a1
                  c.and      a2, s1
                  fence
                  srli       s3, t6, 30
569:              csrrc      t6, 0x340, gp
                  mulhu      a4, s4, t1
                  div        s0, s5, a3
                  sltu       a4, s8, a2
                  c.srai     a1, 20
                  divu       t6, t6, t0
575:              slli       s10, s1, 13
                  ori        s5, sp, -375
                  bgeu       s5, a1, 596f
                  csrrw      zero, 0x340, t3
                  sra        t1, s11, a5
                  and        a6, a2, a6
                  blt        t3, sp, 585f
                  c.li       s3, 6
                  sltiu      zero, s11, 729
                  sra        tp, a6, t6
585:              sltiu      t5, a3, 260
                  c.lui      a4, 22
                  csrrwi     a2, 0x340, 29
                  c.and      a4, a4
                  rem        a6, s0, s10
                  fence.i
                  add        s5, t3, a0
                  and        a2, gp, t3
                  csrrwi     s2, 0x340, 16
                  rem        a2, s2, a7
                  sltu       a7, gp, a7
596:              c.bnez     s1, 615f
                  bne        s1, a7, 608f
                  c.nop
                  c.mv       a1, s9
                  c.li       s10, 28
                  c.slli     s9, 12
                  lui        t4, 170544
                  sltu       a6, s6, t0
                  blt        s2, gp, 619f
                  beq        t1, s2, 606f
606:              remu       s7, zero, s2
                  bltu       a6, t4, 620f
608:              beq        zero, a4, 617f
                  remu       t0, a0, ra
                  divu       s5, gp, zero
                  nop
                  ori        s5, a1, 250
                  csrrci     s3, 0x340, 8
                  addi       s7, a2, -867
615:              srli       s7, zero, 18
                  nop
617:              add        s2, t5, s11
                  csrrsi     s1, 0x340, 13
619:              nop
620:              c.srai     a1, 13
                  csrrw      a0, 0x340, zero
                  sra        a1, s3, a5
                  mul        s5, s8, s0
                  add        s10, a4, t0
                  auipc      s10, 247194
                  c.addi     t1, -1
                  bgeu       gp, s7, 630f
                  sra        t6, s5, s2
                  c.or       s1, a4
630:              ori        s1, gp, -54
                  sltu       a1, s3, a6
                  bgeu       s3, a2, 649f
                  sltiu      s5, t6, -774
                  slti       tp, t6, 994
                  c.srli     a5, 16
                  bgeu       s3, s6, 637f
637:              xori       s4, a6, -795
                  c.srai     a2, 12
                  csrrwi     a6, 0x340, 11
                  mul        s6, t4, a3
                  rem        zero, s6, s5
                  fence.i
                  csrrsi     t0, 0x340, 28
                  blt        a5, s2, 653f
                  srli       s11, a3, 26
                  bge        s10, tp, 650f
                  divu       tp, a7, a7
                  srai       t0, s2, 18
649:              sll        a1, s5, s10
650:              csrrwi     tp, 0x340, 2
                  auipc      t6, 5230
                  auipc      s6, 551060
653:              csrrci     a1, 0x340, 16
                  andi       a5, t1, 160
                  sll        t4, a7, t4
                  la         s10, region_1+1607 #start load_store_instr_stream_1
                  la         ra, region_2+1587 #start load_store_instr_stream_0
                  lbu        s11, 248(s10)
                  lb         gp, 406(ra)
                  lb         s2, -64(s10)
                  sb         s11, 70(s10)
                  sb         t6, 1807(ra)
                  sb         a7, 115(s10)
                  sb         s2, -1391(ra)
                  lw         t4, 5(s10)
                  lhu        s11, -61(ra)
                  lbu        s5, 214(s10) #end load_store_instr_stream_1
                  lbu        t5, 1478(ra) #end load_store_instr_stream_0
                  c.slli     a6, 30
                  and        t1, s2, t6
                  fence.i
                  slt        zero, a6, s3
                  c.beqz     s0, 664f
                  csrrwi     a5, 0x340, 16
                  mulh       ra, s10, s1
                  c.beqz     s0, 672f
664:              slti       s4, s11, -1000
                  srl        s7, a5, a7
                  c.nop
                  c.sub      a5, a0
                  remu       a6, sp, a0
                  slti       a1, s8, -362
                  slli       s4, a2, 28
                  mulhu      tp, a5, t3
672:              c.or       a3, a5
                  sltiu      s2, a0, -952
                  c.addi     a1, 29
                  xor        s3, a0, s9
                  fence
                  bge        t2, s1, 684f
                  srai       t4, t5, 23
                  csrrc      s0, 0x340, sp
                  nop
                  c.add      s5, a3
                  csrrci     a2, 0x340, 19
                  mul        s5, a6, a4
684:              mulhsu     t1, s10, a4
                  c.lui      gp, 19
                  div        a0, t2, t3
                  slt        a4, t4, s8
                  srli       s2, s11, 14
                  blt        t3, a5, 694f
                  bltu       t2, s2, 693f
                  and        s6, zero, a0
                  xor        s10, a6, zero
693:              srli       s3, s9, 14
694:              csrrci     gp, 0x340, 11
                  remu       s3, s4, t5
                  bne        ra, s3, 707f
                  blt        s1, t5, 717f
                  bne        sp, s8, 706f
                  xori       s3, t5, 592
                  c.srli     a3, 3
                  remu       gp, s11, a3
                  lui        s7, 692685
                  c.nop
                  slti       t2, s6, -607
                  c.lui      s4, 12
706:              c.mv       ra, tp
707:              csrrc      s1, 0x340, t4
                  and        zero, s2, s5
                  c.lui      s1, 27
                  xor        s10, s7, a6
                  c.srai     a3, 25
                  lui        tp, 614146
                  bgeu       t4, s0, 721f
                  slti       s10, t4, -780
                  beq        s7, a7, 728f
                  remu       a1, s11, s5
717:              slli       s6, t1, 29
                  slti       s3, s5, -533
                  srai       zero, a5, 15
                  slt        s10, a5, t4
721:              fence
                  c.mv       s0, a1
                  bne        t2, s4, 726f
                  nop
                  c.lui      s6, 25
726:              slli       s3, s9, 1
                  c.li       gp, 9
728:              sll        a6, t5, s4
                  bgeu       s5, a5, 738f
                  c.andi     a0, 3
                  c.add      t6, t2
                  c.and      s0, a5
                  bge        a3, a4, 752f
                  add        s9, a0, sp
                  sltiu      zero, zero, 357
                  bltu       s11, s1, 747f
                  add        t5, s4, a4
738:              divu       t1, t1, a4
                  beq        s4, a1, 754f
                  srl        ra, t6, ra
                  csrrw      ra, 0x340, t3
                  c.beqz     a0, 761f
                  blt        t6, a6, 746f
                  c.beqz     a2, 748f
                  csrrwi     s9, 0x340, 24
746:              or         t5, a0, s8
747:              c.xor      a4, s0
748:              mulhu      t0, s7, t4
                  xor        s3, s4, gp
                  c.slli     a5, 30
                  c.and      s0, a5
752:              bge        s11, a5, 757f
                  sltiu      s5, t5, -578
754:              bne        s0, a3, 768f
                  rem        s5, s10, s3
                  blt        s9, tp, 770f
757:              fence.i
                  c.slli     s2, 28
                  srai       tp, s5, 9
                  slli       s7, sp, 13
761:              c.sub      a4, a5
                  csrrsi     zero, 0x340, 3
                  c.nop
                  c.mv       s10, sp
                  csrrc      a5, 0x340, s7
                  c.addi     t5, 13
                  xor        s11, t0, s7
768:              c.srli     a0, 26
                  c.addi     a4, 14
770:              c.or       a0, a1
                  and        t0, a1, t6
                  remu       t6, s2, a2
                  csrrs      s2, 0x340, s4
                  blt        tp, ra, 786f
                  addi       a2, t4, 293
                  mulhu      t2, t6, t4
                  c.lui      s1, 14
                  fence.i
                  c.li       s11, 16
                  csrrwi     t6, 0x340, 8
                  sltu       a6, a1, s2
                  bge        a1, a7, 800f
                  and        a4, tp, s8
                  c.beqz     s1, 798f
                  c.or       a3, a1
786:              sub        s10, s5, s11
                  bltu       s11, a0, 806f
                  xori       a5, a5, -308
                  c.srli     a0, 8
                  ori        s7, t3, 113
                  mul        s1, s3, s3
                  sltiu      tp, t4, 257
                  srai       a4, s6, 1
                  auipc      a1, 606042
                  xor        a2, s11, t6
                  and        s4, a7, zero
                  c.nop
798:              nop
                  mul        a2, a1, s7
800:              csrrw      s7, 0x340, gp
                  bgeu       s10, s5, 820f
                  bltu       s1, s10, 821f
                  c.beqz     a2, 812f
                  auipc      s6, 66447
                  sltu       s10, a5, s2
806:              lui        s11, 559468
                  rem        s0, s6, zero
                  slt        gp, s0, s11
                  csrrs      t4, 0x340, s4
                  bge        t0, t1, 813f
                  fence.i
812:              bltu       gp, gp, 820f
813:              c.srai     a3, 17
                  xor        a3, s10, s6
                  c.srai     a3, 7
                  c.or       a2, a1
                  mulh       t5, ra, t0
                  sltiu      t4, s11, 21
                  slt        s2, a1, zero
820:              fence.i
821:              rem        ra, sp, s0
                  sub        a3, a1, sp
                  beq        s5, ra, 831f
                  mulhu      a3, tp, t2
                  srai       a1, s10, 25
                  sra        s10, gp, a6
                  c.xor      a0, s1
                  addi       s3, gp, 37
                  c.srai     s0, 6
                  bne        tp, a5, 833f
831:              c.nop
                  mulhsu     ra, zero, ra
833:              lui        a5, 693612
                  csrrc      a6, 0x340, s6
                  c.lui      t2, 11
                  c.li       s4, 18
                  c.nop
                  mul        s2, ra, a7
                  c.andi     a3, -1
                  mulh       ra, a1, t6
                  blt        tp, s9, 860f
                  sltu       s10, a2, a4
                  c.xor      a1, a1
                  c.add      a1, s7
                  beq        a2, t5, 860f
                  c.beqz     a4, 847f
847:              c.slli     a1, 15
                  addi       s5, ra, -168
                  c.or       a3, a2
                  csrrs      tp, 0x340, zero
                  c.mv       a4, t2
                  c.mv       gp, a6
                  mul        t2, s8, t1
                  c.andi     s0, 7
                  csrrsi     a4, 0x340, 18
                  remu       t0, t4, s11
                  and        s2, a0, t6
                  c.xor      a1, s1
                  csrrc      a1, 0x340, a0
860:              remu       s3, s5, a4
                  sra        s7, s10, s10
                  sra        t2, a0, t6
                  csrrwi     a7, 0x340, 6
                  or         s11, t5, t6
                  bge        t5, a5, 877f
                  srli       a1, a5, 23
                  fence.i
                  srli       a1, t6, 22
                  c.xor      a4, s1
                  csrrw      ra, 0x340, t3
                  c.andi     s0, -1
                  or         s0, a1, s1
                  c.andi     s1, 1
                  bgeu       s11, a5, 885f
                  c.slli     s2, 7
                  div        s10, s0, t4
877:              sra        s10, s6, s3
                  mul        t4, s7, s8
                  beq        s4, a7, 896f
                  xor        zero, a2, s0
                  c.beqz     s1, 899f
                  c.and      a1, a4
                  c.lui      a7, 2
                  c.andi     s0, -1
885:              sra        a4, tp, s2
                  sltiu      s10, s1, 395
                  mulh       tp, s8, a3
                  c.mv       tp, s7
                  c.slli     s1, 31
                  bne        a3, t3, 901f
                  andi       s3, t4, 208
                  nop
                  andi       s5, s7, 1012
                  nop
                  c.slli     s7, 29
896:              csrrs      a6, 0x340, t3
                  remu       s0, s11, a2
                  c.lui      tp, 13
899:              mul        t1, s3, t1
                  auipc      s5, 227560
901:              slt        a2, a6, t1
                  mul        a1, t3, a2
                  c.slli     a7, 15
                  or         a5, s3, a3
                  divu       s6, gp, s1
                  slti       s3, tp, -978
                  c.srai     s1, 29
                  slti       s6, a2, -608
                  sltiu      t1, gp, 711
sub_1_13:         jal        ra, 4f
0:                c.jal      13f
1:                jal        gp, 20f
2:                c.j        7f
3:                jal        s5, 21f
4:                c.j        1b
5:                jal        ra, 23f
6:                jal        ra, 10f
7:                c.jal      5b
8:                jal        ra, 22f
9:                jal        t1, 18f
10:               c.jal      16f
11:               c.j        9b
12:               jal        ra, 15f
13:               c.jal      14f
14:               jal        ra, 11b
15:               c.j        8b
16:               c.j        2b
17:               c.j        24f
18:               c.j        6b
19:               c.j        25f
20:               c.j        0b
21:               c.j        19b
22:               jal        ra, 17b
23:               c.j        12b
24:               c.j        3b
25:               c.sub      a5, a1
                  slli       s10, zero, 13
                  sltiu      s11, s7, -618
                  sltu       t2, s11, a6
                  sltiu      s2, tp, 532
                  auipc      t1, 649205
                  beq        s2, t1, 920f
                  csrrc      t1, 0x340, s4
                  c.add      t0, gp
                  la         s4, region_4+3805 #start load_store_instr_stream_1
                  la         tp, region_4+1600 #start load_store_instr_stream_0
                  lbu        s6, 14(tp)
                  sh         s10, 6(tp)
                  sh         gp, -4(tp)
                  sb         s7, 230(s4)
                  lbu        s0, -223(s4)
                  sh         a2, -217(s4)
                  lb         a7, 7(tp)
                  lb         s6, 12(tp)
                  lbu        s6, -16(tp)
                  lw         a1, -69(s4)
                  sb         s2, 106(s4)
                  sb         a3, -12(s4) #end load_store_instr_stream_1
                  lbu        t1, 16(tp) #end load_store_instr_stream_0
                  mulh       s6, sp, t3
                  addi       a3, tp, -612
920:              c.slli     s6, 14
                  c.or       a1, s0
                  c.srli     a5, 23
                  c.addi     s0, 7
                  andi       s2, t3, -216
                  blt        s6, s0, 939f
                  mulhsu     s5, tp, s8
                  sltu       zero, t5, t4
                  and        gp, s6, t5
                  bge        s8, a6, 943f
                  andi       s1, t6, 625
                  mulh       a7, s1, sp
                  csrrwi     t1, 0x340, 14
                  beq        s1, t0, 947f
                  nop
                  bgeu       s11, a7, 948f
                  c.nop
                  c.and      a3, a4
                  c.srli     a1, 10
939:              addi       s6, s0, -249
                  xori       s4, s2, 241
                  addi       a1, s1, -5
                  div        a7, a2, a0
943:              mulh       a1, tp, gp
                  slti       t0, t3, 19
                  sub        t5, t4, tp
                  xor        s0, t1, s10
947:              sra        s11, s11, s4
948:              c.li       s5, 8
                  or         a6, t5, a5
                  bltu       zero, a0, 957f
                  ori        t0, t0, 634
                  bne        a5, s4, 961f
                  bgeu       a2, s8, 956f
                  bltu       t6, t2, 958f
                  c.slli     s10, 4
956:              mul        a0, zero, zero
957:              c.addi     a4, 31
958:              c.beqz     a0, 967f
                  c.bnez     a0, 962f
                  c.andi     a4, -1
961:              mul        a4, t3, s11
962:              c.add      a3, a3
                  c.srai     a4, 12
                  c.srai     a0, 7
                  csrrci     s6, 0x340, 13
                  auipc      t1, 561563
967:              c.and      a5, s1
                  mul        s2, a6, a3
                  fence
                  add        s11, s9, t4
                  mulh       s4, a4, s11
                  csrrs      a0, 0x340, a6
                  ori        t5, zero, -294
                  mulhu      s2, s2, s4
                  rem        a4, s8, a7
                  slli       s10, s5, 8
                  c.srai     a1, 27
                  slt        t4, s3, s10
                  csrrsi     s10, 0x340, 19
                  c.slli     s0, 6
                  addi       a6, t5, 923
                  c.add      s11, a1
                  csrrs      a4, 0x340, a4
                  c.nop
                  csrrwi     a7, 0x340, 31
                  ori        gp, s3, 520
                  auipc      a2, 868836
                  c.xor      a2, a2
                  ori        ra, s5, 9
                  bltu       a4, s1, 1010f
                  c.bnez     a2, 996f
                  lui        a1, 683920
                  divu       s6, s0, s11
                  sub        a4, gp, s3
                  mul        s2, a4, t5
996:              c.add      t1, s6
                  csrrsi     s3, 0x340, 9
                  auipc      t1, 949543
                  beq        t2, s5, 1003f
                  c.lui      s0, 20
                  bltu       t0, a6, 1005f
                  csrrwi     a0, 0x340, 0
1003:             slt        tp, gp, gp
                  mulh       a3, t1, sp
1005:             csrrsi     s2, 0x340, 4
                  mulh       s4, s2, ra
                  csrrs      s3, 0x340, zero
                  sra        a6, s7, t4
                  bltu       gp, a5, 1012f
1010:             blt        a0, a2, 1029f
                  csrrw      s3, 0x340, s2
1012:             fence.i
                  blt        a2, s10, 1032f
                  remu       a0, a6, t4
                  andi       t4, s4, 939
                  andi       a1, s4, -401
                  c.srai     s0, 3
                  c.beqz     a3, 1025f
                  nop
                  beq        s1, a2, 1024f
                  c.bnez     a0, 1034f
                  c.sub      s0, a1
                  slt        s6, s7, s10
1024:             c.beqz     a5, 1025f
1025:             bgeu       gp, a4, 1040f
                  andi       a0, a3, -537
                  bne        s7, a2, 1044f
                  bne        t0, s9, 1031f
1029:             fence
                  sra        t4, t3, s4
1031:             c.xor      a1, s0
1032:             c.slli     a3, 6
                  blt        a3, tp, 1042f
1034:             mul        a4, t5, t1
                  c.beqz     a2, 1043f
                  addi       a6, s0, 639
                  c.mv       a4, a7
                  ori        s2, s6, -84
                  c.srli     s1, 17
1040:             csrrw      s0, 0x340, t1
                  srli       gp, gp, 17
1042:             c.li       s5, 5
1043:             sra        a3, a1, sp
1044:             sra        s2, a1, t3
                  mulhu      s7, t1, t0
                  c.xor      a1, a4
                  andi       ra, a5, -123
                  c.and      a3, s0
                  srli       t4, s10, 30
                  c.and      a4, s1
                  csrrc      tp, 0x340, s8
                  addi       s7, tp, -304
                  nop
                  sltiu      a5, gp, -979
                  srl        s4, gp, s7
                  mulh       t2, t2, a3
                  addi       s4, s1, -848
                  sltu       a3, sp, zero
                  c.or       a1, s1
                  or         s7, s7, s3
                  srai       s11, t3, 9
                  srl        t2, s10, a1
                  auipc      t6, 188358
                  div        a4, s10, s3
                  lui        s7, 521329
                  csrrci     tp, 0x340, 11
                  sltu       s4, s0, s5
                  bne        s5, a5, 1088f
                  csrrc      a5, 0x340, s8
                  andi       s5, s9, -562
                  c.li       s5, -1
                  remu       s1, s0, zero
                  csrrwi     s2, 0x340, 2
                  c.mv       s7, s11
                  remu       t2, a7, s4
                  xori       a2, zero, -955
                  blt        zero, a1, 1080f
                  nop
                  c.srli     a2, 10
1080:             mulhsu     s2, t2, t3
                  andi       t6, s4, 1018
                  ori        t6, a7, -690
                  srai       ra, t1, 24
                  slti       s4, a1, 546
                  c.or       s0, s0
                  sub        t0, sp, s4
                  slli       a1, s2, 26
1088:             csrrs      t2, 0x340, t3
                  c.li       a2, 22
                  csrrc      s7, 0x340, a3
                  or         a0, s5, s7
                  c.slli     s5, 16
                  mul        a7, zero, s0
                  xori       t2, t5, -875
                  slti       s4, t3, -281
                  csrrci     a7, 0x340, 3
                  lui        zero, 841938
                  c.beqz     a2, 1112f
                  or         tp, s8, a5
                  srai       s9, s4, 18
                  andi       s5, s0, 620
                  add        s5, s2, s0
                  mul        s1, a3, a3
                  sltu       s1, s6, zero
                  add        gp, s2, t0
                  sltu       s3, ra, ra
                  nop
                  c.andi     a2, 11
                  mulhsu     t0, t4, s10
                  sub        a0, gp, a4
                  bgeu       zero, t2, 1130f
1112:             andi       a6, s8, 516
                  or         s0, a7, s5
                  c.beqz     s0, 1123f
                  sra        s10, t1, s1
                  srli       s3, ra, 31
                  c.slli     a2, 22
                  xori       t2, s9, -70
                  c.li       a3, 5
                  auipc      a1, 694266
                  c.li       s9, 8
                  srai       s0, a2, 26
1123:             c.add      a5, a1
                  csrrci     a3, 0x340, 20
                  sltiu      s9, s5, -480
                  c.xor      s0, a0
                  xor        s6, a3, ra
                  csrrsi     s11, 0x340, 5
                  c.or       a1, a0
1130:             c.xor      a5, a3
                  xor        t5, s0, t5
                  andi       s10, a3, -120
                  mulh       zero, t0, t4
                  sltu       s10, s4, ra
                  c.srli     s1, 8
                  fence
                  slli       s6, a7, 4
                  slt        a3, s0, a3
                  c.addi     a3, 26
                  c.bnez     a1, 1154f
                  bge        s0, a0, 1145f
                  c.andi     a1, 7
                  addi       a1, a5, 322
                  auipc      s11, 3886
1145:             c.xor      a1, a4
                  blt        s11, s9, 1155f
                  c.nop
                  addi       a0, a5, -923
                  sub        s6, t0, zero
                  slt        s2, a4, t0
                  sub        a7, s7, t6
                  add        s10, a0, s5
                  bgeu       gp, a2, 1161f
1154:             div        s9, tp, a1
1155:             c.or       a1, a0
                  bge        a2, t2, 1167f
                  c.lui      t1, 8
                  bgeu       a7, a4, 1163f
                  fence.i
                  sltiu      s3, ra, 541
1161:             csrrs      a4, 0x340, a7
                  blt        s6, s9, 1180f
1163:             srai       a6, a6, 13
                  csrrci     a3, 0x340, 16
                  add        ra, t4, gp
                  mulhu      t5, s2, s10
1167:             bge        s7, t2, 1178f
                  addi       ra, a0, 65
                  c.srai     a3, 2
                  mulhsu     a1, s5, a5
                  div        s6, a1, s0
                  c.bnez     a5, 1175f
                  c.nop
                  mulh       s6, tp, t3
1175:             xor        s0, s8, a4
                  c.xor      a5, a4
                  slti       a5, s4, 486
1178:             csrrci     a0, 0x340, 26
                  bne        t1, gp, 1191f
1180:             mul        s7, t4, t3
                  c.add      a5, ra
                  c.sub      a1, s1
                  bne        gp, sp, 1187f
                  c.mv       t6, a4
                  csrrwi     zero, 0x340, 9
                  c.or       a0, s0
1187:             mulhu      s2, gp, a7
                  auipc      t1, 940043
                  addi       zero, t1, 868
                  divu       a2, s7, a4
1191:             sltiu      s0, zero, -915
                  bne        a3, s1, 1197f
                  fence
                  auipc      tp, 638245
                  csrrc      s7, 0x340, ra
                  ori        tp, t5, 234
1197:             lui        s5, 152161
                  fence.i
                  sltiu      t5, sp, -356
                  slli       s2, s1, 15
                  csrrs      t5, 0x340, s7
                  c.xor      a0, a1
                  slti       tp, t4, -960
                  srai       a5, gp, 24
                  beq        s4, s2, 1219f
                  fence.i
                  c.nop
                  mulhsu     a7, t6, a5
                  bgeu       s8, a0, 1212f
                  lui        s4, 208872
                  c.xor      a4, a2
1212:             c.or       a3, a4
                  mulhu      s4, t2, t1
                  bltu       s7, s11, 1223f
                  c.bnez     a3, 1220f
                  c.addi     gp, -1
                  slli       a2, s11, 22
                  c.srli     a0, 19
1219:             addi       zero, a4, 89
1220:             sra        s7, s1, a7
                  c.slli     s1, 3
                  bge        s7, ra, 1234f
1223:             mulhu      a6, s11, t0
                  c.nop
                  andi       s9, a6, -892
                  bgeu       a5, s9, 1237f
                  sltiu      s7, s0, 920
                  and        t4, t0, t5
                  fence
                  sll        s4, s10, s1
                  and        s4, a1, a1
                  c.bnez     s0, 1236f
                  c.srli     s0, 28
1234:             blt        s1, sp, 1254f
                  and        s0, a4, s8
1236:             c.nop
1237:             c.or       a0, a1
                  sll        s9, s6, a6
                  c.xor      a5, s1
                  c.nop
                  c.add      t0, s8
                  slti       a7, ra, 539
                  ori        t4, t6, -773
                  c.sub      s0, a0
                  c.lui      a6, 16
                  rem        gp, zero, a6
                  andi       a6, zero, -132
                  sll        s6, a5, ra
                  srli       s3, t4, 27
                  slti       gp, t1, 329
                  c.slli     s11, 3
                  div        t1, s7, a7
                  rem        t2, s4, s6
1254:             c.li       s11, 29
                  csrrc      s6, 0x340, t6
                  nop
                  c.sub      a5, a1
                  bne        tp, s2, 1267f
                  xor        gp, s8, s6
                  mul        s2, s10, s4
                  blt        s2, s1, 1270f
                  c.sub      s0, a4
                  sltiu      a1, a0, -108
                  andi       s9, s2, -76
                  c.or       s1, s0
                  bgeu       s5, a4, 1285f
1267:             c.or       a1, a5
                  csrrw      a3, 0x340, s8
                  mulhsu     s1, ra, tp
1270:             bgeu       t6, t0, 1284f
                  slti       t1, s1, 573
                  slt        s3, t3, t3
                  c.beqz     a4, 1281f
                  csrrc      t6, 0x340, gp
                  rem        s0, a0, a4
                  and        a4, sp, s5
                  mulhu      s0, t0, s7
                  nop
                  c.bnez     s1, 1283f
                  sra        s0, t4, s9
1281:             c.sub      a5, a2
                  srli       s2, t2, 0
1283:             c.or       a3, a4
1284:             c.nop
1285:             mulhsu     s4, s1, t0
                  c.mv       s3, a5
                  srli       a7, a0, 11
                  remu       t1, a2, ra
                  c.bnez     a0, 1292f
                  srai       s2, s9, 20
                  c.srai     a2, 22
1292:             srli       t4, zero, 16
                  andi       a6, s1, 940
                  c.srli     a5, 23
                  add        s3, s5, a5
                  sub        tp, s2, t0
                  c.or       a1, a3
                  sub        s11, t2, s0
                  c.addi     t5, -1
                  xor        tp, sp, t1
                  mulhu      t2, a7, t4
                  lui        s5, 791693
                  sra        a3, s7, t1
                  xor        s11, a5, gp
                  c.and      s0, s1
                  c.and      s1, a2
                  divu       t5, t1, s0
                  c.mv       a2, t5
                  c.bnez     a0, 1327f
                  mulhu      s5, s9, t1
                  slti       t6, s1, -748
                  c.xor      a5, a2
                  or         t6, s6, t0
                  bge        tp, tp, 1328f
                  c.sub      a0, a4
                  div        t5, a3, s1
                  c.addi     t4, 23
                  c.lui      t1, 8
                  c.sub      a5, a3
                  auipc      zero, 424820
                  c.and      a1, a1
                  c.nop
                  lui        s4, 457702
                  c.xor      a2, a2
                  slt        a0, t2, a6
                  c.or       a0, a0
1327:             sra        s0, s2, s3
1328:             slti       s10, a0, -201
                  c.sub      a2, s1
                  c.srai     s0, 25
                  c.li       t6, 3
                  c.xor      a4, a1
                  csrrsi     t1, 0x340, 22
                  c.slli     s11, 1
                  and        s10, a5, tp
                  c.nop
                  c.or       a1, a3
                  sltiu      a1, s2, -328
                  bge        s6, a7, 1347f
                  c.andi     s1, 29
                  fence.i
                  mul        tp, a1, s1
                  c.srai     s1, 7
                  c.addi     a6, 2
                  c.beqz     a5, 1364f
                  c.slli     s3, 25
1347:             blt        s1, s1, 1348f
1348:             fence
                  bge        a0, a0, 1368f
                  remu       a4, a6, a5
                  csrrs      a0, 0x340, tp
                  c.srli     s1, 22
                  divu       a5, t6, s2
                  c.srai     a3, 2
                  xori       t1, zero, -69
                  c.lui      a0, 25
                  slt        a1, a1, t4
                  mulhu      t2, t1, t1
                  mulhsu     s5, s8, t4
                  c.mv       s5, a7
                  mulhsu     zero, t2, ra
                  lui        s3, 616913
                  remu       s2, a4, s0
                  slt        t5, a6, a2
                  csrrsi     a2, 0x340, 17
                  c.or       a3, a3
j_sub_1_sub_3_5:  jal        ra, sub_3
                  sra        ra, t0, a5
                  lui        s0, 138288
                  mulh       gp, a2, s5
                  remu       t4, s4, t5
1364:             srai       t0, t6, 9
                  mulh       t2, s10, s5
                  csrrs      t6, 0x340, sp
                  and        t4, a7, s2
1368:             bne        s11, s2, 1372f
                  c.addi     s9, 6
                  bltu       s5, sp, 1373f
                  csrrw      s3, 0x340, s4
1372:             add        t2, a4, t3
1373:             slli       a6, s9, 23
                  csrrci     s1, 0x340, 29
                  fence
                  andi       t1, a4, 185
                  sll        a4, s9, a7
                  c.and      a1, s0
                  srai       s11, s4, 19
                  sra        zero, s2, s8
                  and        a1, s1, a3
                  xori       a1, sp, 251
                  mul        s9, s8, t4
                  add        a0, s10, s6
                  srai       t4, s9, 13
                  c.or       a2, a2
                  c.srai     a2, 8
                  beq        t0, gp, 1402f
                  srli       s2, s6, 5
                  and        a6, t4, a3
                  slti       ra, ra, 376
                  add        t2, t0, a1
                  rem        t2, sp, s9
                  bgeu       ra, zero, 1409f
                  ori        a1, a7, -996
                  c.mv       a7, sp
                  mul        a3, s7, a4
                  c.add      s11, tp
                  sltu       t4, a5, t4
                  c.sub      a4, a2
                  mulhu      t5, gp, s9
1402:             beq        a1, a5, 1413f
                  csrrsi     s10, 0x340, 27
                  csrrw      t6, 0x340, s2
                  srli       t4, t0, 6
                  beq        ra, t4, 1413f
                  c.mv       a4, a7
                  nop
1409:             csrrsi     s6, 0x340, 28
                  csrrc      s4, 0x340, s7
                  nop
                  auipc      a3, 228315
1413:             c.mv       t2, s10
                  nop
                  srl        t2, t0, zero
                  c.mv       a3, t5
                  sltu       gp, zero, t1
                  ori        a0, t6, 401
                  xor        tp, t1, a4
                  fence
                  fence.i
                  c.sub      a4, s1
                  addi       ra, s1, -216
                  c.beqz     a0, 1429f
                  c.srai     a5, 17
                  mulh       gp, s7, t0
                  add        gp, s0, a2
                  mulh       s2, tp, t3
1429:             mul        s5, s8, t2
                  c.xor      a1, a5
                  xor        s9, s10, t3
                  slti       s10, t6, -547
                  csrrsi     a6, 0x340, 22
                  blt        tp, s11, 1437f
                  c.nop
                  or         s5, a3, s8
1437:             bge        t4, t3, 1450f
                  csrrs      a1, 0x340, a4
                  bge        s11, t2, 1456f
                  div        t5, s8, s8
                  csrrc      a1, 0x340, a7
                  srl        s3, s5, s10
                  bne        s10, a3, 1447f
                  addi       s4, a4, 337
                  andi       s10, s9, 251
                  csrrs      t1, 0x340, tp
1447:             sll        s11, s11, a6
                  divu       a1, tp, s10
                  div        t2, t0, s4
1450:             csrrsi     s7, 0x340, 27
                  and        a2, s7, s10
                  beq        a3, s3, 1460f
                  nop
                  xori       zero, t6, 85
                  csrrci     t0, 0x340, 28
1456:             c.add      s6, sp
                  c.lui      ra, 27
                  c.srai     s1, 15
                  fence
1460:             sll        a3, s7, t0
                  c.nop
                  andi       t0, s6, -741
                  bge        a3, a6, 1471f
                  nop
                  sltu       a2, a3, gp
                  c.bnez     a1, 1485f
                  csrrci     s0, 0x340, 22
                  mulhsu     s7, a5, a6
                  c.xor      a3, s0
                  sub        a3, t5, a0
1471:             rem        t0, s10, a6
                  srli       a3, ra, 24
                  ori        t2, s1, -644
                  csrrci     s6, 0x340, 29
                  c.bnez     a2, 1486f
                  or         a6, s11, t1
                  beq        s7, t5, 1486f
                  c.lui      s3, 24
                  divu       a2, s8, s1
                  beq        s1, s5, 1485f
                  c.srli     a4, 9
                  rem        s7, s0, tp
                  rem        s0, a5, s8
                  addi       a4, zero, -6 #init loop 0 counter
                  add        t4, t6, zero
                  addi       t2, zero, -3 #init loop 0 limit
                  auipc      s11, 676221
                  sltu       tp, t0, t3
                  and        s11, s9, a2
sub_1_52_0_t:     andi       t0, s11, -595
                  rem        a6, s8, s2
                  c.srli     a1, 28
                  addi       a4, a4, 3 #update loop 0 counter
                  auipc      s11, 928595
                  sltu       s5, s0, t2
                  sll        a2, t3, s2
                  c.andi     a1, -1
                  blt        a4, t2, sub_1_52_0_t #branch for loop 0
                  c.addi     a7, -1
                  slli       s1, a4, 18
1485:             c.sub      a0, s0
1486:             div        t4, a4, s2
                  fence
                  bgeu       sp, tp, 1502f
                  c.and      a3, a0
                  bltu       t1, s4, 1510f
                  c.and      s0, a3
                  csrrwi     s2, 0x340, 24
                  csrrsi     a5, 0x340, 27
                  srl        a1, t6, s3
                  div        a6, s3, a3
                  c.mv       s9, a2
                  bltu       t6, s9, 1501f
                  c.andi     a5, 20
                  c.xor      a4, a5
                  c.srli     s0, 1
1501:             nop
1502:             mulhu      t2, t2, s5
                  c.beqz     s0, 1516f
                  c.bnez     s1, 1522f
                  and        gp, s0, t3
                  auipc      a0, 1036350
                  mulhsu     s0, gp, s3
                  bltu       t3, tp, 1511f
                  c.or       a3, a4
1510:             c.li       s2, 2
1511:             slt        s10, a4, s8
                  and        s7, s0, a1
                  andi       s2, sp, -909
                  sra        a5, s6, s6
                  sub        s7, s3, t6
1516:             c.mv       s5, ra
                  c.mv       s11, s7
                  c.add      tp, s10
                  beq        s2, t1, 1523f
                  remu       ra, a4, tp
                  ori        gp, s0, -104
1522:             c.and      a2, s1
1523:             and        s4, sp, a6
                  slli       t6, sp, 2
                  c.lui      s4, 23
                  fence.i
                  bgeu       t0, t4, j_sub_1_sub_2_6 #branch to jump instr
                  c.xor      s0, a4
                  csrrwi     t5, 0x340, 13
                  c.add      a1, s8
                  add        t2, a4, gp
                  remu       a4, a0, a3
                  sltiu      ra, t2, 994
                  srai       s2, s5, 27
                  auipc      zero, 788625
j_sub_1_sub_2_6:  jal        ra, sub_2
                  div        t1, a3, a2
                  xor        a6, s5, tp
                  bge        t6, t3, 1540f
                  bne        gp, t6, 1538f
                  csrrsi     a1, 0x340, 13
                  div        t0, s11, t4
                  bge        tp, s0, 1533f
1533:             xori       a6, t1, -783
                  slli       s1, t0, 15
                  slti       t5, a2, -877
                  divu       s5, t0, ra
                  mul        t4, ra, a3
1538:             bne        a4, t6, 1541f
                  csrrs      s5, 0x340, s9
1540:             mulh       a1, t0, t2
1541:             c.beqz     s0, 1544f
                  srai       a1, tp, 5
                  csrrwi     zero, 0x340, 24
1544:             xor        s4, s2, t6
                  srli       t6, a2, 4
                  andi       a4, a7, -728
                  bge        s6, sp, 1554f
                  rem        t4, t5, s4
                  c.xor      a3, a1
                  sra        s11, s4, a5
                  c.mv       s5, t0
                  lui        a2, 304445
                  c.sub      a5, a0
1554:             bge        s5, t3, 1565f
                  mul        a3, s2, s0
                  bne        s0, a3, 1575f
                  bgeu       a7, a7, 1566f
                  ori        s9, s7, 844
                  auipc      s5, 582629
                  csrrs      t1, 0x340, gp
                  bge        s6, s9, 1564f
                  mulh       s2, t0, s4
                  or         a7, s8, t4
1564:             c.and      a5, s0
1565:             addi       s4, s5, 478
1566:             csrrwi     s0, 0x340, 19
                  sltu       a1, s4, a1
                  bltu       s7, s5, 1587f
                  c.or       a0, a1
                  slt        s11, tp, s4
                  csrrsi     zero, 0x340, 14
                  sll        t1, a5, s4
                  xor        a2, s11, s3
                  c.or       s0, a0
1575:             mulhu      zero, s10, a3
                  c.and      a5, a0
                  remu       a1, zero, s10
                  c.nop
                  lui        s6, 700300
                  c.mv       s2, s7
                  bne        s2, a5, 1586f
                  sll        s5, t5, a7
                  slt        s5, t5, t3
                  blt        gp, s5, 1599f
                  andi       s0, zero, 754
1586:             c.or       a3, a4
1587:             c.and      a5, a3
                  c.beqz     a1, 1602f
                  c.bnez     a2, 1606f
                  slli       t6, s10, 15
                  auipc      s10, 439672
                  andi       s3, s4, -714
                  and        gp, s6, t5
                  slt        t6, s3, a7
                  rem        t6, zero, s2
                  bltu       s2, t0, 1610f
                  c.xor      a1, a3
                  slt        t6, s4, a5
1599:             c.and      s0, s1
                  srli       a2, t2, 8
                  bge        a2, s9, 1613f
1602:             sltu       t0, zero, s2
                  mulh       ra, a0, t5
                  divu       s0, a1, s6
                  csrrc      s5, 0x340, a2
1606:             c.xor      a1, a4
                  andi       a4, s2, -813
                  mul        t6, s3, a7
                  add        a3, t5, s3
1610:             c.andi     a4, -1
                  mul        s7, sp, s6
                  c.addi     gp, 19
1613:             bltu       t6, s3, 1616f
                  c.li       s1, -1
                  or         t5, s7, s2
1616:             c.andi     a4, -1
                  c.bnez     a5, 1621f
                  srai       t4, t5, 17
                  c.xor      a5, s1
                  csrrs      s2, 0x340, zero
1621:             c.nop
                  lui        s7, 918568
                  fence.i
                  fence
                  sltiu      a4, s0, 217
                  bgeu       t3, s9, 1640f
                  c.mv       s5, sp
                  srli       s10, a4, 22
                  c.mv       t6, s2
                  slli       t4, s8, 3
                  sltiu      a2, s3, 738
                  c.bnez     s0, 1635f
                  xori       a0, t1, -376
                  srli       s7, s0, 10
1635:             xori       s9, s2, -942
                  sll        a1, t1, a6
                  rem        s9, s5, t6
                  bltu       s10, s8, 1652f
                  nop
1640:             div        a5, s0, sp
                  c.srai     a1, 30
                  div        a6, ra, t5
                  xori       t2, a4, 395
                  slli       s10, s4, 9
                  c.or       a5, a0
                  xor        t2, t3, s6
                  bgeu       t5, t5, 1658f
                  csrrs      s11, 0x340, t5
                  c.or       s0, a3
                  blt        a2, t5, 1653f
                  divu       s6, s11, t1
1652:             slti       a3, s5, -626
1653:             c.addi     s11, 30
                  sll        s9, t0, a2
                  c.beqz     s1, 1664f
                  remu       a4, a7, s6
                  csrrci     gp, 0x340, 7
1658:             xor        a6, s2, s7
                  fence
                  c.slli     a5, 30
                  sll        a4, t4, s1
                  andi       s3, t0, -281
                  xori       s0, s1, -587
1664:             sub        s4, t2, t4
                  xori       a6, t2, -220
                  srl        gp, s9, a4
                  c.and      a1, a0
                  mul        zero, s4, s7
                  c.bnez     a2, 1673f
                  bge        s2, a6, 1678f
                  c.add      s9, a3
                  c.nop
1673:             slti       a2, zero, 844
                  lui        t5, 675039
                  c.mv       ra, ra
                  sltu       s1, t3, s11
                  c.or       a3, a5
1678:             c.srli     a2, 12
                  or         t0, s11, s0
                  fence
                  c.mv       a5, s1
                  csrrci     gp, 0x340, 26
                  c.or       a5, a3
                  c.add      gp, a2
                  c.beqz     a3, 1692f
                  bltu       sp, a4, 1691f
                  sltu       s0, t1, a6
                  bne        a1, s0, 1702f
                  bne        a7, t1, 1704f
                  rem        gp, s8, s6
1691:             andi       ra, t1, -460
1692:             c.add      s0, gp
                  c.slli     t5, 30
                  c.lui      s7, 5
                  c.lui      a5, 31
                  c.sub      a2, a1
                  bne        a2, s1, 1716f
                  slti       s1, gp, -984
                  c.beqz     a2, 1708f
                  mul        s3, zero, t0
                  c.sub      a1, s0
1702:             rem        gp, a7, ra
                  fence.i
1704:             mulhsu     tp, t6, t5
                  la         s3, region_3+71 #start riscv_load_store_rand_instr_stream_4
                  lb         a4, -54(s3)
                  sb         a1, 15(s3)
                  lb         zero, 2(s3)
                  lb         t1, 22(s3)
                  addi       a5, s9, -869
                  sb         s1, 44(s3)
                  lh         s6, -5(s3)
                  srl        a1, s8, tp
                  sb         s2, -7(s3)
                  mulh       gp, tp, s3
                  c.xor      a5, s1
                  divu       zero, t3, zero
                  c.srai     a1, 12
                  div        a1, s1, s11
                  c.xor      a5, a5
                  add        s7, s5, s2
                  or         zero, t4, a7
                  csrrsi     s10, 0x340, 30
                  sb         s4, 52(s3)
                  andi       a6, a3, -710
                  csrrc      a3, 0x340, a4
                  lw         t2, 17(s3)
                  mulhsu     t4, a2, gp
                  fence.i
                  sltu       a3, s6, s4
                  sh         s10, 25(s3)
                  c.or       a3, a5
                  lb         s11, 24(s3)
                  lb         s9, -46(s3)
                  sltiu      a7, a1, 157
                  c.lui      a1, 3
                  csrrc      a5, 0x340, t4
                  sb         t0, -24(s3)
                  c.srai     a3, 14
                  lbu        a2, -60(s3) #end riscv_load_store_rand_instr_stream_4
                  div        t2, a0, sp
                  ori        t4, s3, -198
                  csrrci     s1, 0x340, 21
1708:             remu       s0, s2, a1
                  mul        s2, a0, s6
                  csrrw      ra, 0x340, a2
                  c.or       s1, a2
                  beq        a2, a1, 1729f
                  andi       s5, a7, 1009
                  bltu       t5, s10, 1715f
1715:             sll        t6, t4, t3
1716:             add        s5, s2, t4
                  c.srai     a5, 30
                  beq        t1, a5, 1731f
                  c.srli     s1, 31
                  c.addi     s11, 9
                  remu       s0, a0, s11
                  xor        a5, t1, s1
                  srli       t0, s3, 8
                  beq        t1, s11, 1743f
                  sub        s7, a0, gp
                  c.addi     s7, -1
                  fence.i
                  sll        s1, s4, t0
1729:             mul        s1, a5, s9
                  csrrs      s6, 0x340, a4
1731:             slli       a5, t2, 18
                  bgeu       s5, t6, 1737f
                  bge        gp, s1, 1753f
                  csrrwi     gp, 0x340, 17
                  c.xor      a5, a0
                  bne        a2, ra, 1754f
1737:             lui        t4, 310000
                  mul        s3, s1, t5
                  fence.i
                  slt        zero, sp, t5
                  sub        s10, s11, s4
                  csrrc      t1, 0x340, a3
1743:             bne        a7, s6, 1762f
                  srl        a3, t5, tp
                  c.bnez     a4, 1748f
                  xori       t0, s9, 908
                  csrrsi     s3, 0x340, 6
1748:             sltu       s10, t4, s11
                  bgeu       a7, s3, 1757f
                  fence.i
                  csrrc      s2, 0x340, s5
                  c.and      a0, a1
1753:             c.nop
1754:             mul        t5, a0, t6
                  mulhu      s10, a0, s5
                  srl        s7, zero, s6
1757:             c.andi     s0, -1
                  c.or       a0, a3
                  sll        s7, a1, a0
                  xori       ra, tp, -544
                  csrrwi     a5, 0x340, 11
1762:             c.li       t1, 9
                  add        gp, t5, gp
                  csrrc      a7, 0x340, a4
                  csrrs      t4, 0x340, s11
                  c.addi     s9, 15
                  slti       a2, a3, 30
                  bltu       t5, s4, 1777f
                  csrrsi     a1, 0x340, 20
                  blt        t6, a5, 1781f
                  csrrci     t1, 0x340, 8
                  csrrc      s10, 0x340, t1
                  divu       s9, t3, t1
                  srli       s7, a6, 25
                  c.mv       t6, s2
                  bltu       zero, s2, 1780f
1777:             c.xor      a3, a0
                  bne        s11, s4, 1787f
                  divu       gp, t2, a2
1780:             bne        s5, t0, 1781f
1781:             slt        tp, a7, a5
                  c.or       s1, a0
                  divu       s11, a4, s3
                  mulh       gp, s0, zero
                  slli       s10, t4, 18
                  c.srli     s1, 11
1787:             blt        t4, t2, 1792f
                  c.li       tp, 18
                  c.sub      a1, s1
                  divu       s1, s10, a4
                  addi       s0, s4, 165
1792:             add        t2, a0, t3
                  bgeu       s5, s9, 1802f
                  c.li       s10, -1
                  mulh       a3, gp, t2
                  sra        a3, a6, ra
                  bltu       tp, t6, 1800f
                  addi       t1, t1, 196
                  c.xor      a1, s0
1800:             blt        a7, a3, 1811f
                  bltu       s7, ra, 1806f
1802:             c.lui      gp, 11
                  csrrwi     t5, 0x340, 6
                  c.add      t1, s0
                  divu       t0, a2, tp
1806:             csrrci     ra, 0x340, 13
                  c.add      s2, t0
                  csrrs      a1, 0x340, t3
                  divu       a1, t1, s11
                  csrrs      s9, 0x340, gp
1811:             sltu       a1, a0, a1
                  slti       s11, s4, -568
                  c.or       a3, a3
                  add        t2, s6, s7
                  srli       a5, t3, 17
                  c.xor      a2, a1
                  srl        s4, s10, a0
                  mul        a4, a7, gp
                  nop
                  rem        a7, a5, a5
                  srai       s5, a2, 28
                  beq        a0, s2, 1836f
                  c.andi     a4, 2
                  fence.i
                  mul        s7, gp, t6
                  csrrs      s0, 0x340, s7
                  srai       s2, s0, 6
                  xori       a0, gp, -536
                  divu       t1, t5, s11
                  c.mv       a2, a0
                  slti       zero, a0, -285
                  andi       t2, t6, -486
                  mul        s2, ra, t4
                  mulhu      a5, t6, a0
                  srai       ra, tp, 11
1836:             fence.i
                  mulh       t5, a1, a6
                  csrrwi     a0, 0x340, 7
                  and        s11, a1, zero
                  c.mv       a6, t1
                  csrrc      s1, 0x340, s1
                  mulhu      t1, a1, t1
                  bgeu       s3, t2, 1851f
                  mulhu      t0, s0, tp
                  c.nop
                  andi       s11, a2, 910
                  div        a2, gp, s8
                  nop
                  csrrsi     s9, 0x340, 23
                  c.sub      a3, s0
1851:             c.li       s10, 1
                  c.xor      a5, a1
                  csrrwi     tp, 0x340, 6
                  bne        zero, s6, 1873f
                  fence
                  add        t2, t5, zero
                  sltu       s7, s7, s9
                  and        s3, s1, s8
                  bgeu       t2, sp, 1873f
                  slti       ra, s8, 206
                  remu       ra, a2, t2
                  sltu       t1, s0, s0
                  add        t6, s1, t4
                  remu       a3, s7, t0
                  divu       s4, a1, s8
                  csrrci     s2, 0x340, 18
                  mulh       s6, gp, s10
                  csrrci     s4, 0x340, 23
                  addi       a5, t2, -174
                  slti       t6, s6, 939
                  auipc      a1, 267305
                  nop
1873:             c.or       a5, a0
                  lui        s6, 540156
                  c.beqz     a5, 1894f
                  beq        a3, s3, 1880f
                  c.add      a2, a4
                  c.bnez     a4, 1892f
                  csrrwi     a2, 0x340, 16
1880:             slti       s5, a1, 573
                  c.slli     a6, 21
                  sub        s4, t0, a4
                  csrrc      gp, 0x340, a7
                  remu       s6, s2, t4
                  sltiu      zero, s3, -402
                  divu       tp, s8, a4
                  add        t0, s10, s9
                  srl        a0, s9, t6
                  sltu       a6, a5, s0
                  mulhsu     s2, t2, s6
                  bge        s11, t4, 1895f
1892:             c.bnez     a5, 1910f
                  c.slli     a4, 10
1894:             andi       a2, s1, 32
1895:             c.andi     a4, -1
                  xori       ra, s7, -323
                  nop
                  sra        s2, a2, s3
                  fence.i
                  beq        s3, t3, 1903f
                  sltu       t0, t1, s6
                  c.or       a0, s1
1903:             mul        a2, sp, s0
                  c.bnez     a5, 1919f
                  c.and      a3, s0
                  sltiu      s4, a3, -850
                  c.lui      s7, 12
                  slt        a7, zero, t3
                  beq        a0, s7, 1921f
1910:             c.xor      a5, a0
                  c.andi     a0, 1
                  mulhu      a6, s0, t2
                  srai       s3, s3, 29
                  csrrc      t6, 0x340, t5
                  sll        s7, a1, gp
                  csrrwi     s4, 0x340, 23
                  slti       a4, tp, -104
                  fence.i
1919:             c.andi     a1, 29
                  c.beqz     s0, 1923f
1921:             c.and      a1, a2
                  xori       a3, s6, 874
1923:             sltiu      a0, a6, -972
                  csrrw      t5, 0x340, s5
                  c.or       a2, a0
                  remu       zero, gp, s8
                  xori       s4, t3, -300
                  beq        s9, s6, 1941f
                  c.li       a0, 26
                  c.slli     s1, 31
                  bne        s2, t5, 1935f
                  fence
                  divu       a2, t2, s4
                  c.xor      a4, a2
1935:             and        a2, s9, t0
                  div        t2, a7, s0
                  mul        t0, t5, s7
                  c.nop
                  sll        a7, s8, t0
                  bne        t0, t5, 1957f
1941:             c.bnez     a5, 1949f
                  c.addi     s10, -1
                  ori        zero, s6, -163
                  c.or       s0, a0
                  c.li       t5, -1
                  lui        t5, 57668
                  c.add      a2, s11
                  sub        a6, t6, t4
1949:             c.li       t0, -1
                  beq        s5, s6, 1959f
                  auipc      s11, 68313
                  csrrc      a7, 0x340, t1
                  c.add      tp, tp
                  lui        zero, 870848
                  csrrsi     s1, 0x340, 31
                  c.nop
1957:             slt        a5, t0, a4
                  lui        t2, 499923
1959:             bne        s3, s5, 1979f
                  or         a2, t0, t1
                  xor        gp, a7, s3
                  csrrw      t0, 0x340, a0
                  c.lui      ra, 11
                  blt        s10, a6, 1967f
                  bne        s2, a7, 1984f
                  c.xor      s1, a4
1967:             divu       gp, ra, s11
                  c.srli     a2, 13
                  slti       s11, t2, -519
                  sltiu      a7, s4, -41
                  csrrw      ra, 0x340, gp
                  csrrw      a2, 0x340, t1
                  remu       a5, s5, t0
                  fence.i
                  sltiu      s5, s2, -401
                  mulh       t0, s11, s7
                  bge        ra, s3, 1988f
                  srli       a6, s0, 3
1979:             mulhu      zero, t4, s3
                  c.bnez     a1, 1987f
                  csrrw      t0, 0x340, t4
                  rem        tp, a7, s3
                  c.bnez     s1, 1992f
1984:             sltu       a2, ra, a2
                  and        zero, sp, t3
                  sra        a5, ra, a1
1987:             c.slli     t6, 11
1988:             or         s1, s8, ra
                  sra        gp, s0, t1
                  or         t6, a1, s11
                  c.lui      a2, 31
1992:             c.xor      a1, s1
                  nop
                  or         a0, a0, s0
                  add        t5, a6, s10
                  divu       gp, a3, a2
                  csrrc      s10, 0x340, s4
                  srli       a1, a6, 15
                  addi       s10, s6, 582
                  and        a4, t1, tp
                  xor        s2, a3, a6
                  c.lui      s6, 9
                  c.li       tp, -1
                  sra        s0, t4, gp
                  mulhu      a6, s5, t4
                  blt        s7, s2, 2009f
                  or         s9, a6, s0
                  csrrs      s11, 0x340, s6
2009:             c.xor      a3, a2
                  addi       s4, t1, 764
                  c.srai     a3, 15
                  beq        a7, a5, 2026f
                  c.beqz     a2, 2026f
                  sll        s5, s11, a5
                  mulhu      a4, gp, s0
                  csrrci     t6, 0x340, 17
                  srli       a3, s7, 30
                  c.or       s0, a2
                  srl        s5, s4, s8
                  addi       s7, s5, -775
                  slt        s4, gp, a7
                  slli       zero, s11, 30
                  c.srli     a0, 7
                  c.xor      a5, a1
                  c.xor      a0, s1
2026:             auipc      a5, 452434
                  remu       a5, t3, ra
                  c.addi     s4, -1
                  srl        t0, s8, t0
                  c.andi     a5, 21
                  c.xor      a3, s1
                  srl        s6, zero, s2
                  bltu       gp, t5, 2038f
                  lui        a0, 636096
                  c.srli     a0, 28
                  xori       t0, s10, 891
                  c.and      a4, a5
2038:             addi       s0, t6, -723
                  csrrw      s0, 0x340, ra
                  bne        zero, a0, 2051f
                  srai       s2, a6, 13
                  srai       s9, s9, 19
                  fence.i
                  andi       t1, s4, -567
                  blt        s9, a4, 2049f
                  fence.i
                  sltu       zero, tp, s7
                  sltiu      s9, zero, 856
2049:             nop
                  rem        s11, t2, s3
2051:             c.li       t4, 25
                  sub        t6, t3, s10
                  slli       t1, ra, 30
                  c.addi     s7, -1
                  or         s3, gp, s0
                  mulh       t4, t4, a4
                  slti       t4, s1, -763
                  remu       t2, s3, s5
                  add        s5, sp, s0
                  sub        a3, t0, s1
                  sra        s4, s1, t4
                  c.beqz     s0, 2066f
                  c.srai     a5, 30
                  xor        s3, a5, tp
                  c.slli     t6, 16
2066:             mulhu      s3, a4, t0
                  c.li       s3, 10
                  auipc      s11, 144626
                  sub        s0, a2, t6
                  lui        s10, 945806
                  srli       a3, t6, 23
                  mulhu      s2, tp, tp
                  sub        a6, s2, t2
                  fence
                  fence.i
                  mulh       s4, tp, a5
                  andi       zero, a6, 37
                  ori        s9, a1, 369
                  blt        s6, t3, 2088f
                  c.addi     s11, -1
                  bge        s10, s2, 2084f
                  srli       gp, t1, 6
                  csrrsi     t1, 0x340, 11
2084:             beq        t1, s10, 2089f
                  and        s11, s1, gp
                  csrrwi     t4, 0x340, 26
                  c.or       s1, s0
2088:             fence.i
2089:             c.sub      a1, a5
                  xor        s11, a4, s10
                  c.nop
                  divu       s6, s1, a2
                  blt        sp, a3, 2107f
                  sltu       t1, t1, s5
                  c.nop
                  mulhsu     a4, a7, s10
                  mul        ra, a1, gp
                  sub        zero, ra, gp
                  remu       a0, a6, a0
                  bge        t0, s6, 2114f
                  c.andi     a2, 20
                  c.beqz     a1, 2111f
                  csrrci     s9, 0x340, 24
                  srl        t2, s2, s8
                  c.or       a0, a1
                  bltu       s10, a1, 2118f
2107:             srli       a1, t5, 23
                  bgeu       a6, a5, 2111f
                  auipc      s5, 27145
                  sll        s2, t2, t2
2111:             blt        a2, a7, 2130f
                  srl        tp, s1, t2
                  auipc      a6, 138089
2114:             divu       a5, a4, s8
                  c.nop
                  xor        a2, s8, t6
                  csrrc      s5, 0x340, tp
2118:             divu       tp, s7, s10
                  c.lui      t0, 28
                  lui        t4, 494858
                  c.andi     s1, 20
                  xor        a7, a5, a4
                  ori        s11, a2, 43
                  c.and      a3, a1
                  bge        a5, t5, 2136f
                  beq        t0, a1, 2141f
                  c.bnez     a2, 2135f
                  blt        t3, s8, 2135f
                  slti       t4, a3, 723
2130:             div        s2, t1, s9
                  c.xor      a3, a5
                  slti       t1, t6, 453
                  c.li       a0, 17
                  beq        s9, t1, 2135f
2135:             remu       tp, t1, t5
2136:             fence.i
                  addi       t6, s3, -702
                  bne        sp, s5, 2141f
                  bne        t1, s11, 2158f
                  slli       s7, a6, 0
2141:             mulhu      a2, s0, zero
                  ori        s10, s1, 621
                  c.mv       s4, s3
                  c.addi     s7, 19
                  div        a2, s7, a3
                  srai       s0, t3, 26
                  bge        s10, s10, 2151f
                  sra        s5, a5, a2
                  ori        s5, t1, 380
                  blt        s5, s9, 2169f
2151:             c.mv       tp, t2
                  rem        s1, s9, gp
                  srl        t1, s11, t5
                  bltu       s3, a6, 2172f
                  c.add      s0, a6
                  c.add      t6, t6
                  c.slli     s6, 16
2158:             bltu       a4, t3, 2175f
                  fence
                  c.slli     t1, 14
                  xor        a2, s1, s6
                  ori        t1, t4, -523
                  bltu       s6, a2, 2183f
                  c.add      s4, t5
                  csrrci     ra, 0x340, 24
                  ori        s9, a0, 490
                  slt        zero, s3, s11
                  or         zero, t0, a2
2169:             blt        s5, t5, 2177f
                  c.srli     a4, 30
                  auipc      s2, 278660
2172:             slti       tp, t3, -105
                  rem        t6, t6, t0
                  c.lui      s3, 17
2175:             srl        s2, tp, a6
                  c.and      a4, a0
2177:             c.bnez     a2, 2180f
                  mulhu      s5, s8, a5
                  or         s9, a7, s11
2180:             addi       zero, t6, 909
                  c.and      s0, s0
                  bge        s8, t2, 2196f
2183:             c.add      t0, s7
                  mulhu      t0, a7, t3
                  blt        s10, t2, 2189f
                  srli       s4, s4, 12
                  sll        s2, sp, s10
                  lui        s9, 757255
2189:             slti       s2, s10, -673
                  xor        s3, s0, t3
                  csrrwi     a4, 0x340, 17
                  fence.i
                  sltu       a2, s4, a3
                  csrrwi     tp, 0x340, 0
                  auipc      a5, 841023
2196:             mulhsu     s6, a6, s8
                  c.srli     a5, 4
                  mulhsu     t0, s3, a1
                  c.srli     s1, 1
                  c.slli     s9, 17
                  mulh       zero, s1, t6
                  blt        a3, gp, 2210f
                  c.mv       s11, a5
                  sll        t6, s3, a4
                  c.srai     a0, 2
                  c.and      s0, s1
                  c.or       s1, s1
                  c.slli     t0, 5
                  srai       s0, s6, 29
2210:             c.andi     s0, 20
                  rem        a1, t6, sp
                  bge        s6, t1, 2230f
                  andi       s0, a7, 807
                  sll        s6, t1, a2
                  c.mv       a0, a7
                  c.srai     s0, 12
                  or         a2, t6, t1
                  csrrs      a0, 0x340, a6
                  ori        a3, a6, 368
                  c.nop
                  mulhsu     s10, tp, s5
                  srli       s3, a3, 23
                  bne        s1, s7, 2228f
                  beq        s9, zero, 2227f
                  c.slli     a3, 17
                  csrrw      s5, 0x340, t0
2227:             andi       a1, a4, 720
2228:             addi       ra, sp, 328
                  c.xor      s1, a1
2230:             csrrw      s9, 0x340, s5
                  bge        t6, ra, 2250f
                  csrrs      ra, 0x340, s4
                  c.and      a0, a1
                  c.beqz     a4, 2245f
                  c.add      t5, s7
                  auipc      a0, 341588
                  csrrci     a1, 0x340, 30
                  c.sub      a4, a0
                  mulhsu     s11, s9, s3
                  csrrs      s10, 0x340, a6
                  mulhu      s0, sp, s10
                  c.srli     s0, 17
                  rem        a6, s11, t6
                  slt        s11, sp, s1
2245:             slt        t6, s9, sp
                  c.or       a1, a0
                  slli       gp, s3, 11
                  sll        t1, s7, s6
                  bne        s8, a7, 2264f
2250:             csrrsi     ra, 0x340, 5
                  and        s11, t3, t0
                  c.srai     a3, 26
                  slli       tp, s3, 24
                  srl        s11, s3, s11
                  c.srai     s1, 2
                  c.or       a2, a3
                  c.nop
                  rem        s2, tp, a1
                  c.addi     s3, -1
                  c.or       a1, s0
                  lui        s1, 619587
                  csrrwi     t4, 0x340, 7
                  nop
2264:             c.add      s1, a4
                  nop
                  addi       s9, s11, 1005
                  c.beqz     a5, 2276f
                  csrrw      a1, 0x340, a6
                  c.beqz     a0, 2280f
                  rem        s6, s0, a4
                  c.lui      a7, 21
                  csrrci     s11, 0x340, 18
                  c.srli     a2, 18
                  ori        ra, zero, 104
                  xor        ra, s5, s4
2276:             c.srli     a0, 13
                  xor        s1, t5, t5
                  fence
                  mul        s0, tp, s3
2280:             c.and      a4, a5
                  xori       s11, a4, 707
                  csrrwi     ra, 0x340, 9
                  slli       s11, a6, 8
                  c.lui      tp, 30
                  mulhsu     s1, s7, s10
                  sltiu      t6, ra, 178
                  mulhsu     s10, a3, gp
                  c.andi     a4, 7
                  lui        a0, 680517
                  mulh       t5, a1, s6
                  slti       s0, t6, -953
                  mul        t1, a6, t3
                  srai       s11, s7, 22
                  fence
                  sltu       s6, a0, s1
                  rem        ra, s3, s7
                  csrrwi     zero, 0x340, 15
                  mulhu      t5, s4, s6
                  c.srai     a0, 1
                  slti       t5, sp, -471
                  lui        t6, 357996
                  beq        a4, s4, 2321f
                  c.nop
                  divu       a6, t0, a0
                  bge        t2, s10, 2322f
                  c.and      a1, a0
                  rem        s11, s10, sp
                  c.addi     t5, -1
                  ori        a5, a2, -507
                  csrrw      t5, 0x340, s8
                  addi       t6, s9, 56
                  c.srli     a5, 23
                  auipc      t5, 696262
                  c.mv       a4, a7
                  slti       a2, t6, -740
                  csrrsi     a7, 0x340, 1
                  or         s5, s10, gp
                  div        s11, s11, s10
                  sra        s4, t3, t4
                  mulhsu     t0, s0, tp
2321:             mulh       s6, t4, s8
2322:             nop
                  csrrsi     t4, 0x340, 6
                  lui        gp, 76092
                  slt        t2, s8, s4
                  blt        s5, t0, j_sub_1_sub_3_3 #branch to jump instr
                  c.li       s9, 21
                  nop
                  or         s6, s10, ra
                  divu       s9, s2, zero
j_sub_1_sub_3_3:  jal        ra, sub_3
                  slti       t1, s5, -685
                  c.addi     t0, -1
                  mulh       tp, zero, a4
                  blt        s0, s4, 2331f
                  csrrc      s9, 0x340, s4
                  nop
                  csrrw      a7, 0x340, s0
2331:             bgeu       zero, t2, 2340f
                  bne        s9, s3, 2341f
                  mulh       a7, s1, s1
                  or         s0, t2, a1
                  csrrs      a4, 0x340, a2
                  csrrs      s11, 0x340, s9
                  slti       t5, t6, 817
                  c.or       a2, s0
                  blt        a3, s10, 2346f
2340:             c.srli     s1, 23
2341:             addi       a6, a3, 259
                  csrrs      a4, 0x340, a1
                  remu       s7, t6, t2
                  csrrw      a1, 0x340, s5
                  c.srai     a5, 1
2346:             csrrci     s2, 0x340, 30
                  bge        s1, t4, 2348f
2348:             bltu       a6, s8, 2367f
                  mulhu      t1, a1, gp
                  srl        a2, tp, s5
                  c.add      t1, s1
                  c.srai     a1, 21
                  sub        s6, t3, s2
                  remu       t0, t4, s2
                  bge        zero, a4, 2363f
                  rem        a1, s2, t4
                  remu       t0, a5, zero
                  rem        s3, s0, a3
                  blt        s8, ra, 2379f
                  csrrs      s9, 0x340, s2
                  bge        ra, s10, 2373f
                  fence
2363:             csrrwi     s7, 0x340, 1
                  bge        s11, gp, 2367f
                  srli       ra, s1, 30
                  fence
2367:             nop
                  c.andi     a2, 9
                  c.slli     t6, 10
                  c.xor      a3, a4
                  sub        s1, t3, s1
                  rem        a2, s5, t1
2373:             srai       t0, t2, 9
                  rem        a5, a7, sp
                  auipc      a5, 364144
                  blt        sp, s7, 2390f
                  csrrw      t5, 0x340, zero
                  csrrwi     a4, 0x340, 1
2379:             mulhsu     a1, a5, t5
                  auipc      ra, 548899
                  slt        a7, t0, t1
                  lui        s5, 415127
                  csrrw      a2, 0x340, a4
                  xor        s3, a2, s3
                  c.srli     s1, 20
                  c.beqz     s0, 2399f
                  and        t6, s9, tp
                  add        s7, tp, t0
                  and        s2, a7, tp
2390:             bgeu       a6, t6, 2395f
                  mulhsu     a6, t3, ra
                  c.mv       s11, t5
                  lui        s2, 250535
                  remu       s6, a6, t4
2395:             c.sub      a4, a2
                  c.srai     a2, 12
                  xori       s0, a6, 638
                  mulhu      t1, s4, gp
2399:             addi       a3, s0, -424
                  mulhu      zero, a1, s4
                  sltu       t1, t0, s5
                  c.and      a1, a2
                  csrrs      s0, 0x340, s5
                  c.or       a1, s0
                  mul        a1, a1, t0
                  mulhsu     s5, s1, t1
                  csrrci     a7, 0x340, 27
                  ori        s1, t2, 381
                  beq        s8, s11, 2423f
                  sub        a1, ra, a3
                  c.srai     s0, 24
                  divu       a2, a3, t0
                  fence
                  srai       a0, s8, 14
                  auipc      a6, 266939
                  xor        tp, a3, tp
                  slti       t5, s0, -719
sub_1_11:         jal        ra, 6f
0:                c.j        10f
1:                c.jal      4f
2:                c.j        11f
3:                c.jal      9f
4:                c.jal      19f
5:                c.j        22f
6:                jal        t0, 14f
7:                c.jal      3b
8:                c.j        20f
9:                c.j        2b
10:               c.jal      8b
11:               jal        ra, 16f
12:               c.jal      0b
13:               jal        ra, 15f
14:               jal        ra, 1b
15:               jal        ra, 24f
16:               c.jal      5b
17:               jal        t1, 18f
18:               c.j        21f
19:               jal        s7, 12b
20:               jal        ra, 7b
21:               jal        tp, 13b
22:               jal        t2, 23f
23:               c.jal      17b
24:               c.sub      s0, a4
                  bgeu       t6, s5, 2422f
                  bgeu       s9, t3, 2422f
                  remu       t4, t3, s10
                  slt        s0, t0, tp
2422:             sra        gp, t4, sp
2423:             srli       zero, gp, 30
                  sltu       s2, s4, t2
                  c.or       a1, s1
                  bne        t5, s7, 2443f
                  nop
                  c.mv       a3, s7
                  csrrw      s3, 0x340, s1
                  csrrwi     a3, 0x340, 31
                  mulhsu     gp, t3, s4
                  andi       t2, zero, -414
                  mul        s6, a2, s6
                  slti       a0, a6, -236
                  addi       t6, s8, 759
                  and        s4, s4, gp
                  c.and      a4, s1
                  slti       t5, a0, 415
                  xor        s6, sp, t5
                  sltiu      tp, a0, 158
                  c.addi     t1, -1
                  bgeu       a5, sp, 2446f
2443:             andi       s10, gp, -897
                  add        s7, s1, gp
                  lui        t2, 696704
2446:             ori        a7, a0, 486
                  sltiu      t0, t1, 643
                  add        ra, a1, t0
                  add        a4, s1, zero
                  remu       s5, s8, s3
                  c.lui      s7, 20
                  c.lui      gp, 7
                  c.nop
                  c.xor      a5, s1
                  c.xor      s1, a1
                  ori        tp, s4, 393
                  csrrs      s3, 0x340, t4
                  csrrci     zero, 0x340, 26
                  nop
                  blt        a7, s3, 2464f
                  rem        s4, t4, a4
                  mulhu      t2, t3, s7
                  c.add      s10, tp
2464:             addi       a4, t3, 571
                  add        t1, s8, sp
                  srli       tp, s7, 28
                  srli       a0, t3, 15
                  andi       a3, ra, 628
                  csrrc      a6, 0x340, t5
                  c.or       a5, s1
                  xori       tp, s7, 968
                  bge        t4, s2, 2484f
                  c.srai     s0, 11
                  c.or       s1, a0
                  c.addi     t0, -1
                  c.slli     tp, 11
                  c.lui      t2, 9
                  c.mv       t5, s1
                  c.mv       t6, s1
                  bge        s6, zero, 2491f
                  c.li       a7, -1
                  divu       t4, a6, s8
                  csrrsi     s3, 0x340, 23
2484:             div        a5, s2, s10
                  div        s4, sp, s2
                  or         s7, a1, a5
                  mul        t1, s8, s9
                  bne        t4, gp, 2502f
                  ori        a7, tp, 32
                  c.addi     s9, 30
2491:             fence.i
                  fence.i
                  sra        s5, s2, tp
                  remu       s4, sp, s4
                  csrrci     ra, 0x340, 31
                  csrrwi     t1, 0x340, 25
                  sll        zero, t5, a2
                  c.and      a2, a0
                  c.li       s0, -1
                  bne        s10, t5, 2503f
                  c.nop
2502:             csrrc      s7, 0x340, tp
2503:             beq        s6, t5, 2504f
2504:             csrrc      t5, 0x340, zero
                  ori        s0, t3, 875
                  slli       a3, a4, 24
                  fence
                  mul        a5, t6, t5
                  c.srli     s1, 22
                  c.srli     a2, 18
                  c.lui      a4, 18
                  or         t2, a6, s8
                  csrrsi     s5, 0x340, 2
                  c.srai     a5, 2
                  c.srli     a5, 24
                  srl        t1, ra, a0
                  srai       a3, a0, 16
                  remu       s6, a2, a7
                  sltiu      t6, s8, 182
                  csrrsi     t1, 0x340, 2
                  c.nop
                  mulhu      s6, s7, s10
                  c.and      a3, a2
                  c.li       tp, -1
                  csrrs      tp, 0x340, gp
                  srl        t6, tp, t2
                  srli       s11, a7, 17
                  mul        t6, ra, s2
                  xori       s9, s10, -918
                  andi       s9, s5, 303
                  csrrw      s11, 0x340, a7
                  srli       zero, a6, 22
                  andi       ra, t4, -587
                  c.and      s1, a5
                  csrrc      s11, 0x340, s1
                  sra        a6, s6, t3
                  addi       t2, s4, -189
                  xor        t4, t5, s2
                  bgeu       s1, s10, 2543f
                  c.beqz     a5, 2548f
                  slti       a6, s4, 112
                  mulh       a7, s5, a7
2543:             c.xor      a0, s1
                  csrrc      ra, 0x340, t5
                  c.nop
                  c.mv       gp, t2
                  c.sub      s1, a3
2548:             c.andi     a5, -1
                  c.slli     a2, 20
                  bne        s6, t4, 2563f
                  c.xor      s1, a4
                  slli       s7, t1, 26
                  c.andi     a5, -1
                  c.srai     a3, 15
                  csrrsi     t6, 0x340, 24
                  lui        a2, 836830
                  lui        s2, 720588
                  slti       s3, t5, -447
                  remu       tp, t5, s5
                  or         s7, t3, s5
                  div        t1, s7, a7
                  srai       s1, s8, 12
2563:             bge        a6, t6, 2570f
                  ori        t5, gp, -568
                  csrrsi     s5, 0x340, 23
                  add        s2, a5, t6
                  c.sub      a3, a0
                  c.add      s0, s10
                  mulhsu     s11, s10, a1
2570:             c.nop
                  la         t5, region_1+3597 #start load_store_instr_stream_2
                  la         a7, region_0+1385 #start load_store_instr_stream_1
                  lhu        gp, 1(a7)
                  la         s1, region_3+233 #start load_store_instr_stream_0
                  lb         t4, -5(a7)
                  sb         a3, 10(a7)
                  lb         gp, 157(s1)
                  sb         a7, -74(s1)
                  sb         s6, -211(s1)
                  sh         zero, -75(s1)
                  sw         t3, -113(s1)
                  lb         s10, 8(a7)
                  lhu        t2, -89(s1)
                  sb         s11, -48(t5)
                  sb         ra, 15(a7)
                  lbu        a6, 130(s1)
                  lb         s3, 38(t5)
                  sb         zero, 16(a7)
                  lbu        s10, -100(s1)
                  lb         a6, 56(t5)
                  lhu        t0, 7(a7)
                  lb         t6, -6(a7) #end load_store_instr_stream_1
                  lh         s3, -49(t5)
                  lb         a3, 10(t5) #end load_store_instr_stream_2
                  lhu        t1, 21(s1) #end load_store_instr_stream_0
                  mulhu      s9, s8, a6
                  srli       s10, s2, 19
                  csrrw      gp, 0x340, t4
                  c.and      a0, a5
                  c.li       t2, 7
                  div        s11, t4, gp
                  and        s2, s4, t5
                  sll        s2, ra, s2
                  mulh       t4, t3, s8
                  csrrc      s11, 0x340, t5
                  srli       s5, sp, 18
                  c.add      s10, t1
                  auipc      s6, 676555
                  slt        t1, s5, s2
                  c.sub      a1, a5
                  andi       a1, t5, -341
                  bltu       s4, s3, 2592f
                  slt        t0, t1, s10
                  csrrwi     s11, 0x340, 13
                  nop
                  slt        t6, a5, a1
2592:             xori       s9, a7, 275
                  ori        s4, s2, -1002
                  c.andi     a4, -1
                  c.xor      a2, s0
                  c.li       tp, 22
                  c.nop
                  c.add      s7, tp
                  srai       s5, s2, 22
                  srai       s0, s8, 12
                  rem        t0, tp, ra
                  add        s5, a1, a0
                  fence.i
                  sltiu      s7, t4, -844
                  mulhsu     a4, gp, t6
                  csrrci     a5, 0x340, 4
                  c.mv       s6, s4
                  divu       s0, s9, s2
                  c.and      a5, a5
                  or         t4, sp, s10
                  auipc      a4, 39893
                  c.srai     s1, 18
                  divu       a1, t5, t0
                  fence.i
                  c.nop
                  fence
                  rem        s4, s11, a2
                  mul        gp, s5, s9
                  or         t6, a3, s6
                  csrrw      t0, 0x340, a3
                  csrrci     s11, 0x340, 6
                  mulhu      t0, s4, tp
                  sll        a4, t2, t0
                  slli       t6, s5, 5
                  auipc      t1, 287945
                  xor        s7, s0, s5
                  csrrw      s2, 0x340, t5
                  csrrci     zero, 0x340, 4
                  csrrwi     s10, 0x340, 19
                  c.sub      a3, a0
                  srl        s4, s0, t4
                  nop
                  c.srli     a4, 2
                  c.srli     a3, 7
                  rem        t6, s4, a6
                  div        t2, s3, s9
                  c.bnez     s1, 2642f
                  mul        zero, a0, s6
                  c.addi     ra, -1
                  addi       s2, a3, -672
                  and        s0, s3, t3
2642:             fence
                  csrrci     a3, 0x340, 26
                  c.or       s0, a0
                  fence.i
                  and        s10, t1, s7
                  slt        s9, s10, t4
                  srli       s0, s11, 23
                  and        t0, a3, s10
                  xor        s7, t3, s0
                  slli       s10, t3, 3
                  c.andi     s1, -1
                  beq        s9, s1, 2673f
                  add        a5, s5, t6
                  ori        ra, s5, 817
                  c.addi     s1, -1
                  xori       t0, a0, 14
                  c.beqz     a3, 2677f
                  auipc      s3, 742378
                  mul        zero, s6, t2
                  c.slli     s1, 15
                  nop
                  mulh       s3, gp, s10
                  c.mv       t0, t1
                  nop
                  c.lui      t2, 9
                  c.sub      a4, a4
                  auipc      s9, 809897
                  c.sub      a5, a3
                  blt        a2, sp, 2688f
                  srli       s9, ra, 2
                  or         a5, t6, ra
2673:             beq        a2, a4, 2682f
                  rem        s6, t4, gp
                  c.bnez     a5, 2689f
                  c.slli     a5, 29
2677:             andi       tp, t6, -924
                  xori       s4, t4, 237
                  beq        ra, sp, 2687f
                  csrrs      s4, 0x340, a4
                  mulh       zero, s6, s5
2682:             csrrc      s5, 0x340, s3
                  add        a3, a6, t0
                  add        s7, s8, a5
                  div        t1, gp, s9
                  srli       s4, s5, 21
2687:             c.li       a5, 3
2688:             c.slli     a6, 11
2689:             c.mv       s6, a6
                  blt        a0, tp, 2704f
                  fence.i
                  csrrs      a0, 0x340, a6
                  sltu       gp, a1, s3
                  c.srli     s0, 7
                  c.xor      a1, a5
                  ori        s6, t3, 683
                  c.srai     a3, 13
                  sll        t4, s5, t1
                  bltu       s11, t4, 2718f
                  mulh       a3, s8, s0
                  addi       a5, s2, 515
                  blt        t3, s4, 2705f
                  xor        s3, a5, sp
2704:             addi       t0, s11, 655
2705:             or         s5, t1, t1
                  xori       s4, s6, -896
                  ori        t2, a6, -559
                  remu       t6, s5, s5
                  ori        t2, a5, 182
                  andi       a2, a5, -934
                  c.slli     a2, 3
                  sltu       s7, a5, t5
                  div        a4, s9, a3
                  nop
                  bge        a6, s5, 2724f
                  nop
                  xori       gp, t3, -653
2718:             c.slli     s0, 23
                  div        a1, s10, zero
                  or         s6, a2, a6
                  c.andi     s1, 2
                  c.beqz     s0, 2737f
                  or         s7, t0, s2
2724:             slli       zero, s7, 17
                  srai       a2, s0, 4
                  fence.i
                  mulhsu     t5, s11, a1
                  add        s11, a5, s6
                  c.add      s10, a0
                  csrrci     t1, 0x340, 21
                  fence
                  mulhsu     s9, s6, s4
                  mulhsu     t0, a1, s3
                  bge        s0, t3, 2737f
                  csrrsi     t5, 0x340, 15
                  c.lui      a4, 31
2737:             c.srai     a1, 22
                  c.li       s0, 24
                  csrrs      s6, 0x340, a5
                  bgeu       s10, zero, 2749f
                  c.or       s1, s1
                  andi       s6, s6, -670
                  bgeu       s0, t1, 2754f
                  c.and      a2, a3
                  blt        a1, tp, 2764f
                  c.and      s1, a4
                  srl        s2, a1, a6
                  xori       tp, a2, 159
2749:             bgeu       ra, t1, 2752f
                  slli       t5, s0, 5
                  c.addi     t5, -1
2752:             sll        s2, s3, a2
                  c.beqz     a2, 2760f
2754:             remu       s0, s8, s9
                  bgeu       t5, gp, 2764f
                  c.lui      a4, 9
                  c.srli     a2, 21
                  csrrc      s2, 0x340, a7
                  fence.i
2760:             csrrwi     s2, 0x340, 21
                  auipc      s7, 993649
                  bne        t3, zero, 2776f
                  divu       a2, s0, s5
2764:             c.and      a2, a3
                  rem        s9, s9, a0
                  srli       a7, tp, 25
                  and        s9, ra, t5
                  c.and      a5, s0
                  bltu       a2, s7, 2774f
                  c.mv       t5, s2
                  c.beqz     a1, 2774f
                  auipc      a6, 617675
                  sll        s0, a5, a1
2774:             divu       ra, t6, s9
                  auipc      a3, 124032
2776:             sra        t5, a1, a1
                  fence
                  bne        s5, a3, 2787f
                  add        s6, s8, s7
                  csrrw      tp, 0x340, s1
                  mul        t6, t0, s2
                  csrrwi     a4, 0x340, 14
                  c.mv       t1, t1
                  addi       s5, a7, 775
                  xor        a5, s4, gp
                  c.nop
2787:             bge        t4, gp, 2791f
                  and        s3, s4, a5
                  and        a7, s10, t1
                  c.or       a3, a1
2791:             bgeu       s11, t0, 2794f
                  and        gp, a3, s5
                  slti       s3, t5, -764
2794:             c.lui      a7, 29
                  srai       gp, t0, 9
                  divu       s7, zero, s5
                  csrrwi     a2, 0x340, 10
                  csrrs      a1, 0x340, a5
                  xori       s0, s8, -621
                  c.or       a3, a4
                  c.addi     t0, 27
                  srai       s11, t3, 18
                  c.srai     a2, 9
                  csrrci     s5, 0x340, 0
                  c.andi     a1, 6
                  andi       t5, a6, 965
                  add        s9, tp, a5
                  c.lui      s11, 18
                  bge        s0, ra, 2820f
                  and        a3, t3, s11
                  c.add      s7, gp
                  csrrci     s11, 0x340, 13
                  c.slli     s1, 21
                  nop
                  addi       a5, ra, 383
                  mulhu      s2, t3, sp
                  fence.i
                  mulhu      s5, s6, ra
                  rem        s5, a7, a4
2820:             andi       t2, s1, 533
                  c.slli     s9, 15
                  xori       t2, a7, 945
                  lw         ra, 4(sp)
                  c.slli     a5, 2
                  addi       sp, sp, 16
                  c.andi     a1, 16
                  nop
                  fence.i
                  c.lui      t5, 24
                  c.li       s1, -1
4942:             c.jr x1
sub_3:            csrrsi     s10, 0x340, 25
                  divu       s2, t0, ra
                  fence
                  addi       sp, sp, -48
                  csrrs      s5, 0x340, zero
                  c.slli     t5, 24
                  sw         ra, 4(sp)
                  srl        a7, s1, t2
                  addi       a2, zero, -7 #init loop 0 counter
                  mul        gp, s5, s11
                  add        gp, a5, a6
                  addi       a4, zero, 7 #init loop 0 limit
                  divu       s7, ra, a1
sub_3_4_0_t:      c.addi     a5, 16
                  addi       a2, a2, 8 #update loop 0 counter
                  mulh       t0, a0, s7
                  slt        t0, s6, t5
                  fence
                  c.add      gp, a1
                  blt        a2, a4, sub_3_4_0_t #branch for loop 0
                  c.addi     t5, -1
                  la         t4, region_2+2354 #start riscv_hazard_instr_stream_0
                  lbu        a4, -485(t4)
                  mulhsu     s4, s4, s2
                  c.xor      a1, a0
                  lh         t0, 462(t4)
                  lbu        a4, -1782(t4)
                  ori        a1, a4, -800
                  sra        s2, s2, a1
                  srli       a1, a0, 29
                  lw         a1, 1442(t4)
                  lhu        a1, -1938(t4)
                  slt        s2, t0, a0
                  c.li       t0, 22
                  lb         s2, 1911(t4)
                  and        s4, t0, t0
                  sb         t0, -1167(t4)
                  lb         a1, -518(t4)
                  sra        a0, a1, s4
                  lbu        s4, -1402(t4)
                  slt        a1, a1, a1
                  lbu        t0, 1477(t4)
                  lbu        a1, -685(t4)
                  sh         s4, 1628(t4)
                  lbu        a0, -1887(t4)
                  csrrc      a1, 0x340, t0
                  sb         a1, -833(t4)
                  addi       t0, s2, 535
                  srai       t0, t0, 31
                  c.mv       t0, t0
                  lbu        s4, -1221(t4)
                  csrrw      s4, 0x340, s4
                  csrrsi     t0, 0x340, 8
                  sh         s4, -1420(t4)
                  lhu        a4, -448(t4)
                  sh         s4, 1664(t4)
                  lbu        t0, -1935(t4)
                  sb         a0, 1169(t4)
                  lb         s4, 1215(t4)
                  c.srai     a1, 25
                  c.and      a4, a0
                  sb         a4, 1347(t4)
                  csrrci     t0, 0x340, 23
                  lw         s2, -746(t4)
                  add        a1, a4, s4
                  lb         a0, 225(t4)
                  csrrsi     a4, 0x340, 25
                  srl        s2, a4, t0
                  lbu        a4, 65(t4)
                  srai       s4, a1, 22
                  lb         t0, 1363(t4)
                  c.and      a0, a4
                  lb         a1, 787(t4)
                  fence
                  or         s4, t0, s4
                  lbu        s2, 683(t4)
                  sb         s4, -60(t4)
                  sb         t0, -1521(t4) #end riscv_hazard_instr_stream_0
                  la         t4, region_3+117 #start riscv_load_store_rand_instr_stream_0
                  c.li       a5, 31
                  lbu        s0, 244(t4)
                  lbu        s5, 241(t4)
                  mulhu      t1, t3, s6
                  sh         s1, 15(t4)
                  lb         s0, 201(t4)
                  mulhu      s10, s1, s4
                  lh         tp, 257(t4)
                  lb         t2, 179(t4)
                  lb         s7, 14(t4)
                  div        s10, t0, s7
                  lb         a4, 202(t4)
                  c.addi     ra, 18
                  lbu        s3, 376(t4)
                  sh         t1, -87(t4)
                  lbu        s6, 303(t4)
                  lbu        zero, 41(t4)
                  lw         t5, 263(t4)
                  lb         a6, 193(t4)
                  lbu        s6, 326(t4)
                  xor        s6, s2, a2
                  c.li       a7, 30
                  c.nop
                  c.nop
                  slt        s2, s5, a7
                  sb         a3, 225(t4)
                  sltiu      a1, t5, 842
                  c.mv       s5, t0
                  sh         a3, 345(t4)
                  sb         s4, 343(t4)
                  lbu        a7, -92(t4)
                  remu       t1, s0, sp
                  c.or       a1, a5
                  sub        s11, t3, t3
                  lb         t5, 390(t4)
                  lb         a5, 211(t4)
                  sub        s5, t1, s8
                  divu       s7, t4, a6
                  sltiu      t1, tp, -585
                  lb         s0, 275(t4)
                  lbu        gp, 296(t4) #end riscv_load_store_rand_instr_stream_0
                  la         a2, region_1+6950 #start load_store_instr_stream_1
                  sb         t6, -243(a2)
                  la         a5, region_1+16303 #start load_store_instr_stream_0
                  sh         a2, 1468(a2)
                  lhu        s2, 536(a2)
                  sh         s4, 3(a5)
                  sh         sp, -1132(a2)
                  lbu        a3, 8(a5)
                  lb         tp, -10(a5)
                  lh         s4, -988(a2)
                  sb         s0, -2(a5)
                  sb         s7, -1584(a2) #end load_store_instr_stream_1
                  sw         s5, -7(a5) #end load_store_instr_stream_0
sub_3_1:          jal        ra, 11f
0:                jal        t1, 15f
1:                c.j        13f
2:                c.j        23f
3:                jal        ra, 0b
4:                c.jal      19f
5:                c.jal      1b
6:                c.jal      14f
7:                c.jal      6b
8:                c.j        9f
9:                c.jal      3b
10:               c.j        22f
11:               c.jal      7b
12:               jal        ra, 18f
13:               jal        t6, 17f
14:               jal        ra, 21f
15:               c.jal      20f
16:               c.jal      8b
17:               c.jal      10b
18:               c.j        4b
19:               jal        ra, 5b
20:               c.j        12b
21:               c.jal      16b
22:               c.j        2b
23:               jal        ra, 24f
24:               slli       s11, t5, 25
                  mulhu      zero, tp, s11
                  add        gp, tp, t1
                  mulhsu     a0, sp, a4
                  slli       t4, s0, 8
                  c.addi     s10, 26
                  c.srli     s1, 15
                  sltiu      s9, s3, 106
                  mulh       s7, a3, a5
                  auipc      a5, 1044466
                  nop
                  sra        s10, s5, t2
                  andi       s6, a5, -582
                  sltiu      a1, a3, 679
                  or         t6, t0, t3
                  sltiu      t0, tp, 682
                  sra        a7, s10, a2
                  csrrci     gp, 0x340, 25
                  addi       a0, s10, 274
                  xori       a3, s10, -791
                  csrrwi     s10, 0x340, 4
                  add        t6, s4, s2
                  csrrs      tp, 0x340, a7
                  c.or       a3, a2
                  mulh       a6, t6, a6
                  auipc      t4, 420933
                  srli       t6, s7, 0
                  sll        a7, a2, a2
                  c.lui      t5, 4
                  csrrsi     a1, 0x340, 17
                  auipc      s2, 266190
                  bne        t5, s6, 37f
                  csrrc      a2, 0x340, a5
                  c.xor      s1, a1
                  fence.i
                  c.bnez     a2, 40f
                  remu       s7, s0, a7
                  c.nop
37:               sltu       s4, a1, a2
                  srai       a0, a1, 18
                  sltiu      ra, a5, 500
40:               xori       zero, a0, -305
                  mulhsu     t4, s9, s6
                  c.add      a4, s2
                  ori        s7, t1, -223
                  xor        t4, zero, a5
                  addi       s9, a6, -243
                  ori        t2, sp, -443
                  or         a6, s7, t4
                  mulhsu     s1, s10, t4
                  slt        s0, gp, a7
                  srl        s5, sp, t0
                  csrrci     a7, 0x340, 25
                  c.beqz     a1, 61f
                  csrrsi     a6, 0x340, 30
                  or         s11, a2, s1
                  rem        s0, s10, a3
                  xori       gp, sp, 278
                  ori        t6, t1, -72
                  la         s10, region_0+3400 #start load_store_instr_stream_2
                  lw         a0, 24(s10)
                  la         t6, region_1+14554 #start load_store_instr_stream_0
                  la         a7, region_2+1194 #start load_store_instr_stream_1
                  sb         zero, -24(s10)
                  lbu        s9, -33(s10)
                  sb         a1, -5(s10)
                  lbu        t4, 159(a7)
                  sh         a6, -6(s10)
                  lbu        s3, 29(s10)
                  lb         s5, -38(s10)
                  lb         t2, -893(t6)
                  lbu        ra, 90(a7)
                  lbu        t1, 2(s10)
                  sb         t6, 200(a7)
                  sb         s7, -947(t6)
                  sb         t2, -17(a7)
                  lh         t0, 234(t6)
                  sb         s4, -114(a7)
                  lb         s2, -784(t6)
                  sb         s9, 73(a7) #end load_store_instr_stream_1
                  sb         s2, 45(s10)
                  lh         s4, 42(s10) #end load_store_instr_stream_2
                  sb         s0, -1325(t6) #end load_store_instr_stream_0
                  c.nop
                  c.add      tp, s11
                  csrrci     a1, 0x340, 16
61:               bltu       a2, s2, 67f
                  andi       a6, t0, -967
                  ori        t6, a0, 965
                  csrrwi     s2, 0x340, 0
                  sra        t1, s2, s11
                  remu       s7, a0, s6
67:               c.mv       s9, t1
                  c.mv       t4, s0
                  c.andi     a3, -1
                  csrrci     ra, 0x340, 5
                  div        s1, a3, s2
                  auipc      gp, 234355
                  xori       a2, sp, -737
                  c.or       a1, a2
                  c.beqz     a4, 80f
                  c.bnez     a5, 88f
                  srli       a6, s6, 24
                  auipc      s9, 850206
                  sll        s9, a1, tp
80:               and        s5, t5, a4
                  sub        a2, s1, t1
                  mulh       s10, s3, t5
                  c.srai     a0, 14
                  csrrci     t4, 0x340, 30
                  c.sub      a0, s0
                  andi       s6, t3, 965
                  csrrci     zero, 0x340, 31
88:               srl        zero, a1, t5
                  mul        s0, zero, s4
                  and        ra, s3, a3
                  sll        t4, a4, s11
                  c.addi     tp, 28
                  bge        s2, t2, 101f
                  mulhsu     t6, t6, s3
                  c.lui      s6, 31
                  fence
                  c.xor      a2, a1
                  csrrw      s6, 0x340, a2
                  c.nop
                  srai       t2, s11, 28
101:              c.and      a2, a4
                  c.add      s2, a3
                  slli       a2, t0, 5
                  c.mv       s4, t6
                  add        t5, gp, t2
                  bltu       gp, s10, 109f
                  csrrs      t0, 0x340, s9
                  c.and      a3, a3
109:              c.srli     a1, 10
                  slt        zero, a0, a0
                  csrrs      ra, 0x340, s4
                  slt        t6, a1, a0
                  add        s2, a7, a0
                  bgeu       s6, t5, 133f
                  blt        a4, tp, 124f
                  bgeu       s7, a2, 120f
                  c.xor      a0, a0
                  and        a2, a2, ra
                  bge        a0, s1, 136f
120:              lui        s9, 668316
                  andi       zero, gp, 694
                  rem        t1, ra, t4
                  csrrw      s10, 0x340, s0
124:              csrrci     s3, 0x340, 14
                  sltiu      s3, tp, -936
                  c.bnez     s1, 128f
                  slt        tp, s3, s7
128:              xor        s2, sp, a3
                  xor        a4, t6, s5
                  c.xor      a0, a0
                  divu       ra, a4, s8
                  c.mv       t4, s9
133:              c.add      s5, s1
                  div        a3, a2, s8
                  sub        s5, sp, tp
136:              mul        s9, t2, t5
                  c.lui      s11, 29
                  csrrci     t0, 0x340, 29
                  c.andi     a0, -1
                  fence
                  c.and      s0, a2
                  srl        s6, a5, t2
                  bgeu       a1, t6, 159f
                  fence
                  nop
                  c.slli     s1, 4
                  c.li       gp, 7
                  addi       gp, s3, 105
                  rem        t2, a0, s4
                  bge        a7, a4, 160f
                  auipc      s9, 93567
                  auipc      t2, 200962
                  fence.i
                  sltu       s7, s8, tp
                  mulhsu     zero, t3, s3
                  c.or       s0, s1
                  or         t1, gp, sp
                  csrrwi     t4, 0x340, 22
159:              srli       s6, a7, 21
160:              xori       t6, s11, 281
                  sra        a3, s5, s2
                  c.lui      s5, 7
                  slt        s6, s8, gp
                  sltiu      gp, s8, -534
                  c.li       a7, -1
                  csrrw      a2, 0x340, gp
                  c.nop
                  bltu       t6, zero, 172f
                  c.beqz     a5, 173f
                  c.andi     a5, -1
                  c.mv       t0, a1
172:              mulh       a6, s6, s8
173:              csrrc      a5, 0x340, a0
                  xor        s10, s9, s10
                  c.bnez     a0, 191f
                  c.lui      a3, 30
                  c.sub      a1, a1
                  sra        gp, s9, t2
                  ori        a6, sp, 242
                  auipc      s3, 217852
                  mulhsu     tp, tp, s3
                  c.xor      a1, a2
                  sub        t1, t5, s8
                  c.add      a4, ra
                  c.srli     a5, 8
                  bne        s2, t5, 195f
                  addi       s2, a1, -10
                  sltiu      a1, gp, 670
                  c.lui      t4, 5
                  bne        a6, sp, 205f
191:              c.slli     t6, 26
                  c.mv       a3, t3
                  sra        t6, s7, a1
                  xor        s5, s1, t2
195:              mulh       s5, a7, sp
                  mulhu      s0, a0, a4
                  c.xor      a1, s0
                  mulh       zero, a0, t1
                  c.add      s10, t4
                  csrrw      a1, 0x340, s2
                  c.xor      a3, a3
                  c.beqz     a0, 217f
                  add        a0, s2, t4
                  c.add      s5, s11
205:              c.slli     a5, 27
                  csrrs      t1, 0x340, t0
                  or         s10, zero, a5
                  bltu       s4, a7, 218f
                  c.srai     s0, 20
                  divu       s7, a6, s2
                  bge        t1, gp, 216f
                  c.mv       s7, t1
                  c.lui      a1, 23
                  srli       t4, s10, 14
                  sltiu      t2, a1, 757
216:              lui        a3, 252401
217:              beq        a5, a2, 236f
218:              sra        s11, s2, t3
                  blt        zero, a3, 226f
                  c.beqz     a2, 227f
                  auipc      a2, 483791
                  c.sub      s1, a4
                  c.xor      a2, a0
                  slti       s2, t4, 176
                  div        s5, a2, ra
226:              bgeu       s10, a1, 242f
227:              c.li       ra, 18
                  c.and      a5, a3
                  csrrs      ra, 0x340, a7
                  csrrc      t4, 0x340, s3
                  c.bnez     a3, 248f
                  beq        a3, a5, 234f
                  slt        a2, s8, t2
234:              addi       a0, s4, -414
                  and        a2, s6, gp
236:              c.addi     ra, 24
                  divu       a4, t3, s3
                  c.addi     a4, 21
                  auipc      s6, 679187
                  mulhsu     a2, t2, t3
                  ori        s11, s11, -408
242:              remu       t2, s2, s8
                  csrrw      s3, 0x340, ra
                  xori       ra, a7, 716
                  c.mv       a7, s11
                  c.beqz     a0, 248f
                  csrrc      t4, 0x340, t0
248:              bge        t0, a2, 264f
                  rem        t0, a1, t6
                  divu       a5, s10, t4
                  nop
                  sll        s1, sp, s7
                  xori       s6, s2, 185
                  c.add      a2, s11
                  bge        a5, a1, 261f
                  csrrci     s9, 0x340, 28
                  c.bnez     s0, 267f
                  fence
                  sltiu      s6, t4, -501
                  csrrs      t4, 0x340, s10
261:              sll        a1, ra, s3
                  mulh       s0, a6, gp
                  c.or       a0, a2
264:              c.xor      a3, a2
                  csrrwi     s11, 0x340, 18
                  mulh       zero, t0, a7
267:              fence
                  sub        s7, s6, zero
                  sltu       s9, zero, a4
                  csrrw      s9, 0x340, t3
                  csrrw      s9, 0x340, ra
                  slt        t6, s9, s9
                  sll        s2, s11, gp
                  fence.i
                  csrrc      tp, 0x340, t0
                  csrrc      a7, 0x340, s1
                  c.addi     s5, 25
                  csrrs      a3, 0x340, a1
                  csrrwi     a2, 0x340, 31
                  xori       a4, t2, -921
                  ori        s4, a0, 363
                  bltu       s2, s4, 289f
                  bgeu       a7, a5, 295f
                  sltu       s6, a4, s5
                  c.nop
                  c.addi     t1, 17
                  bltu       t2, s3, 293f
                  sra        t1, s10, s4
289:              sra        s6, s1, a6
                  csrrci     t1, 0x340, 19
                  c.slli     a6, 29
                  beq        s8, t3, 294f
293:              c.xor      s1, a2
294:              slti       s5, a2, 26
295:              c.and      a3, a5
                  add        a1, t6, a7
                  bne        s2, s0, 316f
                  csrrsi     t4, 0x340, 9
                  div        s6, t5, a7
                  slti       s2, s3, -389
                  divu       a3, zero, t2
                  c.slli     s1, 4
                  nop
                  slti       a7, tp, 936
                  c.bnez     a2, 307f
                  c.li       a7, 15
307:              lui        t5, 509655
                  slti       a4, t1, 69
                  xor        a3, a4, a7
                  bgeu       a4, a2, 317f
                  lui        t1, 565762
                  c.lui      a0, 30
                  bne        s11, s1, 317f
                  or         t6, s7, s1
                  and        a5, s10, a6
316:              c.or       s1, a2
317:              sltu       a6, t0, s7
                  sra        t5, s1, s2
                  bgeu       s6, t1, 336f
                  sll        s6, s9, s0
                  srl        s3, s5, sp
                  and        a5, sp, s0
                  addi       a4, t1, -101
                  c.xor      a5, a4
                  and        gp, a7, t0
                  nop
                  xori       s4, s5, 818
                  and        t5, t4, t5
                  c.addi     a3, -1
                  c.nop
                  csrrw      a4, 0x340, a2
                  csrrc      t5, 0x340, s2
                  mulh       s10, ra, ra
                  sltiu      a3, zero, 934
                  slti       t2, a4, 207
336:              xor        s1, a1, a0
                  rem        a0, tp, t3
                  c.andi     s0, 27
                  xori       s9, s4, 954
                  rem        a5, t0, s1
                  c.xor      a4, s0
                  xor        s10, a4, a1
                  sltu       a1, t3, s3
                  sltu       s1, sp, s1
                  c.lui      t6, 27
                  csrrwi     a5, 0x340, 14
                  csrrc      a0, 0x340, gp
                  div        a5, s7, s11
                  c.xor      s1, a3
                  c.addi     a3, 28
                  sll        t2, s0, ra
                  fence.i
                  xori       ra, t3, 853
                  div        a4, s9, s9
                  c.bnez     a1, 359f
                  csrrc      zero, 0x340, tp
                  csrrci     ra, 0x340, 12
                  c.slli     t0, 21
359:              slli       s2, a7, 29
                  slti       s10, s3, -892
                  and        a6, zero, a0
                  sub        t1, a7, t0
                  lui        a2, 436756
                  c.andi     a1, 29
                  csrrw      s4, 0x340, zero
                  mul        t1, a4, a5
                  divu       gp, s7, s10
                  beq        s0, t3, 371f
                  c.beqz     s0, 371f
                  and        tp, zero, s10
371:              c.beqz     a5, 380f
                  divu       a1, s3, t2
                  c.or       a3, s1
                  fence
                  c.li       t2, -1
                  and        s4, a7, t3
                  ori        t4, s3, 839
                  csrrs      s5, 0x340, sp
                  fence
380:              or         ra, a2, s11
                  or         a4, a0, t0
                  bne        s8, s2, 389f
                  c.xor      a0, s1
                  nop
                  xori       s5, t4, 852
                  c.bnez     a3, 403f
                  bgeu       zero, a5, 406f
                  sra        a7, s6, zero
389:              addi       a0, ra, 396
                  csrrc      a6, 0x340, s10
                  mulhu      zero, sp, s8
                  c.sub      a5, a2
                  ori        t0, a4, 115
                  c.bnez     s0, 399f
                  xori       s6, s8, -962
                  nop
                  srl        a1, tp, gp
                  ori        t1, a1, 513
399:              srl        s11, a3, t4
                  slti       t0, a7, -678
                  c.li       t6, -1
                  c.li       s7, -1
403:              or         ra, s3, s7
                  sltu       t5, a4, t4
                  remu       s2, a6, a4
406:              remu       s5, s11, t4
                  mulhsu     a0, zero, s6
                  srl        s3, t0, a1
                  bge        sp, zero, 418f
                  sltiu      s7, s3, -633
                  c.nop
                  mulhsu     a5, s4, ra
                  mul        a6, s9, a5
                  c.or       a4, a2
                  bgeu       a3, a5, 418f
                  csrrs      s0, 0x340, a2
                  mul        a3, s7, s5
418:              slt        a5, a6, gp
                  c.slli     s9, 31
                  lw         ra, 4(sp)
                  sra        a1, a3, tp
                  mulhsu     a2, t2, a0
                  andi       s1, t5, 609
                  addi       sp, sp, 48
                  and        t6, a3, t6
609:              c.jr x1
sub_4:            sll        tp, gp, s2
                  mul        a0, s2, tp
                  bge        a3, t5, sub_4_stack_p
                  csrrci     s4, 0x340, 27
sub_4_stack_p:    addi       sp, sp, -28
                  c.lui      s5, 10
                  sw         ra, 4(sp)
                  c.nop
                  la         a0, region_2+6029 #start riscv_load_store_rand_instr_stream_6
                  csrrsi     s4, 0x340, 14
                  csrrs      s10, 0x340, s1
                  sb         a0, 4(a0)
                  lb         a5, 16(a0)
                  div        s5, s3, ra
                  c.sub      a3, a1
                  and        t4, t4, a7
                  sb         zero, 14(a0)
                  slti       a2, t0, -619
                  sltu       a2, s1, sp
                  lbu        gp, 12(a0)
                  sw         a6, 11(a0)
                  sb         s10, 8(a0)
                  ori        s0, t3, -33
                  and        tp, t4, sp
                  div        t5, a2, s6
                  sb         t6, 12(a0)
                  c.and      s1, a2
                  slli       s5, a4, 10
                  sh         s3, 7(a0)
                  lhu        t6, -9(a0)
                  lbu        t2, -8(a0)
                  csrrwi     ra, 0x340, 0
                  slli       s6, a6, 26
                  lhu        s7, 1(a0)
                  sltu       a5, t6, s2
                  lh         s10, 9(a0)
                  sb         s8, 3(a0)
                  lb         ra, -12(a0)
                  sb         gp, -6(a0)
                  c.nop
                  rem        a1, s0, a0
                  sb         a0, -10(a0)
                  lb         a7, 5(a0)
                  c.mv       t5, t0
                  lb         tp, 2(a0)
                  sltu       a3, t4, t1
                  lhu        s3, 3(a0)
                  c.addi     s9, -1
                  csrrs      t2, 0x340, t1
                  mul        t6, t5, ra
                  fence.i
                  sb         s6, 4(a0)
                  sub        s0, s8, gp
                  c.lui      s3, 31
                  lb         ra, 14(a0)
                  lhu        s9, 11(a0)
                  lbu        s2, -15(a0)
                  lbu        a4, -2(a0)
                  lbu        t4, -11(a0)
                  lbu        t4, -10(a0)
                  lbu        s2, -4(a0)
                  divu       gp, ra, s1
                  sb         a4, 14(a0) #end riscv_load_store_rand_instr_stream_6
                  la         s7, region_0+1588 #start riscv_load_store_rand_instr_stream_0
                  lb         t4, 42(s7)
                  csrrwi     s2, 0x340, 6
                  divu       t0, a4, ra
                  csrrw      a5, 0x340, sp
                  c.add      t6, s9
                  addi       s3, s11, -661
                  lh         s4, -12(s7)
                  lui        s11, 746558
                  sb         t0, -33(s7)
                  c.andi     a4, -1
                  or         gp, s3, s7
                  lb         a2, 23(s7)
                  srli       t6, a4, 13
                  lbu        t0, 58(s7)
                  lbu        s9, -49(s7)
                  lbu        a4, 29(s7)
                  lb         t0, -41(s7)
                  sb         t0, 15(s7)
                  lb         t2, -63(s7)
                  sb         a5, 18(s7)
                  lhu        a1, 36(s7)
                  lb         s2, 52(s7)
                  lbu        t0, -60(s7)
                  c.or       a1, a2
                  csrrc      a3, 0x340, sp
                  lb         a0, -11(s7)
                  lb         a4, -55(s7)
                  lbu        s2, -47(s7)
                  lb         t6, -64(s7)
                  c.add      t0, tp
                  lh         s6, 26(s7)
                  lbu        s6, 35(s7) #end riscv_load_store_rand_instr_stream_0
                  la         a0, region_3+475 #start riscv_hazard_instr_stream_0
                  c.addi     a4, -1
                  lbu        a4, 1(a0)
                  lbu        a3, 13(a0)
                  lb         s9, 10(a0)
                  fence.i
                  csrrw      s9, 0x340, a3
                  lh         gp, 15(a0)
                  sw         a3, -11(a0)
                  sub        a3, gp, s9
                  lb         gp, 13(a0)
                  lh         a4, 13(a0)
                  csrrci     zero, 0x340, 3
                  fence
                  mulhsu     a4, a4, s0
                  sb         gp, 6(a0)
                  sltiu      zero, zero, -488
                  lhu        zero, 7(a0)
                  mulhsu     s0, s9, zero
                  sh         s0, -15(a0)
                  c.li       gp, 23
                  lbu        a4, 7(a0)
                  sb         a3, 0(a0)
                  lbu        a3, -6(a0)
                  andi       gp, a4, -359
                  c.xor      s0, a4
                  lbu        s0, -10(a0)
                  c.slli     s9, 13
                  c.sub      a3, a3
                  sb         gp, -13(a0)
                  csrrwi     a3, 0x340, 26
                  lb         a3, 6(a0)
                  sra        s9, a3, s0
                  slli       zero, gp, 5
                  c.nop
                  xori       s0, a3, 943
                  lb         zero, 3(a0)
                  or         s0, gp, zero
                  rem        zero, a3, a4
                  lb         a4, 12(a0)
                  sh         s9, 13(a0)
                  lb         a4, 5(a0)
                  csrrs      s0, 0x340, zero
                  lhu        zero, 3(a0)
                  lbu        s0, -9(a0)
                  srl        gp, s9, s9
                  sb         s9, -4(a0)
                  lbu        zero, 6(a0) #end riscv_hazard_instr_stream_0
                  la         a1, region_3+290 #start load_store_instr_stream_0
                  la         t1, region_3+167 #start load_store_instr_stream_3
                  la         a4, region_3+226 #start load_store_instr_stream_1
                  lb         gp, -174(a1)
                  lb         s9, 5(a4)
                  lbu        a5, -152(t1)
                  lbu        s11, 155(a1)
                  lb         a3, -56(t1)
                  la         a6, region_3+281 #start load_store_instr_stream_2
                  lbu        s2, 244(t1)
                  sb         s1, 4(a4)
                  sh         ra, 7(t1)
                  lhu        a3, 101(a6)
                  sb         tp, 100(t1)
                  lhu        s1, 136(a1)
                  lh         a0, -49(t1)
                  lh         a7, -62(a1)
                  lbu        s7, -16(a4)
                  sh         t4, 115(t1)
                  lh         s9, -29(a6)
                  lb         t5, -152(t1)
                  lh         ra, -15(t1)
                  sh         a0, -43(a6)
                  lb         tp, 10(a4)
                  lb         s1, -41(a6)
                  lb         a7, 148(a6)
                  lbu        a7, -80(a1)
                  sh         t0, -3(a6) #end load_store_instr_stream_2
                  sb         ra, 184(t1) #end load_store_instr_stream_3
                  lb         s10, -9(a4)
                  sh         a6, 10(a4) #end load_store_instr_stream_1
                  lb         t4, 95(a1) #end load_store_instr_stream_0
                  addi       a5, zero, 10 #init loop 1 counter
                  slt        a3, s3, t1
                  addi       zero, zero, 0 #init loop 1 limit
                  nop
                  c.addi     s0, -1
                  c.nop
                  sll        s1, a5, a1
                  c.or       s1, a4
                  c.and      a1, a4
sub_4_43_1_t:     remu       s6, t4, ra
                  c.add      s11, s4
                  xori       a1, t6, -284
                  c.li       a2, -1
                  addi       a5, a5, -1 #update loop 1 counter
                  c.xor      s0, s1
                  addi       s4, zero, 8 #init loop 0 counter
                  c.or       a3, a2
                  addi       s2, zero, -1 #init loop 0 limit
                  slti       s7, t3, -877
                  srai       a7, a0, 15
sub_4_43_0_t:     andi       a3, a4, -33
                  srli       tp, gp, 21
                  remu       a2, a2, a7
                  addi       s4, s4, -9 #update loop 0 counter
                  csrrwi     ra, 0x340, 27
                  csrrw      s0, 0x340, s6
                  beq        s4, s2, sub_4_43_0_t #branch for loop 0
                  slt        s3, s8, s1
                  c.beqz     a5, sub_4_43_1_t #branch for loop 1
                  c.andi     a2, -1
                  la         s0, region_0+1791 #start riscv_load_store_rand_instr_stream_8
                  mulh       s6, tp, a5
                  csrrs      a7, 0x340, s6
                  lhu        t5, 151(s0)
                  sb         s11, -52(s0)
                  sb         a1, -193(s0)
                  lbu        t5, -190(s0)
                  xor        s4, s10, s0
                  lbu        zero, -6(s0)
                  or         zero, a7, s6
                  lbu        a7, 205(s0)
                  and        t2, sp, a1
                  sb         s10, 167(s0)
                  lbu        t5, -236(s0)
                  add        t6, zero, a1
                  fence.i
                  divu       s4, a7, t3
                  lw         t5, 81(s0)
                  sh         s4, 249(s0)
                  ori        a7, s3, 116
                  csrrsi     s4, 0x340, 27
                  sltiu      t4, a5, 483
                  lb         zero, 1(s0)
                  sb         a2, 164(s0)
                  lbu        a6, 6(s0)
                  csrrwi     gp, 0x340, 16
                  lbu        s10, 90(s0)
                  lbu        a3, 78(s0)
                  slt        a0, t2, gp
                  fence
                  lb         s5, 248(s0)
                  sh         s0, -247(s0) #end riscv_load_store_rand_instr_stream_8
                  la         a1, region_4+2455 #start load_store_instr_stream_4
                  la         a6, region_4+612 #start load_store_instr_stream_2
                  la         a3, region_4+25 #start load_store_instr_stream_3
                  la         a2, region_4+3643 #start load_store_instr_stream_1
                  lb         t0, 171(a2)
                  sw         t0, -35(a1)
                  sb         gp, 154(a3)
                  sb         ra, -16(a1)
                  la         a7, region_4+404 #start load_store_instr_stream_0
                  sb         s0, -159(a7)
                  sb         a3, -2(a1)
                  sb         sp, -2(a6)
                  lbu        t0, 77(a3)
                  lbu        a5, -36(a1)
                  sb         t4, 240(a2)
                  sb         a1, -7(a6)
                  lbu        t1, 170(a3)
                  lb         s9, -20(a3)
                  lh         s5, -61(a1)
                  sb         s8, -50(a6)
                  lbu        ra, 104(a2)
                  lbu        s10, 8(a1)
                  lhu        s3, 185(a3)
                  lbu        t2, 53(a6)
                  lhu        t0, 124(a7)
                  lbu        s10, 8(a1)
                  lbu        a0, 20(a3)
                  sh         gp, 31(a2)
                  lb         gp, 93(a7)
                  lbu        s4, 74(a3)
                  sb         s5, -156(a2)
                  lbu        s5, 60(a1)
                  lbu        s4, 22(a6)
                  lhu        a5, -89(a2)
                  lbu        t2, 46(a6)
                  lbu        s6, -62(a2)
                  lbu        s4, -41(a2)
                  lb         gp, 26(a1) #end load_store_instr_stream_4
                  sh         t2, 59(a3)
                  sb         s4, -29(a6) #end load_store_instr_stream_2
                  lbu        s9, 166(a3) #end load_store_instr_stream_3
                  lb         t2, 255(a7)
                  lb         t1, 158(a2) #end load_store_instr_stream_1
                  lh         ra, -6(a7) #end load_store_instr_stream_0
                  addi       t2, zero, -5 #init loop 1 counter
                  xor        a0, s8, s3
                  addi       a5, zero, -15 #init loop 1 limit
                  c.andi     a1, 11
sub_4_46_1_t:     c.andi     a1, 29
                  addi       t2, t2, -1 #update loop 1 counter
                  c.mv       s1, a5
                  addi       t6, zero, -5 #init loop 0 counter
                  addi       a3, zero, -7 #init loop 0 limit
                  xori       s5, s11, 225
sub_4_46_0_t:     andi       a1, gp, -525
                  addi       t6, t6, -1 #update loop 0 counter
                  c.srai     a4, 5
                  bge        t6, a3, sub_4_46_0_t #branch for loop 0
                  bge        t2, a5, sub_4_46_1_t #branch for loop 1
                  lui        s5, 207971
                  la         s7, region_1+1427 #start riscv_hazard_instr_stream_4
                  lh         a7, 1331(s7)
                  lbu        t0, 1988(s7)
                  remu       t0, t4, t4
                  lbu        a7, 1228(s7)
                  c.and      a0, a0
                  lbu        t0, -230(s7)
                  remu       s3, a7, a0
                  lbu        a7, 827(s7)
                  lhu        t4, 845(s7)
                  c.srli     a0, 27
                  slti       a7, t4, -685
                  lhu        t4, 397(s7)
                  c.li       a0, 4
                  lbu        a7, 778(s7)
                  sb         a7, -1006(s7)
                  auipc      s3, 602179
                  lbu        t0, 1831(s7)
                  lw         s3, 1673(s7)
                  lui        a0, 490119
                  sb         t0, 1920(s7)
                  lb         t2, 295(s7)
                  sh         t0, -181(s7)
                  lw         a0, 1313(s7)
                  c.mv       a0, a0
                  sb         s3, -812(s7)
                  lb         s3, -1082(s7)
                  mulh       a7, t4, t2
                  lb         a7, 1350(s7)
                  xor        t2, t4, t2
                  sh         a7, 55(s7)
                  csrrs      t4, 0x340, t2
                  sb         s3, -241(s7)
                  lbu        t4, -1372(s7)
                  lw         s3, -879(s7)
                  andi       t0, a0, -80
                  lb         t0, -574(s7)
                  fence
                  lui        t0, 287183
                  mulh       a0, a7, a0
                  lh         a7, 541(s7)
                  lbu        t2, -1370(s7)
                  c.nop
                  lb         a7, 1115(s7)
                  fence
                  lb         t4, -702(s7)
                  lb         a0, 724(s7) #end riscv_hazard_instr_stream_4
                  addi       a3, zero, -10 #init loop 0 counter
                  add        t4, tp, s0
                  c.mv       s6, t0
                  add        tp, s11, gp
                  c.addi     a6, -1
                  c.add      s9, t4
                  addi       s11, tp, -467
                  addi       s0, zero, -6 #init loop 0 limit
                  slt        ra, s7, a0
                  slt        tp, a2, s10
sub_4_44_0_t:     sltiu      s6, zero, 513
                  sltu       t0, s3, a2
                  addi       a3, a3, 3 #update loop 0 counter
                  c.sub      s1, a3
                  csrrwi     t2, 0x340, 27
                  slti       s10, s1, 732
                  divu       tp, t1, a3
                  sltiu      a0, zero, 402
                  csrrsi     s9, 0x340, 20
                  or         s5, a4, t0
                  rem        t2, a6, a3
                  csrrw      t5, 0x340, t5
                  csrrw      a1, 0x340, a0
                  blt        a3, s0, sub_4_44_0_t #branch for loop 0
                  rem        ra, ra, t5
                  la         s4, region_0+1671 #start riscv_load_store_rand_instr_stream_7
                  slli       zero, t6, 14
                  sb         a0, -152(s4)
                  c.or       a2, a5
                  lb         a3, 64(s4)
                  sb         s11, 7(s4)
                  sh         a6, 225(s4)
                  csrrc      s5, 0x340, s4
                  csrrci     tp, 0x340, 29
                  lb         a3, 239(s4)
                  c.nop
                  fence
                  lui        s6, 559085
                  csrrw      t1, 0x340, s7
                  mulh       s11, s8, zero
                  and        t4, a1, a1
                  div        s3, s4, s0
                  lbu        s6, 129(s4)
                  or         a2, a2, s1
                  c.srai     s0, 10
                  c.srai     s1, 10
                  sra        tp, s8, zero
                  sb         sp, -243(s4)
                  sb         zero, -165(s4)
                  lb         gp, -109(s4)
                  sb         a1, -111(s4)
                  sb         a2, -16(s4)
                  sb         a5, -100(s4)
                  lbu        a1, -164(s4)
                  xori       tp, a5, -134
                  lb         a2, -216(s4)
                  or         s1, s5, s7
                  c.add      t2, s2
                  c.mv       s6, s2
                  csrrci     t0, 0x340, 7
                  sb         t1, -241(s4)
                  lhu        a7, -191(s4)
                  sb         s10, -184(s4)
                  lbu        a2, -112(s4)
                  sb         s11, -33(s4)
                  xori       a7, s5, -33
                  lb         s1, 33(s4)
                  lbu        s9, 224(s4)
                  lbu        s9, 46(s4)
                  lh         s1, -223(s4)
                  c.li       a1, 5
                  lb         a5, 172(s4)
                  c.addi     a7, 13
                  lui        a4, 969936
                  sw         t6, -115(s4)
                  sb         s7, -219(s4)
                  slti       a6, s1, 134
                  div        a7, s7, a3
                  lbu        gp, -222(s4)
                  csrrwi     s3, 0x340, 19
                  sb         t3, 41(s4)
                  c.xor      a1, a4
                  c.andi     a2, 30
                  div        t2, tp, t4
                  sh         tp, -23(s4) #end riscv_load_store_rand_instr_stream_7
                  la         s9, region_1+4179 #start load_store_instr_stream_1
                  lbu        tp, 2033(s9)
                  la         a0, region_4+2683 #start load_store_instr_stream_0
                  sh         t1, -913(s9)
                  lb         gp, -1894(s9)
                  lb         s3, -16(a0)
                  sb         ra, -1365(s9)
                  sb         s2, 10(a0)
                  lh         t4, 9(a0)
                  lb         zero, -14(a0)
                  lbu        s10, 275(s9)
                  lb         a7, 266(s9)
                  lbu        gp, 2(a0)
                  lbu        zero, -8(a0)
                  lbu        s10, 521(s9)
                  sb         t6, 11(a0)
                  lbu        s6, 760(s9) #end load_store_instr_stream_1
                  lb         a4, -10(a0) #end load_store_instr_stream_0
                  la         s0, region_0+66 #start load_store_instr_stream_2
                  la         a1, region_2+3776 #start load_store_instr_stream_1
                  la         t4, region_4+2010 #start load_store_instr_stream_0
                  lbu        s1, -129(t4)
                  la         s10, region_1+10258 #start load_store_instr_stream_3
                  lb         a6, 247(t4)
                  lbu        a6, 7(a1)
                  lb         a5, 180(s0)
                  lb         s9, 46(a1)
                  lbu        s2, -9(s10)
                  lb         s7, 60(a1)
                  lh         a3, 66(t4)
                  sb         s9, -15(a1)
                  lb         s2, 209(t4)
                  lb         s1, -1(s0)
                  lb         s7, -5(s10)
                  lbu        t6, -5(a1)
                  sb         gp, 31(s0)
                  lb         t0, 15(s10)
                  sb         s6, -18(a1)
                  sb         t2, 11(s10)
                  lhu        s9, 0(s10)
                  lb         s2, 213(t4)
                  lw         gp, 52(a1)
                  lb         ra, -167(t4)
                  lb         s11, 139(t4)
                  lb         t1, 13(a1)
                  lbu        t6, 41(s0)
                  lb         s11, -7(s10)
                  lh         s3, 144(s0)
                  sb         s11, 53(a1) #end load_store_instr_stream_1
                  lb         s4, 1(s0)
                  lbu        t6, -13(s10) #end load_store_instr_stream_3
                  lhu        s6, 128(s0) #end load_store_instr_stream_2
                  sb         a4, -40(t4) #end load_store_instr_stream_0
                  la         a2, region_3+17 #start load_store_instr_stream_2
                  la         a5, region_3+383 #start load_store_instr_stream_4
                  la         s11, region_3+86 #start load_store_instr_stream_3
                  lhu        t6, 99(a5)
                  sb         s10, 10(s11)
                  lb         s3, 8(s11)
                  la         s4, region_3+156 #start load_store_instr_stream_0
                  lw         s5, 89(a5)
                  la         a4, region_3+68 #start load_store_instr_stream_1
                  lb         s1, -11(s4)
                  lb         a6, -284(a5)
                  sb         s6, 5(a2)
                  c.lw       a1, 96(a4)
                  lbu        a3, -10(a2)
                  lb         tp, 101(a4)
                  sb         gp, -5(s11)
                  lb         s9, 12(a2)
                  sh         a0, 1(a2)
                  sh         a7, 12(s11)
                  lbu        s9, -274(a5)
                  lbu        s0, 123(a5)
                  lh         s9, 20(s4)
                  lb         s1, -7(s11)
                  lb         ra, 33(s4)
                  sh         s6, -289(a5)
                  lb         s0, 75(a4)
                  lb         s9, -72(a5)
                  lbu        a1, 1(a2)
                  lh         s9, 14(s11) #end load_store_instr_stream_3
                  sb         s6, 155(a4)
                  lbu        s0, 8(a2)
                  lhu        s10, 59(a5) #end load_store_instr_stream_4
                  lb         s9, -39(s4)
                  lbu        a1, 6(a2)
                  sb         a6, 124(a4) #end load_store_instr_stream_1
                  sb         s10, 14(a2)
                  sw         t1, 11(a2) #end load_store_instr_stream_2
                  sb         s7, 52(s4) #end load_store_instr_stream_0
                  la         a6, region_1+7850 #start load_store_instr_stream_3
                  la         t5, region_0+2524 #start load_store_instr_stream_0
                  la         t4, region_3+368 #start load_store_instr_stream_2
                  sh         a0, 122(t4)
                  la         s4, region_4+2415 #start load_store_instr_stream_4
                  lbu        a4, -215(a6)
                  lb         s3, -150(t5)
                  sb         gp, 0(s4)
                  lbu        a4, 117(a6)
                  lb         a3, 13(a6)
                  la         s7, region_2+5824 #start load_store_instr_stream_1
                  lb         gp, 109(t4)
                  lb         s0, -221(t4)
                  lbu        a1, -5(s7)
                  sh         a2, 1456(t5)
                  sh         a7, 54(t4)
                  lb         s3, 13(s7)
                  lbu        gp, -93(a6)
                  lh         a3, -60(t4)
                  lb         s0, 9(s7)
                  lbu        s1, -199(t4)
                  lbu        gp, -2044(t5)
                  sb         zero, 9(s7)
                  lh         s3, 62(t4)
                  lhu        s6, -16(s7)
                  sb         s3, -17(s4)
                  lb         a3, -44(s4)
                  sb         s6, -255(t4)
                  lb         t1, 74(a6) #end load_store_instr_stream_3
                  lb         s6, 741(t5)
                  lh         t0, 6(s7)
                  lbu        zero, -13(s7)
                  lh         s9, 37(s4)
                  lb         t2, 59(t4)
                  sb         gp, 4(s4) #end load_store_instr_stream_4
                  lhu        s0, 2(s7) #end load_store_instr_stream_1
                  sh         t0, -126(t4) #end load_store_instr_stream_2
                  lbu        s1, -849(t5) #end load_store_instr_stream_0
                  addi       ra, zero, 10 #init loop 0 counter
                  slli       a5, a1, 22
                  addi       s6, zero, 10 #init loop 0 limit
sub_4_47_0_t:     c.or       a4, s1
                  addi       ra, ra, -8 #update loop 0 counter
                  mulhsu     a6, a1, s2
                  bgeu       ra, s6, sub_4_47_0_t #branch for loop 0
                  srli       s3, s9, 24
                  la         ra, region_1+115 #start riscv_hazard_instr_stream_3
                  c.lui      s2, 6
                  sub        a4, s0, a4
                  lb         a4, 1440(ra)
                  lb         a4, 560(ra)
                  sltu       s1, s0, s0
                  lbu        a4, 219(ra)
                  fence
                  lbu        a0, 1616(ra)
                  lbu        a4, 243(ra)
                  lhu        s2, 1251(ra)
                  lw         a7, 1965(ra)
                  lb         s1, 826(ra)
                  sb         s2, 1364(ra)
                  mulhsu     a0, s2, s2
                  addi       a7, a0, 358
                  lb         s1, 1462(ra)
                  lbu        s0, 1978(ra)
                  lb         a4, 1680(ra)
                  lui        a0, 618211
                  c.and      a0, a4
                  addi       a4, s2, 380
                  sb         s0, 636(ra)
                  sb         s0, 1054(ra)
                  lb         a0, 999(ra)
                  csrrc      s1, 0x340, a4
                  sub        a0, s1, s1
                  sb         s0, 902(ra)
                  sb         a4, 1406(ra)
                  lbu        s1, 530(ra)
                  csrrw      s1, 0x340, a4
                  c.sub      a0, a4
                  lb         s1, 1710(ra)
                  lh         s0, 555(ra)
                  c.sub      a0, s0
                  fence
                  lbu        a7, 138(ra)
                  c.and      a4, s0
                  lh         a7, 631(ra)
                  sb         s0, 304(ra)
                  lb         a7, 1669(ra) #end riscv_hazard_instr_stream_3
                  la         gp, region_1+5783 #start load_store_instr_stream_3
                  la         a0, region_1+12974 #start load_store_instr_stream_1
                  la         ra, region_1+15942 #start load_store_instr_stream_0
                  lbu        a7, 11(a0)
                  la         tp, region_1+15163 #start load_store_instr_stream_4
                  la         s3, region_1+10812 #start load_store_instr_stream_2
                  lbu        t5, 40(gp)
                  sb         s4, 53(ra)
                  sb         s2, -9(tp)
                  lb         s10, 871(s3)
                  lb         s11, 9(a0)
                  lh         s5, -8(a0)
                  lbu        a2, 9(a0)
                  lbu        t0, -815(s3)
                  sb         gp, -29(ra)
                  lb         s1, -14(gp)
                  sb         a1, -1390(s3)
                  lhu        s10, -25(gp)
                  sb         a1, 14(a0)
                  sb         gp, 60(gp)
                  lhu        a3, -52(ra)
                  sb         t4, -15(a0)
                  lb         a5, -3(a0)
                  sh         a2, -21(gp)
                  sh         a3, -12(ra)
                  lbu        a5, 139(ra)
                  lhu        s5, -28(ra)
                  lbu        s4, 1317(s3)
                  lb         s4, 2(tp)
                  sb         s3, -11(a0)
                  lh         s11, 7(gp)
                  sh         a2, 12(ra)
                  lh         a3, -7(tp)
                  sh         s5, -5(tp)
                  lbu        a6, -52(gp) #end load_store_instr_stream_3
                  sb         gp, -6(a0)
                  sh         s0, 10(a0) #end load_store_instr_stream_1
                  sb         zero, 604(s3) #end load_store_instr_stream_2
                  lw         t5, -7(tp) #end load_store_instr_stream_4
                  lb         s1, 112(ra) #end load_store_instr_stream_0
sub_4_16:         jal        ra, 6f
0:                c.j        9f
1:                c.j        11f
2:                jal        s6, 1b
3:                c.j        7f
4:                c.jal      10f
5:                jal        a0, 3b
6:                c.j        5b
7:                c.j        8f
8:                c.j        0b
9:                jal        a7, 4b
10:               c.jal      2b
11:               csrrwi     t0, 0x340, 21
                  addi       s5, zero, 8 #init loop 1 counter
                  c.lui      a5, 25
                  slt        tp, t1, s3
                  addi       s3, zero, -2 #init loop 1 limit
                  sll        a6, s2, s5
sub_4_49_1_t:     and        tp, a3, a3
                  addi       s5, s5, -7 #update loop 1 counter
                  addi       a0, zero, -8 #init loop 0 counter
                  addi       zero, zero, 0 #init loop 0 limit
                  slli       s10, a7, 8
sub_4_49_0_t:     c.lui      s9, 7
                  srai       a1, a5, 6
                  c.xor      s1, s0
                  xor        s1, s9, a7
                  addi       a0, a0, 8 #update loop 0 counter
                  c.lui      s1, 1
                  c.bnez     a0, sub_4_49_0_t #branch for loop 0
                  c.and      s1, a0
                  sub        a1, a3, t4
                  csrrwi     s9, 0x340, 11
                  c.add      s6, a4
                  c.srai     s0, 3
                  div        a3, t4, tp
                  bge        s5, s3, sub_4_49_1_t #branch for loop 1
                  fence
                  la         t0, region_0+3594 #start load_store_instr_stream_1
                  la         s11, region_2+5762 #start load_store_instr_stream_2
                  la         a6, region_4+3647 #start load_store_instr_stream_3
                  sb         t0, -232(a6)
                  la         s2, region_3+168 #start load_store_instr_stream_0
                  lbu        s9, -71(s11)
                  lbu        a3, -196(a6)
                  sh         t5, 302(s2)
                  la         t5, region_1+2129 #start load_store_instr_stream_4
                  lbu        zero, -629(t5)
                  lb         s5, -41(s2)
                  lbu        t4, -1506(t5)
                  lh         a1, 197(a6)
                  sb         s3, -3(t0)
                  lhu        a4, 12(t0)
                  lbu        s7, 239(s2)
                  lh         zero, 14(t0)
                  lw         s3, 89(a6)
                  lb         s4, -249(s11)
                  sb         sp, 609(t5)
                  sb         a1, 54(a6)
                  lbu        s10, -225(s11)
                  lb         s7, 226(s2)
                  lbu        a7, 1(t0)
                  lbu        a0, -183(s11)
                  lbu        s1, 783(t5)
                  lbu        s9, -1(t0)
                  lhu        gp, 270(s2)
                  lhu        a7, 30(s2)
                  lb         s0, -83(s11)
                  lb         ra, -227(a6)
                  sb         zero, 116(a6)
                  sh         s8, -90(s2)
                  lbu        a1, 133(s11)
                  lb         a7, 44(a6) #end load_store_instr_stream_3
                  sb         t1, 13(t0)
                  sb         t3, -1998(t5) #end load_store_instr_stream_4
                  sb         s2, 9(t0) #end load_store_instr_stream_1
                  lh         s9, -124(s11) #end load_store_instr_stream_2
                  lw         s4, 68(s2) #end load_store_instr_stream_0
sub_4_19:         jal        ra, 10f
0:                c.j        8f
1:                c.jal      3f
2:                jal        t1, 0b
3:                jal        s0, 12f
4:                c.j        5f
5:                jal        ra, 1b
6:                c.jal      15f
7:                jal        a0, 13f
8:                jal        t1, 11f
9:                c.jal      14f
10:               jal        gp, 6b
11:               jal        t1, 9b
12:               c.jal      2b
13:               jal        ra, 4b
14:               c.j        16f
15:               jal        ra, 7b
16:               csrrw      s10, 0x340, s1
                  addi       a7, zero, 6 #init loop 1 counter
                  divu       a6, s3, s7
                  mulhu      a6, t1, a3
                  c.lui      s3, 11
                  addi       t4, zero, 14 #init loop 1 limit
sub_4_41_1_t:     c.add      s9, tp
                  addi       a7, a7, 8 #update loop 1 counter
                  rem        t2, s0, s0
                  c.srai     a0, 11
                  srl        s4, a0, s1
                  sra        a1, t6, a0
                  addi       s5, zero, -6 #init loop 0 counter
                  sltiu      gp, s9, 801
                  srli       zero, t5, 5
                  addi       s2, zero, 17 #init loop 0 limit
                  mulhsu     zero, t2, a2
                  sll        s10, s8, s11
sub_4_41_0_t:     divu       zero, a7, t6
                  c.add      s7, s7
                  c.lui      a4, 1
                  csrrw      a5, 0x340, s4
                  sltiu      s6, tp, 11
                  addi       s5, s5, 7 #update loop 0 counter
                  remu       s6, a5, zero
                  bltu       s5, s2, sub_4_41_0_t #branch for loop 0
                  bne        a7, t4, sub_4_41_1_t #branch for loop 1
                  xor        s4, ra, ra
sub_4_12:         jal        ra, 2f
0:                jal        ra, 18f
1:                jal        ra, 6f
2:                jal        a5, 3f
3:                c.jal      1b
4:                jal        ra, 8f
5:                c.jal      12f
6:                c.j        17f
7:                c.jal      14f
8:                c.j        16f
9:                jal        t1, 15f
10:               jal        ra, 5b
11:               c.jal      0b
12:               jal        tp, 4b
13:               c.jal      9b
14:               c.j        11b
15:               c.j        10b
16:               c.j        7b
17:               c.j        13b
18:               c.sub      a3, s1
                  la         s2, region_3+136 #start riscv_load_store_rand_instr_stream_9
                  csrrwi     zero, 0x340, 9
                  csrrci     a5, 0x340, 21
                  sb         zero, 2(s2)
                  lbu        a3, 9(s2)
                  sb         sp, -3(s2)
                  lb         t5, -11(s2)
                  srai       a5, zero, 23
                  sb         s4, -5(s2)
                  and        a6, s7, s5
                  lb         a3, 6(s2)
                  lbu        t1, 9(s2)
                  lb         gp, -5(s2)
                  lb         s11, -5(s2)
                  xori       t1, a0, 824
                  sb         t5, -11(s2)
                  c.mv       t1, a4
                  csrrs      zero, 0x340, a3
                  lw         t4, 16(s2)
                  c.sub      a2, a1
                  andi       t2, t0, 944
                  lb         s3, 4(s2)
                  lh         gp, 8(s2)
                  c.add      s0, a6
                  sltu       zero, s11, s7
                  lbu        zero, -12(s2)
                  lb         ra, 14(s2)
                  ori        t1, a6, 171
                  sb         s11, 6(s2)
                  lbu        t0, 10(s2)
                  sh         t5, -16(s2)
                  sb         a2, 13(s2)
                  lh         t2, -8(s2)
                  addi       a6, a5, 655
                  srli       s1, a5, 21
                  srai       tp, a0, 10
                  lh         s4, -16(s2) #end riscv_load_store_rand_instr_stream_9
                  la         a2, region_2+3354 #start load_store_instr_stream_2
                  la         gp, region_2+5609 #start load_store_instr_stream_1
                  lbu        s5, 142(gp)
                  sb         sp, -210(gp)
                  lbu        a4, -127(a2)
                  la         s10, region_2+7225 #start load_store_instr_stream_0
                  sb         s4, 128(gp)
                  lhu        a5, -97(s10)
                  sh         a3, 203(gp)
                  lbu        t5, -58(s10)
                  sh         s10, 2(a2)
                  sb         gp, 184(s10)
                  lbu        t2, -162(a2)
                  sb         s10, -223(s10)
                  lb         s1, -199(s10)
                  lbu        t6, 50(gp)
                  lbu        t5, 128(gp)
                  sb         s6, 83(a2)
                  lbu        s2, -136(a2)
                  sb         a5, 242(s10)
                  lhu        s0, 167(gp)
                  sb         a0, -204(gp)
                  lhu        s7, -73(gp)
                  sb         zero, 138(s10)
                  lb         a3, 127(a2)
                  lbu        a4, -76(s10)
                  lb         t5, 109(a2) #end load_store_instr_stream_2
                  lbu        t2, 133(s10)
                  lbu        a6, 5(gp) #end load_store_instr_stream_1
                  sh         s11, 81(s10) #end load_store_instr_stream_0
                  la         s0, region_3+77 #start riscv_hazard_instr_stream_2
                  sw         t1, -49(s0)
                  lb         t1, -14(s0)
                  sb         ra, -27(s0)
                  sb         s1, -22(s0)
                  csrrs      tp, 0x340, ra
                  lb         ra, 18(s0)
                  div        t1, a3, s1
                  c.and      s1, a3
                  sb         s11, -2(s0)
                  c.addi     tp, -1
                  lbu        s11, -34(s0)
                  nop
                  sb         tp, 39(s0)
                  lb         t1, -12(s0)
                  c.addi     a3, 6
                  sb         s11, -24(s0)
                  lhu        ra, 23(s0)
                  lw         tp, 27(s0)
                  lb         t1, -59(s0)
                  c.li       t1, -1
                  lb         ra, 63(s0)
                  nop
                  csrrc      t1, 0x340, tp
                  lb         s1, -4(s0)
                  divu       s1, a3, a3
                  mulhsu     s11, t1, t1
                  c.add      t1, t1
                  lh         t1, 39(s0)
                  auipc      ra, 48941
                  lbu        tp, -41(s0)
                  sh         tp, -49(s0)
                  divu       tp, ra, s1
                  mul        a3, t1, tp
                  lb         s1, 57(s0)
                  sb         t1, -15(s0) #end riscv_hazard_instr_stream_2
                  la         a6, region_4+1472 #start load_store_instr_stream_2
                  la         t6, region_0+1709 #start load_store_instr_stream_1
                  la         s3, region_3+387 #start load_store_instr_stream_3
                  la         a2, region_1+6512 #start load_store_instr_stream_4
                  sh         s4, 33(s3)
                  lb         t2, 14(t6)
                  lb         a7, -9(a6)
                  sb         s10, -234(s3)
                  sb         t3, -6(a6)
                  la         s9, region_2+4804 #start load_store_instr_stream_0
                  lh         ra, 0(a2)
                  lbu        t1, -1910(s9)
                  lb         gp, 11(a6)
                  sh         a7, -4(a2)
                  lb         t2, -172(s3)
                  lbu        a1, -1658(s9)
                  lbu        s6, 0(t6)
                  lh         s5, -4(a6)
                  sh         a1, 14(a2)
                  lb         t1, 3(a6)
                  sh         t3, 482(s9)
                  lb         s2, -493(s9)
                  lhu        s2, 7(t6)
                  sw         s1, 4(a2)
                  sb         t5, -1(t6)
                  lb         a0, 11(a2)
                  lb         gp, -8(a2)
                  lb         t4, 691(s9)
                  sw         s11, -12(a6)
                  sb         s0, -715(s9)
                  sh         t0, 45(s3)
                  lb         gp, -10(t6)
                  lb         tp, -3(a6)
                  sb         s2, 8(a6)
                  sb         sp, 113(s3)
                  sb         a0, 9(t6) #end load_store_instr_stream_1
                  lb         s6, 7(a6) #end load_store_instr_stream_2
                  lbu        a5, 539(s9)
                  lb         s11, 696(s9)
                  sb         t6, 10(a2)
                  lb         s2, 9(a2)
                  lbu        s2, -83(s3)
                  lb         s10, -12(a2) #end load_store_instr_stream_4
                  sb         a2, -1747(s9)
                  sw         a1, -219(s3) #end load_store_instr_stream_3
                  sb         s8, 223(s9) #end load_store_instr_stream_0
                  la         a3, region_0+244 #start riscv_hazard_instr_stream_9
                  lhu        s5, -74(a3)
                  sb         s5, 175(a3)
                  and        s11, s5, a5
                  c.sub      a4, a4
                  lbu        a4, 187(a3)
                  lh         s11, -24(a3)
                  sb         s5, 43(a3)
                  lbu        s5, 205(a3)
                  mulhsu     t1, t1, a5
                  lb         a5, 47(a3)
                  sb         t1, 237(a3)
                  sw         a5, 192(a3)
                  c.xor      a4, a4
                  lhu        t1, 18(a3)
                  sb         s5, -129(a3)
                  csrrwi     tp, 0x340, 14
                  lbu        a4, -167(a3)
                  lb         s11, 156(a3)
                  c.srai     a5, 3
                  c.sw       a5, 0(a3)
                  lb         a5, 104(a3)
                  nop
                  divu       s11, tp, a4
                  lh         a4, 6(a3)
                  sw         s11, 128(a3)
                  lh         tp, -32(a3)
                  lbu        a4, 15(a3)
                  sw         a4, 256(a3)
                  or         a4, tp, a4
                  c.lw       a5, 28(a3)
                  lbu        a5, -39(a3)
                  andi       tp, s11, -605
                  sltu       a4, t1, a4
                  lb         a4, 241(a3)
                  lb         a4, 251(a3)
                  mulh       a4, s11, s11
                  lh         t1, -226(a3)
                  lbu        t1, 71(a3) #end riscv_hazard_instr_stream_9
                  addi       a4, zero, 10 #init loop 0 counter
                  add        s10, s5, s5
                  addi       t2, zero, 10 #init loop 0 limit
                  xori       s7, s0, 304
                  andi       a6, s10, 274
sub_4_45_0_t:     c.and      a1, a4
                  divu       s6, s6, a1
                  addi       a4, a4, -3 #update loop 0 counter
                  bgeu       a4, t2, sub_4_45_0_t #branch for loop 0
                  c.xor      a5, s1
                  la         gp, region_3+121 #start riscv_hazard_instr_stream_7
                  xori       a6, a4, 791
                  divu       a6, s11, t6
                  lh         s6, -11(gp)
                  lb         t6, 4(gp)
                  sll        a2, s11, t6
                  sb         s11, 13(gp)
                  lbu        a4, -12(gp)
                  csrrs      a4, 0x340, a6
                  sltu       s11, a4, a4
                  lbu        a2, -16(gp)
                  csrrw      a2, 0x340, a2
                  csrrsi     a6, 0x340, 7
                  csrrwi     s6, 0x340, 15
                  c.add      a6, s6
                  lb         s11, -4(gp)
                  and        a6, s11, s11
                  srai       a6, t6, 17
                  lbu        s11, -15(gp)
                  lbu        t6, -5(gp)
                  c.sub      a2, a2
                  lb         a2, 16(gp)
                  sub        a4, t6, t6
                  sb         a4, -12(gp)
                  lhu        a6, -7(gp) #end riscv_hazard_instr_stream_7
                  la         a6, region_2+716 #start load_store_instr_stream_2
                  la         a7, region_2+6836 #start load_store_instr_stream_1
                  lbu        t5, 1977(a6)
                  lbu        t2, 545(a6)
                  lb         t1, 9(a7)
                  lbu        a5, -11(a7)
                  lh         s6, 778(a6)
                  la         s11, region_2+3059 #start load_store_instr_stream_0
                  sb         a6, 746(a6)
                  lb         s6, -13(a7)
                  lb         s10, 808(a6)
                  sb         zero, 4(s11)
                  sb         a1, -209(a6)
                  sb         gp, -5(s11)
                  lbu        a0, 1175(a6)
                  lh         a4, 8(a7)
                  lh         s1, -142(a6)
                  sh         s11, -1(s11)
                  lbu        t4, 3(a7)
                  lw         t4, -348(a6) #end load_store_instr_stream_2
                  lh         s4, -10(a7)
                  lh         a1, 15(s11)
                  lh         a0, -12(a7)
                  lb         a4, 2(a7)
                  sh         s7, 6(a7)
                  lbu        ra, 5(a7) #end load_store_instr_stream_1
                  sh         a5, -11(s11) #end load_store_instr_stream_0
                  la         ra, region_2+6251 #start load_store_instr_stream_4
                  la         s10, region_1+12890 #start load_store_instr_stream_2
                  la         t0, region_4+2650 #start load_store_instr_stream_3
                  sb         a1, 251(s10)
                  lb         s0, 19(s10)
                  lbu        a5, -1862(ra)
                  la         a6, region_3+306 #start load_store_instr_stream_1
                  sb         s10, 95(s10)
                  lbu        t1, -1213(ra)
                  sb         s4, -13(t0)
                  sb         a1, -11(t0)
                  lh         a7, -563(ra)
                  la         a4, region_0+1026 #start load_store_instr_stream_0
                  sb         s7, -185(s10)
                  lbu        s0, -15(t0)
                  lb         a2, -251(s10)
                  lb         s2, -209(a6)
                  sb         sp, -15(s10)
                  lb         tp, -57(s10)
                  sb         zero, -633(a4)
                  lb         t4, 172(a6)
                  lb         s2, -174(a6)
                  lbu        zero, -120(s10)
                  lh         s6, -264(a4)
                  lb         s2, 11(t0)
                  lhu        s7, 989(ra)
                  lbu        t6, -190(a6)
                  sb         s3, 1800(ra)
                  lbu        s3, 1436(ra)
                  lhu        s7, 8(t0)
                  lb         s2, -1646(ra)
                  sb         a0, -219(s10)
                  lbu        s9, 1190(a4)
                  lb         a0, -16(t0)
                  sb         t6, -5(t0)
                  sb         s6, -223(a6)
                  lw         a0, 106(a6)
                  sb         a0, -698(a4)
                  lbu        t2, -198(ra)
                  lbu        t4, -11(t0)
                  lbu        s6, -205(a6)
                  sb         t3, 1(t0) #end load_store_instr_stream_3
                  sw         s7, -451(ra) #end load_store_instr_stream_4
                  lh         s6, 248(s10) #end load_store_instr_stream_2
                  lbu        s7, -121(a6) #end load_store_instr_stream_1
                  sb         a5, -365(a4) #end load_store_instr_stream_0
                  la         s9, region_3+439 #start riscv_load_store_rand_instr_stream_1
                  csrrci     t5, 0x340, 8
                  c.slli     ra, 13
                  c.li       ra, -1
                  lh         gp, -255(s9)
                  c.srli     s1, 23
                  c.srai     a4, 27
                  sb         a0, -12(s9)
                  lb         a1, -202(s9)
                  slti       s2, a1, -523
                  sb         s5, -141(s9)
                  slt        s3, s3, a4
                  slt        t4, a3, t0
                  lbu        gp, -98(s9)
                  lw         a4, -51(s9)
                  and        t0, s1, s10
                  c.lui      a0, 25
                  lb         a0, -4(s9)
                  add        zero, s3, t0
                  lb         s11, 44(s9)
                  nop
                  sltiu      s1, s10, 290
                  sw         sp, -123(s9)
                  lbu        s4, -47(s9)
                  slli       s5, s5, 6
                  lb         a4, -131(s9)
                  c.add      t6, t2
                  sb         s0, -170(s9)
                  lb         t4, -204(s9)
                  divu       t5, s0, s1
                  remu       t4, s10, s8
                  c.lui      s3, 12
                  mulh       s0, a3, ra
                  lb         s10, -102(s9)
                  c.srli     a3, 27
                  c.srai     a4, 9
                  lbu        a6, 66(s9) #end riscv_load_store_rand_instr_stream_1
                  la         a4, region_0+3547 #start riscv_load_store_rand_instr_stream_3
                  nop
                  nop
                  sh         a0, -13(a4)
                  sb         ra, 8(a4)
                  c.srai     a5, 6
                  lb         t0, 10(a4)
                  lhu        t5, 15(a4)
                  c.and      s1, s1
                  c.xor      a2, s0
                  lh         a6, 3(a4)
                  c.srli     a5, 13
                  and        t5, ra, s2
                  lb         s11, -12(a4)
                  sh         t3, 15(a4)
                  csrrwi     a7, 0x340, 12
                  lb         a1, 0(a4)
                  lb         gp, -5(a4)
                  lb         s9, -10(a4)
                  xori       tp, t3, 262
                  lbu        s6, -6(a4)
                  andi       s10, tp, 496
                  sb         t5, 8(a4)
                  sub        s6, t3, a4
                  lb         ra, 12(a4)
                  lw         t4, 9(a4)
                  csrrw      zero, 0x340, t2
                  lbu        s2, 16(a4)
                  nop
                  and        a2, zero, s9
                  lhu        t5, -5(a4)
                  sltiu      a1, s9, -889
                  nop
                  sh         t0, -11(a4)
                  fence
                  sb         ra, 11(a4)
                  lhu        s2, -15(a4)
                  auipc      a6, 941814
                  lb         s7, -4(a4)
                  sh         a3, -5(a4)
                  sb         s5, -2(a4)
                  lb         a2, -1(a4)
                  c.srli     s0, 22
                  sb         a3, 14(a4)
                  c.srli     a1, 11
                  sb         s6, -1(a4)
                  lhu        a6, 1(a4)
                  c.lui      t5, 3
                  lb         s10, -1(a4)
                  csrrsi     s5, 0x340, 7
                  csrrw      t2, 0x340, t6
                  c.and      a0, a0
                  or         a1, s2, a5
                  lb         t2, -14(a4)
                  lbu        tp, -14(a4)
                  addi       s7, s9, 966
                  andi       a3, s2, 474
                  rem        s5, s3, a3
                  c.srai     a5, 10
                  sb         t6, -8(a4) #end riscv_load_store_rand_instr_stream_3
                  la         tp, region_0+208 #start load_store_instr_stream_0
                  la         s4, region_3+363 #start load_store_instr_stream_1
                  lhu        t4, -235(s4)
                  lhu        s5, -176(tp)
                  sb         s11, 148(tp)
                  lbu        a7, -252(s4)
                  lbu        t6, -126(s4)
                  sh         t3, 82(tp)
                  lbu        zero, -84(s4)
                  lb         s5, 134(tp)
                  lh         a6, 236(tp)
                  sh         t6, 186(tp)
                  sw         t0, -99(s4)
                  sw         a4, 148(tp)
                  sw         a5, -131(s4) #end load_store_instr_stream_1
                  lbu        a2, 201(tp) #end load_store_instr_stream_0
sub_4_10:         jal        ra, 16f
0:                c.jal      14f
1:                jal        ra, 22f
2:                c.jal      21f
3:                jal        a2, 9f
4:                jal        t1, 3b
5:                c.j        20f
6:                jal        s11, 5b
7:                c.j        11f
8:                c.j        0b
9:                c.j        25f
10:               c.jal      26f
11:               c.jal      13f
12:               jal        s11, 4b
13:               c.jal      12b
14:               c.jal      17f
15:               c.j        18f
16:               jal        ra, 7b
17:               c.jal      24f
18:               jal        ra, 8b
19:               c.jal      27f
20:               jal        ra, 19b
21:               c.jal      15b
22:               c.j        10b
23:               c.j        2b
24:               c.j        6b
25:               c.j        1b
26:               c.j        23b
27:               fence
                  la         s11, region_3+262 #start load_store_instr_stream_1
                  la         a0, region_1+5344 #start load_store_instr_stream_2
                  la         tp, region_4+2337 #start load_store_instr_stream_0
                  lb         t2, 4(s11)
                  la         t1, region_2+7277 #start load_store_instr_stream_3
                  lbu        a2, -14(s11)
                  lbu        s4, 16(tp)
                  sb         a4, 180(a0)
                  sb         t5, -2(t1)
                  sb         s11, 236(a0)
                  lhu        a5, -1415(t1)
                  lbu        s1, -178(a0)
                  lbu        a1, -102(t1)
                  lhu        s4, 4(s11)
                  lh         t5, -10(s11)
                  sb         a4, -7(s11)
                  lbu        zero, 510(t1)
                  lhu        zero, 3(tp)
                  sb         t1, 15(s11)
                  sh         s1, -193(t1)
                  sb         ra, -1714(t1)
                  lbu        ra, -184(t1)
                  lbu        t5, 12(tp)
                  lhu        s6, -14(s11)
                  sb         a0, -29(a0)
                  lh         s6, -1331(t1)
                  lb         a4, 271(t1) #end load_store_instr_stream_3
                  lbu        a3, 1(s11)
                  lb         s9, 8(tp)
                  sb         a3, -15(s11) #end load_store_instr_stream_1
                  lh         s7, -14(a0) #end load_store_instr_stream_2
                  lb         gp, 6(tp) #end load_store_instr_stream_0
sub_4_17:         jal        ra, 0f
0:                c.j        1f
1:                c.jal      7f
2:                c.jal      15f
3:                c.jal      14f
4:                jal        ra, 6f
5:                jal        a6, 8f
6:                c.jal      12f
7:                c.jal      4b
8:                c.j        2b
9:                c.j        11f
10:               c.j        5b
11:               c.j        3b
12:               c.j        10b
13:               jal        ra, 9b
14:               jal        t1, 16f
15:               c.jal      13b
16:               c.add      t2, s3
                  la         a1, region_2+3126 #start riscv_hazard_instr_stream_8
                  lui        s9, 598073
                  lb         s5, 35(a1)
                  lbu        s9, 55(a1)
                  sb         s6, -25(a1)
                  sb         s6, -25(a1)
                  csrrs      s6, 0x340, s5
                  lh         a0, -14(a1)
                  xor        a3, s2, a3
                  sb         s6, 63(a1)
                  csrrs      a3, 0x340, a3
                  lbu        a0, 1(a1)
                  sub        s9, s2, s9
                  sra        a3, a0, a0
                  srli       a3, s5, 15
                  auipc      s5, 690313
                  add        a3, s9, s5
                  sb         s5, 11(a1)
                  add        a0, s2, s5
                  lhu        s5, -26(a1)
                  csrrs      a0, 0x340, s2
                  lhu        a3, 0(a1)
                  andi       s6, a0, 462
                  lb         s6, 7(a1)
                  lbu        s2, 40(a1)
                  lh         s9, -48(a1)
                  lbu        s6, -33(a1)
                  lb         s2, 22(a1)
                  andi       s5, s9, -476
                  sh         s9, -40(a1)
                  sh         s6, -18(a1)
                  rem        a3, a3, s2
                  lbu        a3, 27(a1)
                  lhu        a0, 14(a1)
                  csrrci     a0, 0x340, 3
                  sb         s5, -53(a1) #end riscv_hazard_instr_stream_8
                  la         t5, region_1+11426 #start riscv_load_store_rand_instr_stream_5
                  lbu        a4, -863(t5)
                  lb         a4, 811(t5)
                  sb         s5, -1358(t5)
                  and        t6, a6, s1
                  lb         s1, 1455(t5)
                  lhu        a7, 1664(t5)
                  lb         s11, 736(t5)
                  lbu        t1, 244(t5)
                  lbu        a3, -2032(t5)
                  fence
                  c.xor      a2, a4
                  mul        s2, s11, a1
                  lui        a0, 312097
                  lbu        t6, -721(t5)
                  sh         tp, 562(t5)
                  fence.i
                  c.and      a1, a1
                  lui        s10, 1037531
                  xori       a1, s6, 617
                  lhu        gp, 498(t5)
                  rem        a7, s6, s2
                  c.lui      a4, 31
                  lbu        t6, -185(t5)
                  srl        s2, t6, a1
                  srl        ra, t6, a1
                  lw         a5, 1382(t5)
                  lbu        s2, 164(t5)
                  c.mv       s11, s7
                  fence
                  sw         s0, 266(t5)
                  csrrwi     tp, 0x340, 3
                  sb         t4, 1121(t5)
                  mul        t4, ra, s10
                  sb         t2, 30(t5)
                  auipc      tp, 706229
                  sb         a5, -157(t5)
                  lb         s2, -37(t5) #end riscv_load_store_rand_instr_stream_5
                  addi       s7, zero, -1 #init loop 0 counter
                  csrrs      t2, 0x340, t0
                  csrrs      t0, 0x340, s8
                  sub        a1, s7, a5
                  c.srli     a1, 26
                  divu       a4, s1, a0
                  srai       ra, t3, 1
                  csrrs      s11, 0x340, sp
                  c.or       a4, s0
                  addi       t1, zero, -15 #init loop 0 limit
                  csrrw      t6, 0x340, a6
                  c.sub      s0, a4
                  c.li       s3, -1
                  c.srli     a4, 17
                  srl        t4, t5, tp
                  c.mv       a3, s0
                  c.andi     a5, 4
                  csrrs      zero, 0x340, s9
                  sltu       a1, s10, a1
                  and        ra, tp, ra
sub_4_48_0_t:     c.mv       a1, s11
                  slti       a3, a2, -346
                  addi       s7, s7, -7 #update loop 0 counter
                  remu       t5, t3, a0
                  xori       s1, a3, 317
                  c.andi     a3, -1
                  c.srli     s1, 27
                  sltu       gp, a2, a2
                  beq        s7, t1, sub_4_48_0_t #branch for loop 0
                  or         t6, s9, t6
                  la         t6, region_0+786 #start riscv_load_store_rand_instr_stream_2
                  lhu        t2, -8(t6)
                  lbu        a2, 51(t6)
                  nop
                  lhu        s10, 46(t6)
                  lw         s2, -22(t6)
                  sw         a5, 38(t6)
                  sw         a1, -26(t6)
                  c.mv       a2, t3
                  lbu        s11, 30(t6)
                  sb         s7, -57(t6)
                  lb         a1, 29(t6)
                  lbu        a6, 14(t6)
                  xor        s10, tp, s9
                  or         a5, sp, a2
                  c.srai     a3, 6
                  sh         t4, -28(t6)
                  c.sub      a3, s0
                  csrrs      s11, 0x340, t3
                  and        a2, s6, s6
                  rem        s2, s4, t1
                  srli       s10, a6, 24
                  nop
                  lbu        tp, 1(t6)
                  sw         s6, 10(t6)
                  lbu        s4, 39(t6)
                  fence.i
                  lh         zero, -8(t6)
                  sb         s4, 48(t6)
                  lb         s10, -39(t6)
                  c.xor      a5, a1
                  srai       s4, s2, 0
                  lbu        s10, 63(t6)
                  lw         a3, -34(t6) #end riscv_load_store_rand_instr_stream_2
                  addi       s3, zero, 10 #init loop 0 counter
                  c.addi     a1, 26
                  xor        t5, t5, t1
                  rem        s10, t0, a7
                  remu       s0, s8, t3
                  c.sub      a0, a4
                  c.lui      s0, 24
                  addi       s6, zero, 10 #init loop 0 limit
                  c.addi     gp, 1
                  mulhsu     s0, a1, ra
                  xor        a0, t6, s1
                  c.srli     a4, 19
                  c.xor      s1, a0
                  c.lui      a7, 8
                  csrrs      zero, 0x340, s10
                  slt        a1, s7, s5
sub_4_42_0_t:     slti       a0, s11, -90
                  sltu       s11, s9, a2
                  addi       s3, s3, -9 #update loop 0 counter
                  mulhsu     a7, s0, t2
                  bgeu       s3, s6, sub_4_42_0_t #branch for loop 0
                  c.add      s11, a5
                  addi       t5, zero, 2 #init loop 1 counter
                  c.sub      a1, a2
                  c.or       a3, a5
                  addi       s10, zero, 2 #init loop 1 limit
                  mul        zero, s0, zero
                  c.andi     s0, 27
                  c.sub      s0, a4
                  or         a2, a6, ra
                  mul        s5, s4, s6
                  remu       zero, s1, s6
                  c.li       s2, 30
sub_4_40_1_t:     and        s1, s11, s11
                  xor        t2, t1, t4
                  fence
                  addi       t5, t5, -1 #update loop 1 counter
                  csrrwi     s1, 0x340, 15
                  mulhu      a4, s2, s0
                  andi       ra, tp, -397
                  addi       s7, zero, 9 #init loop 0 counter
                  addi       s9, zero, 14 #init loop 0 limit
                  srli       s1, s8, 29
                  c.lui      a4, 2
sub_4_40_0_t:     div        s3, s11, s10
                  c.sub      a1, a0
                  addi       s7, s7, 3 #update loop 0 counter
                  c.slli     s4, 19
                  bltu       s7, s9, sub_4_40_0_t #branch for loop 0
                  fence
                  c.li       gp, -1
                  c.addi     s2, 7
                  slli       t2, gp, 13
                  srl        s0, a1, t4
                  c.lui      s4, 20
                  bgeu       t5, s10, sub_4_40_1_t #branch for loop 1
                  fence
                  la         a1, region_3+373 #start load_store_instr_stream_3
                  sb         t3, 16(a1)
                  la         ra, region_0+92 #start load_store_instr_stream_0
                  sb         a3, -12(a1)
                  la         a0, region_1+16364 #start load_store_instr_stream_2
                  la         a3, region_4+1459 #start load_store_instr_stream_1
                  lh         s9, -1668(a0)
                  lbu        t2, -1135(a0)
                  sb         t0, -289(a0)
                  sh         a1, -1391(a3)
                  lbu        zero, -14(a1)
                  sh         s2, -3(a1)
                  lb         s10, 7(a1)
                  lb         tp, 49(ra)
                  sb         tp, -926(a0)
                  sb         a4, -10(a1)
                  lh         a7, -866(a0)
                  sh         a4, 1379(a3)
                  sh         a1, -1670(a0)
                  lb         s10, 23(ra)
                  lh         s0, -458(a0)
                  sb         a7, 63(ra)
                  sh         t6, 7(a1)
                  sw         a2, -364(a0)
                  lbu        a5, 13(a1)
                  lh         t4, 48(ra)
                  lhu        s9, 551(a3)
                  lhu        tp, 46(ra)
                  lh         a7, -48(ra)
                  sb         s7, -832(a0)
                  lb         t2, 9(a1) #end load_store_instr_stream_3
                  lb         t5, 408(a3)
                  lw         t0, -8(ra)
                  lb         t6, -201(a0) #end load_store_instr_stream_2
                  lh         s5, 18(ra)
                  sb         t4, 965(a3) #end load_store_instr_stream_1
                  lb         s0, -57(ra) #end load_store_instr_stream_0
                  la         a2, region_1+15550 #start riscv_hazard_instr_stream_6
                  csrrci     t0, 0x340, 8
                  lbu        s9, 13(a2)
                  lbu        a0, 6(a2)
                  lbu        s1, 12(a2)
                  c.nop
                  sltiu      s1, a0, 300
                  c.li       tp, -1
                  slt        t0, t0, s10
                  auipc      t0, 592103
                  lbu        a0, -7(a2)
                  lb         s10, -3(a2)
                  csrrwi     t0, 0x340, 11
                  c.mv       a0, a0
                  mulh       s1, tp, a0
                  auipc      s10, 331198
                  c.addi     t0, -1
                  addi       s9, s1, 503
                  sub        t0, t0, a0
                  lhu        s9, 2(a2)
                  sb         s9, -8(a2)
                  csrrsi     s10, 0x340, 11
                  c.andi     s1, -1
                  csrrw      t0, 0x340, s10
                  sh         tp, -12(a2)
                  lbu        t0, 3(a2)
                  c.addi     tp, 10
                  c.sub      s1, a0
                  slli       s10, s10, 25
                  csrrw      s9, 0x340, s1
                  lbu        s1, -5(a2)
                  csrrw      s1, 0x340, a0
                  c.mv       s10, a0
                  c.srli     s1, 2
                  sh         s10, -6(a2)
                  nop
                  ori        tp, t0, 167
                  xor        t0, t0, tp
                  lb         s10, 11(a2)
                  sh         s9, -12(a2)
                  lh         s10, 6(a2) #end riscv_hazard_instr_stream_6
                  la         a3, region_3+24 #start load_store_instr_stream_1
                  la         s1, region_1+2793 #start load_store_instr_stream_0
                  sh         a2, -14(a3)
                  lbu        a2, -10(s1)
                  lbu        s5, 5(a3)
                  lb         ra, -15(a3)
                  lbu        a1, 7(s1)
                  lbu        a5, -9(a3)
                  lbu        a4, 16(s1)
                  lbu        ra, -4(s1)
                  lbu        t4, 11(s1)
                  sh         a2, 0(a3)
                  lh         s9, 10(a3)
                  sb         s9, 8(s1)
                  sb         s11, -9(a3)
                  lh         s11, -10(a3)
                  lhu        ra, -9(s1)
                  sh         s4, 10(a3)
                  lbu        s11, -14(s1)
                  lb         ra, 5(a3) #end load_store_instr_stream_1
                  sb         s10, 12(s1)
                  lb         t4, 10(s1) #end load_store_instr_stream_0
                  la         a6, region_0+3432 #start riscv_hazard_instr_stream_1
                  c.li       t4, 0
                  sb         s7, -48(a6)
                  nop
                  sub        t4, a2, a3
                  sb         a2, 0(a6)
                  sb         a2, -55(a6)
                  c.xor      a2, a3
                  lbu        s9, -52(a6)
                  lb         s9, -53(a6)
                  lb         s9, 61(a6)
                  nop
                  lbu        s7, -48(a6)
                  lb         a1, -7(a6)
                  lbu        a1, 6(a6)
                  c.mv       s9, a3
                  lhu        a1, 30(a6)
                  fence
                  lb         s9, 9(a6)
                  c.mv       s9, a2
                  lh         s9, 20(a6)
                  slti       s9, s9, -902
                  lb         s9, -64(a6)
                  lb         s7, -63(a6)
                  csrrci     s9, 0x340, 0
                  sb         a1, 13(a6)
                  lbu        s9, -59(a6)
                  sb         s9, -13(a6)
                  xor        a2, t4, s7
                  lbu        a3, -18(a6)
                  remu       a1, t4, s7
                  auipc      s7, 855471
                  lhu        a3, 54(a6)
                  sh         t4, -10(a6)
                  lbu        s9, -3(a6)
                  lh         a3, 10(a6)
                  lhu        s9, -52(a6)
                  lb         s7, 55(a6)
                  c.srli     a1, 8
                  lhu        a2, 12(a6)
                  c.sub      a1, a3
                  sub        a2, a3, a1
                  fence.i
                  nop
                  csrrsi     a2, 0x340, 26
                  sll        t4, a3, s7
                  add        a2, t4, s9
                  sb         s9, 18(a6)
                  lbu        a2, 63(a6)
                  sw         a3, 24(a6)
                  sb         a1, -35(a6)
                  lb         s9, -37(a6) #end riscv_hazard_instr_stream_1
                  la         tp, region_4+3900 #start load_store_instr_stream_2
                  la         t0, region_4+1344 #start load_store_instr_stream_1
                  la         s4, region_4+2483 #start load_store_instr_stream_0
                  sb         t2, -64(t0)
                  lb         s7, 960(s4)
                  sb         a5, 135(t0)
                  lb         t2, 218(s4)
                  sb         a1, -1773(tp)
                  lb         s6, 1457(t0)
                  lb         a6, -165(tp)
                  lb         a1, -973(t0)
                  sh         zero, 197(s4)
                  sb         s1, 807(t0)
                  lb         s0, 1030(s4)
                  sb         t0, -54(t0)
                  lbu        s10, -1677(tp)
                  lb         s9, -1518(s4)
                  sb         s7, -841(t0)
                  sb         s2, -247(s4)
                  lbu        a0, 43(t0)
                  sb         t6, -1264(s4)
                  sb         s4, -128(tp)
                  sb         tp, 1136(s4)
                  lw         a4, -1551(s4)
                  lbu        a3, 188(t0)
                  sb         tp, 1255(t0) #end load_store_instr_stream_1
                  lw         ra, -1012(tp) #end load_store_instr_stream_2
                  lbu        a1, 145(s4) #end load_store_instr_stream_0
                  la         t2, region_0+3167 #start load_store_instr_stream_1
                  la         a5, region_0+4037 #start load_store_instr_stream_0
                  sb         t6, 3(t2)
                  la         a2, region_0+3694 #start load_store_instr_stream_2
                  sh         tp, 6(a2)
                  lhu        s9, -6(a2)
                  lb         s2, -4(a5)
                  lbu        s10, -12(a2)
                  sb         a7, 6(a5)
                  lb         zero, 7(a2)
                  lb         a1, 10(t2)
                  lbu        a6, -9(a2)
                  lb         s6, 5(a2)
                  lbu        a7, 2(a5)
                  sh         a3, 3(t2)
                  sb         a3, 2(a2)
                  lbu        s5, -12(a5)
                  lb         t6, -15(a2)
                  sh         t0, -5(t2)
                  sb         a1, -16(a2)
                  lbu        s11, 14(a5)
                  sb         a6, 8(t2)
                  sh         tp, 9(a5)
                  lbu        gp, 2(t2) #end load_store_instr_stream_1
                  lbu        a0, 11(a5)
                  sh         a4, -9(a5)
                  lhu        zero, -14(a2) #end load_store_instr_stream_2
                  lhu        s3, 9(a5) #end load_store_instr_stream_0
sub_4_13:         jal        ra, 7f
0:                jal        ra, 14f
1:                c.jal      16f
2:                jal        t1, 3f
3:                c.j        23f
4:                c.j        8f
5:                jal        t1, 11f
6:                c.jal      12f
7:                c.jal      13f
8:                c.jal      9f
9:                c.jal      5b
10:               jal        ra, 1b
11:               c.jal      17f
12:               c.j        4b
13:               c.jal      15f
14:               jal        t4, 18f
15:               c.j        10b
16:               jal        ra, 6b
17:               c.j        22f
18:               c.j        21f
19:               c.j        20f
20:               c.jal      24f
21:               c.j        2b
22:               c.j        0b
23:               c.jal      19b
24:               csrrw      s5, 0x340, ra
sub_4_14:         jal        ra, 3f
0:                jal        s4, 13f
1:                c.j        17f
2:                jal        ra, 9f
3:                c.jal      0b
4:                c.jal      6f
5:                jal        ra, 19f
6:                c.jal      18f
7:                c.j        16f
8:                jal        ra, 5b
9:                c.jal      10f
10:               c.j        4b
11:               c.j        15f
12:               jal        ra, 1b
13:               c.jal      7b
14:               jal        ra, 8b
15:               c.jal      2b
16:               jal        ra, 11b
17:               jal        ra, 14b
18:               c.jal      12b
19:               c.srai     a2, 3
                  ori        s0, tp, -118
                  or         s3, s9, a2
                  c.beqz     s0, 13f
                  c.srli     a3, 20
                  sltu       zero, t6, t3
                  bgeu       a2, a2, 19f
                  c.add      a4, t4
                  lui        s0, 991757
                  c.slli     s9, 13
                  or         a1, t4, s11
                  ori        t0, ra, -1018
                  la         t4, region_2+6314 #start load_store_instr_stream_1
                  sh         s11, 964(t4)
                  la         a0, region_2+5134 #start load_store_instr_stream_2
                  la         a1, region_2+3991 #start load_store_instr_stream_0
                  la         s2, region_2+5083 #start load_store_instr_stream_3
                  sh         t5, 49(s2)
                  lb         s4, 1887(a0)
                  lb         t1, -1(s2)
                  sh         tp, -1(s2)
                  lb         s4, 1671(t4)
                  lh         s7, 652(t4)
                  lbu        s10, 16(s2)
                  sw         ra, -15(a1)
                  lw         t0, -31(s2)
                  lw         s4, 25(s2)
                  lbu        a6, -417(t4)
                  lb         ra, 608(a0)
                  lhu        s3, 946(t4)
                  sb         s3, 11(a1)
                  lbu        t0, 49(s2)
                  sh         t0, 748(a0)
                  sb         s7, 501(t4)
                  lb         a4, -1451(a0)
                  lb         ra, -28(s2)
                  sb         t3, 2014(a0)
                  lb         gp, 8(a1)
                  lb         s4, -46(s2)
                  sb         s7, -4(s2) #end load_store_instr_stream_3
                  sb         t2, -449(t4) #end load_store_instr_stream_1
                  lb         t5, -1607(a0)
                  sb         s0, 962(a0)
                  lbu        a3, -3(a1)
                  lb         s6, 491(a0) #end load_store_instr_stream_2
                  lb         a5, -16(a1) #end load_store_instr_stream_0
                  c.beqz     a5, 17f
                  bge        s11, s5, 26f
13:               slli       t6, t4, 2
                  div        s11, s11, zero
                  or         zero, t0, sp
                  csrrs      a2, 0x340, gp
17:               bge        s0, gp, 22f
                  fence
19:               srl        s3, a3, s8
                  fence
                  lui        s6, 502027
22:               c.mv       a0, tp
                  mulhu      t4, a4, a6
                  rem        s2, t0, zero
                  auipc      s3, 244997
26:               rem        a3, a1, t5
                  slt        t1, zero, s2
sub_4_15:         jal        ra, 18f
0:                jal        ra, 6f
1:                jal        t1, 24f
2:                c.jal      16f
3:                c.jal      0b
4:                c.jal      3b
5:                c.j        15f
6:                c.jal      17f
7:                jal        ra, 9f
8:                jal        a2, 1b
9:                c.jal      19f
10:               jal        t1, 21f
11:               c.j        5b
12:               c.j        22f
13:               jal        t1, 4b
14:               jal        a3, 26f
15:               c.j        8b
16:               jal        t1, 20f
17:               c.j        7b
18:               jal        ra, 12b
19:               c.jal      10b
20:               jal        t1, 11b
21:               c.j        14b
22:               c.jal      23f
23:               c.jal      2b
24:               jal        ra, 25f
25:               jal        tp, 13b
26:               fence
                  or         t4, a2, a3
                  srai       s3, t5, 21
                  csrrs      a5, 0x340, a6
                  blt        s4, a6, 44f
                  slt        a3, s9, s2
                  blt        t5, a6, 35f
                  sltiu      s6, s5, 488
35:               c.andi     a4, -1
                  divu       ra, a2, s0
                  bge        ra, t4, 43f
                  div        t6, s8, a1
                  csrrs      a4, 0x340, zero
                  c.srai     s0, 15
                  c.li       a4, -1
                  mulh       a0, sp, t1
43:               mulhsu     s1, a5, gp
44:               c.nop
                  mulhsu     a2, s8, a7
                  c.and      s0, s1
                  blt        s5, t3, 58f
                  bgeu       t4, s2, 60f
                  csrrwi     a2, 0x340, 16
                  srli       s3, s3, 26
                  c.xor      s0, a5
                  remu       s1, s3, a1
                  sltiu      s1, s6, 547
                  bge        s7, s5, 65f
                  srl        t6, s7, s8
                  bgeu       s5, s9, 59f
                  nop
58:               c.sub      a0, a5
59:               c.lui      a2, 21
60:               srli       s7, s0, 27
                  div        s10, t5, s11
                  csrrw      a7, 0x340, t2
                  and        zero, ra, zero
                  fence
65:               c.li       t6, 6
                  c.srai     a2, 29
                  c.bnez     a5, 68f
68:               sltu       t0, s4, s9
                  csrrci     s5, 0x340, 29
                  c.lui      a4, 27
                  lui        s5, 638458
                  lui        a4, 972471
                  c.xor      a4, s1
                  ori        ra, zero, 691
                  fence
                  c.slli     a3, 21
                  c.beqz     s1, 78f
78:               fence.i
                  mulhu      s10, tp, s5
                  xor        a0, sp, s10
                  sub        s10, s7, s7
                  srli       s1, s0, 29
                  c.sub      a4, a0
                  remu       t5, ra, s6
                  ori        tp, s1, 307
                  fence.i
                  sub        t0, t0, t6
                  div        a5, tp, a3
                  beq        zero, a7, 104f
                  mulh       t1, a2, a7
                  and        s1, s6, s9
                  c.or       a4, a3
                  remu       a0, sp, a6
                  add        s2, sp, a0
                  srl        ra, a2, s4
                  mulhu      t2, s8, s2
                  srai       t2, sp, 6
                  c.mv       s6, a2
                  mulhsu     a5, a1, gp
                  c.addi     t0, -1
                  fence
                  csrrw      s1, 0x340, s4
                  bne        s1, s8, 118f
104:              xor        s9, s7, ra
                  mulhsu     zero, zero, s3
                  xor        s7, gp, s8
                  c.bnez     a1, 110f
                  csrrwi     a3, 0x340, 28
                  mulh       s6, zero, t5
110:              andi       s4, s6, 57
                  beq        s0, s7, 113f
                  c.sub      s0, a1
113:              addi       a5, sp, -1005
                  xor        a5, s3, s10
                  ori        a3, s7, 889
                  beq        t5, a4, 125f
                  c.mv       tp, s8
118:              csrrsi     s10, 0x340, 6
                  andi       s6, gp, 64
                  ori        tp, a7, 494
                  addi       s10, a0, 391
                  remu       s4, sp, t5
                  rem        s11, s3, s6
                  slli       s0, a0, 21
125:              fence
                  add        a5, a4, s1
                  xor        gp, s7, s1
                  csrrwi     a5, 0x340, 12
                  sra        s3, a1, s2
                  c.beqz     s1, 138f
                  bgeu       ra, t6, 148f
                  c.or       a0, a2
                  csrrw      a1, 0x340, t5
                  c.bnez     s0, 147f
                  mulhsu     a0, zero, s6
                  bge        tp, a5, 140f
                  nop
138:              mul        t5, a3, a2
                  bltu       t6, s9, 141f
140:              blt        t2, a6, 160f
141:              csrrci     s7, 0x340, 14
                  c.srai     a2, 26
                  sub        a6, s10, s8
                  slti       s2, ra, 487
                  sltu       gp, s4, s10
                  c.bnez     a1, 161f
147:              csrrsi     s4, 0x340, 1
148:              or         a2, a1, s7
                  add        a0, s3, t5
                  xor        gp, s9, zero
                  bgeu       gp, s0, 167f
                  srli       a0, a6, 7
                  nop
                  csrrsi     s7, 0x340, 22
                  c.srai     a0, 3
                  ori        a0, s0, 870
                  or         t0, s11, a3
                  beq        zero, t5, 171f
                  fence.i
160:              c.lui      s0, 1
161:              fence
                  csrrw      t0, 0x340, a2
                  or         t1, s1, s2
                  divu       zero, s10, a4
                  andi       s9, t2, 134
                  mul        t5, a2, a0
167:              c.bnez     a4, 186f
                  csrrc      s2, 0x340, s6
                  fence
                  csrrwi     a3, 0x340, 15
171:              c.srai     s0, 26
                  addi       a4, s1, 248
                  sltu       a0, tp, t1
                  divu       s7, a0, a4
                  c.srli     a5, 23
                  c.beqz     a2, 192f
                  c.addi     a1, 27
                  c.li       a7, -1
                  c.mv       a1, s10
                  mulhu      t0, s5, t0
                  sll        t2, a0, s1
                  csrrw      a7, 0x340, s6
                  c.li       t0, -1
                  bne        s7, t4, 186f
                  c.xor      s0, a5
186:              bne        t0, a4, 201f
                  csrrs      t5, 0x340, t2
                  slli       ra, s10, 17
                  c.add      a0, ra
                  sltiu      a7, zero, -957
                  xor        t1, a3, t0
192:              xori       s3, t5, 206
                  rem        s5, s9, s6
                  ori        a6, t2, -340
                  fence.i
                  sltiu      t1, t0, -453
                  auipc      s7, 177919
                  bgeu       gp, t6, 202f
                  and        s9, s4, s11
                  bgeu       a6, s10, 212f
201:              srli       zero, s9, 14
202:              csrrs      s5, 0x340, a5
                  c.xor      a2, s1
                  srai       gp, t3, 24
                  and        t0, t4, s11
                  remu       s1, s6, s0
                  c.and      a2, s1
                  c.sub      a0, a4
                  sub        s10, a7, s6
                  sub        a5, a2, t2
                  fence.i
212:              c.srli     a0, 12
                  sll        a0, a2, s10
                  csrrwi     t2, 0x340, 1
                  srai       s9, s11, 3
                  addi       s7, sp, -990
                  csrrc      s9, 0x340, s11
                  mulhsu     a6, s7, t1
                  rem        a6, t4, s8
                  lui        ra, 296425
                  mul        zero, sp, a2
                  bgeu       zero, s1, 239f
                  c.add      s10, s5
                  c.andi     a1, -1
                  andi       ra, a1, -398
                  remu       s6, s11, s9
                  c.slli     gp, 6
                  nop
                  mulh       a1, a5, s5
                  slti       zero, ra, -973
                  mulh       s2, ra, a2
                  or         a5, s8, sp
                  c.sub      a2, s0
                  lui        t5, 830842
                  c.addi     s5, 5
                  c.nop
                  c.nop
                  c.or       a0, a5
239:              beq        t4, s7, 252f
                  sltu       s0, sp, s0
                  csrrci     t6, 0x340, 0
                  bne        a5, s3, 247f
                  lui        zero, 541682
                  c.beqz     a1, 258f
                  c.add      s11, sp
                  c.beqz     a5, 249f
247:              c.sub      a3, a2
                  c.add      a3, a7
249:              blt        s11, s11, 258f
                  c.addi     t4, -1
                  c.add      s9, a2
252:              mulh       a7, t2, s2
                  xor        s2, ra, t4
                  sub        t2, s11, t0
                  bne        s3, tp, 258f
                  c.and      a5, a5
                  auipc      a3, 710255
258:              bltu       s1, t6, 278f
                  mulhsu     t2, t1, ra
                  csrrw      t1, 0x340, zero
                  c.nop
                  slli       zero, a1, 6
                  fence.i
                  csrrw      t5, 0x340, t5
                  srl        t5, t4, t2
                  csrrc      ra, 0x340, t2
                  c.xor      s1, a1
                  slt        s6, s4, t1
                  csrrs      t6, 0x340, s11
                  c.slli     ra, 11
                  lui        a3, 46599
                  c.andi     a2, 6
                  or         a7, s3, a5
                  addi       s11, a2, -318
                  csrrc      zero, 0x340, a1
                  csrrw      a7, 0x340, a7
                  mulhsu     s11, a4, gp
278:              or         t0, t0, s6
                  c.add      t2, a3
                  addi       s11, s7, 1001
                  sub        t0, a7, t0
                  fence.i
                  bgeu       a1, t1, 285f
                  ori        s11, a7, 758
285:              c.beqz     a4, 286f
286:              remu       a4, t4, s6
                  c.addi     t4, 26
                  c.nop
                  xor        t2, s2, a6
                  slt        t2, s5, s11
                  c.sub      a5, a4
                  mul        tp, t2, t4
                  addi       t1, zero, 598
                  addi       a4, t5, 321
                  c.slli     t0, 28
                  or         t1, t6, s4
                  c.mv       t0, t2
                  c.nop
                  fence.i
                  xori       tp, t6, 523
                  ori        t1, s7, -802
                  csrrs      s0, 0x340, s0
                  c.andi     a3, 15
                  sll        s11, t0, zero
                  csrrci     t1, 0x340, 22
                  or         t2, t2, zero
                  csrrs      s0, 0x340, s3
                  c.add      t2, s10
                  c.xor      s0, s0
                  mulhu      s6, s6, s7
                  fence.i
                  csrrs      s9, 0x340, ra
                  mulhu      zero, a1, t0
                  addi       s0, s6, -46
                  sll        t2, t1, a7
                  c.mv       s9, s8
                  srli       a6, s11, 6
                  blt        zero, a2, 324f
                  add        s9, t0, t6
                  and        s6, a1, s11
                  csrrsi     s10, 0x340, 24
                  lui        zero, 449171
                  c.andi     a5, -1
324:              c.add      a5, sp
                  beq        a3, t6, 333f
                  bge        t2, a1, 327f
327:              csrrwi     a0, 0x340, 5
                  csrrw      t0, 0x340, t2
                  fence
                  c.add      a7, t1
                  bge        a7, ra, 347f
                  mulhu      a6, s11, t4
333:              lui        s4, 1031018
                  slti       s3, ra, -680
                  c.srai     a1, 21
                  auipc      gp, 198287
                  c.xor      a2, a1
                  auipc      a1, 994173
                  c.sub      a5, a1
                  c.lui      t2, 6
                  blt        s7, t4, 352f
                  xori       s7, s3, 673
                  bge        t4, t1, 354f
                  c.nop
                  c.li       s9, 25
                  c.and      a4, a3
347:              divu       ra, a7, tp
                  bge        ra, t0, 361f
                  c.or       a1, a5
                  add        s11, a5, s9
                  mulhsu     t2, a1, t0
352:              c.mv       a0, t6
                  andi       tp, s9, 100
354:              csrrc      s9, 0x340, a4
                  c.addi     s5, 18
                  mulhu      ra, s11, gp
                  mulhsu     a5, t2, s7
                  c.addi     s2, -1
                  mulhu      a2, ra, s5
                  c.or       a2, a1
361:              sltu       s0, gp, t2
                  ori        a2, s7, 488
                  csrrs      t6, 0x340, t1
                  divu       s1, t1, t4
                  xori       s4, s2, 683
                  fence.i
                  c.slli     s9, 19
                  srai       s4, s9, 19
                  srl        s1, t6, s8
                  fence
                  bgeu       s9, s0, 387f
                  csrrc      a6, 0x340, a0
                  sltu       ra, s7, sp
                  c.mv       a7, a2
                  c.bnez     a2, 394f
                  bgeu       s2, s10, 387f
                  lui        s0, 530604
                  mul        a5, t0, a6
                  srl        s9, sp, t6
                  andi       t2, a4, 854
                  c.srai     a2, 31
                  c.mv       t5, s6
                  srli       a6, tp, 15
                  csrrsi     a5, 0x340, 31
                  c.and      a3, a4
                  c.add      t5, t4
387:              divu       zero, s8, s10
                  bltu       t1, t0, 403f
                  c.lui      s4, 22
                  srl        t1, a2, ra
                  c.lui      a6, 12
                  slt        s11, s10, t5
                  fence.i
394:              add        tp, ra, s0
                  c.or       a5, s0
                  sll        zero, a5, s10
                  andi       t2, a1, 131
                  divu       s0, a4, a3
                  c.andi     a2, 24
                  slli       s1, s5, 21
                  bge        zero, tp, 403f
                  mulhsu     t0, s5, a4
403:              slli       a3, t3, 2
                  remu       s9, t4, s2
                  sra        s1, t1, s10
                  csrrsi     s0, 0x340, 13
                  add        zero, s1, s1
                  bgeu       s4, s6, 422f
                  c.slli     s2, 11
                  fence.i
                  xor        t1, gp, s8
                  c.lui      a1, 30
                  beq        t4, a2, 426f
                  fence
                  slli       a5, a0, 20
                  fence
                  c.addi     t2, -1
                  c.srli     a2, 9
                  bge        t5, a1, 425f
                  c.or       a2, s0
                  mulhu      s2, a7, gp
422:              lui        s7, 891706
                  lui        t4, 646889
                  xori       t4, s7, 0
425:              add        a2, s8, s9
426:              csrrc      t2, 0x340, t2
                  c.addi     a3, 24
                  blt        a7, t1, 443f
                  c.li       t1, 17
                  csrrc      a5, 0x340, a1
                  addi       s4, t1, -511
                  mul        t2, a6, s9
                  bgeu       a7, s1, 449f
                  c.bnez     a4, 440f
                  bne        tp, s1, 437f
                  divu       s2, t2, tp
437:              csrrw      a2, 0x340, t5
                  div        s1, ra, tp
                  mulh       a6, tp, a4
440:              bltu       t5, a2, 451f
                  slti       a2, t6, 489
                  mulhu      a0, t3, s7
443:              add        a0, sp, a1
                  c.srai     a2, 24
                  csrrs      s5, 0x340, s6
                  div        a2, a4, a2
                  mulh       s6, a7, t1
                  c.sub      s1, a2
449:              xor        s2, s3, s6
                  srai       t4, a1, 17
451:              c.nop
                  c.lui      a7, 17
                  mulh       t1, sp, t5
                  bltu       s6, zero, 469f
                  c.bnez     a1, 467f
                  srli       a2, a1, 3
                  auipc      s7, 181408
                  beq        zero, s1, 473f
                  c.xor      a0, a1
                  sra        s4, s8, s4
                  sra        a7, s1, a3
                  bgeu       s9, gp, 464f
                  blt        t5, gp, 466f
464:              fence
                  csrrci     t4, 0x340, 25
466:              add        t6, s7, t6
467:              remu       ra, gp, zero
                  c.srai     a2, 29
469:              beq        a6, t5, 485f
                  bge        s4, s4, 472f
                  csrrs      s0, 0x340, t2
472:              nop
473:              c.sub      a3, s0
                  csrrs      a5, 0x340, t0
                  nop
                  remu       s11, a4, t0
                  add        t2, s10, tp
                  fence.i
                  divu       s4, a5, t0
                  or         a3, t1, s9
                  bltu       zero, s10, 484f
                  addi       a5, s5, -761
                  c.add      a1, s4
484:              andi       s2, s0, 242
485:              ori        zero, s2, 285
                  sltiu      s0, t4, -80
                  c.add      s10, s4
                  slli       t0, gp, 27
                  div        t4, t3, t0
                  c.sub      s1, s1
                  c.lui      s9, 6
                  or         ra, s11, t5
                  and        gp, s3, a3
                  bltu       t1, t1, 507f
                  blt        t1, s5, 496f
496:              slt        s9, s1, s2
                  blt        a3, s1, 508f
                  add        gp, zero, tp
                  c.nop
                  csrrwi     zero, 0x340, 9
                  sra        a1, s3, s11
                  xori       ra, s2, -453
                  sub        t1, tp, s7
                  blt        s5, a4, 521f
                  csrrsi     s7, 0x340, 27
                  mulh       t0, t0, a3
507:              c.sub      a5, a1
508:              c.sub      s1, s1
                  nop
                  andi       s11, s11, 689
                  sub        a2, s8, t3
                  c.bnez     a3, 526f
                  ori        s0, t6, -260
                  c.andi     a5, 20
                  csrrc      gp, 0x340, a3
                  ori        s5, a4, 919
                  bgeu       t2, t5, 528f
                  c.beqz     a4, 523f
                  srai       a7, s3, 5
                  c.addi     a6, 29
521:              add        a2, t4, a1
                  sltiu      s0, t2, 740
523:              lui        ra, 79328
                  beq        s10, s8, 544f
                  c.sub      s0, a3
526:              add        s11, a2, gp
                  slt        t0, tp, s11
528:              c.add      s7, s9
                  srli       t1, a4, 13
                  bgeu       a7, a0, 543f
                  rem        a1, gp, s0
                  c.addi     t5, 9
                  c.li       ra, -1
                  mulhsu     s9, a2, s6
                  sll        a6, t0, t6
                  c.nop
                  sub        t2, t3, t0
                  c.mv       s10, a1
                  bne        s10, s7, 548f
                  rem        s10, a3, ra
                  nop
                  sltu       a6, a0, t4
543:              bge        s7, t1, 557f
544:              auipc      a2, 190141
                  slti       s11, a5, -618
                  bgeu       t6, a2, 550f
                  c.addi     a6, -1
548:              or         ra, s1, t1
                  bltu       s11, a1, 564f
550:              csrrs      ra, 0x340, s10
                  srl        tp, t0, s5
                  c.srai     a5, 26
                  lui        s3, 715094
                  csrrc      a6, 0x340, a7
                  fence.i
                  c.add      t6, a2
557:              beq        a5, a7, 565f
                  mulh       s4, s8, a1
                  c.andi     a4, 4
                  srl        s6, s4, s3
                  c.addi     ra, 14
                  c.addi     a4, 14
                  mul        t6, s1, s0
564:              srl        a1, a2, t3
565:              mulhsu     s4, t0, s4
                  xor        zero, s7, s3
                  c.add      ra, t3
                  mul        a0, sp, t0
                  andi       t4, a7, -41
                  c.slli     t4, 25
                  mulh       tp, sp, t5
                  c.lui      a3, 19
                  c.mv       s0, a1
                  sra        ra, a5, s3
                  c.bnez     a4, 581f
                  c.add      t6, a7
                  srai       a0, s8, 5
                  divu       a6, s1, t0
                  c.srli     a0, 16
                  csrrwi     a0, 0x340, 26
581:              c.bnez     a1, 600f
                  sub        s2, s9, s10
                  c.addi     gp, -1
                  c.sub      a4, a2
                  sub        a4, s3, s1
                  c.add      s9, a5
                  fence
                  csrrci     ra, 0x340, 22
                  bgeu       t1, t4, 590f
590:              remu       a4, sp, a4
                  xori       s9, ra, -830
                  c.srai     s1, 9
                  csrrc      t4, 0x340, s9
                  c.or       a1, a0
                  c.li       s9, -1
                  srli       t4, s5, 0
                  csrrsi     s0, 0x340, 14
                  c.addi     t6, -1
                  srl        t0, a7, a6
600:              xori       a2, t4, 39
                  bltu       s2, a3, 614f
                  remu       s11, s5, s3
                  slti       s2, a0, -294
                  c.beqz     a3, 619f
                  c.bnez     a0, 618f
                  addi       s5, s6, 569
                  slti       gp, a5, 738
                  mulhsu     ra, s5, gp
                  sra        s4, a5, ra
                  sub        t4, s11, s9
                  auipc      s2, 732846
                  blt        a4, tp, 625f
                  c.slli     t2, 7
614:              sltu       s2, a4, s3
                  slli       tp, t2, 6
                  auipc      t4, 352302
                  c.slli     ra, 3
618:              c.andi     a3, -1
619:              c.li       a6, 14
                  c.slli     a3, 20
                  c.and      s0, s0
                  c.beqz     a5, 642f
                  c.lui      s11, 26
                  srai       ra, s9, 29
625:              bltu       a4, t6, 642f
                  c.lui      s3, 24
                  bge        s9, t0, 643f
                  sll        a7, a2, a6
                  slli       a1, s6, 21
                  addi       s11, s7, 169
                  mul        s3, ra, a6
                  and        s7, s2, tp
                  xori       s6, s9, -380
                  bge        a1, s8, 639f
                  slti       zero, s1, -755
                  c.bnez     s1, 645f
                  c.add      s9, a3
                  mulhsu     zero, t6, zero
639:              c.srli     s0, 24
                  srai       s0, ra, 24
                  nop
642:              sltu       s9, t5, s4
643:              mulh       s2, t0, t1
                  c.or       a5, s1
645:              sub        a4, a7, a5
                  addi       s2, s3, -53
                  csrrci     s4, 0x340, 3
                  c.mv       s0, s8
                  slti       s9, s9, -168
                  sltu       zero, s7, sp
                  and        s9, a4, t3
                  c.beqz     s0, 653f
653:              sub        s11, a0, s10
                  divu       s4, a3, gp
                  slt        a0, s3, t1
                  mulhu      zero, gp, zero
                  nop
                  c.bnez     a0, 664f
                  mul        t0, s2, t1
                  sltu       zero, t5, sp
                  fence
                  and        a2, tp, s4
                  sltiu      s1, s6, -694
664:              auipc      s4, 256779
                  c.and      a3, a1
                  fence.i
                  mulhsu     s3, a6, s0
                  srl        a3, gp, a6
                  slt        a2, s9, a6
                  c.beqz     a3, 676f
                  c.sub      a0, a0
                  xori       s5, s9, 184
                  slt        t5, gp, t2
                  remu       a7, a1, sp
                  c.bnez     s0, 677f
676:              c.bnez     s1, 695f
677:              fence.i
                  csrrsi     ra, 0x340, 23
                  bgeu       s8, t0, 683f
                  c.or       a2, a2
                  csrrwi     t0, 0x340, 0
                  c.slli     a7, 7
683:              c.beqz     a5, 691f
                  slli       s2, t5, 0
                  c.bnez     s1, 687f
                  sra        t6, a2, gp
687:              c.addi     t1, 21
                  srai       a2, t6, 23
                  csrrsi     s4, 0x340, 2
                  mul        zero, a1, a3
691:              srai       a5, tp, 18
                  c.srai     a0, 1
                  c.nop
                  c.beqz     s1, 706f
695:              auipc      t4, 559903
                  bgeu       a3, t5, 709f
                  bltu       gp, s11, 698f
698:              csrrc      a7, 0x340, s7
                  xori       a7, s4, -173
                  c.or       a0, a3
                  blt        s11, zero, 712f
                  sub        zero, ra, s0
                  beq        s6, tp, 714f
                  c.or       a3, s1
                  bltu       zero, t4, 719f
706:              c.beqz     s1, 720f
                  c.mv       t4, t3
                  csrrwi     s2, 0x340, 3
709:              mulhu      a5, t0, a4
                  mulhsu     a2, a2, a5
                  mulhu      s1, s8, a0
712:              slli       a6, t1, 26
                  c.andi     s0, 9
714:              rem        ra, s1, t6
                  c.beqz     a2, 730f
                  fence
                  and        s2, t1, s6
                  bltu       t5, a1, 721f
719:              remu       t5, s4, t6
720:              addi       zero, t6, -1000
721:              sltu       a5, t4, zero
                  sltiu      s11, a6, -858
                  addi       zero, a3, -741
                  sltu       s0, s8, t2
                  mulh       s0, a0, sp
                  srai       s6, a0, 22
                  c.addi     s9, 6
                  mul        s11, sp, s3
                  csrrsi     gp, 0x340, 9
730:              csrrs      t4, 0x340, a2
                  csrrsi     t0, 0x340, 28
                  sra        a7, t3, s5
                  fence.i
                  csrrci     zero, 0x340, 29
                  fence.i
                  rem        s2, a7, s11
                  c.srli     a5, 22
                  c.or       a4, a5
                  sltu       s3, a3, t1
                  c.slli     s11, 7
                  fence
                  c.and      s0, a0
                  blt        t6, a1, 745f
                  fence.i
745:              mulhsu     ra, s2, t2
                  csrrsi     a2, 0x340, 29
                  or         t2, t1, a3
                  divu       s1, t6, s6
                  andi       s9, ra, -995
                  c.addi     a6, -1
                  sra        a3, a2, a1
                  c.add      tp, gp
                  csrrc      s10, 0x340, a3
                  sra        s9, a4, s1
                  sub        s1, s11, s10
                  add        s3, s7, ra
                  c.sub      a3, a2
                  srai       a2, a0, 19
                  bne        s11, sp, 775f
                  lui        tp, 404881
                  lui        t0, 645641
                  c.srai     s0, 19
                  c.add      t2, tp
                  slli       s4, t4, 5
                  c.nop
                  ori        t5, gp, 439
                  bge        a3, s10, 782f
                  csrrsi     a3, 0x340, 23
                  bltu       s1, s3, 780f
                  remu       a7, a0, s4
                  bgeu       t4, t5, 774f
                  auipc      a4, 556438
                  and        a3, a2, s0
774:              c.mv       s1, s6
775:              c.srli     a4, 29
                  csrrci     t4, 0x340, 21
                  auipc      a0, 188364
                  srli       t1, a0, 4
                  sub        t0, a3, a3
780:              sub        t4, t6, t5
                  csrrs      t1, 0x340, s6
782:              slli       s1, a5, 10
                  srai       s11, a3, 28
                  c.srai     s1, 29
                  c.or       a2, s1
                  bge        t2, a0, 792f
                  slt        t1, s11, s0
                  lui        t6, 169905
                  slli       t0, t1, 17
                  ori        a6, s8, -684
                  xor        ra, s7, s1
792:              beq        t1, s4, 794f
                  sub        tp, s9, s1
794:              bge        a2, a7, 808f
                  csrrci     t4, 0x340, 27
                  sltiu      t5, s8, 171
                  sra        s2, a2, t4
                  c.xor      a5, a0
                  bltu       t5, a6, 814f
                  c.li       t5, 8
                  sltu       a6, a7, s8
                  c.bnez     s1, 817f
                  c.li       s10, 27
                  nop
                  xori       t1, s5, 939
                  csrrwi     s9, 0x340, 25
                  c.lui      a2, 19
808:              c.add      a4, s8
                  and        a3, s11, ra
                  c.slli     s0, 1
                  sub        s4, a7, zero
                  c.mv       s9, a2
                  csrrw      t1, 0x340, t2
814:              bltu       sp, s0, 816f
                  lui        a6, 175313
816:              mulhu      s4, s10, t0
817:              c.srai     s1, 17
                  bne        s8, a3, 829f
                  c.or       a3, s0
                  andi       a6, a6, -234
                  lui        a2, 506476
                  c.bnez     a0, 825f
                  c.add      s9, s3
                  c.and      s0, a3
825:              c.add      s6, t6
                  c.srai     s0, 18
                  xor        gp, t0, s0
                  c.lui      s7, 1
829:              xori       t1, a1, -452
                  mulhsu     s1, a2, a0
                  bge        s1, a4, 847f
                  srai       s5, a1, 20
                  srl        t4, s9, a3
                  c.srai     a5, 11
                  and        s11, a2, zero
                  c.xor      a4, a5
                  srai       tp, t3, 31
                  bne        t0, t6, 841f
                  csrrc      s5, 0x340, a3
                  fence.i
841:              c.andi     a5, -1
                  c.sub      s1, a0
                  c.beqz     a5, 845f
                  c.mv       t1, s3
845:              c.mv       s7, s1
                  c.addi     a4, -1
847:              csrrwi     t4, 0x340, 16
                  mulhu      s3, s5, a5
                  csrrci     t6, 0x340, 20
                  mulh       s2, s6, a5
                  csrrwi     s6, 0x340, 12
                  blt        s8, t5, 861f
                  bne        s8, s8, 866f
                  c.li       tp, -1
                  c.slli     a3, 6
                  srli       s6, ra, 1
                  mul        tp, t0, s1
                  csrrc      a0, 0x340, s10
                  fence
                  c.andi     a0, -1
861:              c.srli     a4, 1
                  addi       s6, s1, 488
                  beq        t1, s0, 880f
                  csrrs      s9, 0x340, s1
                  slt        t6, t3, a4
866:              slt        s4, s11, s7
                  nop
                  c.add      t6, t6
                  slli       s4, a6, 20
                  mulhu      a1, s0, a7
                  csrrw      s1, 0x340, gp
                  csrrs      a7, 0x340, zero
                  and        a5, s11, a6
                  or         tp, a3, s10
                  lui        t5, 849999
                  bltu       t6, a1, 887f
                  c.bnez     s1, 890f
                  xori       t4, t1, 149
                  c.and      a3, a4
880:              divu       a3, a6, t2
                  sub        s4, s1, a2
                  slti       s6, s9, -465
                  nop
                  sub        ra, tp, a4
                  fence.i
                  sub        s9, a4, s0
887:              div        a2, a2, sp
                  sra        t0, s8, a5
                  andi       s7, t5, 1002
890:              and        s11, a6, tp
                  sltiu      a0, sp, -908
                  fence
                  csrrci     s11, 0x340, 14
                  or         tp, t4, t5
                  csrrci     s1, 0x340, 25
                  sltu       s10, t1, t6
                  addi       s4, sp, -531
                  csrrci     a6, 0x340, 0
                  c.xor      s0, a4
                  beq        a4, sp, 916f
                  or         t2, s0, s6
                  srl        a0, s8, t4
                  c.bnez     a5, 908f
                  sltu       s1, t6, a0
                  c.add      s0, a5
                  srli       t2, a7, 23
                  auipc      ra, 102306
908:              mulhsu     t1, s1, t3
                  rem        a3, a4, t4
                  beq        t6, s2, 923f
                  fence.i
                  lui        s6, 1010431
                  sltiu      t6, s0, 847
                  c.andi     a1, 11
                  ori        a1, t1, 593
916:              csrrwi     s11, 0x340, 23
                  c.srai     s1, 2
                  bge        a5, t0, 919f
919:              blt        t4, a3, 938f
                  mulhu      ra, sp, s1
                  xor        s7, s10, t1
                  and        t5, a6, a7
923:              c.and      a3, a4
                  c.addi     gp, 6
                  div        s5, s2, t1
                  rem        s10, s9, a1
                  divu       a6, a7, s1
                  c.and      a5, a4
                  div        t5, s9, s6
                  divu       s1, zero, ra
                  sub        a2, t1, zero
                  srl        t6, t2, gp
                  srli       t4, s8, 29
                  srli       a6, gp, 7
sub_4_11:         jal        ra, 6f
0:                c.jal      18f
1:                jal        ra, 8f
2:                c.j        7f
3:                jal        gp, 11f
4:                jal        ra, 2b
5:                c.jal      0b
6:                jal        ra, 19f
7:                c.j        17f
8:                c.jal      15f
9:                jal        ra, 4b
10:               c.j        12f
11:               jal        ra, 10b
12:               c.jal      14f
13:               c.jal      21f
14:               c.j        16f
15:               jal        a4, 13b
16:               c.j        5b
17:               c.jal      3b
18:               jal        t1, 20f
19:               c.j        9b
20:               c.j        1b
21:               divu       t5, a4, s9
                  c.sub      s1, a4
                  sub        a2, s6, s9
                  auipc      s5, 978595
938:              mul        a0, gp, a2
                  srl        zero, a6, s9
                  lui        s7, 701682
                  csrrwi     s10, 0x340, 29
                  c.srli     a1, 18
                  or         zero, sp, sp
                  slt        a0, a2, a7
                  bge        t6, s7, 953f
                  c.or       s1, s1
                  slt        s1, s1, t2
                  csrrci     s4, 0x340, 3
                  c.li       a3, -1
                  bgeu       ra, a0, 964f
                  c.srli     a0, 1
                  c.sub      s0, s1
953:              csrrc      a7, 0x340, s5
                  addi       zero, a2, -831
                  bltu       a6, gp, 959f
                  or         t4, a4, a3
                  bne        s6, a7, 963f
                  c.and      s1, a3
959:              divu       s5, t6, s9
                  bgeu       ra, s5, 972f
                  blt        a5, a2, 972f
                  mul        a5, a5, a4
963:              c.andi     a3, 28
964:              srai       t5, a3, 18
                  csrrs      a4, 0x340, s11
                  fence
                  auipc      a6, 645807
                  srli       a6, a0, 7
                  and        s3, s11, s9
                  csrrs      s1, 0x340, sp
                  slti       a0, tp, -570
972:              c.bnez     a3, 973f
973:              csrrw      zero, 0x340, s9
                  fence
                  c.sub      a1, s0
                  c.lui      t1, 22
                  nop
                  slt        a7, s3, s6
                  addi       ra, t0, -447
                  c.andi     a2, -1
                  sra        a6, t6, a3
                  srai       s9, a7, 14
                  csrrw      t4, 0x340, a7
                  csrrw      s7, 0x340, t4
                  fence
                  blt        s8, a4, 1006f
                  c.nop
                  rem        t2, zero, s2
                  c.or       a5, a4
                  nop
                  blt        a6, a5, 1006f
                  csrrs      s1, 0x340, a2
                  slti       t5, a7, -551
                  slli       zero, s3, 9
                  c.nop
                  xor        a4, ra, s1
                  sltu       a7, a5, sp
                  divu       s0, t5, s9
                  c.mv       t1, t2
                  slli       s2, t3, 7
                  c.bnez     a2, 1010f
                  c.sub      a2, a0
                  csrrwi     s5, 0x340, 4
                  lui        s5, 489684
                  c.srli     a0, 28
1006:             beq        t6, s5, 1012f
                  and        s5, t4, a3
                  c.slli     ra, 2
                  slt        gp, s7, s4
1010:             xor        s7, t3, a2
                  c.nop
1012:             bge        tp, ra, 1018f
                  mulhu      t6, s2, a1
                  c.srli     a5, 20
                  xori       a1, t0, -437
                  csrrc      t2, 0x340, s2
                  rem        s0, a2, s11
1018:             srli       t6, a1, 6
                  xor        t1, a6, s4
                  xori       s11, s0, 867
                  div        tp, s0, zero
                  srl        s6, t6, a1
                  mulhsu     a4, t3, t2
                  bltu       t6, sp, 1026f
                  srai       tp, gp, 20
1026:             c.li       s10, -1
                  csrrci     t5, 0x340, 26
                  c.bnez     a3, 1040f
                  nop
                  and        s6, t6, s0
                  c.slli     a5, 13
                  addi       a4, zero, 874
                  blt        t5, s1, 1049f
                  c.sub      a1, a0
                  c.srli     a2, 18
                  mulhu      a1, sp, s4
                  c.srli     s0, 10
                  lui        s6, 423996
                  nop
1040:             srli       a2, s5, 2
                  sub        a3, s9, s0
                  c.or       a3, a4
                  xori       zero, s1, -319
                  slt        t5, a4, tp
                  c.mv       a0, s3
                  c.and      s0, a1
                  mulh       ra, s6, s8
                  mul        s7, t4, s0
1049:             fence
                  and        t4, t5, tp
                  mulhsu     s4, t1, s7
                  c.slli     s10, 4
                  and        s0, t2, t3
                  rem        a4, t5, t3
                  csrrwi     a2, 0x340, 30
                  c.li       s10, -1
                  slti       t0, s8, 952
                  c.srli     a2, 3
                  slli       s1, s9, 20
                  csrrs      a1, 0x340, t3
                  xori       s10, t5, 820
                  la         s4, region_4+3681 #start riscv_hazard_instr_stream_5
                  c.nop
                  sb         t0, 110(s4)
                  mulhsu     a2, s1, t0
                  sh         a2, -1905(s4)
                  csrrwi     a2, 0x340, 22
                  lb         ra, 277(s4)
                  csrrwi     a3, 0x340, 16
                  sb         s3, -1792(s4)
                  lbu        a3, -94(s4)
                  lh         s3, -271(s4)
                  fence
                  lb         a3, -1287(s4)
                  mulhu      a3, t0, t0
                  lbu        a3, -768(s4)
                  srai       a2, ra, 6
                  sltu       ra, a3, s3
                  lb         a2, 140(s4)
                  mul        ra, s3, ra
                  lbu        ra, -1692(s4)
                  fence.i
                  lh         s3, -1431(s4)
                  c.xor      s1, s1
                  mulh       t0, s1, a3
                  andi       s3, ra, -317
                  c.or       s1, s1
                  xor        a2, a2, a3
                  xori       ra, s3, -546
                  sb         s1, -504(s4)
                  c.sub      a2, a2
                  fence.i
                  lui        t0, 236354
                  c.andi     s1, 24
                  lb         ra, -1038(s4)
                  lbu        a2, -417(s4)
                  lbu        ra, 311(s4)
                  lb         a2, -25(s4)
                  sh         a3, -1671(s4)
                  sb         s3, -294(s4)
                  lbu        ra, 154(s4)
                  c.li       ra, 21
                  lb         a2, -67(s4)
                  nop
                  csrrs      t0, 0x340, a2
                  sb         s1, -355(s4)
                  lbu        a2, -1376(s4) #end riscv_hazard_instr_stream_5
                  csrrw      s10, 0x340, t4
                  mul        s6, s9, a4
                  sll        a1, t6, t4
                  mulhu      s3, a5, s4
                  c.bnez     s1, 1079f
                  sll        t0, a3, a0
                  or         s11, zero, s10
                  c.srli     a4, 10
                  rem        t5, t0, tp
                  xor        a5, t1, s0
                  bne        a5, s1, 1091f
                  mulhu      a5, s10, s5
                  blt        tp, s7, 1094f
                  slti       s0, zero, 714
                  c.slli     a6, 27
                  c.mv       t2, s2
                  c.nop
1079:             auipc      a1, 1012278
                  nop
                  csrrs      tp, 0x340, s2
                  c.andi     a5, 17
                  srai       s2, s6, 27
                  ori        t1, t3, -181
                  srai       s5, s3, 7
                  c.beqz     a0, 1094f
                  slt        s6, a0, a4
                  csrrwi     ra, 0x340, 20
                  or         s11, s7, a3
                  sltu       s3, a7, s5
1091:             csrrs      tp, 0x340, s8
                  lui        a7, 1721
                  blt        a0, ra, 1108f
1094:             mulhu      s1, a4, zero
                  c.sub      a0, s1
                  slti       t4, tp, 5
                  c.srai     a0, 31
                  add        a3, s1, a2
                  blt        s7, s8, 1101f
                  c.bnez     a2, 1114f
1101:             sub        a5, a0, zero
                  c.lui      a5, 18
                  mulhu      a7, a3, s3
                  c.bnez     s0, 1117f
                  c.sub      s0, a5
                  ori        zero, s8, -447
                  csrrwi     a6, 0x340, 2
1108:             csrrwi     a6, 0x340, 25
                  c.xor      a3, a1
                  c.sub      a0, a0
                  bne        t4, s9, 1116f
                  slli       ra, s2, 28
                  srai       gp, ra, 11
1114:             auipc      a4, 992624
                  c.slli     s4, 30
1116:             beq        s0, t2, 1117f
1117:             c.sub      a0, a0
                  fence
                  auipc      t2, 873031
                  c.srai     s1, 6
                  ori        a1, zero, 878
                  srl        t6, a0, a2
                  srai       t6, zero, 19
                  slti       t2, gp, 77
                  slti       tp, s2, 697
                  csrrsi     s3, 0x340, 8
                  c.or       a3, a1
                  sltiu      a5, t2, -143
                  srli       a5, a7, 30
                  mulh       s0, t3, ra
                  bgeu       t4, s7, 1142f
                  div        t1, s4, t6
                  c.xor      a0, s0
                  bge        s5, a6, 1145f
                  c.beqz     a0, 1148f
                  nop
                  c.and      a5, s0
                  c.srai     a5, 6
                  c.li       t0, 1
                  slli       s11, s4, 11
                  slt        s2, s10, tp
1142:             slti       s11, s6, 721
                  ori        zero, s9, -464
                  xori       t1, a1, -696
1145:             csrrc      a5, 0x340, s4
                  andi       t6, a7, 798
                  fence
1148:             c.add      t0, tp
                  nop
                  addi       zero, s2, 926
                  xori       s3, s1, 60
                  c.mv       s11, a2
                  csrrsi     zero, 0x340, 18
                  fence
                  c.beqz     a3, 1171f
                  nop
                  csrrwi     s10, 0x340, 0
                  srai       ra, t3, 15
                  fence
                  sll        a7, s11, tp
                  sub        ra, s6, s10
                  add        s0, s0, s4
                  mulhsu     s10, s9, s4
                  srai       s10, a1, 28
                  blt        sp, s1, 1168f
                  addi       tp, gp, -686
                  c.add      s1, tp
1168:             csrrci     zero, 0x340, 27
                  srli       s6, a3, 21
                  csrrw      gp, 0x340, sp
1171:             xor        a2, a5, ra
                  auipc      a3, 1018862
                  or         s10, s3, t1
                  csrrw      s10, 0x340, tp
                  lui        a7, 999593
                  mulhsu     a6, a1, zero
                  mulhu      t4, s5, a4
                  c.srai     a5, 7
                  beq        a7, t0, 1193f
                  nop
                  bge        zero, s10, 1184f
                  andi       s9, t5, 165
                  sltu       tp, s6, t1
1184:             sub        s4, t1, s9
                  slti       s4, a6, 100
                  rem        s11, a7, s5
                  c.and      a4, a3
                  fence
                  slli       s4, t3, 15
                  ori        t4, a3, 70
                  c.srai     a0, 11
                  c.or       a0, a0
1193:             or         s7, s6, ra
                  add        zero, s9, gp
                  divu       s1, s7, t2
                  bne        a1, s4, 1211f
                  bne        s5, s2, 1214f
                  srl        s10, s0, s0
                  csrrc      t0, 0x340, s5
                  bge        ra, s10, 1201f
1201:             add        s7, s5, a4
                  bne        s10, s11, 1213f
                  csrrci     s6, 0x340, 8
                  c.and      s1, a5
                  c.lui      t4, 27
                  c.slli     s7, 12
                  csrrsi     s10, 0x340, 18
                  lui        a6, 732611
                  nop
                  csrrwi     s10, 0x340, 25
1211:             c.and      a1, a1
                  sra        s4, a7, t5
1213:             slt        t1, s3, s11
1214:             csrrs      t2, 0x340, a0
                  andi       s2, s4, -264
                  c.nop
                  srai       s9, a0, 30
                  csrrci     s2, 0x340, 21
                  fence.i
                  fence.i
                  addi       a6, a5, -650
                  c.li       s6, 21
                  bltu       t0, tp, 1225f
                  c.lui      a5, 9
                  la         tp, region_2+7586 #start load_store_instr_stream_1
                  la         t6, region_2+3882 #start load_store_instr_stream_0
                  lh         gp, -12(tp)
                  lb         a1, 1126(t6)
                  lb         ra, -1463(t6)
                  lb         s4, -5(tp)
                  sh         s4, -886(t6)
                  sb         a0, -7(tp)
                  lhu        t2, -1832(t6)
                  lbu        s2, 125(t6)
                  lbu        zero, -15(tp)
                  lb         s2, 827(t6)
                  lbu        t1, -11(tp)
                  lh         a2, -1352(t6)
                  lb         t2, 7(tp) #end load_store_instr_stream_1
                  sh         a0, -1364(t6)
                  sb         a0, -733(t6) #end load_store_instr_stream_0
1225:             addi       a3, s6, 837
                  csrrsi     s5, 0x340, 17
                  andi       s0, s3, 355
                  c.add      a2, s1
                  c.addi     t5, -1
                  and        a6, s4, s8
                  c.mv       s9, gp
                  c.nop
                  c.and      a2, a2
                  slt        a0, a7, t3
                  and        tp, s0, s11
                  slt        t2, zero, t1
                  bne        s0, tp, 1252f
                  auipc      a0, 639236
                  sub        a6, t2, s6
                  mulh       s4, t3, s9
                  csrrc      t5, 0x340, a4
                  slt        s9, tp, t3
                  add        s1, s2, s8
                  csrrwi     a3, 0x340, 4
                  beq        t1, t3, 1249f
                  c.andi     s1, -1
                  c.xor      a2, a0
                  csrrci     a3, 0x340, 29
1249:             lui        t4, 1003956
                  xori       tp, a4, -950
                  and        s1, zero, t2
1252:             add        t6, t0, gp
                  c.mv       s10, s8
                  csrrw      a7, 0x340, a7
                  auipc      t5, 330911
                  c.srai     a1, 29
                  c.slli     t1, 16
                  csrrs      a4, 0x340, s10
                  beq        s4, a3, 1272f
                  c.mv       t1, t4
                  c.andi     a4, 6
                  c.xor      a2, a2
                  lui        t4, 300623
                  sra        s7, t0, sp
                  c.li       t4, 17
                  c.srai     a4, 30
                  c.nop
                  csrrc      t2, 0x340, a5
                  csrrwi     s9, 0x340, 7
                  sra        s0, ra, s0
                  nop
1272:             fence
                  srai       s2, t5, 24
                  bne        s5, t1, 1276f
                  xor        a6, s4, s2
1276:             srli       zero, a0, 25
                  c.slli     a7, 6
                  bltu       s6, a6, 1286f
                  fence
                  bne        a3, t4, 1282f
                  slti       a5, t4, -638
1282:             srl        a4, s9, t6
                  sra        s10, s10, zero
                  blt        s5, t3, 1300f
                  lui        s6, 529790
1286:             sll        t4, a6, a3
                  divu       t2, s0, s1
                  mulhsu     s1, s3, s9
                  mulh       tp, s9, tp
                  sub        s7, t1, s3
                  mul        gp, s7, t4
                  sub        s11, t3, a4
                  add        s3, t5, s10
                  bltu       t2, a5, 1305f
                  divu       s5, s3, t1
                  mul        s7, a7, s3
                  srli       s9, gp, 23
                  sra        s5, s8, a6
                  nop
1300:             c.li       a6, -1
                  slt        t2, s8, s1
                  mul        s2, s8, s8
                  auipc      zero, 986624
                  addi       s10, a2, 338
1305:             or         s7, s1, a2
                  csrrwi     t2, 0x340, 9
                  mulhsu     s2, t5, a2
                  mul        a6, t5, t1
                  c.srli     s1, 10
                  c.srli     a1, 22
                  c.add      a1, s8
                  c.sub      a2, a5
                  c.lui      a5, 20
                  csrrci     t5, 0x340, 21
                  divu       s3, a3, a4
                  csrrc      s11, 0x340, t2
                  beq        s3, t3, 1333f
                  c.bnez     a1, 1322f
                  csrrwi     t5, 0x340, 15
                  bge        s3, a1, 1325f
                  srl        a3, s7, s7
1322:             c.bnez     a1, 1324f
                  mul        s0, t5, t5
1324:             c.sub      a2, a4
1325:             fence
                  c.srli     a5, 19
                  remu       s2, t6, s8
                  slli       a7, s1, 22
                  bgeu       a4, s6, 1340f
                  c.and      a2, a5
                  xor        s0, s7, s4
                  c.bnez     a5, 1335f
1333:             srli       s1, s6, 0
                  xori       a5, a0, 464
1335:             beq        s6, t3, 1336f
1336:             c.nop
                  slli       a0, t5, 5
                  c.sub      a1, a2
                  c.lui      t4, 13
1340:             divu       a2, a7, a7
                  mul        s1, a3, s9
                  sra        s7, s4, a1
                  lui        a2, 248318
                  or         a5, a3, s7
                  c.beqz     a0, 1351f
                  xor        s2, a4, t2
                  slti       t1, s6, 1019
                  csrrci     s9, 0x340, 30
                  c.li       gp, 14
                  c.slli     t5, 19
1351:             add        s1, t4, t1
                  mulh       s10, a1, zero
                  csrrw      t2, 0x340, a7
                  bge        a6, s0, 1355f
1355:             c.beqz     s0, 1367f
                  csrrc      t6, 0x340, s3
                  or         a1, a5, s6
                  csrrc      a3, 0x340, ra
                  sub        s11, s9, a5
                  c.beqz     a0, 1375f
                  c.li       a7, 6
                  c.or       a5, s1
                  c.or       a5, a3
                  c.xor      a3, a3
                  fence
                  ori        t4, ra, -934
1367:             addi       s9, s10, -738
                  c.mv       a4, a5
                  c.li       a2, 24
                  sll        t6, s2, s4
                  csrrwi     s3, 0x340, 3
                  c.srli     a4, 30
                  srli       s7, t2, 6
                  or         s11, a6, a1
1375:             c.lui      tp, 26
                  lui        a2, 23105
                  srai       t2, s1, 14
                  divu       zero, a1, tp
                  rem        s9, s9, a7
                  fence
                  ori        gp, s8, -132
                  bge        a6, t3, 1388f
                  remu       a6, t4, t2
                  c.slli     a5, 22
                  c.srai     s1, 24
                  c.and      a1, a1
                  div        t4, ra, s5
1388:             csrrw      a4, 0x340, t0
                  addi       a3, sp, -735
                  slli       ra, sp, 16
                  csrrsi     s3, 0x340, 7
                  c.add      t4, s2
                  addi       s1, a6, -277
                  csrrw      a5, 0x340, s1
                  csrrsi     a2, 0x340, 23
                  auipc      a0, 662189
                  mulh       t0, a4, gp
                  c.add      s9, s3
                  bltu       s7, s8, 1418f
                  bne        s8, a6, 1415f
                  c.xor      a5, a5
                  c.andi     a2, 19
                  fence
                  csrrci     a1, 0x340, 7
                  sltu       a1, s0, a2
                  remu       a0, a0, s0
                  xori       a0, s5, -270
                  andi       s9, s9, 974
                  csrrc      a7, 0x340, s11
                  csrrwi     t6, 0x340, 15
                  beq        s1, s3, 1425f
                  bge        s2, s0, 1426f
                  c.srai     s0, 7
                  slti       gp, s2, 456
1415:             c.srli     a0, 19
                  c.bnez     a5, 1429f
sub_4_18:         jal        ra, 7f
0:                jal        ra, 14f
1:                jal        ra, 9f
2:                c.j        8f
3:                c.jal      1b
4:                c.j        2b
5:                c.j        10f
6:                c.j        0b
7:                c.jal      5b
8:                jal        ra, 15f
9:                c.jal      13f
10:               c.jal      12f
11:               jal        ra, 16f
12:               c.j        4b
13:               jal        ra, 6b
14:               c.jal      11b
15:               c.jal      3b
16:               sra        a0, a7, s1
                  blt        s5, a7, 1434f
1418:             mulh       s4, s11, s11
                  divu       s5, s9, s4
                  bne        a1, s3, 1431f
                  bgeu       a2, s10, 1430f
                  c.mv       a7, t1
                  csrrsi     zero, 0x340, 14
                  div        s2, a5, sp
1425:             addi       ra, s5, 402
1426:             csrrw      zero, 0x340, t4
                  srli       a2, s7, 25
                  c.addi     s5, -1
1429:             csrrci     s7, 0x340, 22
1430:             srli       s5, a0, 5
1431:             c.or       s1, s1
                  xori       a2, t6, 924
                  c.add      a4, s5
1434:             mulhu      s0, s9, s6
                  csrrci     t0, 0x340, 7
                  nop
                  c.mv       s1, s8
                  c.addi     a4, -1
                  csrrs      s4, 0x340, a7
                  bne        s7, a3, 1453f
                  c.and      a1, a3
                  c.or       a5, s0
                  c.or       a4, a0
                  add        a5, s11, a4
                  rem        gp, tp, a7
                  c.andi     a1, -1
                  rem        zero, a1, s3
                  add        a4, a7, s3
                  c.li       a3, -1
                  c.and      a3, s1
                  mulhsu     a7, a3, a4
                  mul        t4, s2, ra
1453:             csrrw      t4, 0x340, zero
                  addi       t6, gp, -452
                  ori        s7, t6, -194
                  c.srai     s1, 6
                  c.add      a0, t1
                  ori        s10, s0, 277
                  fence.i
                  csrrc      t6, 0x340, s11
                  slti       t5, s11, -140
                  bltu       s2, gp, 1482f
                  bge        s1, t2, 1466f
                  c.xor      a0, a5
                  c.bnez     a1, 1480f
1466:             beq        a1, s8, 1482f
                  csrrs      s3, 0x340, s0
                  srl        t0, s10, a7
                  blt        a0, s9, 1480f
                  fence.i
                  c.nop
                  c.nop
                  csrrsi     a7, 0x340, 31
                  c.xor      a0, s0
                  c.addi     a7, -1
                  c.xor      s1, a2
                  slli       zero, a4, 22
                  xori       ra, a5, -620
                  c.sub      a3, a1
1480:             csrrwi     a3, 0x340, 20
                  c.srli     a1, 20
1482:             bge        s1, s8, 1498f
                  c.and      a5, s1
                  csrrc      a7, 0x340, s10
                  c.nop
                  csrrwi     t4, 0x340, 9
                  andi       s9, s4, 761
                  auipc      a2, 530141
                  auipc      s5, 655510
                  sub        a5, a1, t5
                  c.andi     a1, -1
                  csrrw      tp, 0x340, a6
                  srl        a3, t3, a4
                  csrrci     s0, 0x340, 15
                  sra        a2, tp, s9
                  c.lui      a7, 18
                  bne        s4, a3, 1510f
1498:             c.add      s2, t1
                  sltiu      t5, a1, -146
                  sll        a5, a3, s11
                  c.slli     t6, 23
                  srai       s3, a2, 29
                  bne        tp, sp, 1505f
                  sltiu      a6, t2, -191
1505:             slt        s10, s8, a4
                  sub        a4, tp, t2
                  xor        t4, s10, a6
                  c.sub      a4, s1
                  remu       s2, t5, sp
1510:             c.or       a4, a2
                  fence.i
                  auipc      a5, 1001049
                  c.or       a5, s1
                  and        s4, t3, s2
                  mulh       t0, tp, tp
                  c.sub      a1, s1
                  c.andi     a3, -1
                  slli       s2, t1, 4
                  slli       gp, s3, 15
                  rem        s0, gp, a7
                  csrrw      s6, 0x340, t0
                  c.addi     a1, -1
                  andi       s10, ra, -85
                  slt        a5, s11, a5
                  csrrci     s5, 0x340, 23
                  c.srai     a4, 1
                  beq        a6, s0, 1544f
                  xori       tp, s5, 52
                  c.andi     a3, -1
                  c.slli     s3, 2
                  slt        s3, t5, s11
                  c.nop
                  or         s6, a0, t5
                  andi       a2, s0, -45
                  add        s0, s8, t4
                  fence.i
                  c.mv       ra, ra
                  bltu       zero, a1, 1540f
                  ori        a4, s5, -449
1540:             c.addi     a4, 17
                  c.add      a5, t3
                  remu       s0, t5, t3
                  c.sub      s1, a2
1544:             sltu       s0, ra, a7
                  c.xor      s1, a3
                  mulhu      gp, t1, zero
                  srl        s9, t0, a3
                  mulhu      t0, s4, s10
                  csrrc      a1, 0x340, s5
                  slt        s11, tp, ra
                  fence
                  c.mv       a2, s6
                  bgeu       a1, s0, 1567f
                  lui        a1, 759229
                  beq        gp, s9, 1558f
                  c.bnez     a0, 1560f
                  csrrsi     s6, 0x340, 12
1558:             c.bnez     s0, 1573f
                  slti       t1, a7, -603
1560:             csrrs      s3, 0x340, a6
                  srl        a3, sp, ra
                  c.mv       tp, s8
                  c.addi     a4, -1
                  bgeu       a4, t6, 1576f
                  bltu       gp, a3, 1585f
                  divu       ra, s7, s9
1567:             c.nop
                  sra        ra, s11, a5
                  add        s6, t1, s3
                  sltiu      tp, s10, 955
                  ori        s1, zero, -97
                  c.xor      a0, a5
1573:             c.mv       a7, a7
                  bltu       t3, s6, 1588f
                  srai       s2, sp, 27
1576:             c.lui      t5, 25
                  c.add      t5, s9
                  c.addi     a6, 14
                  mulhu      s10, t2, a4
                  sltiu      s11, s7, 1017
                  lui        t2, 626150
                  auipc      t0, 381090
                  mulhu      a7, s7, a4
                  add        s5, a1, tp
1585:             srl        a1, zero, tp
                  sra        a2, a5, t1
                  sub        s2, a7, tp
1588:             c.srai     a1, 4
                  blt        t3, zero, 1600f
                  sltu       a0, s0, zero
                  srli       t1, s2, 6
                  c.slli     t1, 23
                  mulhu      ra, t3, s0
                  csrrw      a7, 0x340, a4
                  c.sub      a0, a5
                  srl        a5, s1, t0
                  or         a1, s1, s5
                  c.mv       s10, a0
                  and        a1, gp, s3
1600:             srai       gp, s3, 30
                  andi       s11, a5, 397
                  bltu       s10, a3, 1613f
                  c.slli     a1, 2
                  mul        s2, tp, s2
                  mulhsu     t4, s2, zero
                  lui        t1, 990904
                  csrrs      s7, 0x340, a0
                  slt        a3, s7, s9
                  bltu       a2, s2, 1624f
                  c.sub      a5, s0
                  bltu       t0, a0, 1612f
1612:             srli       s0, a0, 10
1613:             bgeu       s7, s1, 1616f
                  c.bnez     a3, 1620f
                  sltu       a4, t6, tp
1616:             xori       a7, s11, 498
                  c.srli     a0, 17
                  mulh       a7, a0, s11
                  c.and      a1, a0
1620:             csrrc      s5, 0x340, a7
                  ori        t5, t1, -197
                  csrrw      s11, 0x340, a6
                  sltiu      a1, t6, 734
1624:             c.bnez     s0, 1626f
                  srai       ra, t1, 19
1626:             srl        t0, ra, s7
                  c.slli     s2, 29
                  or         a2, s1, s2
                  add        s9, a2, s2
                  xor        ra, a1, a3
                  c.srai     s1, 28
                  c.slli     a2, 12
                  c.or       a3, s0
                  csrrsi     t0, 0x340, 21
                  c.srai     a1, 15
                  remu       t6, s2, s11
                  andi       s7, gp, -460
                  c.srli     a5, 2
                  c.mv       t4, t6
                  c.lui      gp, 23
                  bltu       a0, t4, 1647f
                  and        s0, a3, t0
                  bne        a5, t6, 1656f
                  c.lui      a7, 8
                  c.andi     a5, -1
                  xori       s4, t2, 247
1647:             blt        t5, s9, 1652f
                  beq        a3, zero, 1657f
                  c.slli     a1, 20
                  mul        a7, a4, s5
                  c.li       s6, -1
1652:             mul        zero, s10, s10
                  div        s6, s11, a4
                  bge        a1, a7, 1669f
                  c.addi     a5, 8
1656:             bge        a0, s5, 1657f
1657:             sub        s10, s0, s10
                  c.add      a2, a2
                  rem        tp, t6, t4
                  c.lui      s4, 24
                  c.add      s9, tp
                  mul        a3, s7, s0
                  bltu       s2, gp, 1682f
                  bltu       t0, t2, 1677f
                  csrrw      s2, 0x340, s8
                  and        t0, s2, s5
                  addi       s9, s1, -772
                  blt        zero, a0, 1676f
1669:             bltu       tp, tp, 1672f
                  c.andi     s0, 25
                  add        a5, t4, a4
1672:             rem        a1, s11, s11
                  sll        s11, t1, a2
                  addi       a1, zero, -987
                  c.add      s7, t1
1676:             csrrc      s10, 0x340, s11
1677:             slt        s11, a2, a6
                  c.srli     a4, 2
                  addi       a3, t1, 193
                  c.beqz     a3, 1699f
                  or         tp, s7, zero
1682:             srl        s3, t6, a0
                  mulhsu     ra, s0, s4
                  c.slli     s4, 2
                  div        s1, a1, s5
                  c.mv       t2, s4
                  c.add      a6, a4
                  lui        s9, 966999
                  c.and      a3, a5
                  srli       ra, t3, 17
                  c.addi     s9, -1
                  rem        zero, s5, ra
                  bne        sp, s1, 1694f
1694:             sll        ra, t6, a3
                  csrrw      a3, 0x340, s3
                  mulh       s2, a5, ra
                  srli       s6, a6, 11
                  blt        t1, t6, 1704f
1699:             slt        a6, t2, a0
                  slti       t6, a0, 928
                  beq        s5, t0, 1714f
                  mul        t5, zero, s3
                  beq        t3, a1, 1706f
1704:             slli       s3, a7, 17
                  srli       a5, a5, 10
1706:             c.nop
                  bne        a6, sp, 1718f
                  srai       a5, a2, 17
                  auipc      t1, 270634
                  bge        zero, t3, 1726f
                  csrrsi     s4, 0x340, 12
                  srli       ra, s2, 30
                  c.xor      a2, a0
1714:             lui        zero, 269376
                  bgeu       a0, a6, 1729f
                  and        a4, s0, s6
                  or         s6, s4, sp
1718:             blt        s3, s4, 1738f
                  fence.i
                  c.add      s5, gp
                  bge        s9, s1, 1730f
                  mulhsu     t6, s2, a6
                  csrrc      a6, 0x340, a1
                  c.li       t1, -1
                  mulhu      t0, a1, a5
1726:             c.sub      s0, a3
                  c.sub      a4, a4
                  xor        s5, a5, s6
1729:             remu       s10, a7, s9
1730:             csrrc      s1, 0x340, s5
                  c.srai     s1, 26
                  c.mv       a5, t2
                  xori       s11, t2, 447
                  c.srai     a4, 22
                  c.bnez     a5, 1746f
                  srl        a7, t6, s0
                  c.srai     a1, 27
1738:             sra        s9, t3, s6
                  sltu       s3, s7, s1
                  c.and      a3, a3
                  c.or       a3, s0
                  sltu       t1, s4, s3
                  c.nop
                  c.sub      a4, a1
                  add        a6, t0, t0
1746:             c.xor      a1, a5
                  c.sub      a1, s0
                  addi       s9, gp, -561
                  sub        a1, s8, a4
                  c.srai     a1, 27
                  mulhsu     a7, s8, a0
                  csrrsi     s6, 0x340, 12
                  auipc      t4, 183517
                  ori        s4, a0, -490
                  c.or       a1, a2
                  c.nop
                  c.nop
                  srli       a3, tp, 17
                  and        gp, t1, a6
                  bgeu       t1, tp, 1776f
                  srli       a0, s6, 10
                  beq        s2, a2, 1764f
                  bge        t0, s2, 1768f
1764:             xori       s3, t1, 242
                  add        a6, s9, s1
                  c.and      a0, a4
                  csrrsi     a1, 0x340, 25
1768:             csrrc      s10, 0x340, tp
                  mulhu      a5, s2, s11
                  c.nop
                  beq        s9, s4, 1775f
                  sltiu      t2, a1, 563
                  auipc      s1, 411468
                  c.andi     a2, -1
1775:             addi       t2, s3, 722
1776:             csrrci     a6, 0x340, 13
                  add        s3, s7, ra
                  bne        a1, gp, 1793f
                  csrrs      s4, 0x340, ra
                  ori        s9, t4, -748
                  csrrsi     a7, 0x340, 23
                  csrrc      a6, 0x340, t2
                  c.bnez     s0, 1800f
                  mulh       s6, t4, zero
                  slt        s6, gp, s10
                  csrrsi     tp, 0x340, 1
                  sra        a6, s4, t5
                  srl        t0, s4, t1
                  bne        t2, s7, 1804f
                  c.bnez     a1, 1804f
                  mulh       a0, a2, t6
                  c.nop
1793:             c.and      a2, a5
                  c.mv       a6, a5
                  c.slli     t5, 22
                  c.mv       a6, tp
                  csrrwi     t2, 0x340, 23
                  mulh       s11, s0, s2
                  c.slli     s5, 3
1800:             remu       gp, t1, a7
                  sll        a6, s4, s3
                  srli       tp, a0, 0
                  mulh       s1, s9, t6
1804:             csrrw      s1, 0x340, t3
                  ori        a0, s10, 712
                  c.beqz     a5, 1808f
                  csrrwi     ra, 0x340, 5
1808:             slt        s10, a2, a6
                  csrrci     s0, 0x340, 19
                  and        a4, t6, zero
                  blt        t0, t2, 1819f
                  beq        s0, s3, 1814f
                  c.lui      t2, 26
1814:             c.slli     a7, 18
                  csrrw      s10, 0x340, a5
                  mulhu      t5, s1, s4
                  slt        a5, a4, ra
                  c.xor      a4, a4
1819:             add        a2, s1, t6
                  c.li       s1, 9
                  csrrs      s4, 0x340, t1
                  c.or       a0, a3
                  c.addi     s1, -1
                  bgeu       s4, s8, 1835f
                  beq        ra, gp, 1838f
                  c.add      a0, tp
                  csrrw      gp, 0x340, s9
                  slt        t4, s9, gp
                  srai       s9, ra, 17
                  c.lui      t4, 30
                  csrrc      a0, 0x340, a4
                  xor        t1, s5, t4
                  c.nop
                  bgeu       t1, zero, 1849f
1835:             slti       t5, a6, -141
                  div        s9, s9, s6
                  bge        a2, a3, 1838f
1838:             sltiu      a6, t3, -1014
                  mulhu      a2, gp, s2
                  srai       s11, a3, 20
                  csrrs      s5, 0x340, t0
                  slt        a1, s9, s8
                  c.mv       a3, sp
                  remu       s3, s3, s11
                  bltu       s7, t1, 1858f
                  div        t1, s5, t3
                  bne        a0, s10, 1853f
                  sub        a7, s8, a1
1849:             div        a1, ra, a4
                  mulhsu     s9, s2, a0
                  c.srli     a0, 23
                  andi       a1, s11, -226
1853:             bge        s8, t0, 1865f
                  mul        t1, sp, s11
                  fence
                  c.nop
                  beq        sp, a0, 1872f
1858:             c.bnez     s0, 1871f
                  lui        a5, 1029882
                  or         s3, s8, s5
                  sll        a3, s6, a1
                  bgeu       a1, a3, 1878f
                  xor        t2, t5, s4
                  mulhu      t2, ra, zero
1865:             slli       t6, zero, 13
                  nop
                  c.nop
                  bgeu       zero, a6, 1873f
                  addi       gp, t2, 445
                  lui        t6, 591558
1871:             csrrw      s1, 0x340, t3
1872:             fence.i
1873:             rem        a6, t5, a2
                  sub        s10, a0, gp
                  mulh       t5, s6, t6
                  c.addi     s5, -1
                  c.sub      a4, a0
1878:             slt        a0, s0, a1
                  xor        s3, t3, t4
                  sltu       tp, t2, sp
                  fence.i
                  c.andi     a4, 8
                  ori        t5, a0, -398
                  bge        s3, a5, 1895f
                  mulh       a6, a1, t1
                  csrrwi     tp, 0x340, 14
                  c.xor      s0, a4
                  sub        a0, s10, s1
                  slt        s1, s2, s5
                  blt        s10, t6, 1901f
                  c.nop
                  srai       s11, a5, 20
                  auipc      a5, 595611
                  nop
1895:             c.addi     a2, 15
                  c.srai     a4, 6
                  c.mv       tp, a0
                  c.srai     s1, 30
                  csrrsi     s11, 0x340, 1
                  c.nop
1901:             auipc      t2, 333236
                  c.addi     t5, -1
                  rem        gp, gp, a6
                  c.lui      a1, 8
                  mulhsu     t6, s4, ra
                  xor        s1, t6, a4
                  c.li       a2, -1
                  csrrsi     s7, 0x340, 0
                  mulhsu     a2, s10, s4
                  nop
                  fence.i
                  c.slli     a4, 16
                  c.bnez     s0, 1919f
                  c.srli     a0, 14
                  csrrsi     t1, 0x340, 8
                  mulhsu     t2, s5, s2
                  addi       s4, s10, 212
                  bgeu       t4, s11, 1921f
1919:             mul        a7, sp, s2
                  csrrci     a7, 0x340, 18
1921:             c.li       a7, -1
                  c.srli     a5, 5
                  xor        zero, gp, ra
                  c.beqz     s1, 1925f
1925:             bltu       s1, gp, 1939f
                  bgeu       s1, s2, 1928f
                  c.srli     a2, 10
1928:             sltu       s5, t5, zero
                  fence.i
                  c.nop
                  c.mv       tp, s0
                  srl        t6, ra, a2
                  csrrc      tp, 0x340, s9
                  c.mv       a1, s7
                  c.mv       a6, gp
                  sltu       t2, s6, s7
                  slli       s10, s0, 2
                  c.add      a4, s2
1939:             auipc      zero, 970966
                  csrrci     tp, 0x340, 9
                  add        a2, t6, a0
                  mul        s4, t4, tp
                  slli       a7, sp, 23
                  c.beqz     s1, 1963f
                  mul        ra, s1, s6
                  srai       s2, s8, 0
                  slli       s10, s0, 30
                  mul        zero, a4, a1
                  c.mv       s2, a2
                  srai       s10, t2, 30
                  xor        s9, a7, a6
                  c.or       a3, a4
                  sub        t2, s7, a3
                  c.andi     a5, -1
                  c.sub      a1, s0
                  remu       a1, s2, s2
                  c.nop
                  beq        s3, s10, 1959f
1959:             mulhu      gp, s6, s8
                  sub        t6, s0, s11
                  srai       t6, a3, 7
                  add        a1, a6, s1
1963:             rem        a0, t4, a4
                  c.lui      a6, 21
                  lui        t6, 268870
                  c.or       a3, a3
                  c.srai     a2, 30
                  and        s0, t2, a4
                  slli       gp, tp, 11
                  mulh       t0, a1, a6
                  slti       a3, s2, -550
                  c.and      a3, s1
                  c.addi     s2, -1
                  c.andi     a4, 12
                  sra        s0, s7, t4
                  mul        tp, sp, s1
                  mulhsu     a6, s0, t1
                  bne        t6, s3, 1980f
                  sltu       t4, a3, a4
1980:             sra        a2, a6, s11
                  andi       a1, s8, 237
                  srli       t0, gp, 31
                  c.srli     a4, 29
                  c.srli     a4, 25
                  div        s3, t2, a0
                  auipc      s3, 32234
                  xor        a7, t5, zero
                  mul        t1, t3, s6
                  div        s10, tp, s5
                  slti       a5, s3, -578
                  csrrci     s3, 0x340, 22
                  fence.i
                  slti       a4, ra, -426
                  csrrw      t4, 0x340, a2
                  ori        zero, s2, 161
                  c.xor      a3, a0
                  slli       s10, s5, 23
                  or         ra, s7, a0
                  or         s6, t6, zero
                  sra        tp, ra, s3
                  add        s4, tp, a7
                  c.addi     a1, -1
                  divu       t4, ra, t4
                  slt        t1, s3, a4
                  c.sub      a4, s0
                  csrrwi     s9, 0x340, 9
                  or         a2, a2, t3
                  bge        s11, a3, 2023f
                  andi       s1, t1, 672
                  csrrs      a6, 0x340, t2
                  remu       gp, s6, s1
                  srli       s11, a3, 3
                  fence
                  div        s9, a3, a4
                  addi       s10, s6, -773
                  sub        a3, s9, s10
                  c.beqz     a2, 2032f
                  csrrc      s4, 0x340, s7
                  beq        s1, a6, 2031f
                  srl        s1, t1, s11
                  srl        s6, t5, s4
                  c.li       a0, 4
2023:             c.slli     a3, 7
                  rem        a0, t5, s6
                  c.mv       s10, t5
                  slli       t5, s10, 21
                  csrrwi     t2, 0x340, 0
                  xor        a1, t6, sp
                  csrrc      s11, 0x340, t5
                  srai       s5, s9, 31
2031:             c.slli     s2, 23
2032:             srai       t0, a2, 24
                  and        s9, s2, t4
                  xor        t6, tp, t3
                  blt        s9, t0, 2043f
                  c.slli     a6, 23
                  remu       s9, zero, s0
                  rem        a6, a1, s3
                  c.nop
                  sub        s7, a1, t2
                  sltiu      tp, t2, -30
                  auipc      s9, 609492
2043:             sra        ra, s4, s7
                  c.and      a1, a1
                  srl        ra, a6, s7
                  mul        t1, gp, zero
                  srai       s11, tp, 28
                  c.sub      s0, a3
                  c.andi     s1, 15
                  mulh       s10, gp, zero
                  c.li       t5, -1
                  c.srai     a4, 1
                  csrrc      t1, 0x340, a5
                  andi       t1, t6, -678
                  bge        a3, s6, 2059f
                  sltiu      a0, s2, 445
                  or         a1, t5, a0
                  c.mv       s4, s11
2059:             c.li       a3, -1
                  andi       s3, t0, -282
                  mul        a3, a6, a7
                  c.addi     a7, -1
                  blt        s1, ra, 2083f
                  csrrs      s1, 0x340, s10
                  srl        a5, s11, s11
                  c.lui      s2, 4
                  c.slli     s0, 31
                  csrrci     a2, 0x340, 18
                  addi       t2, s4, -765
                  mul        s6, s10, s8
                  c.nop
                  csrrs      zero, 0x340, s10
                  csrrc      t1, 0x340, ra
                  xori       s9, t5, 114
                  blt        s1, s9, 2084f
                  c.lui      a1, 28
                  fence
                  bgeu       a4, a0, 2094f
                  c.and      a1, a0
                  and        a2, t5, s6
                  auipc      a6, 894895
                  csrrwi     s3, 0x340, 11
2083:             csrrci     s6, 0x340, 24
2084:             sltiu      tp, t3, 487
                  csrrsi     s4, 0x340, 28
                  sub        t0, a2, t4
                  c.and      a2, a4
                  sub        a3, sp, s0
                  divu       zero, t5, a1
                  auipc      a2, 776787
                  c.xor      a1, a5
                  lui        s3, 2624
                  ori        zero, a4, -477
2094:             xor        t1, s11, a6
                  srl        a1, t2, a7
                  mul        s5, s2, s1
                  csrrwi     t0, 0x340, 31
                  xori       a0, a7, 534
                  c.xor      a5, a1
                  c.nop
                  sub        a2, a0, gp
                  divu       a7, t5, t0
                  div        t6, a0, a7
                  divu       s11, s2, a4
                  c.mv       a1, s9
                  add        a1, s7, sp
                  addi       a0, s6, 825
                  sll        s5, s10, a5
                  c.beqz     a5, 2122f
                  mulhsu     ra, s2, a6
                  csrrci     t0, 0x340, 12
                  c.mv       s5, s0
                  csrrw      s10, 0x340, s11
                  c.and      a2, s1
                  addi       a5, s8, -144
                  c.or       a1, a3
                  c.srai     s0, 5
                  bne        zero, t1, 2135f
                  c.xor      a1, s0
                  csrrci     s9, 0x340, 17
                  remu       s3, a6, t0
2122:             and        s1, a1, s3
                  blt        t1, tp, 2134f
                  c.slli     t0, 25
                  remu       s2, t6, s4
                  c.srli     a5, 12
                  beq        sp, a5, 2130f
                  ori        s0, t5, -157
                  c.sub      s0, a4
2130:             c.xor      a4, s0
                  lui        s7, 137661
                  mulhsu     ra, s0, a1
                  bgeu       s1, a4, 2135f
2134:             divu       a1, t4, t2
2135:             ori        t2, t0, -693
                  slli       a5, a2, 20
                  csrrci     s6, 0x340, 4
                  c.add      tp, a0
                  c.li       s6, -1
                  bge        s10, t4, 2153f
                  addi       s6, t3, -731
                  srl        a1, t6, tp
                  c.add      s3, s8
                  ori        t0, t1, 512
                  blt        t2, s11, 2159f
                  srli       tp, s9, 16
                  xor        s11, s8, a5
                  nop
                  c.sub      a0, a1
                  divu       t0, a2, t4
                  bne        t0, zero, 2157f
                  csrrw      s11, 0x340, a7
2153:             bltu       s6, s8, 2168f
                  andi       t2, s8, -468
                  xor        s4, a1, t0
                  sll        t4, s9, s10
2157:             sltiu      a0, t4, 593
                  and        s9, s11, a4
2159:             mulhsu     s0, t6, s10
                  rem        s6, sp, tp
                  blt        a1, tp, 2166f
                  fence.i
                  csrrc      a7, 0x340, s9
                  xor        s2, zero, gp
                  c.andi     a2, 6
2166:             c.and      a5, s0
                  csrrs      ra, 0x340, s7
2168:             c.andi     s1, 20
                  xor        a0, a6, a0
                  c.andi     a4, 9
                  remu       s1, t4, a2
                  csrrci     t4, 0x340, 25
                  bge        sp, t0, 2193f
                  sltu       a7, a5, t4
                  mulhu      s5, a2, s3
                  auipc      s9, 1014090
                  c.li       tp, 15
                  c.andi     s1, -1
                  c.add      a2, s6
                  addi       s5, s1, -54
                  blt        t3, s10, 2196f
                  slt        t4, a1, s10
                  srl        s1, ra, gp
                  beq        s4, s10, 2188f
                  srli       a4, t4, 1
                  c.srli     a4, 19
                  xori       s10, t1, 292
2188:             c.add      t4, a1
                  csrrsi     t6, 0x340, 16
                  c.bnez     a1, 2204f
                  lui        a2, 611527
                  sltiu      t0, s5, 501
2193:             sll        ra, t5, a0
                  remu       a2, a6, t0
                  blt        s1, s10, 2212f
2196:             c.bnez     a4, 2199f
                  c.lui      s4, 22
                  srl        a6, s7, s11
2199:             srai       s5, t0, 9
                  sub        t6, t6, a1
                  c.bnez     a1, 2202f
2202:             addi       t1, s4, 889
                  csrrwi     s0, 0x340, 31
2204:             bne        a1, a2, 2215f
                  rem        s1, a4, s1
                  c.slli     s7, 9
                  c.or       s0, a3
                  addi       t4, s10, 64
                  csrrc      t5, 0x340, a0
                  mulh       a4, s10, t0
                  add        a5, a3, s11
2212:             c.mv       s2, s5
                  mulh       a3, tp, s9
                  remu       a0, s9, gp
2215:             c.andi     a5, 5
                  sltu       a7, t1, s6
                  csrrsi     s10, 0x340, 8
                  rem        t1, tp, s0
                  c.slli     s11, 7
                  xor        a7, s7, a0
                  slli       t5, a2, 18
                  fence
                  c.add      a1, s4
                  mulhu      a3, t5, s3
                  blt        a4, s9, 2236f
                  sll        a3, s10, a4
                  csrrs      s7, 0x340, gp
                  c.bnez     a5, 2231f
                  mulh       t4, s4, s6
                  sltu       zero, s8, s0
2231:             csrrc      gp, 0x340, t0
                  fence.i
                  beq        a4, s2, 2246f
                  c.xor      a5, a2
                  divu       a3, a7, t5
2236:             ori        gp, s8, 542
                  or         a0, s7, a7
                  auipc      a2, 878156
                  c.nop
                  and        s3, s10, tp
                  auipc      t4, 263325
                  bltu       s7, s1, 2256f
                  c.add      s7, s6
                  add        zero, tp, t6
                  mul        s3, a2, s7
2246:             slli       s10, a1, 4
                  nop
                  c.lui      ra, 30
                  sub        a5, a5, ra
                  mulh       s10, t1, s5
                  c.mv       a0, t5
                  mulhsu     a7, s5, s6
                  c.mv       a5, sp
                  mulhsu     a6, s7, t0
                  slt        s10, zero, t6
2256:             mulhu      a6, zero, s7
                  lui        a5, 691373
                  auipc      s6, 235342
                  sltiu      t1, t0, 745
                  mulhu      t0, s6, t4
                  csrrw      gp, 0x340, s0
                  csrrs      s1, 0x340, a3
                  sltu       s11, s7, s4
                  c.xor      a2, a1
                  csrrci     s9, 0x340, 26
                  c.srai     a4, 29
                  c.nop
                  c.add      t1, s4
                  mul        t0, s11, t1
                  mulhu      a3, a6, a5
                  c.bnez     a2, 2284f
                  c.add      t4, a3
                  xor        t6, a0, a3
                  c.bnez     a2, 2289f
                  bgeu       s0, t5, 2277f
                  c.srai     a4, 3
2277:             ori        s1, t1, 932
                  c.lui      a3, 19
                  beq        s4, t0, 2290f
                  csrrw      s2, 0x340, s4
                  srli       ra, tp, 14
                  remu       t1, a6, a0
                  slt        t1, t4, t0
2284:             or         a1, t2, gp
                  c.srai     s1, 23
                  blt        gp, a7, 2295f
                  blt        s1, s0, 2303f
                  c.or       s1, a3
2289:             csrrc      s10, 0x340, t6
2290:             or         a4, s11, gp
                  csrrci     a3, 0x340, 27
                  mul        s2, s1, s4
                  c.slli     t4, 7
                  mul        s5, a2, s8
2295:             bne        a3, t1, 2303f
                  slli       t0, t4, 12
                  c.lui      s2, 25
                  c.srli     s0, 9
                  fence.i
                  c.andi     a1, 12
                  c.nop
                  srli       a4, a7, 0
2303:             csrrc      a4, 0x340, ra
                  c.addi     s2, 11
                  c.slli     s5, 14
                  bge        ra, s4, 2325f
                  xori       a0, t4, -481
                  mulh       t4, s0, a3
                  mulhsu     t5, t6, a4
                  c.sub      a4, a5
                  c.or       a4, a1
                  andi       s6, t3, -975
                  c.lui      s5, 14
                  divu       s5, zero, t1
                  csrrci     ra, 0x340, 7
                  c.li       s10, 7
                  slli       s3, a1, 30
                  ori        t6, a3, 607
                  bltu       t0, a0, 2325f
                  rem        s3, a5, s1
                  csrrw      a6, 0x340, s9
                  c.li       a1, 4
                  c.srli     a5, 3
                  sltiu      s0, s1, 229
2325:             auipc      s3, 84444
                  c.xor      a2, s1
                  c.and      s1, a5
                  div        gp, a7, a3
                  c.andi     a1, -1
                  srai       a6, s5, 25
                  fence.i
                  auipc      s4, 104971
                  c.srai     a1, 18
                  bne        s1, s1, 2347f
                  csrrs      gp, 0x340, t0
                  c.add      s7, s0
                  rem        a4, s9, s5
                  fence
                  sltu       a5, s6, a0
                  slt        s1, s6, t0
                  and        a6, a4, s8
                  c.slli     a3, 8
                  addi       s1, a2, -170
                  fence
                  div        s0, s7, a2
                  c.andi     s1, 5
2347:             add        t0, zero, s11
                  c.srai     a1, 10
                  sra        s10, t2, ra
                  fence
                  csrrc      s5, 0x340, t4
                  rem        s9, s0, gp
                  ori        s5, a6, 873
                  csrrw      tp, 0x340, s7
                  bltu       t6, t4, 2371f
                  csrrwi     a2, 0x340, 23
                  auipc      s6, 766127
                  c.beqz     a1, 2359f
2359:             c.add      a0, t5
                  blt        s1, a2, 2362f
                  csrrci     t6, 0x340, 17
2362:             fence
                  srli       a6, a6, 9
                  rem        s11, a1, t1
                  addi       t6, a2, 215
                  auipc      t1, 807937
                  c.andi     a4, 29
                  sltiu      s0, t0, -185
                  andi       t1, s4, 486
                  c.xor      a0, a0
2371:             mulh       s5, s11, a7
                  bltu       ra, t6, 2378f
                  mulhu      gp, s3, t6
                  sltu       a1, s2, s1
                  remu       a2, a0, t3
                  slli       s3, a7, 23
                  divu       t4, ra, t3
2378:             slli       a1, a3, 31
                  bgeu       s2, s11, 2391f
                  or         s9, a7, s10
                  bltu       t2, s2, 2383f
                  sltu       t0, t2, s2
2383:             csrrw      s4, 0x340, a6
                  xor        zero, a5, a2
                  c.srai     a4, 11
                  auipc      s9, 618945
                  c.add      t1, t6
                  beq        zero, t4, 2389f
2389:             auipc      t0, 75231
                  bne        t3, s2, 2406f
2391:             bltu       t5, t1, 2406f
                  c.nop
                  c.sub      a1, a1
                  csrrwi     s4, 0x340, 8
                  c.beqz     a2, 2407f
                  c.sub      a0, a4
                  csrrs      s7, 0x340, s4
                  sltiu      t2, a6, -122
                  bne        a3, sp, 2413f
                  div        tp, s10, s2
                  csrrsi     ra, 0x340, 23
                  slt        s1, s2, a3
                  remu       tp, ra, a6
                  beq        s1, t1, 2407f
                  c.srai     s0, 16
2406:             nop
2407:             xor        s6, s6, a7
                  lui        t5, 990164
                  xori       t5, ra, 305
                  addi       s6, s4, 453
                  bgeu       t2, a2, 2424f
                  fence.i
2413:             sra        a1, s4, s3
                  sll        s6, s2, t5
                  c.slli     a6, 2
                  bgeu       s4, a6, 2429f
                  beq        a7, a6, 2428f
                  csrrsi     a3, 0x340, 19
                  la         s10, region_3+143 #start riscv_load_store_rand_instr_stream_4
                  lbu        t0, 51(s10)
                  sh         t1, 1(s10)
                  sb         a6, -52(s10)
                  lh         t4, 21(s10)
                  lh         a3, -17(s10)
                  c.andi     a4, -1
                  fence
                  lb         s3, 32(s10)
                  c.mv       s2, s1
                  slti       a4, a1, 964
                  lh         s0, 51(s10)
                  lbu        a5, -8(s10)
                  lhu        a2, -63(s10)
                  lw         s9, -43(s10)
                  c.xor      a0, a4
                  mulhu      zero, s10, s3
                  c.srai     a1, 2
                  sb         s2, -37(s10)
                  lb         s9, 54(s10)
                  srai       s9, t2, 20
                  c.xor      a1, s1
                  sb         tp, -60(s10)
                  sb         s11, 62(s10)
                  add        a4, a5, t2
                  sb         sp, 54(s10)
                  xori       t2, a3, 977
                  sb         t2, -30(s10)
                  sb         s4, 50(s10)
                  csrrwi     t6, 0x340, 13
                  lb         s1, 64(s10)
                  sh         t0, -9(s10)
                  lbu        s0, 36(s10)
                  lw         s4, -51(s10)
                  sb         s1, 12(s10)
                  lh         ra, -39(s10)
                  sb         a7, 51(s10)
                  lb         gp, -10(s10)
                  sltu       ra, s4, t1
                  lh         s7, -49(s10)
                  c.and      a5, a4
                  and        gp, tp, t3
                  sb         s10, 44(s10)
                  lui        t5, 1008400
                  lbu        a4, 59(s10)
                  lb         a2, -14(s10)
                  sb         sp, 32(s10) #end riscv_load_store_rand_instr_stream_4
                  sll        a2, t4, a7
                  c.and      s0, a2
                  and        s4, a0, t3
                  blt        t1, gp, 2441f
                  c.and      a2, a0
2424:             srli       s10, t3, 4
                  or         a0, s3, a6
                  c.srli     a0, 21
                  andi       s11, a1, 162
2428:             mulhsu     a7, zero, a1
2429:             csrrsi     s11, 0x340, 24
                  c.add      s10, a5
                  c.beqz     a0, 2440f
                  fence.i
                  c.sub      a3, a5
                  slt        s6, t1, s9
                  sub        a0, s7, t1
                  c.xor      a5, a0
                  remu       tp, s2, s7
                  sll        a7, t2, s9
                  c.srli     a4, 5
2440:             bgeu       s1, t1, 2460f
2441:             srli       t5, s7, 21
                  csrrwi     a1, 0x340, 23
                  c.xor      a5, a3
                  c.slli     a1, 1
                  lui        a2, 869182
                  bgeu       a2, t0, 2454f
                  mulh       a4, s4, t2
                  bltu       gp, a4, 2459f
                  divu       t5, a3, s5
                  fence
                  c.and      a2, a2
                  slli       a3, t0, 11
                  bgeu       s8, a3, 2468f
2454:             c.addi     t0, -1
                  sub        s7, t3, t0
                  c.beqz     a3, 2472f
                  bge        s1, s7, 2471f
                  slti       t1, s9, -280
2459:             fence
2460:             auipc      a7, 894272
                  xor        t2, s5, s11
                  ori        a0, s7, -39
                  c.srai     a1, 5
                  fence
                  c.and      s0, a2
                  srl        s7, a3, s4
                  c.sub      s1, a2
2468:             divu       ra, s7, a1
                  beq        s3, s0, 2473f
                  mul        a5, zero, s11
2471:             c.or       a2, a1
2472:             c.beqz     a2, 2474f
2473:             c.add      t2, s11
2474:             c.beqz     a4, 2480f
                  sltu       s9, s6, gp
                  slt        zero, s4, t3
                  mulh       s6, a5, a5
                  csrrwi     t5, 0x340, 5
                  c.lui      s9, 4
2480:             slli       ra, a3, 9
                  andi       zero, a5, -1012
                  csrrsi     zero, 0x340, 7
                  c.bnez     a1, 2500f
                  beq        a7, s11, 2499f
                  addi       s4, t6, -397
                  sltu       s2, a0, t3
                  mulhu      s5, a3, s2
                  and        s0, s7, a4
                  fence
                  srai       s4, t3, 8
                  c.slli     s10, 30
                  c.slli     t4, 1
                  c.bnez     a4, 2495f
                  nop
2495:             sra        s3, t2, sp
                  mulhu      t5, s9, a5
                  c.beqz     s0, 2508f
                  divu       s11, s0, a1
2499:             sll        a2, zero, s0
2500:             xor        s2, tp, a5
                  bne        s4, a1, 2504f
                  slli       s9, t6, 10
                  srai       s4, s5, 15
2504:             slti       zero, s11, 492
                  remu       t2, s3, s8
                  c.add      t2, a0
                  auipc      s2, 123458
2508:             mulh       s10, s0, a7
                  c.andi     s0, 0
                  divu       ra, sp, s8
                  slt        s6, t4, s9
                  slt        s2, t0, a4
                  slti       s9, zero, 139
                  add        s1, a3, s10
                  fence
                  mulh       a7, a0, s8
                  mulhsu     gp, s11, s4
                  c.sub      a5, a5
                  csrrs      tp, 0x340, s11
                  rem        a6, t4, s10
                  bne        t6, s1, 2523f
                  beq        zero, a2, 2535f
2523:             ori        s2, a4, 395
                  csrrwi     s4, 0x340, 20
                  c.srai     a3, 29
                  c.and      s1, a0
                  c.xor      s1, s1
                  c.andi     s1, 17
                  csrrwi     s0, 0x340, 1
                  c.mv       s9, gp
                  remu       s9, t4, tp
                  c.andi     a4, -1
                  mulhu      s0, t6, s10
                  srli       t4, t4, 15
2535:             c.xor      a0, a4
                  mulh       gp, ra, a3
                  andi       s11, a4, -264
                  blt        s6, s4, 2544f
                  c.srli     a1, 17
                  csrrw      t0, 0x340, s1
                  bgeu       s11, s11, 2546f
                  csrrci     t4, 0x340, 10
                  bgeu       s2, s6, 2544f
2544:             csrrc      s3, 0x340, t4
                  c.srli     a2, 25
2546:             c.add      s4, s0
                  lui        a0, 64040
                  csrrc      s1, 0x340, s1
                  c.srai     a4, 18
                  csrrs      tp, 0x340, t5
                  mulhu      gp, a4, s0
                  fence.i
                  c.and      a5, a2
                  slti       s2, s0, 433
                  blt        s4, s7, 2556f
2556:             csrrs      a1, 0x340, t2
                  ori        s1, s0, -130
                  bge        t0, a6, 2572f
                  c.srli     a2, 11
                  or         s4, a1, t3
                  sltiu      tp, zero, -472
                  c.mv       s0, s4
                  c.bnez     a0, 2578f
                  bge        a6, a7, 2579f
                  sra        s3, s9, s6
                  ori        t2, a3, 697
                  divu       a3, s8, s0
                  and        s9, t2, s3
                  bge        s6, s7, 2583f
                  xori       a7, a1, -864
                  andi       ra, s9, 896
2572:             mul        a6, s11, t1
                  ori        zero, t2, -572
                  c.srai     a3, 4
                  csrrs      t6, 0x340, a6
                  addi       zero, t6, -722
                  srli       s2, s7, 8
2578:             srli       t2, s0, 30
2579:             mulhu      t5, t0, s2
                  mulh       s0, t4, s6
                  csrrs      a3, 0x340, a2
                  nop
2583:             bne        sp, t5, 2600f
                  c.mv       gp, s5
                  bltu       s7, a1, 2589f
                  mulh       a1, s9, t6
                  and        s5, a5, gp
                  bge        t3, a5, 2591f
2589:             mulhsu     s5, a3, a6
                  bne        t6, s3, 2603f
2591:             bge        s0, s5, 2600f
                  xor        s6, a3, t0
                  c.bnez     a4, 2606f
                  c.add      s3, s6
                  c.srli     a4, 2
                  c.lui      a4, 20
                  csrrwi     gp, 0x340, 26
                  bge        s9, a3, 2599f
2599:             c.mv       a0, s7
2600:             c.andi     a1, 20
                  add        a4, s2, t5
                  csrrci     tp, 0x340, 11
2603:             c.mv       t0, t1
                  c.mv       s4, s6
                  csrrsi     a4, 0x340, 7
2606:             sll        a7, a7, t2
                  csrrc      s0, 0x340, s11
                  xor        gp, zero, a2
                  ori        a4, s4, -458
                  csrrc      s5, 0x340, ra
                  slti       s9, s1, 223
                  slti       a1, a1, -236
                  csrrsi     s1, 0x340, 1
                  slti       t2, t3, -105
                  c.srli     a5, 10
                  slti       a7, s1, 467
                  addi       a3, ra, 104
                  and        ra, s2, t3
                  c.srli     a4, 20
                  blt        gp, a3, 2632f
                  slt        gp, t6, s2
                  c.beqz     a1, 2641f
                  c.bnez     s1, 2625f
                  divu       a7, t5, a4
2625:             c.or       a3, s0
                  div        zero, s6, a5
                  c.sub      a5, a5
                  csrrwi     s3, 0x340, 4
                  and        a1, t3, gp
                  c.nop
                  csrrc      a6, 0x340, a3
2632:             fence
                  c.addi     s11, -1
                  divu       a4, a4, s0
                  c.add      s3, a1
                  csrrwi     a0, 0x340, 17
                  slli       zero, s2, 10
                  bge        s3, s8, 2654f
                  c.nop
                  mulh       t2, s3, s0
2641:             divu       a4, a4, t3
                  bge        zero, s1, 2647f
                  c.li       a7, 14
                  sltu       t1, tp, s9
                  sltiu      s6, a3, -757
                  lui        ra, 762686
2647:             mul        a5, a2, s9
                  srl        a3, s4, s10
                  mulhu      s10, s2, a1
                  xori       tp, a5, 243
                  beq        s8, s9, 2671f
                  fence.i
                  csrrci     t4, 0x340, 8
2654:             bgeu       zero, s3, 2665f
                  c.add      s4, t2
                  rem        s1, s1, a5
                  csrrwi     s6, 0x340, 30
                  rem        s11, a7, s5
                  c.slli     s2, 26
                  c.xor      a5, s1
                  csrrwi     t6, 0x340, 9
                  mulhsu     s5, ra, ra
                  csrrw      s10, 0x340, s9
                  c.lui      a3, 11
2665:             c.add      s1, s11
                  add        t5, s7, s0
                  c.andi     s1, -1
                  csrrwi     s7, 0x340, 7
                  csrrwi     s7, 0x340, 8
                  slt        a5, zero, s3
2671:             c.and      s1, a0
                  sub        a5, t6, s6
                  c.or       a3, a2
                  srli       s1, zero, 26
                  c.andi     a4, -1
                  sub        s7, sp, t6
                  or         t0, s4, a7
                  sub        s10, a7, gp
                  bge        s9, t1, 2695f
                  sltiu      s3, s1, 800
                  slti       t1, a7, 791
                  blt        s9, s4, 2684f
                  c.nop
2684:             mulh       a1, a6, s0
                  sltiu      s9, a7, -832
                  c.bnez     a3, 2697f
                  slli       gp, s11, 15
                  mulhu      a4, a0, s0
                  remu       s0, s8, t1
                  sltiu      s6, a2, 433
                  bltu       a4, a0, 2697f
                  csrrs      t6, 0x340, a7
                  nop
                  csrrs      s5, 0x340, a1
2695:             andi       a3, tp, 549
                  bgeu       t3, s3, 2709f
2697:             c.or       a3, a2
                  csrrw      zero, 0x340, s4
                  sll        s1, t5, s9
                  lui        a2, 693098
                  nop
                  c.andi     a5, -1
                  csrrsi     a2, 0x340, 27
                  csrrci     s1, 0x340, 1
                  andi       s0, ra, -536
                  sra        s11, a2, s9
                  andi       s6, a4, 154
                  divu       a4, s1, s9
2709:             divu       a1, a6, a1
                  mul        t0, s1, t0
                  andi       zero, a1, -446
                  mulh       s10, s11, sp
                  c.beqz     a5, 2715f
                  remu       t5, a5, s7
2715:             csrrci     tp, 0x340, 27
                  addi       s10, t1, 957
                  srai       s9, s2, 18
                  lw         ra, 4(sp)
                  sll        s4, t6, s5
                  c.add      gp, s6
                  mulh       s0, t3, a1
                  addi       sp, sp, 28
                  c.andi     a2, -1
                  sltiu      a5, s6, -556
                  and        t4, s9, ra
                  div        zero, sp, t0
4669:             c.jr x1
sub_5:            c.beqz     a0, sub_5_stack_p
sub_5_stack_p:    addi       sp, sp, -60
                  sltiu      t5, a3, 798
                  sltiu      a7, s3, 521
                  sw         ra, 4(sp)
                  sra        t2, t3, s1
                  la         gp, region_2+293 #start load_store_instr_stream_2
                  la         a4, region_2+4764 #start load_store_instr_stream_1
                  la         s0, region_2+7335 #start load_store_instr_stream_0
                  lbu        s5, -11(gp)
                  lbu        s5, 5(a4)
                  lbu        ra, -2(s0)
                  lbu        s3, -9(a4)
                  sb         gp, 10(s0)
                  lh         a2, 1(gp)
                  sb         s7, 4(s0)
                  lbu        s5, 0(gp)
                  lh         s7, -8(a4)
                  lb         s6, 4(gp)
                  lb         s4, 0(gp)
                  sb         t6, -7(a4)
                  lb         s4, 5(a4)
                  lb         s2, 3(a4)
                  lb         t4, 6(gp)
                  sb         gp, -16(s0)
                  lhu        s3, 3(gp)
                  lbu        s2, -16(s0)
                  lb         a6, 1(gp)
                  sb         s1, 3(a4)
                  sb         s0, -15(a4)
                  lb         s2, 6(s0)
                  sb         t5, -5(a4)
                  sh         t1, -3(gp)
                  lbu        a7, -12(gp) #end load_store_instr_stream_2
                  lbu        s6, 3(a4) #end load_store_instr_stream_1
                  lbu        tp, 0(s0) #end load_store_instr_stream_0
                  la         s5, region_3+262 #start load_store_instr_stream_3
                  la         s3, region_3+285 #start load_store_instr_stream_1
                  lhu        s1, -15(s3)
                  sb         a2, 0(s5)
                  la         a7, region_3+3 #start load_store_instr_stream_0
                  lbu        s10, -9(s3)
                  sb         gp, -4(s3)
                  lb         zero, 11(s5)
                  lh         t2, 269(a7)
                  lb         t1, -6(s3)
                  la         ra, region_3+504 #start load_store_instr_stream_2
                  lbu        t1, -7(s5)
                  lb         t1, -8(s5)
                  sh         t0, 331(a7)
                  lbu        a6, -490(ra)
                  lbu        zero, -8(s3)
                  sb         s5, -3(s5)
                  lh         s10, -362(ra)
                  sb         t2, 6(ra)
                  lw         a3, 169(a7)
                  lh         s1, -66(ra)
                  sb         s5, 14(s5)
                  sh         s1, -9(s3)
                  sb         t3, 239(a7)
                  lbu        s9, 13(s5) #end load_store_instr_stream_3
                  lbu        s1, -497(ra)
                  sb         a0, -353(ra)
                  sh         a2, 15(s3)
                  lbu        a3, -97(ra)
                  lb         t2, 5(s3) #end load_store_instr_stream_1
                  lb         s10, -143(ra) #end load_store_instr_stream_2
                  lh         s6, 497(a7) #end load_store_instr_stream_0
sub_5_8:          jal        ra, 4f
0:                jal        t1, 26f
1:                c.jal      24f
2:                c.j        17f
3:                jal        t1, 25f
4:                jal        ra, 23f
5:                c.jal      3b
6:                jal        ra, 8f
7:                c.j        22f
8:                jal        s7, 18f
9:                c.j        15f
10:               c.j        9b
11:               jal        ra, 16f
12:               c.j        2b
13:               c.j        20f
14:               jal        ra, 13b
15:               jal        t1, 0b
16:               jal        ra, 14b
17:               c.jal      29f
18:               c.jal      12b
19:               c.j        10b
20:               jal        ra, 7b
21:               c.j        28f
22:               c.jal      6b
23:               c.jal      27f
24:               c.jal      19b
25:               jal        ra, 11b
26:               jal        ra, 30f
27:               c.j        5b
28:               c.jal      1b
29:               jal        a4, 21b
30:               c.srli     s1, 10
                  la         gp, region_1+6580 #start riscv_hazard_instr_stream_4
                  sb         s11, -245(gp)
                  sb         a6, -1(gp)
                  lhu        s4, -98(gp)
                  mul        a2, s11, t2
                  sb         s4, -239(gp)
                  fence.i
                  c.nop
                  c.mv       a6, s11
                  sb         s11, -237(gp)
                  c.and      a2, a3
                  sb         s4, -221(gp)
                  sltiu      a3, a3, 145
                  sb         a2, -54(gp)
                  lui        a2, 769449
                  c.and      a2, a3
                  rem        a3, s4, s4
                  c.srli     a3, 23
                  and        s4, s4, a3
                  fence.i
                  sh         s4, -10(gp)
                  sb         s4, -84(gp)
                  lui        t2, 600093
                  lb         s4, -56(gp)
                  sb         a2, 67(gp)
                  sb         a6, 154(gp)
                  sll        a6, s4, s11
                  lbu        a2, 1(gp)
                  c.addi     a6, 14
                  lb         a2, -155(gp)
                  lb         a6, 236(gp)
                  sw         t2, -144(gp)
                  lbu        s4, -52(gp)
                  c.slli     s4, 28
                  sub        t2, a2, a6
                  csrrw      s11, 0x340, a6
                  lb         s4, 2(gp)
                  lbu        s11, -165(gp)
                  c.and      a3, a3
                  c.add      a3, a2
                  andi       s4, s4, 602
                  c.and      a2, a3
                  lhu        t2, 6(gp)
                  sltiu      a6, s11, -741
                  csrrc      t2, 0x340, s4
                  sh         s4, 86(gp)
                  csrrw      a6, 0x340, a3
                  lb         s11, -66(gp)
                  slli       s11, s11, 9
                  sb         a6, -241(gp) #end riscv_hazard_instr_stream_4
sub_5_7:          jal        ra, 3f
0:                c.jal      12f
1:                jal        t1, 0b
2:                c.j        6f
3:                c.j        2b
4:                c.jal      19f
5:                jal        t1, 1b
6:                c.jal      13f
7:                c.j        17f
8:                jal        t0, 16f
9:                jal        t1, 23f
10:               c.j        7b
11:               c.jal      5b
12:               c.j        4b
13:               jal        a0, 11b
14:               c.jal      10b
15:               jal        t0, 21f
16:               c.j        25f
17:               jal        a2, 22f
18:               jal        s2, 14b
19:               c.jal      9b
20:               c.j        8b
21:               jal        t1, 24f
22:               c.j        15b
23:               c.jal      18b
24:               jal        gp, 20b
25:               or         a7, ra, tp
                  la         a4, region_0+556 #start riscv_load_store_rand_instr_stream_0
                  auipc      s0, 892901
                  fence
                  lb         s11, -4(a4)
                  sh         t0, 0(a4)
                  srli       t1, a6, 21
                  sb         s11, -12(a4)
                  sw         a4, 8(a4)
                  c.mv       s1, t2
                  c.andi     s0, 9
                  c.xor      s0, a5
                  sb         tp, 1(a4)
                  lbu        s4, 11(a4)
                  sb         a4, 12(a4)
                  csrrsi     a0, 0x340, 8
                  addi       a0, t6, -498
                  slli       s11, t3, 9
                  sltu       t4, sp, s8
                  slti       s2, ra, -333
                  lb         s4, -9(a4)
                  lbu        s3, 3(a4)
                  csrrc      t0, 0x340, a6
                  and        s11, s11, a4
                  csrrs      s0, 0x340, a4
                  lb         a0, 9(a4)
                  c.xor      a0, a4
                  srli       s6, s10, 24
                  sh         a2, 16(a4)
                  sw         sp, -12(a4) #end riscv_load_store_rand_instr_stream_0
                  la         s0, region_0+3663 #start riscv_hazard_instr_stream_5
                  sltiu      a1, t5, 851
                  lb         a1, -1653(s0)
                  lb         t2, -632(s0)
                  c.lui      t2, 27
                  sh         s11, -861(s0)
                  lb         t2, -1760(s0)
                  lb         s11, -1403(s0)
                  lb         t0, -1394(s0)
                  csrrw      s11, 0x340, s11
                  lb         t0, -1267(s0)
                  c.or       a1, a1
                  lb         a1, -206(s0)
                  csrrc      s2, 0x340, s11
                  lbu        s2, -201(s0)
                  sb         a1, -1560(s0)
                  c.mv       s11, s2
                  lbu        s2, -918(s0)
                  slli       s11, t0, 13
                  xor        t2, a1, t5
                  sb         t5, -230(s0)
                  addi       t0, s11, 953
                  lbu        s11, -608(s0)
                  lw         t5, 333(s0)
                  lhu        s2, 91(s0)
                  sb         t5, -1734(s0)
                  sb         t2, -814(s0)
                  lbu        a1, -16(s0)
                  lbu        t2, 116(s0)
                  lbu        t0, -483(s0)
                  c.mv       t0, t5
                  slt        s11, t2, t2
                  lb         t0, -1673(s0)
                  lui        t2, 158134
                  lbu        a1, -636(s0)
                  sb         t2, -348(s0)
                  lbu        t0, -852(s0)
                  lb         s2, -4(s0)
                  lb         t0, -736(s0)
                  lbu        s2, -1050(s0)
                  lbu        t0, 380(s0)
                  srai       t2, s11, 26
                  lb         s11, -224(s0)
                  c.addi     s2, -1
                  sb         t2, -438(s0) #end riscv_hazard_instr_stream_5
                  la         a2, region_0+1699 #start load_store_instr_stream_3
                  la         a7, region_4+3236 #start load_store_instr_stream_2
                  la         s9, region_1+3638 #start load_store_instr_stream_1
                  lb         a0, -1969(a7)
                  la         s6, region_2+20 #start load_store_instr_stream_0
                  sb         a7, 1894(s9)
                  sh         s5, 3(a2)
                  lbu        t1, -679(a7)
                  lhu        t6, -8(s6)
                  lw         zero, 13(a2)
                  sb         s9, -1578(a7)
                  sh         t3, 144(s9)
                  sh         s9, -14(s6)
                  lhu        tp, 12(s6)
                  lb         a4, 8(a2)
                  lw         t4, 1494(s9)
                  lbu        s10, -966(a7)
                  lbu        gp, 3(s6)
                  sb         a1, -922(a7)
                  lh         t1, 0(s6)
                  lbu        t5, 15(a2)
                  sb         a2, 1129(s9)
                  lb         s3, -1463(a7)
                  lb         t1, 1179(s9) #end load_store_instr_stream_1
                  lb         t4, -1568(a7)
                  lbu        s10, -1232(a7) #end load_store_instr_stream_2
                  lbu        t2, -16(a2) #end load_store_instr_stream_3
                  lhu        t0, -12(s6) #end load_store_instr_stream_0
                  la         a6, region_1+6532 #start load_store_instr_stream_1
                  lhu        a0, 932(a6)
                  la         t5, region_4+3273 #start load_store_instr_stream_3
                  la         s11, region_2+1928 #start load_store_instr_stream_2
                  lb         t2, 771(s11)
                  la         s10, region_0+3843 #start load_store_instr_stream_0
                  sh         a5, -7(t5)
                  la         t4, region_3+259 #start load_store_instr_stream_4
                  sb         s6, -40(s10)
                  sh         s7, -646(s11)
                  lbu        a4, -1447(a6)
                  sh         t6, -7(t5)
                  lb         s9, 2(t4)
                  lb         a4, 11(t5)
                  lbu        s4, 10(t4)
                  sb         t0, 689(a6)
                  lb         gp, 95(s10)
                  lbu        t2, -488(a6)
                  sb         t2, -174(s11)
                  lb         t0, 1306(a6)
                  sb         s7, 199(s10)
                  sb         s8, 2(t4)
                  sw         a6, -7(t4)
                  lb         t6, -403(s11)
                  lb         s3, 198(s10)
                  lbu        s2, 5(t4)
                  lbu        ra, 2(t4)
                  lb         a2, 186(s10)
                  lh         s5, -1084(s11)
                  lbu        a0, -4(t4)
                  lhu        s3, 15(t4) #end load_store_instr_stream_4
                  lb         s5, -201(s10)
                  lhu        s4, 177(s10)
                  lbu        a2, 14(t5)
                  sb         a1, -1251(s11)
                  sb         a5, -843(a6)
                  lb         a0, -164(s10)
                  lb         s9, -14(s10)
                  lbu        zero, -1063(s11)
                  lbu        ra, 1639(a6) #end load_store_instr_stream_1
                  sb         zero, 5(t5) #end load_store_instr_stream_3
                  lbu        s9, -457(s11) #end load_store_instr_stream_2
                  lbu        gp, 220(s10) #end load_store_instr_stream_0
                  la         s10, region_1+8014 #start riscv_hazard_instr_stream_3
                  lbu        a3, 14(s10)
                  lb         s1, 2(s10)
                  sw         s2, 14(s10)
                  mulh       a3, s1, s1
                  sltiu      s9, t1, 673
                  c.or       a3, a3
                  lb         t1, 12(s10)
                  lb         t1, -14(s10)
                  lbu        s1, -5(s10)
                  add        t1, a3, s9
                  lbu        a3, 10(s10)
                  csrrs      s9, 0x340, s9
                  c.sub      s1, a3
                  lb         s1, -10(s10)
                  lb         s9, -1(s10)
                  lb         s9, 3(s10)
                  lbu        a3, 9(s10)
                  lhu        t1, 12(s10)
                  lbu        t0, 1(s10)
                  sw         s1, 14(s10)
                  mulh       s2, s1, t1
                  lb         s9, 13(s10)
                  sb         s1, 15(s10)
                  and        s1, a3, s9
                  sb         s2, -6(s10)
                  csrrci     t1, 0x340, 12
                  lbu        s2, 7(s10)
                  xori       s2, t0, 308
                  lbu        s1, -15(s10)
                  lhu        t1, -4(s10)
                  slti       a3, s1, -952
                  lb         s1, -7(s10)
                  lb         t1, 13(s10)
                  lb         t0, -7(s10)
                  lb         t1, 13(s10)
                  sb         t0, -9(s10) #end riscv_hazard_instr_stream_3
                  la         t2, region_0+3831 #start load_store_instr_stream_2
                  la         s1, region_1+9671 #start load_store_instr_stream_1
                  lb         s10, -21(s1)
                  lb         s5, 56(t2)
                  la         s0, region_3+261 #start load_store_instr_stream_0
                  la         gp, region_2+5660 #start load_store_instr_stream_3
                  lbu        s9, -35(s1)
                  lbu        t4, 15(s0)
                  sh         a5, 57(s1)
                  lhu        tp, -15(s1)
                  lhu        a4, -31(s1)
                  lbu        t1, -50(s1)
                  sb         s8, -12(s0)
                  sb         s5, -158(gp)
                  sh         a3, -7(s0)
                  lhu        s11, -146(gp)
                  lh         t6, -5(s0)
                  lbu        s3, -35(s1)
                  lw         a4, -156(gp)
                  lh         a6, -43(t2)
                  lb         a6, 7(t2)
                  sb         a1, 16(s0)
                  sb         s11, -38(t2)
                  sh         s10, 5(s0)
                  sh         t6, -53(t2)
                  lbu        t5, -95(gp)
                  sb         a4, 4(s1)
                  sb         tp, -12(s0)
                  lb         a0, 34(s1) #end load_store_instr_stream_1
                  lbu        s2, -10(t2)
                  lb         t0, -10(t2) #end load_store_instr_stream_2
                  sb         a1, 14(s0)
                  lh         s11, 96(gp) #end load_store_instr_stream_3
                  sb         s6, -5(s0)
                  lb         a6, -4(s0) #end load_store_instr_stream_0
                  la         s9, region_1+6572 #start load_store_instr_stream_0
                  la         a4, region_1+4841 #start load_store_instr_stream_1
                  lbu        s11, -8(a4)
                  sh         a0, 174(s9)
                  lb         t1, 2(a4)
                  lh         t0, 5(a4)
                  lhu        t2, -246(s9)
                  sb         ra, -185(s9)
                  lbu        a6, -11(a4)
                  lb         t0, -8(a4)
                  sh         a1, -1(a4)
                  lb         t4, -45(s9)
                  sb         a4, -8(a4)
                  lw         s0, 7(a4)
                  lbu        s4, -42(s9)
                  sb         s1, 14(a4)
                  sb         t6, 193(s9)
                  lbu        zero, -238(s9)
                  lw         s10, 7(a4) #end load_store_instr_stream_1
                  sb         a1, -124(s9)
                  lb         s10, 175(s9) #end load_store_instr_stream_0
                  addi       s5, zero, -3 #init loop 0 counter
                  addi       s9, zero, 5 #init loop 0 limit
                  sltiu      s1, a5, -923
sub_5_25_0_t:     mulh       a1, a4, s4
                  addi       s5, s5, 2 #update loop 0 counter
                  blt        s5, s9, sub_5_25_0_t #branch for loop 0
                  auipc      s11, 901694
sub_5_9:          jal        ra, 10f
0:                c.j        13f
1:                c.jal      2f
2:                c.j        0b
3:                jal        ra, 5f
4:                c.j        12f
5:                jal        t1, 8f
6:                c.jal      15f
7:                c.j        3b
8:                jal        tp, 14f
9:                jal        ra, 1b
10:               c.j        11f
11:               c.jal      9b
12:               c.jal      7b
13:               c.j        4b
14:               c.j        6b
15:               lui        t0, 451816
                  addi       s0, zero, 10 #init loop 1 counter
                  mul        s5, s11, t2
                  addi       zero, zero, 0 #init loop 1 limit
sub_5_26_1_t:     sltiu      t6, a1, -281
                  ori        t1, a0, -219
                  addi       s0, s0, -10 #update loop 1 counter
                  c.srli     s1, 25
                  addi       a4, zero, 1 #init loop 0 counter
                  addi       a7, zero, -12 #init loop 0 limit
sub_5_26_0_t:     slt        s3, a3, a3
                  mulhsu     t4, gp, s5
                  addi       a4, a4, -9 #update loop 0 counter
                  bge        a4, a7, sub_5_26_0_t #branch for loop 0
                  c.bnez     s0, sub_5_26_1_t #branch for loop 1
                  c.slli     t0, 16
                  la         a6, region_3+304 #start load_store_instr_stream_2
                  lw         a4, 8(a6)
                  la         ra, region_3+299 #start load_store_instr_stream_3
                  la         a3, region_3+175 #start load_store_instr_stream_1
                  la         t0, region_3+66 #start load_store_instr_stream_0
                  lhu        t1, 5(a3)
                  sb         t2, -44(ra)
                  lbu        a5, 104(ra)
                  lbu        s11, 5(t0)
                  lb         s2, 7(a3)
                  lbu        s6, 128(ra)
                  lhu        a4, -7(a3)
                  lb         a1, 49(t0)
                  sb         s2, 9(a6)
                  lbu        t4, 47(t0)
                  lb         s4, 62(ra)
                  lhu        gp, 6(t0)
                  lbu        s3, 1(a6)
                  lhu        t5, 107(ra)
                  lbu        zero, 1(a3)
                  sb         ra, 12(a6)
                  lbu        a7, 1(a6)
                  sb         a2, 32(ra)
                  lb         s1, -16(a3)
                  lbu        t2, 14(a6) #end load_store_instr_stream_2
                  lh         s9, -62(t0)
                  lbu        s2, -200(ra)
                  lb         a7, 1(a3) #end load_store_instr_stream_1
                  sw         t4, 21(ra) #end load_store_instr_stream_3
                  sb         s8, -64(t0) #end load_store_instr_stream_0
                  la         s3, region_4+2285 #start riscv_hazard_instr_stream_0
                  slti       tp, tp, 493
                  sb         gp, -56(s3)
                  lbu        a4, -12(s3)
                  sh         a5, -13(s3)
                  mulhu      gp, a4, a2
                  sh         tp, 9(s3)
                  sh         gp, 7(s3)
                  ori        ra, gp, 482
                  lbu        a5, 4(s3)
                  lh         a5, -19(s3)
                  c.sub      a4, a4
                  lbu        a5, 0(s3)
                  lbu        tp, -1(s3)
                  lbu        a5, 35(s3)
                  sh         a4, 13(s3)
                  sb         gp, -59(s3)
                  lb         ra, -7(s3)
                  lb         tp, -44(s3)
                  c.nop
                  lh         gp, -53(s3)
                  sb         tp, -33(s3)
                  c.srli     a5, 17
                  lb         a2, -32(s3)
                  lhu        gp, 9(s3)
                  mulh       a4, ra, a5
                  divu       a5, ra, a2
                  andi       a4, a4, -401
                  remu       a5, gp, gp
                  sb         gp, -38(s3)
                  sb         a5, 26(s3)
                  lbu        a5, -26(s3)
                  lhu        a5, -7(s3)
                  csrrw      a2, 0x340, tp
                  c.li       a4, 10
                  lhu        tp, -27(s3)
                  sltu       a5, tp, a4
                  lb         gp, -18(s3)
                  sw         a4, 31(s3)
                  lb         a5, -58(s3)
                  sb         a5, -8(s3)
                  sb         gp, -17(s3) #end riscv_hazard_instr_stream_0
                  la         s10, region_1+7825 #start load_store_instr_stream_1
                  lb         a0, -195(s10)
                  lbu        t1, 396(s10)
                  la         tp, region_4+2422 #start load_store_instr_stream_0
                  lb         t5, 968(tp)
                  lhu        s1, 1217(s10)
                  lw         s1, -1145(s10)
                  lhu        s7, 1841(s10)
                  sb         a2, 314(tp)
                  sw         s3, -10(tp)
                  lbu        ra, 1301(s10)
                  lhu        s4, -1959(s10)
                  lh         a4, -676(tp)
                  lb         ra, 638(s10)
                  lhu        zero, 584(tp)
                  sb         s1, 1362(s10) #end load_store_instr_stream_1
                  sb         s6, 1377(tp)
                  lbu        s2, -952(tp)
                  lbu        s7, 668(tp) #end load_store_instr_stream_0
                  la         s7, region_2+3137 #start load_store_instr_stream_1
                  lh         ra, 37(s7)
                  la         t4, region_2+1256 #start load_store_instr_stream_0
                  sb         a2, 168(s7)
                  lbu        a4, 142(s7)
                  sh         t0, 46(t4)
                  lbu        ra, -64(t4)
                  sb         t2, -36(s7)
                  sb         s4, -29(t4)
                  lhu        a3, 56(t4)
                  lbu        s5, 196(s7) #end load_store_instr_stream_1
                  sb         a3, -15(t4) #end load_store_instr_stream_0
                  addi       s10, zero, 10 #init loop 0 counter
                  addi       s4, zero, 3 #init loop 0 limit
sub_5_27_0_t:     c.lui      s6, 2
                  mulhu      ra, ra, t3
                  addi       s10, s10, -7 #update loop 0 counter
                  rem        a2, s8, a3
                  c.lui      a3, 27
                  beq        s10, s4, sub_5_27_0_t #branch for loop 0
                  csrrsi     s6, 0x340, 17
                  la         s4, region_4+2334 #start load_store_instr_stream_1
                  lh         s10, -764(s4)
                  la         s6, region_3+241 #start load_store_instr_stream_2
                  sb         t3, 86(s6)
                  la         t4, region_0+1409 #start load_store_instr_stream_3
                  sh         s4, -934(s4)
                  la         t6, region_1+14318 #start load_store_instr_stream_0
                  lb         a2, 172(s4)
                  lb         t0, 154(t4)
                  lbu        t1, 726(t6)
                  sb         tp, 1331(t6)
                  lhu        s9, -51(s6)
                  lh         t2, 113(t4)
                  sh         a1, 129(s6)
                  lbu        s1, -55(t4)
                  sb         a0, 368(s4)
                  sh         s3, -37(s6)
                  lbu        s11, -982(t6)
                  sw         ra, 119(s6) #end load_store_instr_stream_2
                  lh         a2, -91(t4)
                  sh         sp, 61(t4) #end load_store_instr_stream_3
                  sh         a7, 20(s4)
                  lbu        gp, -928(s4)
                  sb         ra, 840(t6)
                  sb         sp, 842(s4) #end load_store_instr_stream_1
                  sb         ra, 71(t6) #end load_store_instr_stream_0
                  la         s5, region_0+1890 #start load_store_instr_stream_0
                  la         a0, region_3+177 #start load_store_instr_stream_3
                  la         t4, region_1+11938 #start load_store_instr_stream_1
                  sb         s8, -703(t4)
                  lbu        t5, 1(s5)
                  la         a7, region_4+2052 #start load_store_instr_stream_2
                  lb         s4, 15(s5)
                  la         a2, region_2+3745 #start load_store_instr_stream_4
                  lbu        s0, -1260(t4)
                  lbu        a6, -4(a7)
                  lb         s7, -1240(t4)
                  lb         t5, 1(a7)
                  lb         s3, -8(a7)
                  sb         a0, 3(s5)
                  lb         s4, 11(a7)
                  lhu        t2, 851(a2)
                  lb         ra, -1827(t4)
                  lhu        gp, 1254(t4)
                  sb         t5, -9(s5)
                  sh         a4, 14(a7)
                  sb         ra, -12(a7)
                  lbu        a4, 840(a2)
                  lbu        t0, -917(a2)
                  sb         s5, 3(a7)
                  sb         a2, -7(a7)
                  lhu        zero, 1079(a2)
                  lbu        t5, -172(a0)
                  sb         ra, 1847(t4)
                  sh         a2, 111(a0)
                  lbu        zero, -64(a0)
                  lbu        s0, -1709(t4)
                  lbu        gp, 113(a0)
                  lb         s9, 1774(t4)
                  sh         a2, 157(a0)
                  sb         s6, 1815(t4)
                  lb         s9, 2(a2)
                  lh         s10, 6(a7)
                  lb         tp, -8(s5)
                  sb         s2, -5(a7) #end load_store_instr_stream_2
                  sb         t6, -78(a0)
                  lw         a3, 211(a0)
                  sh         a2, -23(a2)
                  sb         s5, 151(a0)
                  lbu        s4, 1971(t4) #end load_store_instr_stream_1
                  lbu        s4, 39(a0) #end load_store_instr_stream_3
                  lh         s10, -81(a2) #end load_store_instr_stream_4
                  lb         s7, -16(s5) #end load_store_instr_stream_0
                  la         s2, region_2+3281 #start riscv_load_store_rand_instr_stream_4
                  csrrc      a5, 0x340, a1
                  c.or       a2, a4
                  lh         s0, -47(s2)
                  c.slli     a3, 23
                  lhu        gp, 27(s2)
                  lbu        s10, -12(s2)
                  sb         a1, 42(s2)
                  srai       a3, s1, 27
                  csrrci     s9, 0x340, 5
                  csrrci     a6, 0x340, 24
                  lhu        s0, -61(s2)
                  sb         s8, 23(s2)
                  and        zero, s6, s1
                  slti       a0, s10, -730
                  lh         s10, -37(s2)
                  lbu        s4, -50(s2)
                  csrrs      a7, 0x340, a2
                  sh         a1, 7(s2)
                  sb         t1, -38(s2)
                  lb         a2, 57(s2)
                  c.mv       ra, s7
                  lb         t5, -39(s2)
                  sb         s6, -52(s2)
                  sra        gp, zero, s2
                  csrrs      a6, 0x340, t6
                  lb         a5, -20(s2)
                  lbu        t5, 35(s2)
                  lbu        s7, -22(s2)
                  lbu        s5, -58(s2)
                  lbu        t5, 12(s2)
                  slt        a1, t2, ra
                  c.and      s1, a3
                  lbu        s1, 54(s2)
                  lb         t1, 13(s2)
                  sb         t6, -24(s2)
                  auipc      a2, 504431
                  slli       t5, ra, 2
                  lbu        zero, 21(s2)
                  lbu        t6, -38(s2)
                  c.addi     t4, 3
                  lh         ra, -55(s2)
                  lui        a7, 1032616
                  sh         s2, -15(s2)
                  mulh       s6, t4, t2
                  lb         gp, -62(s2)
                  lbu        tp, -32(s2) #end riscv_load_store_rand_instr_stream_4
sub_5_6:          jal        ra, 10f
0:                c.jal      12f
1:                c.j        2f
2:                c.jal      8f
3:                c.jal      0b
4:                c.jal      11f
5:                c.j        7f
6:                c.j        1b
7:                c.j        13f
8:                c.j        5b
9:                c.j        4b
10:               c.jal      3b
11:               c.j        6b
12:               c.j        9b
13:               srli       s6, a7, 24
                  la         s11, region_2+775 #start riscv_load_store_rand_instr_stream_3
                  lb         a0, 2024(s11)
                  c.and      a2, a2
                  c.slli     ra, 21
                  xori       s9, sp, -493
                  or         s10, s5, s1
                  lbu        s1, 874(s11)
                  c.and      a4, a4
                  ori        a5, t0, -799
                  lb         a6, 1110(s11)
                  c.add      a3, a6
                  lbu        s1, 1834(s11)
                  sb         s1, 1700(s11)
                  lbu        a3, 1994(s11)
                  lb         s9, 1509(s11)
                  sh         t0, -551(s11)
                  mul        s1, a7, a3
                  xori       a5, s3, 256
                  remu       s6, s0, s8
                  lb         t2, 1312(s11)
                  lb         t0, 892(s11)
                  sb         t4, -440(s11)
                  lbu        s1, 1478(s11)
                  sb         t4, 662(s11)
                  mulhsu     s6, s2, a6
                  sh         a5, 1421(s11)
                  sra        s1, a4, s8
                  mulhsu     s6, s1, gp
                  lbu        a2, 660(s11)
                  lbu        t4, -530(s11)
                  lbu        t6, 774(s11)
                  slt        a4, s2, tp
                  csrrsi     s0, 0x340, 26
                  lb         a6, -591(s11)
                  lbu        s9, 1572(s11)
                  csrrc      t4, 0x340, gp
                  lb         tp, -268(s11)
                  sll        zero, s4, s5
                  sb         s0, 1484(s11)
                  c.srli     a4, 3
                  csrrs      s5, 0x340, s5
                  mulhsu     t1, t3, a5
                  rem        a2, a1, s2
                  c.lui      t6, 18
                  c.add      s0, s7
                  srl        s5, zero, t5
                  c.or       a2, s0
                  mulhu      a7, s0, s5
                  remu       a7, s1, zero
                  sh         s1, -7(s11)
                  lhu        a2, -183(s11)
                  lb         s2, 1271(s11)
                  sra        tp, a6, a0
                  lb         s1, -5(s11)
                  sb         s9, 426(s11)
                  sb         s4, 40(s11)
                  and        s7, s8, a0
                  csrrci     t1, 0x340, 7
                  lh         a0, 1543(s11)
                  lb         a2, 66(s11) #end riscv_load_store_rand_instr_stream_3
                  la         tp, region_3+128 #start riscv_load_store_rand_instr_stream_2
                  c.srai     a3, 13
                  slt        s10, tp, s3
                  mulhu      s6, s6, s10
                  c.mv       s5, gp
                  lbu        a6, 91(tp)
                  sb         zero, -23(tp)
                  csrrci     s3, 0x340, 14
                  sb         s5, 367(tp)
                  div        s10, a4, gp
                  c.nop
                  sb         a1, -45(tp)
                  mul        t0, tp, a7
                  sb         s7, 197(tp)
                  sh         a1, -24(tp)
                  sw         s2, -128(tp)
                  lhu        s4, 14(tp)
                  lbu        s7, 296(tp)
                  lui        s0, 472223
                  divu       a1, zero, s9
                  sll        s0, s0, a4
                  mulhsu     s9, a6, t5
                  lb         ra, 248(tp)
                  lb         a2, -88(tp)
                  srli       s7, s3, 1
                  lbu        s3, 320(tp)
                  csrrc      s6, 0x340, t5
                  c.andi     a0, -1
                  lb         t4, 7(tp)
                  and        t6, t3, t0
                  sb         gp, 93(tp)
                  sb         a5, 371(tp)
                  fence.i
                  lh         s0, 158(tp)
                  lbu        t1, 239(tp)
                  remu       s5, a1, s4
                  sll        s4, t0, zero
                  lb         a5, 24(tp)
                  lb         t1, 220(tp)
                  c.andi     a3, 3
                  sb         t4, 324(tp)
                  csrrci     t2, 0x340, 6
                  lb         a6, 46(tp)
                  fence
                  remu       s1, a5, s2
                  c.srli     a3, 25
                  lhu        a3, 116(tp)
                  c.sub      a1, a3
                  csrrwi     t4, 0x340, 9
                  csrrwi     t5, 0x340, 5
                  sb         s7, 81(tp)
                  lb         t2, 363(tp)
                  lbu        zero, -123(tp)
                  lhu        t1, -94(tp)
                  andi       t5, s3, 490
                  lbu        t5, 329(tp) #end riscv_load_store_rand_instr_stream_2
                  addi       s9, zero, -4 #init loop 1 counter
                  and        tp, zero, s7
                  addi       t6, zero, 5 #init loop 1 limit
                  or         a5, a4, zero
sub_5_28_1_t:     c.andi     a1, -1
                  addi       s9, s9, 5 #update loop 1 counter
                  c.slli     s2, 19
                  c.li       s2, 20
                  srai       a4, s9, 13
                  csrrc      a6, 0x340, s4
                  addi       a3, zero, -9 #init loop 0 counter
                  slt        tp, t4, ra
                  addi       a2, zero, -18 #init loop 0 limit
                  c.or       a4, a1
                  or         s11, s6, s5
                  auipc      a5, 1045150
                  c.or       a1, s1
                  c.mv       a5, a3
                  sltiu      s11, a4, -267
sub_5_28_0_t:     mulhu      a6, sp, s10
                  addi       a3, a3, -3 #update loop 0 counter
                  add        a6, t4, s2
                  c.add      a0, a2
                  beq        a3, a2, sub_5_28_0_t #branch for loop 0
                  bltu       s9, t6, sub_5_28_1_t #branch for loop 1
                  sra        a1, s1, t6
sub_5_10:         jal        ra, 25f
0:                c.jal      12f
1:                jal        a5, 4f
2:                c.j        10f
3:                c.j        2b
4:                c.jal      7f
5:                c.j        9f
6:                jal        ra, 19f
7:                jal        t1, 11f
8:                c.jal      27f
9:                c.jal      16f
10:               c.jal      14f
11:               c.j        15f
12:               c.j        18f
13:               jal        ra, 26f
14:               c.j        6b
15:               c.j        17f
16:               jal        ra, 28f
17:               c.jal      23f
18:               jal        a4, 24f
19:               jal        ra, 1b
20:               jal        ra, 21f
21:               c.jal      22f
22:               c.j        5b
23:               c.j        20b
24:               c.jal      3b
25:               c.jal      8b
26:               jal        t1, 29f
27:               jal        t1, 0b
28:               c.j        13b
29:               c.xor      a2, a5
                  la         a1, region_1+10215 #start riscv_load_store_rand_instr_stream_1
                  sb         s7, -102(a1)
                  lbu        tp, 248(a1)
                  lbu        a2, 120(a1)
                  csrrsi     zero, 0x340, 12
                  csrrs      t6, 0x340, t3
                  csrrsi     s0, 0x340, 25
                  lbu        s10, -120(a1)
                  fence
                  xori       s2, s1, 671
                  auipc      s5, 596098
                  rem        a0, ra, a6
                  lh         zero, 201(a1)
                  srl        t0, s11, a7
                  c.srai     a3, 9
                  sb         s8, 193(a1)
                  c.srli     a0, 6
                  sltiu      s5, s5, 913
                  lbu        s1, 79(a1)
                  c.srli     a3, 26
                  sb         zero, -7(a1)
                  add        a2, s4, a2
                  mulh       t1, s4, t2
                  andi       t2, s7, -609
                  lw         a6, 241(a1)
                  csrrwi     s10, 0x340, 18
                  sw         a4, 65(a1)
                  nop
                  srai       s0, a4, 0
                  csrrs      s5, 0x340, a7
                  sb         t2, -32(a1) #end riscv_load_store_rand_instr_stream_1
                  addi       a1, zero, 9 #init loop 1 counter
                  divu       t6, a1, sp
                  c.add      gp, gp
                  andi       s7, t5, 63
                  sub        s5, a5, t5
                  c.li       s0, 28
                  addi       s11, zero, 8 #init loop 1 limit
sub_5_29_1_t:     c.andi     s0, 12
                  addi       a1, a1, -7 #update loop 1 counter
                  csrrc      a3, 0x340, t5
                  srai       t5, s7, 18
                  rem        a3, t1, t3
                  addi       ra, zero, -3 #init loop 0 counter
                  addi       a7, zero, -5 #init loop 0 limit
                  ori        s6, s7, -447
sub_5_29_0_t:     c.or       a3, s1
                  addi       ra, ra, -2 #update loop 0 counter
                  bge        ra, a7, sub_5_29_0_t #branch for loop 0
                  c.mv       t1, t2
                  bgeu       a1, s11, sub_5_29_1_t #branch for loop 1
                  sltu       t6, s4, s6
                  div        t0, a6, a6
                  c.slli     s6, 18
                  sub        s3, a5, a7
                  fence
                  fence.i
                  slti       s4, t2, -917
                  c.nop
                  or         t0, s11, a5
                  csrrs      s3, 0x340, a0
                  csrrw      s0, 0x340, t2
                  csrrs      a3, 0x340, zero
                  slli       t6, zero, 14
                  fence.i
                  addi       s0, t2, -433
                  bltu       t2, s3, 17f
                  csrrs      s3, 0x340, s0
                  c.andi     a5, -1
17:               auipc      ra, 75286
                  ori        s9, t6, 794
                  fence.i
                  blt        ra, t3, 22f
                  nop
22:               csrrw      a2, 0x340, a3
                  divu       a2, zero, a4
                  csrrsi     a6, 0x340, 30
                  c.slli     a7, 31
                  srli       s1, s3, 9
                  xor        a7, a5, a0
                  add        gp, t2, a0
                  rem        a3, t4, t6
                  c.xor      s1, a0
                  div        s3, s0, gp
                  c.addi     s0, 27
                  csrrwi     zero, 0x340, 20
                  csrrs      tp, 0x340, s9
                  sra        t1, a1, zero
                  add        t5, zero, t6
                  c.xor      s0, a3
                  blt        a2, s1, 53f
                  c.xor      a4, a2
                  c.bnez     s0, 60f
                  csrrw      s10, 0x340, ra
                  c.srai     a3, 28
                  c.andi     a3, -1
                  c.srli     a5, 5
                  bgeu       a4, s7, 63f
                  auipc      ra, 887131
                  c.beqz     a0, 58f
                  c.slli     a1, 17
                  bne        sp, s7, 54f
                  csrrc      s11, 0x340, a5
                  xor        s3, s6, a0
                  sltu       t6, tp, s10
53:               c.or       s0, s0
54:               andi       a7, a0, 299
                  xor        s5, zero, s5
                  bgeu       a3, s0, 73f
                  c.add      ra, a7
58:               mulh       s5, s1, s11
                  c.lui      s11, 23
60:               csrrwi     s5, 0x340, 25
                  c.slli     s6, 7
                  srl        t4, s3, s1
63:               slti       t6, a0, 264
                  and        t4, s7, tp
                  c.srli     a4, 18
                  ori        a7, s8, -138
                  sll        s9, a1, a5
                  srl        a3, t6, a3
                  sub        t0, t1, a5
                  divu       t2, s2, a7
                  bgeu       s11, a1, 80f
                  bgeu       zero, s8, 84f
73:               c.srli     s1, 10
                  mulhu      zero, t2, a0
                  andi       s7, t0, 75
                  slt        ra, tp, t6
                  csrrs      zero, 0x340, a7
                  c.mv       a3, s3
                  slti       a3, s7, 782
80:               csrrc      t5, 0x340, a3
                  c.or       a2, a3
                  csrrci     s9, 0x340, 7
                  c.andi     a3, 10
84:               c.andi     s1, 29
                  addi       t5, a1, -409
                  fence.i
                  mul        zero, a3, t3
                  addi       s2, t6, -988
                  c.or       a4, a4
                  remu       a2, s0, gp
                  andi       a5, s8, 804
                  sltiu      t2, t5, 985
                  c.addi     s1, -1
                  fence
                  mul        a0, t3, s5
                  csrrwi     a2, 0x340, 3
                  add        s6, a3, a2
                  c.lui      s7, 29
                  add        a1, a3, a3
                  srli       gp, a2, 21
                  remu       t1, zero, t0
                  ori        ra, a4, 126
                  sra        tp, s2, t1
                  xori       t4, a5, 839
                  csrrs      a2, 0x340, s7
                  xori       a5, tp, -710
                  ori        s0, s0, -561
                  remu       t6, a1, a6
                  bne        s1, a3, 124f
                  slti       a7, t5, 1018
                  c.lui      s0, 11
                  sub        s1, ra, a3
                  sra        a4, s2, s7
                  sltu       a2, t6, s10
                  c.lui      gp, 18
                  c.xor      s0, a2
                  div        tp, s9, s9
                  c.slli     s7, 26
                  remu       tp, a0, s2
                  xor        s5, s10, a1
                  and        t1, a5, sp
                  c.nop
                  blt        a0, s0, 129f
124:              sll        a5, s4, t4
                  andi       a6, s2, 761
                  csrrsi     s6, 0x340, 12
                  slli       a1, a1, 8
                  csrrsi     s10, 0x340, 27
129:              slti       a3, a4, -229
                  csrrc      a5, 0x340, s6
                  c.beqz     a4, 149f
                  bge        sp, t0, 150f
                  div        t4, s8, s8
                  csrrci     a3, 0x340, 27
                  mul        a4, s10, s11
                  csrrsi     t2, 0x340, 10
                  c.addi     ra, -1
                  csrrc      s1, 0x340, t4
                  mul        s2, a3, t3
                  nop
sub_5_11:         jal        ra, 0f
0:                jal        ra, 4f
1:                jal        ra, 2f
2:                jal        ra, 3f
3:                c.j        9f
4:                c.j        8f
5:                c.jal      12f
6:                c.j        10f
7:                c.j        1b
8:                jal        ra, 6b
9:                jal        ra, 5b
10:               c.jal      11f
11:               jal        ra, 7b
12:               sll        t1, a2, s11
                  sltiu      a2, zero, -576
                  slli       t0, s8, 16
                  or         a5, a3, s11
                  csrrwi     s0, 0x340, 30
                  slli       s3, s1, 11
                  csrrci     a6, 0x340, 5
                  and        s5, s0, a6
                  fence.i
149:              srai       a3, s10, 0
150:              or         a6, t5, t4
                  c.xor      a5, a1
                  csrrs      a3, 0x340, s11
                  xor        s2, t5, s8
                  sub        a5, s7, s9
                  c.slli     a5, 26
                  c.bnez     a1, 170f
                  beq        t5, s9, 169f
                  csrrci     t4, 0x340, 26
                  c.bnez     a1, 168f
                  c.srli     a0, 16
                  c.beqz     s1, 165f
                  mulhsu     s0, s10, s10
                  fence
                  slt        a3, a7, s9
165:              bne        a3, t6, 168f
                  auipc      ra, 502202
                  nop
168:              c.slli     a0, 5
169:              mulh       tp, zero, a7
170:              c.and      a1, a0
                  c.andi     s1, 16
                  mulhu      t4, a5, a3
                  slt        t0, sp, ra
                  beq        t1, s8, 188f
                  or         zero, t3, t2
                  csrrs      t5, 0x340, s0
                  slt        s6, s2, a5
                  c.beqz     a5, 184f
                  c.slli     s5, 28
                  div        gp, s7, s3
                  slli       s11, gp, 12
                  c.add      s11, s7
                  c.lui      a7, 31
184:              c.li       s11, -1
                  fence
                  beq        s6, a1, 197f
                  c.and      s0, a4
188:              c.bnez     s1, 199f
                  c.srai     a5, 8
                  and        a3, gp, s0
                  c.nop
                  csrrs      s1, 0x340, a2
                  sll        s4, s7, t4
                  c.xor      a4, s0
                  blt        s5, a4, 198f
                  mul        a4, tp, t5
197:              divu       s3, a3, s10
198:              c.srai     a0, 12
199:              csrrwi     s5, 0x340, 5
                  slli       a0, sp, 23
                  mulhu      zero, sp, t0
                  c.add      s10, s5
                  csrrci     a6, 0x340, 5
                  beq        t0, a7, 215f
                  lui        s1, 580116
                  bge        s5, a1, 218f
                  fence
                  beq        s0, s6, 210f
                  auipc      a3, 72898
210:              csrrci     tp, 0x340, 18
                  c.xor      s1, a0
                  c.andi     s0, -1
                  c.addi     t5, -1
                  addi       t1, a4, 773
215:              c.srai     a5, 27
                  slli       a4, s8, 11
                  slli       a3, s0, 9
218:              c.nop
                  auipc      t4, 283705
                  c.li       a1, 22
                  c.sub      a1, a5
                  auipc      a3, 550001
                  divu       t5, s9, s5
                  sll        zero, s11, s10
                  rem        a5, a1, t0
                  fence.i
                  srli       t5, s4, 12
                  c.beqz     a2, 239f
                  c.addi     t2, 15
                  c.sub      s1, s0
                  csrrs      s9, 0x340, a2
                  sltu       a6, a0, s0
                  c.or       a1, s1
                  rem        s2, s9, s3
                  c.nop
                  slti       s9, t1, 131
                  bltu       t0, a0, 256f
                  c.srli     a4, 24
239:              mul        a0, a2, s8
                  mulhu      s6, s8, t2
                  blt        s11, t2, 247f
                  sll        s11, zero, t0
                  lui        t0, 22168
                  c.and      a3, a2
                  sll        t0, t0, s10
                  csrrsi     gp, 0x340, 26
247:              slt        s2, s9, a7
                  c.slli     a0, 14
                  div        a0, a7, a7
                  c.srai     a3, 14
                  csrrsi     t4, 0x340, 22
                  sltu       gp, ra, t4
                  c.xor      a1, a5
                  blt        ra, s7, 266f
                  xori       s2, sp, -924
256:              csrrs      s2, 0x340, t0
                  mulhu      s7, t5, t2
                  c.mv       s5, s0
                  sltu       a3, t5, a3
                  addi       s5, t1, -537
                  c.and      a2, a4
                  sltu       t0, s6, s11
                  or         s11, s0, s8
                  c.addi     ra, -1
                  c.beqz     s1, 280f
266:              c.or       a2, a0
                  lui        a4, 841289
                  div        t6, s11, s3
                  and        s11, s8, s0
                  c.beqz     s1, 289f
                  add        a1, a0, gp
                  mulhsu     s2, t6, s10
                  c.add      t0, t5
                  bge        zero, t0, 279f
                  csrrci     s1, 0x340, 10
                  lui        s9, 757041
                  c.srai     a0, 8
                  div        s1, s7, t4
279:              ori        a2, a4, -580
280:              and        s5, s4, s10
                  c.srli     s0, 20
                  srli       s7, a7, 16
                  fence.i
                  c.li       t2, -1
                  c.or       a0, a1
                  c.lui      t0, 29
                  c.beqz     a2, 299f
                  slti       s3, sp, -498
289:              c.andi     s0, 2
                  mulhsu     s3, gp, ra
                  sltu       a2, s5, t6
                  c.mv       s10, ra
                  bltu       t1, ra, 311f
                  beq        t4, gp, 297f
                  bne        tp, t1, 299f
                  sll        t2, ra, zero
297:              c.li       a0, 21
                  sra        s2, t3, t3
299:              c.andi     s0, 11
                  add        a1, a4, s7
                  mulh       a5, t6, s6
                  sll        s9, t2, s11
                  c.mv       s4, s3
                  blt        a0, a5, 324f
                  sra        s2, s10, s0
                  c.beqz     s1, 318f
                  srli       s4, a1, 26
                  mulh       s9, s4, s11
                  fence.i
                  fence.i
311:              csrrwi     a4, 0x340, 17
                  c.nop
                  csrrw      gp, 0x340, t1
                  c.andi     a1, -1
                  remu       t6, t3, sp
                  c.mv       s6, a3
                  csrrs      tp, 0x340, s7
318:              sub        a6, t2, s1
                  c.andi     a5, -1
                  slti       t0, a5, 821
                  blt        s4, sp, 324f
                  rem        gp, a6, s3
                  rem        s11, s2, t5
324:              c.bnez     s0, 326f
                  bgeu       a3, s3, 343f
326:              slti       t1, s8, -694
                  c.srli     a2, 18
                  slli       s1, s7, 29
                  c.xor      a1, s1
                  csrrwi     a6, 0x340, 15
                  c.nop
                  sub        s2, a0, t3
                  sub        a0, ra, a2
                  mulh       ra, a2, ra
                  c.li       a3, -1
                  or         s1, t2, t0
                  xor        t2, s11, ra
                  la         t0, region_2+3262 #start load_store_instr_stream_1
                  la         s5, region_2+132 #start load_store_instr_stream_3
                  la         a4, region_2+99 #start load_store_instr_stream_2
                  sh         s1, 4(s5)
                  lb         a5, 1614(t0)
                  lb         s1, -51(s5)
                  sb         s5, -1245(t0)
                  la         a7, region_2+508 #start load_store_instr_stream_0
                  lb         s4, 4(a4)
                  lbu        s1, 867(t0)
                  sb         s2, -1(s5)
                  lbu        s7, -10(a4)
                  sh         a4, -8(s5)
                  lb         s1, -1353(t0)
                  sb         zero, 463(t0)
                  lbu        a0, -15(a7)
                  sb         s1, 12(a4)
                  sb         t1, -7(a4)
                  lb         a5, 13(a4)
                  lbu        a2, 674(t0)
                  sh         t1, -15(a4)
                  sb         s6, -1958(t0)
                  sb         a7, -3(a4)
                  lb         t2, -653(t0)
                  sb         s1, 0(a4)
                  lhu        ra, -238(a7)
                  lhu        a5, 42(s5) #end load_store_instr_stream_3
                  sb         gp, 80(a7)
                  lbu        s4, -89(t0) #end load_store_instr_stream_1
                  sb         a1, -21(a7)
                  lbu        s7, 16(a4)
                  lbu        s7, 16(a4) #end load_store_instr_stream_2
                  lw         a1, -244(a7) #end load_store_instr_stream_0
                  srli       a7, t2, 7
                  c.bnez     s0, 345f
                  c.srai     a1, 20
                  sll        a0, s11, a2
                  srli       tp, t5, 2
343:              bge        t6, t3, 349f
                  c.lui      t4, 24
345:              c.or       a1, a3
                  ori        t4, s5, 965
                  rem        a6, s3, a5
                  csrrwi     s10, 0x340, 6
349:              bne        sp, a5, 360f
                  c.addi     s9, -1
                  c.lui      a5, 17
                  sltiu      t6, t4, -278
                  rem        s7, t2, s6
                  csrrc      t0, 0x340, s4
                  c.add      a5, a1
                  andi       t2, s10, -948
                  c.xor      s1, a1
                  sltu       s7, s5, s3
                  c.and      a1, a2
360:              c.li       a6, 19
                  sra        a7, a2, a1
                  sll        zero, tp, t6
                  and        tp, a3, a6
                  slti       s6, zero, -999
                  div        s0, s2, t5
                  bge        s2, s7, 377f
                  sltiu      s10, ra, -708
                  slti       t5, s2, 561
                  c.beqz     s0, 383f
                  c.andi     a0, -1
                  div        gp, a3, zero
                  fence.i
                  xor        tp, t4, s8
                  csrrsi     a5, 0x340, 13
                  xori       s6, t0, -904
                  c.srai     s1, 30
377:              or         s3, s7, t6
                  c.or       s1, a4
                  ori        a2, s8, -251
                  srai       t4, s5, 15
                  c.beqz     a3, 396f
                  csrrwi     t6, 0x340, 15
383:              nop
                  sra        s0, t0, a7
                  c.nop
                  c.beqz     a2, 395f
                  auipc      s0, 428925
                  sltu       s6, s7, t6
                  rem        gp, tp, a7
                  srli       a7, ra, 28
                  slti       ra, sp, -506
                  rem        t4, a5, zero
                  sra        t1, t0, s3
                  c.addi     t2, -1
395:              sll        t0, t1, t2
396:              csrrci     a6, 0x340, 31
                  mulh       s0, s0, s8
                  srl        s0, t6, s3
                  c.slli     s4, 30
                  csrrw      a6, 0x340, t4
                  divu       a2, s9, tp
                  slli       t1, t5, 23
                  lui        s7, 348626
                  c.and      a2, a2
                  c.or       a2, s1
                  c.or       a0, a4
                  c.bnez     s1, 409f
                  c.sub      a3, a0
409:              rem        t2, t2, a1
                  c.nop
                  blt        s5, t2, 420f
                  divu       s1, s3, s5
                  rem        a3, t3, s9
                  xori       ra, sp, 836
                  c.nop
                  divu       t5, s2, tp
                  csrrs      s0, 0x340, t2
                  mul        t5, s6, tp
                  rem        s1, t6, sp
420:              c.xor      a5, s1
                  c.andi     a4, 11
                  auipc      zero, 253738
                  andi       s5, a1, 827
                  bne        a1, s2, 435f
                  c.bnez     a2, 428f
                  bgeu       a0, s9, 444f
                  csrrs      a0, 0x340, a4
428:              c.and      s0, a2
                  c.srli     a5, 26
                  mulhu      s3, sp, a1
                  rem        s10, t4, a3
                  c.srli     s1, 3
                  ori        zero, a0, 149
                  bltu       s2, s9, 445f
435:              fence.i
                  divu       t5, s8, s1
                  csrrwi     t6, 0x340, 14
                  csrrc      a6, 0x340, s0
                  c.addi     s1, -1
                  csrrc      s11, 0x340, t3
                  or         a7, a6, s7
                  rem        t0, s3, s6
                  mulhu      t6, s5, a5
444:              sra        s5, sp, a2
445:              sltu       a5, s6, s2
                  ori        s11, t1, -399
                  divu       a4, a3, s7
                  mulhsu     gp, a4, a6
                  andi       t4, t1, 413
                  bge        s8, s7, 464f
                  mulhu      s9, t0, s5
                  c.andi     a5, -1
                  csrrw      s10, 0x340, t1
                  bne        ra, s9, 465f
                  c.and      a0, s0
                  sltu       s0, s9, t1
                  c.slli     a4, 17
                  c.beqz     a4, 475f
                  rem        s9, ra, s10
                  c.and      a0, s1
                  c.lui      t1, 22
                  fence.i
                  sltiu      zero, s2, 218
464:              ori        s0, s11, 14
465:              c.nop
                  sltu       a6, zero, a6
                  c.slli     a6, 6
                  rem        ra, tp, s6
                  bgeu       sp, s8, 475f
                  c.xor      a1, a2
                  srai       t4, s1, 23
                  divu       s2, s7, a2
                  c.lui      ra, 30
                  beq        t1, t1, 480f
475:              c.srai     a5, 1
                  srli       s3, a3, 23
                  c.slli     t6, 28
                  ori        s10, t2, 779
                  c.andi     s1, 20
480:              csrrc      s5, 0x340, t4
                  mulhu      s2, s8, s0
                  slt        s9, gp, a5
                  lui        a2, 853729
                  beq        t6, a3, 496f
                  addi       a1, zero, 7 #init loop 1 counter
                  add        a2, a1, a2
                  add        s2, a7, s8
                  c.add      a2, s11
                  addi       zero, zero, 0 #init loop 1 limit
                  sll        s4, t2, a4
sub_5_24_1_t:     mulhsu     s2, a1, gp
                  sra        s5, sp, gp
                  addi       a1, a1, -7 #update loop 1 counter
                  csrrsi     t6, 0x340, 26
                  csrrsi     t0, 0x340, 6
                  addi       a7, zero, -9 #init loop 0 counter
                  xori       s3, t2, -651
                  c.slli     a4, 20
                  addi       s1, zero, 16 #init loop 0 limit
                  c.srai     a2, 10
sub_5_24_0_t:     sltiu      s0, t4, -432
                  addi       a7, a7, 5 #update loop 0 counter
                  c.addi     s9, 19
                  blt        a7, s1, sub_5_24_0_t #branch for loop 0
                  c.xor      a2, a2
                  mulhsu     ra, ra, t1
                  c.bnez     a1, sub_5_24_1_t #branch for loop 1
                  c.srli     s0, 10
                  c.lui      a4, 16
                  div        s3, zero, s1
                  add        t6, s1, t6
                  srai       s0, t6, 7
                  csrrci     a0, 0x340, 12
                  or         a7, s10, a1
                  srl        s3, s11, s6
                  divu       t5, s7, t0
                  c.nop
                  xori       a2, a5, -397
                  mulhu      t1, ra, a2
496:              auipc      s4, 334643
                  mulhsu     a4, t4, t4
                  c.lui      t6, 24
                  c.nop
                  csrrc      t4, 0x340, a7
                  bge        t2, sp, 519f
                  div        s2, s8, a4
                  andi       t5, sp, 659
                  bne        ra, a7, 522f
                  c.nop
                  srl        s9, t0, sp
                  c.xor      a3, s0
                  nop
                  c.addi     a0, -1
                  csrrc      ra, 0x340, t1
                  c.li       a4, -1
                  sll        s5, t5, s6
                  sltiu      s0, t1, -997
                  c.xor      a1, s0
                  c.sub      a3, a0
                  addi       t2, s1, 332
                  sll        t1, a5, a6
                  sltu       ra, a2, s3
519:              c.slli     tp, 14
                  c.nop
                  sub        s2, t4, a2
522:              csrrc      a3, 0x340, a7
                  divu       a6, t1, s7
                  bgeu       tp, t2, 539f
                  sra        t4, s3, s11
                  c.bnez     a3, 529f
                  srl        zero, s6, s0
                  c.li       a1, -1
529:              c.mv       s0, s5
                  c.srli     a0, 5
                  andi       s6, s11, -559
                  div        t5, s9, s2
                  slt        s10, t3, s7
                  slt        s3, s2, t2
                  c.lui      s4, 23
                  c.beqz     a0, 538f
                  csrrc      a4, 0x340, a2
538:              srl        a7, ra, s4
539:              slt        tp, a3, a4
                  bne        ra, t1, 545f
                  c.li       s3, 23
                  srl        t5, s0, a7
                  c.nop
                  c.li       s9, -1
545:              mul        a0, t2, s0
                  c.add      a5, s4
                  srl        a5, tp, a2
                  mulh       a2, sp, t6
                  or         t2, t6, t1
                  srl        a2, a3, s4
                  mulhsu     tp, t4, t5
                  csrrsi     t5, 0x340, 13
                  srl        t0, gp, s6
                  beq        tp, a6, 560f
                  nop
                  csrrw      a7, 0x340, s7
                  c.or       a3, s0
                  add        s11, s4, s5
                  c.slli     a7, 15
560:              c.and      s0, s0
                  c.and      a1, s1
                  xori       zero, a2, 169
                  nop
                  c.sub      a5, a2
                  xor        t1, t2, a6
                  xor        s2, t5, a4
                  mulhu      s3, ra, s10
                  sub        a4, a0, a7
                  lui        s9, 470210
                  srai       s0, a4, 15
                  divu       a0, s6, sp
                  remu       zero, t3, s5
                  mulhsu     tp, sp, s5
                  slti       t5, s9, 828
                  auipc      a4, 247681
                  andi       s9, s10, -354
                  csrrc      t4, 0x340, a2
                  csrrsi     a5, 0x340, 29
                  sll        t5, sp, a6
                  csrrs      t1, 0x340, t1
                  slt        s2, s2, sp
                  divu       t0, a4, s2
                  auipc      tp, 888999
                  remu       a0, t4, zero
                  div        s4, s9, t5
                  c.sub      a4, s0
                  mul        t5, t4, s1
                  srli       t1, s11, 28
                  csrrsi     s2, 0x340, 24
                  xori       s4, t5, 53
                  csrrc      s9, 0x340, s4
                  mulhu      gp, s11, t0
                  add        a7, s4, a1
                  csrrw      s7, 0x340, s6
                  c.mv       a3, t6
                  fence
                  xor        s9, a0, sp
                  csrrw      a1, 0x340, s4
                  c.beqz     a4, 602f
                  auipc      zero, 696349
                  mulhu      s5, sp, tp
602:              ori        a2, gp, -712
                  add        t4, t5, t1
                  div        t4, ra, a1
                  bne        s1, s9, 616f
                  csrrw      zero, 0x340, s3
                  srli       s7, tp, 5
                  bge        a3, s3, 622f
                  sltiu      s0, ra, -546
                  and        s9, s2, s6
                  sub        t5, s4, t2
                  c.mv       a0, t6
                  srli       s2, s5, 4
                  beq        s7, a0, 625f
                  c.li       s0, -1
616:              csrrsi     a3, 0x340, 25
                  srli       t6, a0, 27
                  c.li       s2, 13
                  c.mv       t0, t1
                  c.beqz     s0, 631f
                  bltu       a5, a0, 639f
622:              beq        s3, t1, 624f
                  andi       a6, t1, 722
624:              beq        a4, a1, 636f
625:              xori       t0, a4, -129
                  sub        ra, t1, s8
                  csrrci     a2, 0x340, 22
                  c.sub      a1, a1
                  mul        t2, s10, a0
                  c.andi     a0, -1
631:              bne        a4, s7, 635f
                  and        gp, t3, a1
                  slt        a2, s8, s4
                  c.sub      a1, a3
635:              lui        s2, 41411
636:              sra        s7, sp, s1
                  slt        s2, gp, a4
                  slt        s11, a3, t0
639:              c.andi     a2, 3
                  sltiu      s11, zero, -792
                  bne        a4, sp, 658f
                  csrrs      s3, 0x340, t6
                  blt        a3, a3, 652f
                  sltiu      gp, t3, -530
                  mul        t2, t4, t3
                  c.nop
                  div        s0, t5, s5
                  and        s3, zero, s6
                  sltu       zero, a2, a4
                  slti       s5, a5, 581
                  remu       a1, s10, s8
652:              c.add      s3, a7
                  srai       a4, t5, 3
                  div        s3, a4, tp
                  xor        a7, s8, s6
                  c.srli     s0, 26
                  divu       t2, s5, a6
658:              div        s9, a7, s6
                  c.sub      a3, s0
                  c.mv       a1, a7
                  add        t4, t5, a0
                  c.srai     s0, 13
                  remu       a2, t4, t1
                  c.xor      a0, a0
                  mulhu      a1, s9, s11
                  csrrsi     tp, 0x340, 12
                  mulhu      a5, t5, t2
                  add        s5, s2, t6
                  slli       t6, tp, 14
                  sltiu      a4, s7, -567
                  mul        zero, a7, s11
                  srl        t1, sp, s1
                  andi       s4, a2, 984
                  mulhu      a3, s9, tp
                  c.bnez     s0, 686f
                  c.andi     a2, 9
                  mul        a6, t0, t6
                  sltiu      a0, s2, 833
                  c.sub      a1, s1
                  beq        t3, a5, 695f
                  add        ra, a5, t0
                  or         t5, a6, a0
                  c.lui      t4, 24
                  srai       s5, t4, 16
                  sub        s11, tp, t4
686:              c.bnez     a0, 698f
                  c.srli     a1, 4
                  mul        s2, t1, a1
                  sra        s4, a7, t6
                  c.mv       a2, s0
                  sltiu      s7, tp, 443
                  csrrs      t4, 0x340, t6
                  mul        s9, s6, a2
                  andi       s2, s7, -60
695:              mul        t6, a7, gp
                  xori       t5, s7, -169
                  bgeu       ra, a0, 708f
698:              bltu       a6, s11, 712f
                  div        a4, s1, t3
                  c.sub      a2, a4
                  div        tp, s4, a1
                  sltiu      s6, s8, 337
                  sub        s7, s9, s0
                  add        s4, tp, a0
                  sra        a7, t3, a4
                  c.nop
                  mulh       a4, s8, t6
708:              c.mv       t6, s3
                  mulhu      t1, a3, tp
                  rem        t1, a0, a4
                  srli       a6, t6, 26
712:              bne        sp, s1, 715f
                  rem        t1, a4, t3
                  c.bnez     a5, 720f
715:              c.xor      a5, s1
                  xori       s6, t5, 124
                  c.addi     tp, -1
                  c.addi     a1, 10
                  mulh       ra, zero, tp
720:              c.andi     a1, -1
                  beq        s7, a1, 730f
                  srai       zero, a3, 23
                  c.add      s0, t5
                  mulhsu     t6, tp, s9
                  sltiu      tp, tp, -16
                  fence.i
                  div        a1, s9, s4
                  c.srli     a4, 4
                  xor        s2, s4, a0
730:              mulh       s4, sp, t4
                  mulhu      zero, sp, s5
                  mulhsu     a3, s6, zero
                  andi       s7, s6, 50
                  c.srai     s1, 8
                  sub        t6, s3, gp
                  sra        s1, s7, a0
                  addi       a4, s6, -614
                  c.li       gp, -1
                  c.nop
                  c.or       a4, s1
                  lui        s6, 715908
                  and        t0, tp, t0
                  addi       a1, s3, -539
                  sra        a3, a0, a2
                  slt        s7, a4, zero
                  slli       a2, a7, 9
                  csrrw      a4, 0x340, t4
                  remu       s7, s5, s5
                  mulhu      s7, s11, a0
                  nop
                  sltu       t0, a0, s1
                  bltu       a4, zero, 771f
                  rem        t0, t3, s4
                  c.bnez     a4, 774f
                  bne        s11, zero, 774f
                  auipc      a6, 805467
                  c.li       t2, -1
                  rem        a1, tp, t6
                  c.srai     a5, 11
                  xor        s7, ra, s3
                  andi       a4, s4, -179
                  nop
                  and        t0, s11, a0
                  blt        s11, s9, 773f
                  srli       s1, s7, 17
                  add        t5, tp, a3
                  bgeu       zero, a1, 770f
                  sll        a1, sp, a0
                  srai       a6, ra, 9
770:              c.li       t5, -1
771:              beq        a1, t3, 773f
                  lui        t1, 980155
773:              csrrs      s10, 0x340, sp
774:              and        s7, s6, a4
                  ori        a5, s8, 273
                  c.mv       a1, a7
                  c.nop
                  c.mv       s9, s1
                  csrrsi     a7, 0x340, 28
                  mulhu      t2, s11, a1
                  csrrc      a4, 0x340, a1
                  sltiu      a6, t5, -89
                  fence
                  fence
                  bne        ra, t3, 791f
                  c.srai     a1, 27
                  xori       gp, t3, -690
                  slt        s3, a4, s8
                  beq        s1, s1, 806f
                  srli       s3, s3, 22
791:              c.nop
                  c.or       a1, a5
                  csrrs      a2, 0x340, t3
                  srl        t6, s3, a0
                  c.and      s1, a3
                  c.sub      s0, a3
                  and        ra, s8, a1
                  c.nop
                  c.slli     a7, 16
                  andi       tp, s2, 434
                  slti       t2, a4, 803
                  csrrci     gp, 0x340, 23
                  nop
                  bltu       a5, a1, 819f
                  bne        s11, t5, 808f
806:              slti       s2, s2, -412
                  beq        s1, a1, 818f
808:              div        tp, gp, s8
                  sltu       s0, a7, t5
                  c.addi     a5, 29
                  slt        a2, t0, sp
                  c.li       s0, 30
                  c.andi     s0, 12
                  and        s2, a3, a5
                  sra        a4, s3, tp
                  mulh       s10, a5, s10
                  csrrci     a7, 0x340, 10
818:              mul        s4, a0, s6
819:              mulh       t0, a6, s10
                  andi       gp, t6, -445
                  c.srli     a4, 11
                  rem        s9, s5, a2
                  andi       ra, t1, -302
                  csrrci     zero, 0x340, 9
                  lui        s2, 55021
                  or         ra, s8, a0
                  xor        a6, ra, a5
                  c.and      a0, a0
                  andi       s3, s11, -589
                  slli       s7, t1, 16
                  nop
                  srli       s7, a0, 13
                  slli       ra, a5, 20
                  c.beqz     a2, 849f
                  or         t0, s7, s9
                  fence.i
                  c.slli     t1, 24
                  c.lui      s6, 29
                  bgeu       t2, t3, 850f
                  slti       a5, t3, 216
                  slti       s6, zero, 466
                  c.srai     a2, 17
                  mulhsu     t6, t2, s11
                  csrrwi     s9, 0x340, 18
                  mulhsu     s2, s4, s3
                  slt        a1, s10, s0
                  c.mv       t6, t1
                  c.lui      ra, 23
849:              csrrci     t2, 0x340, 17
850:              bltu       t6, s2, 856f
                  sltu       a3, t6, gp
                  csrrsi     s10, 0x340, 14
                  csrrci     t4, 0x340, 16
                  addi       a2, a4, 467
                  csrrs      a2, 0x340, ra
856:              mulhu      s3, t6, zero
                  srl        s10, t6, a2
                  c.srli     a1, 16
                  srai       t2, t6, 27
                  sll        s3, a4, a4
                  c.or       a5, a2
                  mul        a5, s1, t2
                  bgeu       s0, t4, 881f
                  xor        a0, zero, s6
                  bltu       s7, a6, 867f
                  csrrs      a5, 0x340, zero
867:              bltu       t4, a1, 879f
                  mulhu      s4, s3, gp
                  fence.i
                  c.bnez     a5, 873f
                  c.nop
                  or         zero, s8, t0
873:              c.nop
                  xori       a0, sp, 239
                  divu       gp, s8, ra
                  csrrw      tp, 0x340, s11
                  rem        t6, s9, a1
                  csrrc      tp, 0x340, ra
879:              bge        t4, a4, 888f
                  c.add      a6, a7
881:              c.bnez     a1, 895f
                  nop
                  bgeu       t6, t4, 895f
                  bne        t1, s2, 896f
                  sub        s7, s2, a7
                  c.xor      a5, a2
                  slt        t1, s11, s2
888:              mulhsu     gp, t3, a4
                  divu       s7, a7, a6
                  c.add      a3, s4
                  div        tp, s6, a5
                  sltiu      s0, s7, 683
                  sra        s3, sp, zero
                  mulhsu     a7, s1, s0
895:              csrrw      s7, 0x340, gp
896:              slt        t2, a3, s4
                  slti       s10, t6, -842
                  sll        t6, a5, s11
                  remu       a4, ra, tp
                  mul        s0, a2, t5
                  c.lui      a2, 3
                  c.sub      a0, a4
                  mulhsu     gp, a1, s1
                  fence
                  srli       tp, s10, 20
                  csrrci     a1, 0x340, 25
                  bltu       tp, t6, 925f
                  c.xor      a3, a0
                  c.addi     t1, 25
                  bne        sp, s1, 928f
                  bge        t5, t6, 916f
                  sltu       gp, ra, a6
                  fence
                  and        s5, t4, a4
                  srli       s3, s7, 1
916:              csrrsi     s3, 0x340, 6
                  c.li       s0, -1
                  sra        a6, s10, a5
                  srl        a2, a4, a2
                  add        a5, s7, t2
                  auipc      t0, 176130
                  c.bnez     s1, 926f
                  srai       a4, a5, 7
                  bgeu       s4, s7, 935f
925:              csrrsi     s5, 0x340, 9
926:              c.beqz     a5, 940f
                  sub        s0, t5, s1
928:              xori       a0, a6, -503
                  fence.i
                  divu       a6, s5, ra
                  sltiu      a7, t0, 658
                  ori        a0, gp, -645
                  beq        a3, s11, 939f
                  c.xor      a5, a4
935:              csrrsi     s5, 0x340, 8
                  fence.i
                  c.sub      s1, a0
                  sub        s6, t6, t3
939:              c.beqz     a3, 959f
940:              bltu       t4, s6, 951f
                  mulhsu     a2, s2, s2
                  xor        t0, gp, a7
                  blt        a5, s4, 954f
                  c.bnez     s1, 962f
                  c.or       a4, a3
                  remu       s10, s1, t2
                  sltu       s3, s10, sp
                  xor        zero, a3, tp
                  mulhu      ra, a7, t2
                  div        a3, s3, a1
951:              c.srli     s0, 4
                  c.mv       t4, t6
                  c.mv       gp, t2
954:              ori        s2, a3, 24
                  srai       a0, s9, 17
                  csrrci     a6, 0x340, 25
                  add        a1, s4, s2
                  srai       a7, tp, 30
959:              slli       zero, a7, 8
                  xori       t2, s6, -953
                  csrrc      t6, 0x340, s0
962:              add        t2, t2, t3
                  sll        s2, t4, s5
                  sra        tp, s1, a2
                  bne        s3, t6, 976f
                  div        a1, t3, gp
                  bgeu       a2, s3, 982f
                  fence.i
                  bge        gp, sp, 989f
                  slt        zero, t4, ra
                  sub        s10, s3, zero
                  c.add      s5, ra
                  csrrw      s6, 0x340, t0
                  divu       a2, s11, s1
                  remu       a5, sp, tp
976:              sub        s2, s9, zero
                  c.beqz     a5, 983f
                  sub        t1, a1, s2
                  nop
                  csrrw      t6, 0x340, s6
                  c.srai     a0, 18
982:              csrrw      s5, 0x340, s8
983:              bltu       tp, t4, 1002f
                  csrrw      t1, 0x340, sp
                  fence
                  c.srai     a1, 27
                  or         s2, zero, t0
                  mul        s9, t2, t6
989:              mulhsu     gp, t5, gp
                  bltu       a6, a5, 1008f
                  sltu       a1, s11, t0
                  sll        s1, t2, s4
                  sub        a1, a1, t4
                  sltiu      s4, zero, 893
                  sll        s7, s10, gp
                  c.srai     a4, 8
                  sub        s7, s2, ra
                  rem        s11, sp, s9
                  c.srli     a4, 12
                  c.slli     s9, 17
                  blt        s5, s9, 1018f
1002:             fence
                  srai       a4, t5, 4
                  slli       zero, s3, 11
                  c.andi     a3, 10
                  beq        t2, s4, 1017f
                  ori        a4, s4, -893
1008:             sub        s9, sp, t1
                  la         s7, region_1+14867 #start riscv_hazard_instr_stream_1
                  srli       a3, a3, 0
                  lb         zero, -638(s7)
                  mulhsu     zero, a3, zero
                  remu       a3, s10, s9
                  csrrs      a3, 0x340, zero
                  csrrs      s10, 0x340, s10
                  sh         zero, -153(s7)
                  slt        a3, s9, s9
                  c.mv       a3, a3
                  lb         zero, 753(s7)
                  fence.i
                  srli       s5, s9, 19
                  and        s10, s5, a1
                  lb         s5, 234(s7)
                  lb         a1, -1795(s7)
                  sb         s10, 1387(s7)
                  lbu        s5, 924(s7)
                  lb         s9, -904(s7)
                  sh         a3, 1203(s7)
                  lb         s10, -1481(s7)
                  slt        a1, zero, s5
                  lw         a3, 1489(s7)
                  lbu        a3, -272(s7)
                  lbu        zero, 474(s7)
                  lbu        s5, 955(s7)
                  lbu        zero, -1730(s7)
                  lb         s5, -1123(s7)
                  sb         a1, -1703(s7)
                  lb         s9, -874(s7)
                  add        zero, s9, a3
                  sb         s9, -885(s7)
                  lb         a1, -738(s7)
                  csrrwi     a3, 0x340, 6
                  addi       a1, a3, 29
                  add        s9, s5, a3
                  add        s5, s5, a1
                  c.sub      a1, a3
                  rem        s9, s9, a3
                  c.andi     a1, -1
                  c.nop
                  sh         s10, -751(s7)
                  mulhsu     s5, s5, s9
                  slti       s9, s5, -852
                  lbu        a1, -1322(s7)
                  c.sub      a3, a3
                  nop
                  remu       s9, s9, s10
                  lb         zero, 750(s7)
                  c.add      s10, s10
                  slli       a3, zero, 8
                  slli       zero, a3, 8
                  sb         s9, -1560(s7) #end riscv_hazard_instr_stream_1
                  c.or       a1, a5
                  lui        s1, 590263
                  blt        a3, t0, 1022f
                  c.andi     a1, -1
                  srli       s7, a6, 10
                  c.add      s7, s5
                  bge        s4, s11, 1027f
                  xori       tp, t1, -78
1017:             c.lui      s4, 13
1018:             sltiu      a7, ra, 1023
                  rem        zero, t1, s11
                  csrrsi     gp, 0x340, 12
                  sltiu      t2, a4, -72
1022:             c.beqz     s1, 1031f
                  mulhu      zero, t4, gp
                  srl        tp, s1, a0
                  c.andi     s0, -1
                  sll        a7, s10, s1
1027:             srl        a1, gp, a6
                  bne        a7, tp, 1033f
                  sra        zero, s1, zero
                  and        ra, s4, t6
1031:             rem        s6, s0, t4
                  remu       s1, a3, s4
1033:             sll        a6, tp, t2
                  lui        s6, 986218
                  mulhsu     t2, s9, ra
                  csrrc      a0, 0x340, sp
                  slt        s6, t3, s8
                  mulhu      s9, a6, t2
                  csrrw      t0, 0x340, a6
                  andi       ra, t4, -326
                  c.mv       tp, t4
                  srli       a1, gp, 12
                  lui        s1, 329225
                  bgeu       a3, t6, 1058f
                  bge        s8, a6, 1056f
                  c.lui      a4, 11
                  c.li       ra, 21
                  xor        a0, s7, t3
                  bne        s10, ra, 1061f
                  bgeu       a5, s7, 1059f
                  xor        s2, t2, s2
                  addi       a5, s1, 462
                  auipc      a7, 826855
                  sltu       s0, s2, t5
                  sltiu      t2, ra, 963
1056:             sltiu      zero, t0, 355
                  remu       t1, t1, a7
1058:             divu       s10, s7, ra
1059:             andi       t5, s10, 305
                  remu       a3, s1, s5
1061:             xor        s4, t5, ra
                  c.add      s3, gp
                  and        s5, a0, t2
                  bne        t1, s11, 1067f
                  c.li       s4, -1
                  beq        zero, s11, 1072f
1067:             fence.i
                  mulh       s1, t6, gp
                  sra        t1, a2, a0
                  remu       s2, a6, a0
                  nop
1072:             c.bnez     a5, 1078f
                  mulhu      s0, t0, a1
                  csrrci     s3, 0x340, 2
                  c.beqz     a3, 1078f
                  csrrs      t2, 0x340, s0
                  csrrci     s2, 0x340, 24
1078:             rem        gp, s10, zero
                  mul        t6, a3, ra
                  srl        t6, s11, gp
                  srl        s6, ra, ra
                  xor        s11, s4, a3
                  c.nop
                  ori        tp, a5, 319
                  c.beqz     a5, 1099f
                  beq        t1, s6, 1089f
                  c.and      a2, a2
                  c.add      a7, sp
1089:             sltu       a1, s11, t4
                  beq        s8, a4, 1105f
                  slt        s5, ra, a2
                  csrrw      t5, 0x340, a0
                  c.slli     s9, 1
                  auipc      s6, 661547
                  c.addi     a2, 9
                  beq        gp, s2, 1114f
                  divu       ra, gp, sp
                  c.srai     a2, 25
1099:             ori        ra, sp, 506
                  csrrwi     s7, 0x340, 9
                  srai       s11, s0, 7
                  mulhu      a3, a4, t3
                  bltu       s11, t1, 1107f
                  slli       s6, s8, 6
1105:             mulhu      a5, s10, a4
                  mul        ra, a0, s1
1107:             lui        a0, 943264
                  c.slli     s6, 4
                  sltiu      s2, a1, -512
                  sub        a3, a2, a2
                  fence.i
                  c.sub      a4, s0
                  xori       a6, tp, 665
1114:             bge        zero, t2, 1116f
                  xor        t4, t4, a6
1116:             and        t0, a6, a1
                  and        a3, a6, t3
                  sra        a2, s5, t4
                  xori       a5, a3, -822
                  csrrci     s5, 0x340, 9
                  c.sub      a0, a1
                  andi       s0, s5, -758
                  mulhsu     t2, a0, ra
                  fence
                  csrrsi     s3, 0x340, 31
                  blt        ra, a7, 1137f
                  blt        tp, s9, 1129f
                  csrrc      t4, 0x340, t2
1129:             xori       a0, s11, 583
                  c.or       a1, s0
                  c.add      s9, a0
                  bltu       gp, a4, 1144f
                  or         a5, t5, a6
                  c.mv       s1, t6
                  c.srai     a5, 16
                  nop
1137:             c.bnez     a4, 1139f
                  srai       ra, ra, 6
1139:             ori        s2, t0, 462
                  csrrsi     a3, 0x340, 31
                  srli       s3, a0, 2
                  divu       a2, ra, s10
                  c.xor      a1, s1
1144:             csrrw      a5, 0x340, sp
                  div        zero, zero, t4
                  fence.i
                  c.nop
                  addi       s1, t4, 850
                  nop
                  c.xor      a5, s1
                  div        a2, zero, s4
                  div        tp, t4, s11
                  bge        t2, s1, 1167f
                  srai       s3, a1, 4
                  c.bnez     a0, 1173f
                  addi       a5, a2, 431
                  c.lui      tp, 17
                  c.bnez     a0, 1167f
                  csrrci     s2, 0x340, 10
                  div        a4, tp, s1
                  slli       s3, gp, 10
                  csrrw      s9, 0x340, t0
                  c.nop
                  rem        t4, s3, a0
                  srl        ra, s7, s1
                  csrrs      t1, 0x340, a7
1167:             srai       a4, a7, 19
                  xori       s3, s3, -450
                  nop
                  remu       a1, s7, s1
                  c.srli     s0, 22
                  sltiu      t2, sp, -154
1173:             bltu       zero, s10, 1176f
                  c.srai     a2, 11
                  sll        s9, t2, t1
1176:             slt        s4, s10, ra
                  slti       s1, a2, 271
                  srl        tp, t0, gp
                  mulh       a3, a4, s5
                  beq        s7, a5, 1199f
                  sra        s11, a3, zero
                  nop
                  slti       a7, s10, 482
                  slti       t4, s4, 791
                  sra        a1, s3, s10
                  slti       a7, zero, 1006
                  fence.i
                  csrrwi     s4, 0x340, 23
                  sltiu      a7, a6, 443
                  mulhu      tp, t2, a0
                  xori       s3, s11, 130
                  c.mv       t1, s9
                  slti       a0, t5, -531
                  div        t0, s9, s8
                  csrrsi     a2, 0x340, 30
                  ori        zero, t2, -192
                  andi       ra, s3, 631
                  xori       a1, a1, 860
1199:             srai       s9, t6, 14
                  and        gp, s2, s6
                  xor        s7, tp, a2
                  bltu       a2, sp, 1214f
                  mulhu      s4, t6, s1
                  mul        s9, t3, a3
                  c.sub      a0, a2
                  c.li       t4, -1
                  add        t5, a2, s4
                  bne        t2, s4, 1211f
                  c.addi     s11, 9
                  c.andi     a2, -1
1211:             andi       a4, t1, -65
                  slt        ra, s3, s5
                  slti       s3, gp, -313
1214:             c.srli     a5, 10
                  mulhu      a4, a5, a4
                  bne        zero, t6, 1222f
                  remu       t2, tp, s10
                  mulhu      s9, a1, tp
                  and        s3, s6, a3
                  mul        t6, s8, a3
                  xor        s0, s5, s3
1222:             auipc      s7, 350400
                  c.xor      a0, s1
                  lui        s4, 545181
                  fence
                  c.xor      a5, a5
                  slti       t4, a7, 656
                  srli       s0, s7, 0
                  bne        s10, s0, 1234f
                  c.bnez     a0, 1239f
                  and        t6, tp, a4
                  csrrc      s6, 0x340, t4
                  addi       s6, s4, 662
1234:             or         ra, t3, a7
                  slt        t4, a1, t6
                  c.andi     a3, 31
                  bgeu       a0, t0, 1243f
                  sltu       t2, t1, t3
1239:             or         a1, s10, s2
                  c.lui      a3, 25
                  ori        a2, s8, 653
                  bne        tp, a0, 1260f
1243:             sra        s4, tp, s7
                  c.and      a4, a0
                  mul        s2, t4, s7
                  mulhsu     t6, zero, s7
                  c.or       a4, s0
                  div        ra, t4, t3
                  sltu       s5, s2, s10
                  c.sub      a3, a5
                  csrrw      s7, 0x340, s10
                  mulhu      s1, s10, a0
                  bltu       t2, a5, 1264f
                  c.lui      t4, 10
                  ori        a7, s2, 138
                  mulhsu     gp, zero, t2
                  add        t2, t2, t2
                  sltu       s0, a4, t0
                  sltiu      a1, a7, -170
1260:             sub        a1, s0, s8
                  slli       ra, sp, 16
                  c.andi     s0, 21
                  lui        s2, 265747
1264:             nop
                  slli       t0, gp, 5
                  csrrc      a3, 0x340, t4
                  c.slli     s10, 6
                  c.srli     a0, 20
                  csrrsi     a6, 0x340, 14
                  mulhu      a2, s8, gp
                  and        s7, ra, s7
                  csrrsi     a0, 0x340, 30
                  remu       t2, s2, s10
                  bne        t5, s11, 1277f
                  bge        s7, a6, 1286f
                  c.lui      t5, 31
1277:             mulh       s10, s11, a2
                  slti       tp, gp, 631
                  slt        s10, gp, t0
                  sll        s2, t1, s5
                  div        s11, a7, s8
                  nop
                  c.slli     s3, 16
                  slt        a5, s11, s9
                  mulh       t4, t6, s9
1286:             c.lui      t6, 1
                  remu       s2, s11, t1
                  c.mv       t2, s11
                  sltu       s7, s4, s5
                  bne        a5, s3, 1292f
                  fence.i
1292:             blt        s8, s7, 1307f
                  csrrc      zero, 0x340, t6
                  bge        t0, tp, 1308f
                  csrrw      s5, 0x340, s10
                  fence.i
                  c.beqz     s1, 1309f
                  c.lui      s10, 2
                  c.srai     a1, 27
                  csrrwi     s6, 0x340, 24
                  c.beqz     a3, 1319f
                  slti       s4, a6, 760
                  remu       a1, a5, zero
                  csrrw      a6, 0x340, tp
                  csrrc      t2, 0x340, a0
                  bgeu       s0, gp, 1310f
1307:             and        ra, s11, sp
1308:             lui        a1, 568699
1309:             c.mv       s3, a7
1310:             blt        a7, s3, 1316f
                  c.beqz     a5, 1322f
                  c.srli     a2, 15
                  divu       s5, a7, s7
                  addi       s6, gp, 143
                  bne        s0, a0, 1327f
1316:             slti       t2, s9, -997
                  c.srai     a2, 26
                  and        zero, s1, t6
1319:             and        a5, t6, t6
                  lui        s6, 635021
                  mulh       a6, s1, t0
1322:             mulhu      t0, tp, t6
                  mul        t2, gp, t2
                  xor        a6, t1, s10
                  slli       s4, t4, 25
                  addi       a6, ra, 179
1327:             auipc      t5, 789411
                  srli       tp, a5, 15
                  c.nop
                  remu       t6, t3, t6
                  slt        ra, a2, s1
                  c.and      s0, s1
                  slt        t2, a4, t5
                  bltu       tp, ra, 1349f
                  c.xor      a3, a3
                  c.and      a2, a0
                  csrrc      t5, 0x340, t0
                  c.xor      a5, a0
                  sll        a3, a2, zero
                  bne        t4, s0, 1351f
                  xori       s9, sp, 795
                  c.slli     s9, 25
                  addi       s7, s8, 225
                  c.srai     s1, 17
                  addi       a2, s1, 457
                  csrrs      s9, 0x340, s10
                  rem        s5, t4, a7
                  nop
1349:             sra        gp, zero, t6
                  and        s3, a0, t1
1351:             c.xor      a0, a2
                  c.or       a1, a5
                  srli       t0, s8, 21
                  csrrci     t2, 0x340, 19
                  c.srli     a1, 24
                  c.xor      a4, s0
                  srli       s7, s11, 14
                  csrrs      a1, 0x340, s5
                  bne        t4, t6, 1376f
                  c.sub      a5, a4
                  c.add      t5, s10
                  mul        a7, s3, a7
                  csrrc      s5, 0x340, s7
                  csrrc      tp, 0x340, zero
                  divu       s4, a7, s7
                  sltu       s2, s11, gp
                  csrrsi     a1, 0x340, 13
                  c.sub      a5, a2
                  sub        s1, tp, s3
                  c.mv       gp, t0
                  c.mv       s10, s5
                  srli       t6, t4, 15
                  mulhsu     s3, s10, s7
                  csrrwi     s9, 0x340, 15
                  srl        zero, t6, s1
1376:             bltu       zero, a1, 1387f
                  div        t4, s6, t3
                  sll        a4, s7, t0
                  div        a1, a4, zero
                  sltiu      a3, t0, -701
                  c.slli     a0, 26
                  xori       a4, a7, -722
                  bltu       t0, t5, 1403f
                  blt        t0, a2, 1402f
                  beq        s6, a7, 1403f
                  c.beqz     s1, 1398f
1387:             c.bnez     a4, 1398f
                  slti       s9, a2, 136
                  auipc      s10, 346806
                  bgeu       s9, s2, 1399f
                  addi       t4, t3, 544
                  bge        a6, s11, 1395f
                  srl        a4, t4, t5
                  lui        s7, 57040
1395:             fence.i
                  rem        a1, t5, s6
                  c.lui      s9, 17
1398:             mul        t1, s3, a3
1399:             srl        a7, a1, a5
                  lui        s5, 22723
                  fence.i
1402:             c.li       a0, 1
1403:             mulh       s2, s0, ra
                  blt        s0, s0, 1416f
                  blt        s8, a6, 1425f
                  c.beqz     a2, 1417f
                  xor        s6, t5, ra
                  la         s9, region_3+508 #start riscv_load_store_rand_instr_stream_5
                  sltu       s7, gp, t0
                  c.or       a0, a1
                  sh         s0, -318(s9)
                  c.srai     a4, 4
                  c.srli     a4, 17
                  csrrs      s7, 0x340, a1
                  lw         s2, -300(s9)
                  c.li       s4, 30
                  sw         s9, -28(s9)
                  lhu        t6, -458(s9)
                  lhu        s11, -410(s9)
                  sb         t6, -445(s9)
                  lhu        a2, -338(s9)
                  lb         t2, -344(s9)
                  csrrci     a6, 0x340, 6
                  lb         zero, -471(s9)
                  rem        a3, a3, tp
                  c.srai     a2, 5
                  lbu        s3, -83(s9)
                  sb         a4, -205(s9)
                  csrrc      s5, 0x340, s8
                  lb         t5, -255(s9)
                  sb         s4, -178(s9)
                  sb         s5, -275(s9)
                  c.andi     a1, -1
                  lhu        a3, -324(s9)
                  lbu        s3, -453(s9)
                  fence.i
                  lw         s2, -108(s9)
                  lbu        t5, -425(s9)
                  lb         ra, -433(s9)
                  div        s0, s1, s11
                  lh         t1, 0(s9)
                  sw         a4, -236(s9)
                  lhu        s7, -128(s9)
                  mul        t4, s9, a5
                  sb         t0, -123(s9)
                  lb         s1, -497(s9)
                  mulhu      ra, a1, sp
                  c.srli     s0, 25
                  lb         a5, -135(s9)
                  lb         t0, -454(s9)
                  csrrc      s5, 0x340, gp
                  rem        tp, ra, s0
                  lw         s5, -308(s9)
                  c.sub      a4, s1
                  lb         gp, -43(s9) #end riscv_load_store_rand_instr_stream_5
                  c.nop
                  blt        a3, tp, 1427f
                  c.add      a5, t5
                  srai       ra, a2, 14
                  add        s6, s6, s9
                  mulhsu     s3, t2, t0
                  bltu       a1, s11, 1429f
                  auipc      s9, 457932
1416:             bgeu       a6, s9, 1422f
1417:             andi       s1, t0, -163
                  mul        s2, a4, zero
                  c.xor      s1, s1
                  c.mv       s11, t1
                  fence.i
1422:             bne        s5, s11, 1424f
                  div        a4, a0, t6
1424:             c.lui      s4, 6
1425:             csrrw      s5, 0x340, s8
                  c.addi     a1, 16
1427:             csrrwi     t0, 0x340, 27
                  ori        a1, s8, 914
1429:             mul        t1, s6, s3
                  c.lui      t1, 4
                  addi       a0, s9, 240
                  srli       t2, sp, 1
                  srl        t0, ra, a5
                  mulhsu     s4, a2, s1
                  csrrci     s4, 0x340, 17
                  auipc      a5, 770501
                  c.li       a4, 13
                  slt        t0, t2, a0
                  addi       s5, a1, 824
                  csrrs      a7, 0x340, sp
                  c.addi     gp, -1
                  sltu       s3, zero, a2
                  nop
                  bgeu       a7, zero, 1461f
                  sltu       s2, zero, a6
                  c.andi     s1, 4
                  add        tp, sp, t2
                  bge        s11, a4, 1467f
                  c.mv       ra, gp
                  auipc      ra, 778688
                  csrrsi     s6, 0x340, 26
                  c.li       s0, 15
                  sll        s6, s1, s2
                  c.sub      a2, s1
                  c.andi     s0, 21
                  nop
                  sra        t5, a7, s10
                  sltu       t6, t4, s11
                  c.or       a1, a3
                  srli       s4, tp, 17
1461:             nop
                  and        tp, a1, s0
                  bne        a1, gp, 1474f
                  c.add      s0, s1
                  fence.i
                  addi       s0, t5, 960
1467:             c.add      a1, a6
                  c.bnez     a2, 1482f
                  andi       s11, a1, 58
                  sltiu      s11, gp, -132
                  c.and      a1, a5
                  srai       s1, a2, 13
                  csrrs      t4, 0x340, t0
1474:             csrrci     t5, 0x340, 28
                  c.or       a2, s1
                  c.or       a0, s1
                  c.srli     s1, 28
                  add        s3, t5, a0
                  srai       t2, s11, 4
                  beq        t3, a5, 1491f
                  c.srli     a0, 2
1482:             csrrw      a7, 0x340, a2
                  c.and      a3, a2
                  srli       s11, a0, 5
                  bge        a2, t6, 1488f
                  c.bnez     a1, 1491f
                  bgeu       s5, a4, 1491f
1488:             bltu       t1, t1, 1494f
                  c.bnez     a1, 1500f
                  mul        a4, a6, tp
1491:             slti       s0, a5, 309
                  blt        s2, t5, 1498f
                  auipc      tp, 528462
1494:             sltu       a0, a5, s4
                  bne        ra, ra, 1497f
                  xor        s10, zero, t0
1497:             csrrci     a7, 0x340, 29
1498:             mulhu      t1, s2, s9
                  fence.i
1500:             fence.i
                  or         s10, s0, a5
                  c.bnez     a0, 1516f
                  or         t2, t1, a5
                  csrrsi     t4, 0x340, 29
                  bne        s0, a0, 1517f
                  remu       a4, s0, a5
                  xor        s3, t2, s0
                  ori        a4, a2, 763
                  csrrsi     s4, 0x340, 17
                  lui        s4, 418727
                  bgeu       t1, a4, 1514f
                  srl        t5, s3, s4
                  fence
1514:             nop
                  mulhsu     t2, a0, t4
1516:             ori        a4, s5, 619
1517:             c.beqz     a1, 1526f
                  c.lui      a3, 6
                  csrrw      s11, 0x340, a7
                  c.lui      a1, 17
                  csrrwi     tp, 0x340, 6
                  bltu       t0, t1, 1537f
                  csrrsi     a1, 0x340, 3
                  lui        a4, 775416
                  c.srai     a3, 4
1526:             c.bnez     a1, 1532f
                  remu       gp, s4, sp
                  c.addi     a1, -1
                  c.and      a4, a4
                  rem        s4, s8, sp
                  c.addi     s5, 6
1532:             xor        tp, a0, s11
                  sll        a6, s7, t1
                  srl        a3, a7, a5
                  rem        t1, s10, s11
                  sltiu      s4, s7, -486
                  la         t6, region_0+64 #start riscv_hazard_instr_stream_2
                  lb         a5, 175(t6)
                  sb         a4, -50(t6)
                  mulh       zero, a1, s10
                  rem        ra, a5, s10
                  rem        s10, s10, a5
                  lb         a5, 209(t6)
                  remu       a4, a5, a1
                  sb         ra, 16(t6)
                  sb         s10, 77(t6)
                  lbu        ra, 255(t6)
                  csrrs      zero, 0x340, a5
                  sh         a1, 178(t6)
                  sb         a4, 37(t6)
                  lb         s10, 118(t6)
                  sw         a1, 256(t6)
                  lh         a5, 34(t6)
                  xori       a5, a4, 755
                  c.xor      a4, a1
                  c.nop
                  csrrci     s10, 0x340, 17
                  c.nop
                  lb         s10, -61(t6)
                  mulhu      ra, zero, a4
                  addi       s10, zero, -845
                  sb         zero, -3(t6)
                  c.slli     ra, 31
                  lw         a4, 236(t6) #end riscv_hazard_instr_stream_2
1537:             lui        t0, 779643
                  xori       s1, t3, -556
                  sra        s1, a1, ra
                  c.beqz     a4, 1554f
                  srai       t0, sp, 15
                  rem        t4, s3, ra
                  slti       a3, s0, -938
                  sltiu      a4, a4, -874
                  fence
                  c.slli     s3, 24
                  rem        a2, gp, a3
                  slt        a3, s0, s4
                  c.andi     a1, 1
                  sll        a3, s1, ra
                  xori       a4, a7, -596
                  bne        s9, sp, 1561f
                  c.li       s0, -1
1554:             slt        s11, a1, sp
                  mulh       a2, a2, sp
                  remu       a0, s11, s4
                  slt        s9, t4, gp
                  slt        a4, s10, s10
                  mul        s9, s6, zero
                  addi       s10, a5, 146
1561:             sltu       t2, s0, s4
                  andi       a1, s7, 4
                  lui        s5, 750106
                  andi       s11, a0, 373
                  sll        a3, t0, s0
                  remu       a4, s4, tp
                  blt        s4, t5, 1569f
                  sra        t6, zero, a1
1569:             csrrsi     s4, 0x340, 21
                  beq        gp, s0, 1585f
                  srli       s9, a3, 23
                  csrrsi     a1, 0x340, 29
                  c.and      a1, a3
                  nop
                  csrrs      a1, 0x340, gp
                  c.srai     a3, 4
                  c.nop
                  c.lui      s2, 25
                  c.li       a6, 9
                  srai       a1, s0, 6
                  fence
                  slt        s9, s2, s2
                  blt        s9, a0, 1603f
                  slt        s4, t4, s8
1585:             addi       s11, t5, 343
                  mulhsu     tp, a5, t0
                  addi       s9, zero, 61
                  c.srai     s0, 31
                  andi       ra, a1, 225
                  auipc      gp, 818303
                  srl        s11, t3, s7
                  c.mv       s2, s5
                  csrrc      a2, 0x340, s2
                  c.li       a1, -1
                  c.mv       s1, s6
                  addi       a2, s3, -716
                  csrrc      s1, 0x340, t2
                  and        t4, a7, s5
                  xori       s7, t0, 685
                  csrrs      a6, 0x340, a0
                  addi       gp, t3, -85
                  srl        ra, a4, s11
1603:             bne        s1, a4, 1615f
                  bltu       a6, zero, 1615f
                  c.bnez     a1, 1616f
                  div        a5, t1, s4
                  auipc      t0, 1027525
                  fence
                  fence.i
                  c.add      s6, gp
                  addi       s7, a5, -832
                  bge        s1, a1, 1631f
                  slti       t0, s11, -760
                  andi       s9, t1, 353
1615:             c.srai     s1, 8
1616:             csrrsi     s11, 0x340, 8
                  divu       ra, s1, gp
                  slt        zero, t6, a6
                  xori       s7, t2, -255
                  srli       a1, a0, 13
                  mulhsu     t2, t4, t4
                  c.slli     s7, 12
                  c.li       s11, -1
                  csrrw      t1, 0x340, sp
                  bne        t1, s9, 1630f
                  csrrs      s10, 0x340, a6
                  and        t4, s2, sp
                  srai       s3, t1, 24
                  csrrw      s3, 0x340, s7
1630:             csrrwi     t5, 0x340, 22
1631:             div        gp, s0, s4
                  sra        a5, s5, t2
                  csrrw      s0, 0x340, t4
                  csrrc      s0, 0x340, a7
                  xor        t5, s1, t6
                  csrrsi     t6, 0x340, 27
                  c.beqz     a3, 1654f
                  sra        s6, s11, t5
                  c.xor      a1, a4
                  sub        a4, s11, tp
                  csrrsi     ra, 0x340, 8
                  bge        t5, s0, 1654f
                  auipc      a5, 413381
                  c.add      t5, t1
                  or         t4, s3, t0
                  sltiu      a1, s11, 494
                  bne        a4, t1, 1658f
                  sll        s2, s6, s9
                  c.sub      a5, a5
                  sll        a7, t6, tp
                  c.srli     a4, 16
                  c.add      a3, a0
                  add        a5, s5, s2
1654:             srl        t0, s10, s2
                  slti       s1, s7, 845
                  mulh       s5, s6, s0
                  c.nop
1658:             c.slli     a7, 28
                  rem        s9, a3, a1
                  sll        s4, t1, s6
                  mulhu      ra, zero, a3
                  c.sub      a0, a4
                  xor        t1, s8, t2
                  c.and      a3, a5
                  c.srai     s0, 1
                  slli       t2, s9, 14
                  csrrwi     a0, 0x340, 17
                  xor        a6, s2, s2
                  or         a4, t0, a2
                  nop
                  mul        t2, ra, a3
                  srai       a7, zero, 9
                  beq        s8, s11, 1691f
                  srli       t1, a2, 31
                  c.xor      a5, a1
                  rem        s1, s9, s0
                  bgeu       a4, sp, 1689f
                  sltu       s1, s7, a1
                  or         a2, tp, s4
                  csrrs      a6, 0x340, s9
                  xor        s6, t2, s9
                  csrrwi     s5, 0x340, 3
                  xori       s7, s2, -1015
                  remu       s6, t4, s8
                  csrrc      s10, 0x340, t5
                  slti       t0, a3, 48
                  xori       t2, a5, 826
                  blt        t0, zero, 1697f
1689:             c.and      a4, a2
                  csrrwi     a3, 0x340, 17
1691:             csrrci     a3, 0x340, 4
                  mul        s1, s4, t6
                  c.addi     s2, 4
                  c.slli     s1, 11
                  csrrc      a3, 0x340, a1
                  sra        a5, s2, t3
1697:             c.mv       t5, s6
                  xori       s1, a3, 247
                  sub        tp, a2, s4
                  fence.i
                  lw         ra, 4(sp)
                  csrrsi     a4, 0x340, 8
                  c.add      s5, s1
                  fence
                  csrrwi     gp, 0x340, 14
                  srl        s5, s6, t0
                  addi       sp, sp, 60
                  slt        a7, ra, t0
2835:             c.jr x1
sub_2:            slt        a2, t1, s11
                  addi       sp, sp, -64
                  div        s1, ra, s4
                  c.nop
                  divu       t0, t6, s2
                  sw         ra, 4(sp)
                  add        s7, s7, a6
                  c.sub      a5, a4
                  addi       a3, zero, -6 #init loop 0 counter
                  sra        s3, sp, sp
                  and        s6, s7, t3
                  ori        t2, a1, -178
                  addi       zero, zero, 0 #init loop 0 limit
                  srai       s11, a2, 21
sub_2_9_0_t:      xor        s6, t6, t2
                  andi       ra, zero, -780
                  addi       a3, a3, 6 #update loop 0 counter
                  fence
                  c.srai     s1, 10
                  c.srli     a2, 26
                  c.sub      a1, a3
                  slt        gp, t2, a3
                  sll        s11, s10, t1
                  nop
                  c.beqz     a3, sub_2_9_0_t #branch for loop 0
                  lui        t4, 935980
                  la         s0, region_0+3249 #start load_store_instr_stream_3
                  lb         t1, 12(s0)
                  la         t2, region_0+1547 #start load_store_instr_stream_4
                  la         s9, region_0+1998 #start load_store_instr_stream_0
                  la         s6, region_0+2028 #start load_store_instr_stream_2
                  sw         a4, 241(t2)
                  sb         t0, -4(s0)
                  lbu        a4, 242(t2)
                  lhu        s2, -60(s9)
                  la         ra, region_0+2102 #start load_store_instr_stream_1
                  lb         a2, -4(t2)
                  sb         s3, 10(s0)
                  lb         s11, 16(s0)
                  lh         t4, -38(ra)
                  sw         s11, 112(s6)
                  lbu        s11, -202(t2)
                  lh         s2, 52(s9)
                  lb         t0, 111(ra)
                  lb         t1, -2(s0)
                  lb         t0, 16(s0)
                  lb         a2, 1(s9)
                  lh         a0, 11(t2)
                  lb         s7, -9(s9)
                  lb         t5, 50(s6)
                  lbu        s3, 14(s0)
                  sb         s8, 13(s9)
                  lb         a6, 127(ra)
                  sb         s5, -95(s6)
                  lbu        s11, 56(t2)
                  lbu        s1, -15(s0)
                  sb         t2, 53(s9)
                  lbu        t0, -63(s9)
                  lw         s4, -59(t2)
                  sb         s7, 48(ra)
                  lbu        s4, -9(s9)
                  lbu        s10, 181(t2)
                  lb         a6, -7(s0)
                  lb         t0, 245(ra)
                  sh         s10, 240(s6)
                  lh         s5, 15(s0) #end load_store_instr_stream_3
                  lbu        s1, -125(ra) #end load_store_instr_stream_1
                  lhu        a2, -10(s6)
                  lb         t0, 178(t2)
                  lb         a6, -90(t2) #end load_store_instr_stream_4
                  lbu        s7, 234(s6) #end load_store_instr_stream_2
                  lb         s7, 10(s9) #end load_store_instr_stream_0
sub_2_3:          jal        ra, 7f
0:                jal        ra, 5f
1:                c.jal      13f
2:                c.jal      9f
3:                c.jal      12f
4:                c.jal      10f
5:                c.j        2b
6:                c.j        8f
7:                jal        ra, 1b
8:                jal        ra, 11f
9:                c.j        6b
10:               c.jal      3b
11:               c.jal      15f
12:               c.jal      0b
13:               jal        ra, 14f
14:               c.jal      4b
15:               sra        zero, s1, s9
                  la         ra, region_1+6151 #start riscv_load_store_rand_instr_stream_1
                  lhu        a0, -213(ra)
                  srli       s1, t2, 8
                  lb         a5, -237(ra)
                  sb         a6, -175(ra)
                  sb         sp, 205(ra)
                  nop
                  slti       t6, a7, -744
                  sra        s7, s9, s4
                  sw         a6, 145(ra)
                  c.mv       t6, s9
                  sra        s11, s7, a4
                  c.or       s1, a4
                  csrrs      a4, 0x340, a5
                  lb         s3, -250(ra)
                  lb         t4, 164(ra)
                  csrrsi     s0, 0x340, 29
                  sw         a5, 37(ra)
                  lb         t1, -87(ra)
                  c.mv       t5, t4
                  lbu        s4, -54(ra)
                  sb         a3, -97(ra)
                  lbu        s7, 203(ra) #end riscv_load_store_rand_instr_stream_1
                  la         t5, region_2+6566 #start riscv_load_store_rand_instr_stream_0
                  sltu       tp, t5, s4
                  or         s7, ra, sp
                  sb         t1, -3(t5)
                  lb         s3, 11(t5)
                  lbu        a2, 13(t5)
                  lbu        a7, -7(t5)
                  c.srli     a5, 30
                  c.nop
                  csrrw      a2, 0x340, ra
                  sb         s11, 4(t5)
                  mulh       t2, t0, s9
                  csrrw      s11, 0x340, a5
                  sltiu      s10, t4, 433
                  lbu        s3, 11(t5)
                  sb         s11, 3(t5)
                  csrrs      zero, 0x340, s4
                  c.or       a5, s1
                  c.sub      a0, s0
                  c.slli     s7, 4
                  lb         s9, -15(t5)
                  c.srai     a1, 9
                  c.srli     s0, 4
                  xori       a4, t5, -220
                  lh         t2, -4(t5)
                  lw         tp, -6(t5)
                  sb         a5, 10(t5)
                  slti       s2, a5, -148
                  and        tp, t1, s1
                  lbu        s10, -9(t5)
                  sb         s2, -4(t5)
                  sb         t5, -5(t5)
                  sltu       a1, zero, a0
                  sltiu      a2, s2, -995
                  sb         a3, -11(t5)
                  c.lui      s10, 13
                  divu       a4, s6, s9
                  sh         s6, 6(t5)
                  lbu        a7, -15(t5)
                  csrrci     a0, 0x340, 5
                  lbu        s5, -1(t5)
                  lhu        s10, -10(t5)
                  csrrwi     a0, 0x340, 8
                  lbu        t4, -13(t5)
                  lb         gp, -1(t5)
                  lb         a7, -11(t5) #end riscv_load_store_rand_instr_stream_0
                  la         gp, region_3+271 #start riscv_hazard_instr_stream_1
                  auipc      s3, 858005
                  lbu        s7, -12(gp)
                  srl        s0, t5, tp
                  lb         tp, -15(gp)
                  c.mv       tp, tp
                  lbu        s10, 15(gp)
                  sb         t5, -8(gp)
                  lb         s10, -3(gp)
                  c.slli     s7, 21
                  lbu        t5, 15(gp)
                  c.mv       s0, s10
                  lhu        s0, -9(gp)
                  sltiu      s10, s7, -134
                  csrrsi     s3, 0x340, 18
                  sw         s0, 1(gp)
                  slt        t5, s0, tp
                  sb         s0, -13(gp)
                  csrrs      s0, 0x340, s3
                  lbu        s3, 8(gp)
                  c.srli     s0, 11
                  sw         s3, 9(gp)
                  c.li       s10, -1
                  csrrc      s3, 0x340, s7
                  c.li       tp, 1
                  lui        tp, 764531
                  ori        s7, s3, -442
                  lb         tp, 3(gp)
                  lb         s3, -15(gp)
                  sb         s3, -6(gp)
                  sb         t5, 14(gp)
                  lb         s3, -9(gp)
                  lb         s0, -10(gp)
                  lh         s0, 3(gp)
                  sb         tp, -2(gp)
                  sb         t5, -6(gp)
                  c.srai     s0, 15
                  sb         s0, 12(gp)
                  lbu        s0, -12(gp)
                  andi       t5, s3, -453
                  csrrc      tp, 0x340, s7
                  c.slli     s10, 5
                  mulh       s7, s3, s3
                  rem        t5, s10, s0
                  ori        s3, s10, -366
                  or         t5, t5, s7
                  lb         s7, 12(gp)
                  sh         s10, -7(gp)
                  sb         s0, 10(gp) #end riscv_hazard_instr_stream_1
                  la         a1, region_3+341 #start load_store_instr_stream_2
                  la         a2, region_4+3477 #start load_store_instr_stream_3
                  lbu        s5, 44(a1)
                  lw         s2, 131(a1)
                  la         a6, region_2+3768 #start load_store_instr_stream_0
                  lbu        t4, -262(a1)
                  lhu        s1, 8(a6)
                  sb         a6, -136(a2)
                  lbu        s1, -126(a1)
                  la         t0, region_0+555 #start load_store_instr_stream_1
                  sh         s10, -305(a1)
                  sb         a4, -43(t0)
                  sh         a3, -14(a6)
                  lb         s4, 176(t0)
                  sb         ra, -207(a2)
                  lb         zero, -14(a6)
                  lb         t6, -18(t0)
                  lh         s7, 33(a1)
                  sh         s3, 49(t0)
                  lb         s5, -124(a1)
                  lbu        ra, 9(a6)
                  lbu        t6, 149(a2)
                  lbu        s1, 195(t0)
                  lh         s9, 1(a2)
                  sh         s9, -217(t0)
                  sb         s1, -38(t0) #end load_store_instr_stream_1
                  lb         s6, 11(a6)
                  lb         s5, -139(a2) #end load_store_instr_stream_3
                  lbu        t6, -327(a1) #end load_store_instr_stream_2
                  lbu        a3, 11(a6) #end load_store_instr_stream_0
                  addi       s9, zero, -5 #init loop 0 counter
                  fence
                  addi       s7, zero, 6 #init loop 0 limit
                  fence.i
                  mulh       a1, s3, a2
                  fence.i
                  andi       gp, s9, -681
sub_2_8_0_t:      auipc      s11, 427320
                  ori        ra, a4, -376
                  addi       s9, s9, 2 #update loop 0 counter
                  fence
                  sub        a3, ra, a1
                  c.nop
                  c.andi     a3, 3
                  divu       s6, s6, s10
                  blt        s9, s7, sub_2_8_0_t #branch for loop 0
                  or         zero, s7, s4
                  la         a7, region_1+5021 #start load_store_instr_stream_2
                  la         a0, region_3+319 #start load_store_instr_stream_0
                  la         a4, region_0+460 #start load_store_instr_stream_1
                  lbu        t5, 15(a4)
                  sb         s1, -860(a7)
                  lhu        a3, 23(a0)
                  lbu        a3, 4(a4)
                  lb         t6, -55(a0)
                  lb         t4, 1030(a7)
                  lbu        s11, -10(a4)
                  lbu        s10, 62(a0)
                  lbu        s3, -22(a0)
                  lbu        s7, -1713(a7)
                  sb         s9, -45(a0)
                  sh         s10, -1395(a7)
                  lbu        t4, 48(a0)
                  lhu        t4, -14(a4)
                  lhu        s1, -787(a7)
                  lbu        s6, 658(a7)
                  lh         a2, 1(a0)
                  lbu        s9, 1264(a7)
                  sb         sp, -562(a7)
                  sb         s5, -13(a4)
                  lhu        a1, 12(a4) #end load_store_instr_stream_1
                  lhu        zero, -53(a0)
                  lb         tp, 1934(a7)
                  sh         s10, -539(a7) #end load_store_instr_stream_2
                  lh         t0, 63(a0)
                  lw         t5, 9(a0) #end load_store_instr_stream_0
sub_2_2:          jal        ra, 6f
0:                c.jal      9f
1:                c.j        7f
2:                c.jal      5f
3:                c.j        0b
4:                c.jal      3b
5:                c.j        1b
6:                c.jal      2b
7:                jal        ra, 4b
8:                jal        gp, 10f
9:                c.jal      11f
10:               c.jal      12f
11:               c.jal      8b
12:               mulhu      a4, a0, tp
                  csrrsi     a6, 0x340, 19
                  sll        a1, s6, t4
                  or         t1, s11, a5
                  c.sub      a4, s1
                  bne        zero, t3, 17f
                  mul        gp, a4, s9
                  xor        s0, t3, s10
                  c.and      s1, a3
                  c.lui      a7, 11
                  fence
                  sll        t6, s4, t5
                  nop
                  c.add      s9, a7
                  c.beqz     a2, 29f
                  srai       t0, t0, 20
                  c.srai     a2, 17
                  bltu       s11, s8, 25f
17:               ori        a5, s5, -690
                  mulhu      s1, a2, a2
                  ori        t5, ra, 1003
                  xori       s6, t5, -735
                  sll        ra, t4, t4
                  c.add      s1, a0
                  sll        t5, s1, t4
                  fence
25:               bltu       s4, ra, 37f
                  remu       s5, tp, a6
                  srai       a4, s3, 16
                  c.nop
29:               bgeu       s1, s9, 44f
                  c.andi     s0, -1
                  c.xor      a3, a0
                  rem        s1, s6, s7
                  la         a4, region_1+9579 #start riscv_hazard_instr_stream_0
                  lbu        t5, 16(a4)
                  sh         a1, -19(a4)
                  sb         s9, -29(a4)
                  addi       t6, s9, -104
                  lui        s4, 785334
                  csrrs      s9, 0x340, t6
                  fence
                  sh         t5, -17(a4)
                  c.lui      s4, 23
                  divu       s9, t5, a1
                  addi       s9, s1, -240
                  c.and      a1, s1
                  div        s1, s1, s1
                  slli       t6, s4, 31
                  lh         s1, -19(a4)
                  c.sub      s1, s1
                  sh         s4, 27(a4)
                  sb         s4, -20(a4)
                  lb         s9, 6(a4)
                  auipc      a1, 134084
                  xor        a1, t6, a1
                  div        t6, t6, s4
                  srai       t6, s9, 7
                  divu       a1, t5, s4
                  sb         t6, 60(a4)
                  lbu        t5, 23(a4)
                  remu       a1, t6, s9
                  mulhsu     s4, s9, s1
                  slt        s9, t5, t6
                  csrrwi     s9, 0x340, 14
                  mul        s9, s9, s9
                  sb         s1, 29(a4)
                  nop
                  lb         t5, 8(a4)
                  or         s9, s4, s1
                  lb         s9, 2(a4)
                  sb         s1, -4(a4)
                  sltiu      s4, s4, 94
                  srl        t6, s9, a1
                  slli       a1, s9, 14
                  c.srai     a1, 4
                  sltu       a1, s4, s9
                  c.li       s1, 25
                  lhu        t6, -29(a4)
                  slti       a1, s9, -288
                  lbu        t5, -14(a4) #end riscv_hazard_instr_stream_0
                  csrrw      t6, 0x340, s3
                  mulhu      s11, a0, a0
                  csrrw      gp, 0x340, s3
                  div        s1, t4, t1
37:               c.addi     a6, 21
                  ori        s10, s0, -686
                  c.or       a4, a3
                  c.and      a0, s0
                  c.bnez     s1, 57f
                  slt        a5, s5, zero
                  fence
44:               c.beqz     a1, 53f
                  beq        s7, tp, 54f
                  c.bnez     a1, 62f
                  srai       a4, t0, 16
                  sll        s6, s2, s6
                  c.add      s7, t5
                  srl        s0, a2, s10
                  csrrc      a5, 0x340, t5
                  c.nop
53:               mulhu      a7, a2, t6
54:               srl        s0, t4, ra
                  or         a1, a1, gp
                  sra        a5, s11, t4
57:               c.andi     s0, 18
                  divu       gp, s4, s3
                  remu       a7, t2, t4
                  csrrci     s5, 0x340, 24
                  rem        s3, t0, gp
62:               or         s6, sp, a4
                  c.li       s5, 18
                  rem        t4, s7, a5
                  sltiu      a5, t1, 986
                  bge        t4, tp, 74f
                  c.slli     t0, 1
                  slli       a1, gp, 20
                  c.or       s0, a3
                  or         a4, s1, s2
                  bge        a4, s0, 72f
72:               xori       t6, s0, -265
                  slti       a2, s4, 284
74:               csrrwi     a6, 0x340, 28
                  c.andi     a0, -1
                  csrrsi     gp, 0x340, 21
                  xori       s5, sp, -311
                  slt        tp, s10, a4
                  ori        gp, zero, 20
                  and        t2, a4, s4
                  fence
                  srl        s4, a7, a0
                  c.lui      t6, 27
                  c.or       a4, a1
                  and        s3, s10, sp
                  c.li       tp, -1
                  la         s11, sub_5
                  srl        s9, a4, a5
                  addi       s11, s11, -918
                  sll        t6, s0, s7
                  bne        s1, s11, j_sub_2_sub_5_7 #branch to jump instr
                  c.mv       a7, s6
                  fence.i
                  sltu       s6, s7, s3
j_sub_2_sub_5_7:  jalr       ra, s11, 918
                  mulh       s4, s0, s8
                  nop
                  fence.i
                  blt        s3, a3, 105f
                  c.xor      a5, s0
                  sra        s2, s4, t2
                  slti       s3, ra, -842
                  xori       s10, s3, -346
                  c.bnez     s1, 109f
                  divu       s9, s6, s8
                  beq        s5, s0, 99f
                  addi       a3, s5, -904
                  add        a2, t1, s9
                  add        s4, t1, a2
99:               c.beqz     s0, 107f
                  sltiu      gp, t2, 190
                  csrrs      zero, 0x340, s9
                  fence
                  add        s0, ra, s5
                  slti       ra, s9, -894
105:              csrrwi     s9, 0x340, 15
                  ori        s2, t4, 542
107:              xori       s10, a0, -231
                  c.and      a4, a0
109:              c.sub      a3, a1
                  mulh       a1, s5, s4
                  c.sub      s1, a2
                  slti       tp, t4, 651
                  c.add      t1, gp
                  mulh       a7, tp, a4
                  beq        a1, s9, 118f
                  div        t0, a4, t6
                  csrrsi     zero, 0x340, 17
118:              and        tp, t3, s5
                  c.beqz     s0, 127f
                  andi       s3, a2, -671
                  c.sub      a0, a5
                  csrrwi     a5, 0x340, 12
                  srli       a4, zero, 19
                  c.li       tp, 23
                  rem        tp, tp, s10
                  beq        gp, t0, 142f
127:              mulh       s0, s1, s2
                  csrrsi     a5, 0x340, 30
                  c.add      a0, s8
                  mulhu      s3, t2, s11
                  c.xor      a1, a3
                  rem        a4, t5, gp
                  sltiu      s7, tp, 170
                  addi       t6, t3, 69
                  c.xor      s0, a3
                  csrrsi     t6, 0x340, 5
                  bne        t5, a2, 142f
                  sltiu      s3, t3, -1007
                  c.or       a2, a3
                  bne        s7, a6, 160f
                  slti       a4, s8, -3
142:              sltiu      ra, a7, -724
                  xor        a3, a2, s5
                  bltu       a4, a7, 163f
                  lui        ra, 922806
                  c.bnez     a1, 165f
                  sll        a6, s6, sp
                  c.slli     s5, 27
                  bltu       a6, s1, 151f
                  andi       s11, t6, -302
151:              beq        s0, a5, 164f
                  bge        s2, a5, 168f
                  csrrsi     zero, 0x340, 30
                  csrrs      s4, 0x340, s11
                  bgeu       t4, a4, 167f
                  bgeu       a7, a1, 170f
                  sll        a5, s9, t4
                  csrrwi     tp, 0x340, 31
                  xor        t1, zero, s9
160:              sltiu      gp, s3, -848
                  c.addi     s5, -1
                  addi       s5, sp, -749
163:              c.slli     t2, 13
164:              c.mv       s6, s2
165:              bne        t4, a7, 167f
                  andi       a4, t1, 452
167:              sltu       a0, s4, s10
168:              mulhu      a5, s9, s2
                  c.and      a4, s0
170:              sub        a5, s3, s8
                  mulhsu     t4, s7, s5
                  sub        t5, s9, ra
                  rem        s5, a6, ra
                  csrrsi     gp, 0x340, 9
                  beq        a4, ra, 195f
                  c.mv       a1, t1
                  add        tp, t6, ra
                  srai       t4, s6, 9
                  csrrwi     a2, 0x340, 13
                  nop
                  srai       t1, t0, 13
                  bltu       s5, s0, 185f
                  csrrsi     t6, 0x340, 7
                  c.and      a0, a1
185:              c.bnez     a1, 201f
                  c.xor      a1, s0
                  mulhsu     s4, t5, t3
                  and        a0, tp, s9
                  divu       s4, a0, t6
                  sll        a5, s6, zero
                  bne        t0, a7, 203f
                  and        s5, a3, s6
                  srli       a3, t0, 4
                  fence.i
195:              c.andi     a5, -1
                  blt        t6, s1, 215f
                  c.nop
                  c.add      a5, s5
                  sra        t5, t3, a4
                  blt        t3, a6, 208f
201:              slti       zero, a3, -983
                  sub        a1, a4, t0
203:              csrrs      tp, 0x340, s1
                  csrrwi     s3, 0x340, 26
                  srl        gp, a3, t5
                  sltiu      t4, ra, -718
                  xori       a1, s0, 741
208:              rem        a2, s1, t1
                  xori       s6, a6, 891
                  beq        gp, t0, 226f
                  divu       tp, a4, tp
                  add        a1, s8, tp
                  c.or       a5, s1
                  c.mv       s0, s4
215:              c.lui      s10, 26
                  bne        s0, a3, 218f
                  or         s11, t3, s1
218:              c.slli     s9, 23
                  slti       s5, s1, 583
                  fence.i
                  c.srai     a1, 25
                  csrrw      t4, 0x340, s0
                  sra        a6, s2, sp
                  remu       s1, zero, s5
                  csrrsi     a4, 0x340, 21
226:              bne        s5, t5, 234f
                  bltu       gp, t6, 236f
                  srai       a1, sp, 5
                  bltu       t2, t1, 238f
                  lui        a3, 510961
                  csrrc      s9, 0x340, a6
                  divu       s1, a4, ra
                  c.sub      a1, a5
234:              fence
                  slli       t5, a0, 4
236:              srli       s10, a0, 30
                  c.lui      a1, 8
238:              c.sub      a2, a2
                  addi       a3, a7, 474
                  slt        a1, s0, ra
                  c.srli     a5, 30
                  srl        s7, zero, s6
                  andi       s10, a4, -173
                  auipc      s0, 856726
                  c.andi     a4, 18
                  csrrs      tp, 0x340, s3
                  nop
                  c.mv       s6, a2
                  c.nop
                  c.and      a1, s0
                  beq        s6, s0, 264f
                  csrrsi     t5, 0x340, 14
                  sra        a5, ra, s1
                  bgeu       t5, s2, 270f
                  c.mv       s9, a3
                  slli       ra, a0, 25
                  c.add      t6, s10
                  fence.i
                  xor        tp, gp, gp
                  c.srai     a1, 25
                  c.and      s0, a4
                  auipc      s11, 943378
                  csrrc      t4, 0x340, t6
264:              srai       a2, t5, 3
                  csrrs      s4, 0x340, s1
                  sltu       s10, a5, gp
                  mulh       s5, t3, sp
                  mulh       s9, a1, t3
                  mulhu      s5, a6, s8
270:              xor        s9, a7, t1
                  sra        s1, s2, t1
                  xori       a2, t5, 170
                  xori       t0, s2, 124
                  csrrw      s5, 0x340, s8
                  bne        s9, s7, j_sub_2_sub_5_8 #branch to jump instr
                  xor        gp, s5, s9
                  divu       a0, a4, t3
                  or         s2, s6, s2
                  srai       t0, t1, 27
                  c.li       a0, -1
j_sub_2_sub_5_8:  jal        ra, sub_5
                  slti       t0, t5, 471
                  beq        s5, a3, 288f
                  srai       s6, sp, 27
                  csrrsi     a4, 0x340, 0
                  mulhsu     t4, t1, s0
                  add        s0, zero, s10
                  remu       a0, s5, a4
                  mulhu      s6, s4, t2
                  rem        a7, a4, s11
                  c.beqz     a2, 300f
                  beq        a1, s2, 304f
                  c.beqz     a2, 300f
                  nop
288:              and        zero, s4, t5
                  bne        a3, t5, 305f
                  srai       s9, t3, 17
                  xori       s5, t4, 4
                  csrrci     s2, 0x340, 17
                  srl        t6, s5, s0
                  divu       s4, t4, sp
                  sub        s7, sp, zero
                  xori       a5, s4, 834
                  c.sub      a3, a1
                  bge        t3, a2, 318f
                  lui        t2, 480490
300:              sll        a0, a4, s6
                  c.addi     t4, -1
                  sll        a5, t1, s5
                  andi       a5, a1, -923
304:              slti       a3, a4, 134
305:              srai       a7, a7, 18
                  csrrs      s9, 0x340, t0
                  sll        s6, t5, t5
                  beq        s7, s1, 324f
                  fence
                  bgeu       s6, s3, 312f
                  bge        s8, s5, 319f
312:              srl        a6, t0, s10
                  c.lui      s6, 30
                  srli       a4, a4, 27
                  c.add      t6, t5
                  mulhu      zero, a3, s10
                  slli       a6, s1, 8
318:              csrrsi     s3, 0x340, 2
319:              mulhsu     t2, s10, tp
                  mulhsu     t1, a5, gp
                  sll        s5, s5, s9
                  sll        s5, s1, s10
                  c.li       t4, 13
324:              and        s3, s8, t0
                  auipc      s11, 920187
                  srai       s9, s9, 5
                  or         gp, a0, s11
                  csrrci     t1, 0x340, 16
                  slli       s7, a2, 8
                  nop
                  remu       s10, t5, ra
                  mulhu      gp, a0, t3
                  and        zero, t6, s9
                  c.srli     s0, 10
                  csrrci     s0, 0x340, 4
                  c.or       a0, a4
                  mulhsu     s7, s2, a1
                  c.nop
                  srli       a7, a6, 11
                  c.and      s1, a3
                  srai       s4, s1, 19
                  and        s6, s3, s3
                  rem        t0, s9, a1
                  csrrwi     s11, 0x340, 28
                  c.add      s7, s8
                  bne        t3, s1, 347f
347:              c.addi     s6, 23
                  slt        s0, s5, t0
                  sltu       a3, t0, tp
                  divu       s3, s7, t2
                  sub        t1, a3, a6
                  c.bnez     s1, 361f
                  ori        s2, s10, -121
                  addi       s5, gp, 714
                  div        t0, s11, a1
                  c.or       a3, a5
                  sub        s2, a3, s7
                  ori        a1, a1, 189
                  beq        sp, zero, 376f
                  fence.i
361:              div        s7, s7, a0
                  c.andi     s0, -1
                  sub        a7, t2, a0
                  ori        s9, a5, -262
                  c.lui      s2, 17
                  divu       a5, tp, a6
                  bne        s7, ra, 372f
                  slti       tp, t2, -645
                  fence.i
                  srl        s0, t4, s1
                  c.li       s1, -1
372:              c.andi     a2, -1
                  divu       a0, a1, s4
                  slli       t5, ra, 13
                  beq        a3, a2, 388f
376:              sra        s9, a0, a2
                  bne        a4, ra, 380f
                  c.and      a4, a2
                  rem        a7, t0, t3
380:              slt        zero, s11, ra
                  slt        s9, s1, s10
                  c.li       s11, -1
                  ori        t5, a5, 405
                  slt        s10, t3, s9
                  sltiu      t1, gp, -875
                  c.andi     a2, -1
                  c.and      a3, a1
388:              blt        a0, zero, 403f
                  blt        s5, ra, 393f
                  la         s5, region_0+1163 #start load_store_instr_stream_0
                  la         a2, region_0+3082 #start load_store_instr_stream_1
                  lb         a3, -14(a2)
                  sh         t1, -16(a2)
                  sw         s11, 1049(s5)
                  lbu        s4, -9(a2)
                  lh         s6, 12(a2)
                  lw         tp, -63(s5)
                  lhu        zero, 855(s5)
                  sb         a0, -879(s5)
                  lb         a6, 3(a2)
                  lb         zero, 1477(s5)
                  lb         s0, -8(a2)
                  sb         s4, -366(s5)
                  lbu        s10, -7(a2)
                  lbu        zero, 1014(s5)
                  lhu        a6, 12(a2)
                  lw         t4, -271(s5)
                  sb         s11, 5(a2) #end load_store_instr_stream_1
                  sb         gp, 1174(s5) #end load_store_instr_stream_0
                  c.lui      t6, 13
                  remu       t2, a0, a5
                  auipc      a3, 1030481
393:              beq        s2, a7, 413f
                  xor        t1, zero, s0
                  srli       t2, tp, 31
                  c.lui      a0, 10
                  c.sub      a0, a0
                  mul        ra, tp, s0
                  c.slli     t0, 19
                  sra        a0, s1, s4
                  csrrwi     ra, 0x340, 2
                  bltu       t1, s8, 405f
403:              c.srli     a3, 25
                  c.li       a2, 18
405:              c.srai     a2, 2
                  fence.i
                  divu       t1, sp, a5
                  c.bnez     a1, 424f
                  sra        a0, a0, t6
                  sltiu      s9, tp, -570
                  c.and      s1, s1
                  csrrw      s10, 0x340, t6
413:              beq        sp, s1, 433f
                  fence
                  slli       t2, s1, 28
                  add        s10, s6, a4
                  c.and      a4, s0
                  slt        s5, a5, s7
                  slt        a7, s4, tp
                  mul        s9, s9, s1
                  c.or       a5, a1
                  sltu       s5, s9, t0
                  bne        a7, s1, 436f
424:              csrrs      t1, 0x340, s5
                  mul        a4, sp, a7
                  c.li       a6, 12
                  sub        t5, tp, s9
                  mulhu      t4, ra, s5
                  rem        a5, s1, s9
                  and        s2, s1, tp
                  sll        s6, gp, t3
                  c.add      t5, a6
433:              mulhsu     t6, zero, s10
                  slti       s4, s9, 688
                  csrrsi     s5, 0x340, 10
436:              mul        a2, a1, s7
                  add        s5, s8, tp
                  slt        t0, t6, t4
                  sltu       t6, a7, zero
                  c.or       a1, a0
                  c.li       t0, 3
                  slli       s10, s9, 26
                  auipc      a2, 937833
                  mulhu      gp, s8, s10
                  auipc      s4, 75459
                  c.bnez     a2, 449f
                  csrrc      a1, 0x340, t3
                  mulh       a6, s2, a5
449:              csrrs      ra, 0x340, s8
                  addi       a6, t6, 879
                  c.and      a3, a1
                  c.or       a3, a2
                  csrrw      t0, 0x340, gp
                  xori       s1, t4, 532
                  addi       t5, s5, 592
                  or         s7, t2, t3
                  csrrci     s9, 0x340, 13
                  c.bnez     a3, 470f
                  mulhsu     t5, a7, t1
                  or         s1, s11, gp
                  xori       s9, zero, -111
                  addi       t1, t5, -948
                  divu       a1, s0, zero
                  csrrwi     a6, 0x340, 9
                  or         a2, s3, t5
                  csrrwi     s0, 0x340, 3
                  csrrc      a5, 0x340, s5
                  xori       t0, s2, -910
                  bgeu       t1, a5, 472f
470:              bge        sp, t3, 486f
                  bne        a7, s7, 472f
472:              auipc      a6, 157066
                  remu       a5, t4, t2
                  div        s10, tp, t2
                  c.srai     s1, 21
                  c.add      t4, a1
                  csrrci     t2, 0x340, 18
                  add        t6, a2, s7
                  srai       a2, s9, 16
                  rem        a5, s10, tp
                  c.xor      a4, a4
                  andi       a5, a5, -323
                  c.addi     t6, -1
                  mul        s2, s3, t6
                  slt        s10, a7, a5
486:              sub        t2, a2, s11
                  slti       s9, a5, -371
                  add        a1, t6, a3
                  c.addi     s9, 7
                  fence
                  sltiu      ra, s3, 873
                  lui        s3, 842931
                  slti       s3, s9, 606
                  c.nop
                  sub        a7, s11, t4
                  fence
                  csrrwi     s9, 0x340, 3
                  mulhsu     s10, a5, s6
                  mulh       a6, tp, s9
                  ori        a7, t4, 148
                  fence
                  sll        s3, t5, s1
                  slti       t4, ra, -454
                  xor        t2, s9, t3
                  csrrwi     s4, 0x340, 11
                  sub        s6, s6, t4
                  div        s5, s9, s1
                  div        s10, a4, s4
                  csrrw      s5, 0x340, a7
                  c.xor      s1, a3
                  csrrc      s1, 0x340, t1
                  sltu       gp, s5, t6
                  c.bnez     a4, 530f
                  bge        s3, a4, 519f
                  bge        t4, t3, 527f
                  bne        ra, t1, 525f
                  c.andi     a1, -1
                  ori        a1, s6, -651
519:              auipc      s0, 763729
                  c.mv       tp, s6
                  c.nop
                  mulhsu     a2, t6, gp
                  srli       s2, t4, 12
                  div        s5, t5, tp
525:              blt        a4, s5, 544f
                  remu       a1, s0, zero
527:              fence.i
                  c.nop
                  sltiu      s7, s8, -290
530:              c.nop
                  ori        zero, a4, 219
                  add        a4, ra, t0
                  csrrci     s5, 0x340, 18
                  srl        s10, s7, sp
                  mulhsu     s11, a5, s8
                  srli       s11, t0, 31
                  mulhsu     a5, gp, a1
                  mulh       a0, tp, s7
                  sltiu      s1, gp, -356
                  xori       s7, s10, 914
                  sra        s4, s3, ra
                  c.andi     a1, 23
                  bne        a3, s8, 559f
544:              c.add      t0, a5
                  c.addi     t2, 15
                  c.srli     s0, 17
                  c.srai     s1, 13
                  add        t2, s2, t2
                  ori        s2, s1, -912
                  remu       s3, t2, ra
                  sltu       s6, a2, t2
                  sub        s6, t3, a6
                  sra        s1, s0, a2
                  csrrsi     a7, 0x340, 15
                  sltiu      a6, zero, -459
                  srl        s2, a7, a3
                  c.nop
                  csrrs      s4, 0x340, t1
559:              csrrsi     t4, 0x340, 9
                  mul        a2, s9, tp
                  c.addi     s0, 15
                  mulh       t2, s0, t3
                  c.and      s0, a0
                  mulh       a4, s4, s2
                  bltu       a4, t1, 567f
                  remu       a0, a1, s3
567:              bne        zero, t0, 583f
                  slli       a0, s2, 6
                  rem        a3, s11, s10
                  c.mv       a0, sp
                  slt        ra, a2, a6
                  remu       a1, s0, gp
                  sra        t4, a6, s11
                  srai       s1, tp, 19
                  divu       t1, s11, s1
                  sltiu      s11, s6, 503
                  sub        s3, t5, a6
                  div        s10, s11, s4
                  sll        a4, t2, s7
                  c.srli     a0, 16
                  c.srai     a2, 14
                  slt        s9, s1, a7
583:              nop
                  c.xor      a4, a0
                  c.lui      t4, 3
                  beq        t6, a2, 600f
                  mulhu      gp, s7, a3
                  slti       ra, s0, -819
                  mul        gp, a3, s10
                  andi       s5, s4, -26
                  c.xor      a5, a5
                  addi       t1, zero, 601
                  divu       t1, a7, s4
                  csrrw      a5, 0x340, s7
                  xori       a7, s7, 919
                  ori        a4, s4, 899
                  c.or       a5, s1
                  or         s5, t1, s2
                  csrrci     gp, 0x340, 23
600:              ori        s5, zero, 786
                  auipc      a1, 808638
                  csrrci     s3, 0x340, 30
                  c.mv       s10, a3
                  divu       s9, s0, tp
                  csrrci     s4, 0x340, 14
                  c.mv       ra, tp
                  xor        a7, s6, s3
                  bltu       a7, s10, 611f
                  c.li       a6, 7
                  fence.i
611:              srl        a1, a5, a7
                  lw         ra, 4(sp)
                  c.mv       a6, sp
                  mul        s1, t0, t1
                  addi       sp, sp, 64
                  c.lui      t2, 1
                  add        t2, a3, a2
1000:             c.jr x1
write_tohost:     
                  sw gp, tohost, t5

_exit:            
                  j write_tohost

init_machine_mode:
                  li x20, 0x1800
                  csrw 0x300, x20 # MSTATUS
                  li x20, 0x0
                  csrw 0x304, x20 # MIE
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
                  add x2, x24, zero
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
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_2:
                  csrrw x2, 0x340, x2
                  add x2, x24, zero
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
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_3:
                  csrrw x2, 0x340, x2
                  add x2, x24, zero
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
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_4:
                  csrrw x2, 0x340, x2
                  add x2, x24, zero
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
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_5:
                  csrrw x2, 0x340, x2
                  add x2, x24, zero
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
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_6:
                  csrrw x2, 0x340, x2
                  add x2, x24, zero
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
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_7:
                  csrrw x2, 0x340, x2
                  add x2, x24, zero
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
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_8:
                  csrrw x2, 0x340, x2
                  add x2, x24, zero
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
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_9:
                  csrrw x2, 0x340, x2
                  add x2, x24, zero
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
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_10:
                  csrrw x2, 0x340, x2
                  add x2, x24, zero
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
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_11:
                  csrrw x2, 0x340, x2
                  add x2, x24, zero
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
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_12:
                  csrrw x2, 0x340, x2
                  add x2, x24, zero
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
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_13:
                  csrrw x2, 0x340, x2
                  add x2, x24, zero
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
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_14:
                  csrrw x2, 0x340, x2
                  add x2, x24, zero
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
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_15:
                  csrrw x2, 0x340, x2
                  add x2, x24, zero
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
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
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
                  add x2, x24, zero
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
                  csrr x20, 0x341 # MEPC
                  csrr x20, 0x342 # MCAUSE
                  li x16, 0x3 # BREAKPOINT
                  beq x20, x16, ebreak_handler
                  li x16, 0x8 # ECALL_UMODE
                  beq x20, x16, ecall_handler
                  li x16, 0x9 # ECALL_SMODE
                  beq x20, x16, ecall_handler
                  li x16, 0xb # ECALL_MMODE
                  beq x20, x16, ecall_handler
                  li x16, 0x1
                  beq x20, x16, instr_fault_handler
                  li x16, 0x5
                  beq x20, x16, load_fault_handler
                  li x16, 0x7
                  beq x20, x16, store_fault_handler
                  li x16, 0xc
                  beq x20, x16, pt_fault_handler
                  li x16, 0xd
                  beq x20, x16, pt_fault_handler
                  li x16, 0xf
                  beq x20, x16, pt_fault_handler
                  li x16, 0x2 # ILLEGAL_INSTRUCTION
                  beq x20, x16, illegal_instr_handler
                  csrr x16, 0x343 # MTVAL
                  1: jal x1, test_done 

ebreak_handler:   
                  csrr  x20, mepc
                  addi  x20, x20, 4
                  csrw  mepc, x20
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
                  add x24, x2, zero
                  csrrw x2, 0x340, x2
                  mret

ecall_handler:    
                  la x20, _start
                  sw x0, 0(x20)
                  sw x1, 4(x20)
                  sw x2, 8(x20)
                  sw x3, 12(x20)
                  sw x4, 16(x20)
                  sw x5, 20(x20)
                  sw x6, 24(x20)
                  sw x7, 28(x20)
                  sw x8, 32(x20)
                  sw x9, 36(x20)
                  sw x10, 40(x20)
                  sw x11, 44(x20)
                  sw x12, 48(x20)
                  sw x13, 52(x20)
                  sw x14, 56(x20)
                  sw x15, 60(x20)
                  sw x16, 64(x20)
                  sw x17, 68(x20)
                  sw x18, 72(x20)
                  sw x19, 76(x20)
                  sw x20, 80(x20)
                  sw x21, 84(x20)
                  sw x22, 88(x20)
                  sw x23, 92(x20)
                  sw x24, 96(x20)
                  sw x25, 100(x20)
                  sw x26, 104(x20)
                  sw x27, 108(x20)
                  sw x28, 112(x20)
                  sw x29, 116(x20)
                  sw x30, 120(x20)
                  sw x31, 124(x20)
                  j write_tohost
illegal_instr_handler:
                  csrr  x20, mepc
                  addi  x20, x20, 4
                  csrw  mepc, x20
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
                  add x24, x2, zero
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
                  add x24, x2, zero
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
                  add x24, x2, zero
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
                  add x24, x2, zero
                  csrrw x2, 0x340, x2
                  mret

pt_fault_handler: 
                  nop

.align 12
mmode_intr_handler:
                  csrr  x20, 0x300 # MSTATUS;
                  csrr  x20, 0x304 # MIE;
                  csrr  x20, 0x344 # MIP;
                  csrrc x20, 0x344, x20 # MIP;
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
                  add x24, x2, zero
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
