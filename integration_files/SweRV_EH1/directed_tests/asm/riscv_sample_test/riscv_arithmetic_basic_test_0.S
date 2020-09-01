//.include "user_define.h"
.globl _start
.section .text
_start:
                  li x0, 0x9501fb56
                  li x1, 0x83b85537
                  li x2, 0xf5a53284
                  li x3, 0xb
                  li x4, 0xfabe145c
                  li x5, 0x80000000
                  li x6, 0x80000000
                  li x7, 0x80000000
                  li x8, 0x7
                  li x9, 0xf281e1c8
                  li x10, 0xfef45edb
                  li x11, 0x0
                  li x12, 0x0
                  li x13, 0x3221bcec
                  li x14, 0x80000000
                  li x15, 0xb
                  li x16, 0xb
                  li x17, 0x6
                  li x18, 0xf0226592
                  li x19, 0x0
                  li x20, 0xc8f08371
                  li x21, 0x164e9fa8
                  li x22, 0x0
                  li x23, 0xfe715307
                  li x24, 0x0
                  li x25, 0x0
                  li x26, 0x8
                  li x27, 0x0
                  li x28, 0xf3d68501
                  li x29, 0xdce246de
                  li x30, 0xf3417c72
                  li x31, 0x7
                  li x11, 0x40001104
                  csrw misa, x11
kernel_sp:        
                  la x14, _kernel_stack_end

trap_vec_init:    
                  la x11, mtvec_handler
                  ori x11, x11, 1
                  csrw 0x305, x11 # MTVEC

mepc_setup:       
                  la x11, _init
                  csrw mepc, x11
                  j init_machine_mode

_init:            
                  la x27, _user_stack_end
_main:            c.srli     s0, 11
                  slli       ra, s11, 5
                  sub        a6, s3, s5
                  lui        t0, 766875
                  slli       t1, a6, 12
                  c.lui      a6, 19
                  ori        s10, s2, 760
                  auipc      s8, 879674
                  c.li       t4, -1
                  slli       s10, t0, 17
                  srl        ra, s8, ra
                  c.sub      s1, a1
                  mulhsu     t4, s7, s8
                  c.nop
                  c.addi16sp sp, 80
                  sll        s8, s0, a0
                  slli       s6, a6, 23
                  slti       a2, s2, -290
                  addi       s5, s5, 732
                  srai       ra, t0, 13
                  andi       a3, t1, -228
                  slti       s10, a4, -224
                  sltiu      a7, a6, 734
                  remu       s1, a1, t1
                  c.mv       a0, a1
                  slli       sp, t2, 1
                  c.andi     s1, -1
                  xori       t0, t1, 282
                  c.nop
                  sltiu      s9, s8, 363
                  c.li       tp, -1
                  nop
                  c.and      a5, a1
                  c.or       s1, a5
                  rem        gp, a1, t0
                  c.nop
                  c.srai     s0, 26
                  c.add      a1, s10
                  c.srai     a0, 17
                  sltiu      t3, s2, -473
                  sltiu      t4, a2, -607
                  sra        a7, a6, s6
                  add        a1, t5, s10
                  c.li       s1, 28
                  c.lui      a2, 25
                  sltu       a2, a1, s7
                  c.srai     a2, 27
                  ori        t3, a6, -64
                  div        s2, s9, a4
                  c.or       s1, a3
                  slti       s1, a3, -867
                  ori        t3, a0, 824
                  ori        s10, a4, -240
                  lui        s10, 582287
                  mul        t0, tp, zero
                  sra        s1, a1, t6
                  divu       a3, s9, sp
                  sub        s0, s2, a4
                  c.slli     s4, 4
                  c.add      s0, s11
                  add        a6, a4, t2
                  andi       t3, s5, 820
                  c.and      a0, a4
                  and        gp, a2, s3
                  c.slli     ra, 20
                  srai       s5, s8, 4
                  c.or       s0, s1
                  slt        tp, s11, s11
                  remu       t5, s0, ra
                  xori       a1, a3, 518
                  rem        s6, a5, t4
                  auipc      a3, 653036
                  srl        a3, ra, a3
                  slt        s10, a0, t1
                  remu       ra, a5, s11
                  and        a0, a6, s2
                  nop
                  c.or       a0, a5
                  slt        t3, a5, ra
                  c.srai     s0, 6
                  c.srli     a0, 28
                  lui        s9, 1031189
                  sltiu      t1, s4, 904
                  c.nop
                  remu       a7, s0, s6
                  srli       s5, s11, 26
                  sltu       s9, t5, s8
                  c.addi16sp sp, -16
                  c.addi16sp sp, -16
                  addi       a5, ra, -667
                  c.andi     a0, -1
                  rem        s0, s2, s11
                  sltu       t2, a6, t4
                  c.xor      s1, s0
                  srai       a6, s0, 29
                  xori       s6, s9, 171
                  srl        a6, a4, a0
                  or         a1, t5, a1
                  xori       t4, a7, 153
                  add        zero, s0, t1
                  xori       s2, a6, 29
                  c.addi16sp sp, -16
                  srl        a0, ra, t4
                  c.srai     a0, 25
                  c.or       a5, a0
                  sub        s0, a1, sp
                  c.mv       t1, t6
                  c.xor      a3, a5
                  c.lui      s1, 23
                  and        s7, s11, s3
                  add        s1, s4, a3
                  andi       zero, s9, -53
                  c.addi16sp sp, 112
                  c.add      a3, a2
                  lui        a0, 638702
                  c.srai     a3, 22
                  rem        t3, sp, zero
                  c.srai     s1, 10
                  remu       t5, s6, t2
                  remu       s6, t1, t3
                  div        a7, s2, s11
                  sra        s7, a3, s7
                  c.or       s0, s1
                  ori        s10, s6, 939
                  srl        s10, a6, gp
                  sll        t4, s1, s2
                  mul        t6, s10, s8
                  srli       a7, s4, 30
                  slli       s2, t4, 0
                  addi       a1, a4, 950
                  sll        zero, a5, sp
                  divu       a0, s10, tp
                  addi       s4, s4, -725
                  add        ra, t4, t6
                  c.srli     a3, 21
                  addi       s8, s3, -773
                  mulh       ra, a2, t4
                  mulhsu     t0, a5, s11
                  c.and      s0, s0
                  addi       t0, s5, 117
                  c.addi     s8, -1
                  and        a0, t5, a0
                  xori       t1, sp, 845
                  c.lui      t5, 1
                  c.slli     sp, 30
                  c.addi16sp sp, 416
                  mulhsu     a0, t3, s4
                  lui        gp, 240566
                  auipc      t5, 459847
                  c.nop
                  xor        s4, s7, a3
                  c.addi     s4, -1
                  xor        sp, a2, a0
                  sub        gp, t5, s11
                  sub        s0, t2, ra
                  sltiu      a5, t4, -114
                  ori        s2, s10, 543
                  mulhsu     t6, s0, s1
                  sltu       s8, gp, s3
                  nop
                  div        s4, s2, a0
                  remu       s2, gp, tp
                  slli       a6, t1, 30
                  nop
                  nop
                  c.lui      t6, 26
                  c.andi     s1, -1
                  or         a2, s11, s5
                  srli       a2, s3, 2
                  sltiu      zero, s8, 948
                  c.lui      s10, 15
                  sltiu      a7, tp, 363
                  add        s7, s11, s4
                  remu       s0, s3, a4
                  ori        zero, s10, 909
                  sll        a6, a6, t3
                  divu       s10, t5, sp
                  lui        sp, 783735
                  c.srai     s1, 21
                  c.srai     a1, 9
                  mulhu      t3, s0, s5
                  srli       s9, s7, 2
                  rem        s2, a7, s4
                  c.addi16sp sp, -16
                  srai       s6, t6, 3
                  mulhu      s5, t1, ra
                  c.sub      s0, a3
                  and        t0, s11, a6
                  c.andi     a5, -1
                  sltiu      s10, ra, 366
                  add        a6, s9, zero
                  andi       t1, sp, 188
                  c.or       a1, a2
                  c.mv       s6, s5
                  mulh       a1, a1, ra
                  c.li       a5, -1
                  c.slli     t1, 24
                  c.sub      a0, a2
                  sra        a0, s5, s11
                  srli       s7, a4, 13
                  c.xor      a1, a4
                  add        s9, a7, a3
                  c.mv       t3, a4
                  srai       t0, s5, 30
                  c.lui      t6, 1
                  c.li       s10, -1
                  rem        a5, a2, a3
                  or         a2, s10, tp
                  mulh       a3, s0, s11
                  xor        t5, s7, s2
                  c.addi16sp sp, 320
                  c.or       a5, a1
                  c.xor      s0, a4
                  auipc      sp, 523615
                  srai       ra, sp, 3
                  or         zero, s11, a6
                  c.or       a3, a1
                  nop
                  mulh       t1, tp, a6
                  mulhsu     s10, s11, s3
                  slt        t0, sp, s10
                  sub        s5, ra, a4
                  xor        a5, t4, s11
                  remu       s1, a3, s11
                  sltu       t6, sp, t1
                  nop
                  andi       sp, s11, 991
                  or         tp, s7, a1
                  c.sub      a0, a4
                  or         t5, s1, a6
                  divu       t0, a4, gp
                  c.sub      a3, a0
                  srai       t1, t1, 29
                  addi       t6, zero, -349
                  sltu       s1, t0, s0
                  rem        s4, t5, t1
                  c.andi     s0, -1
                  remu       s2, s0, s0
                  c.xor      a2, s0
                  mul        t4, s9, zero
                  rem        a7, gp, a6
                  c.lui      s0, 9
                  add        s5, gp, t1
                  srli       s1, s5, 17
                  mulh       ra, s10, zero
                  mul        a7, t4, t4
                  mulhu      t5, gp, s1
                  xori       s5, s4, -191
                  c.lui      s6, 30
                  sll        a2, ra, s11
                  srli       t2, t5, 22
                  andi       a6, a1, 226
                  c.lui      gp, 6
                  c.nop
                  c.xor      a2, s1
                  c.and      a1, a3
                  slt        a6, s5, s9
                  div        tp, a4, t3
                  remu       a0, s9, t1
                  c.addi16sp sp, 336
                  remu       t6, a7, a1
                  nop
                  c.li       t2, -1
                  c.or       s1, a3
                  c.andi     a3, -1
                  srli       s7, sp, 17
                  addi       ra, s3, 719
                  srai       t6, a1, 15
                  or         s5, s1, s1
                  c.xor      a5, s1
                  slti       s9, s7, 610
                  c.li       gp, 2
                  or         a2, s1, s7
                  c.addi     t5, -1
                  c.slli     a7, 20
                  c.addi     t4, 12
                  c.sub      a3, a0
                  andi       s6, s6, 806
                  slti       t2, ra, -359
                  c.li       a2, 27
                  c.mv       a0, a6
                  c.add      t0, t4
                  sltu       s1, t4, a0
                  mulhsu     t1, tp, s9
                  c.lui      gp, 14
                  slti       s6, s9, -100
                  srl        s4, a4, t1
                  sra        s0, t2, t2
                  c.nop
                  mulhsu     t4, ra, t3
                  divu       t3, a6, sp
                  andi       t3, t0, 516
                  mulhu      a1, zero, a3
                  c.slli     s1, 8
                  divu       gp, t0, s4
                  c.addi     a2, -1
                  sra        a5, sp, sp
                  c.srli     a3, 7
                  addi       t5, gp, 617
                  c.xor      a1, a1
                  c.and      a0, a4
                  c.add      sp, a3
                  andi       s7, a7, 684
                  c.addi16sp sp, -16
                  andi       t3, a4, -903
                  lui        s10, 746213
                  c.srli     s0, 20
                  c.addi     s5, 31
                  ori        s1, a5, 794
                  mulh       a5, gp, s10
                  rem        s10, a0, s9
                  sltu       a0, s4, s5
                  c.add      a1, a3
                  sra        ra, s8, sp
                  c.slli     t0, 21
                  or         a6, a4, a0
                  c.xor      s1, a3
                  c.addi16sp sp, 272
                  sra        sp, a1, a5
                  xor        a3, t1, s7
                  ori        t2, t1, 51
                  srl        tp, t5, s4
                  andi       t3, a5, 354
                  sra        t3, s9, t4
                  ori        a0, a4, 921
                  xori       t6, s11, -154
                  c.andi     a3, -1
                  srai       s9, t2, 30
                  c.srai     a1, 24
                  remu       t2, t4, t5
                  rem        s2, a5, t2
                  c.or       a0, a4
                  mulhu      s9, sp, t6
                  c.srai     a5, 27
                  slli       gp, a7, 13
                  slli       s1, a7, 20
                  or         sp, s9, ra
                  c.srli     a2, 26
                  mulhu      s2, s0, s3
                  c.addi16sp sp, -16
                  c.xor      a0, a3
                  sub        t1, a1, t6
                  srl        a1, ra, sp
                  srli       a0, s11, 29
                  slli       t1, s6, 28
                  c.andi     s1, -1
                  c.addi16sp sp, -16
                  addi       s8, sp, -597
                  addi       a0, a3, -710
                  sll        a6, a0, sp
                  c.slli     s10, 22
                  remu       s8, s4, s11
                  srai       a0, a4, 5
                  divu       t5, a5, s11
                  c.slli     t6, 12
                  c.and      a1, s0
                  xori       t5, s5, 823
                  mulhsu     a3, s7, t2
                  lui        t6, 918475
                  c.addi16sp sp, -16
                  c.srai     a0, 25
                  xor        s10, zero, a5
                  c.li       a6, -1
                  xor        s7, t0, t5
                  c.addi     sp, -1
                  c.mv       s5, s4
                  div        a3, a3, t6
                  xori       t5, a1, -443
                  sll        s8, s3, s6
                  mulh       a0, a4, sp
                  sll        sp, a4, a7
                  c.and      a3, a0
                  c.and      a2, a1
                  sub        a6, s1, a5
                  mulhsu     t0, s3, a5
                  c.andi     a5, 16
                  xori       gp, t3, 874
                  rem        a2, s5, s1
                  c.or       a1, a3
                  c.srai     a5, 2
                  c.addi     s1, 5
                  slli       s8, s3, 4
                  mulhsu     a6, zero, a0
                  lui        s10, 407026
                  add        s5, sp, s2
                  c.add      a5, a4
                  sra        a2, a3, gp
                  mul        s10, t4, a6
                  nop
                  sub        t2, a4, s2
                  c.or       a0, a1
                  sltu       s7, a4, t5
                  sub        a7, a2, tp
                  c.sub      a5, s1
                  remu       gp, a2, a2
                  c.nop
                  sub        t4, t3, gp
                  c.xor      a2, a4
                  mulh       a7, s9, s9
                  mulhu      t5, s0, a4
                  mulh       a0, a2, gp
                  xor        s4, a7, a0
                  mulhsu     gp, s3, s10
                  slt        tp, t1, ra
                  sub        a7, a5, s4
                  div        s7, s7, a1
                  sra        tp, a0, s4
                  c.slli     t2, 26
                  mulh       s7, s0, s1
                  nop
                  addi       s7, s2, -84
                  c.addi16sp sp, -16
                  c.nop
                  c.add      t5, s2
                  divu       t5, a2, zero
                  c.andi     s0, 27
                  c.addi16sp sp, 96
                  divu       s1, gp, a5
                  c.addi16sp sp, 128
                  c.add      s8, s8
                  c.addi     t5, 11
                  and        a6, a0, t6
                  c.addi16sp sp, -16
                  c.addi16sp sp, 144
                  c.andi     a2, 25
                  divu       a0, t1, s5
                  slti       s1, s2, -438
                  srli       zero, a6, 4
                  auipc      s7, 188604
                  auipc      s1, 59314
                  c.addi     s0, -1
                  div        sp, t6, a1
                  slti       t2, ra, 215
                  c.addi16sp sp, 224
                  sltiu      s6, s10, -671
                  sll        s9, s5, gp
                  sll        s8, s9, zero
                  srl        t3, s6, s10
                  c.slli     s0, 20
                  auipc      a1, 644475
                  auipc      a3, 336535
                  sltu       s10, ra, t1
                  slt        t0, t6, ra
                  c.sub      s1, a0
                  sra        t3, t4, t5
                  srli       s1, t3, 16
                  srai       gp, a7, 5
                  xori       t3, zero, 128
                  c.xor      a1, a3
                  sll        t5, s8, a3
                  srli       a5, a4, 4
                  or         s10, s9, a6
                  and        s6, s11, tp
                  c.mv       s2, t0
                  c.andi     a5, -1
                  c.xor      a5, s0
                  ori        a0, t1, 564
                  divu       s0, gp, s6
                  xor        t6, s0, s4
                  c.sub      a3, a5
                  slti       a3, s7, -978
                  slti       zero, s4, -184
                  nop
                  add        tp, a1, s11
                  remu       s7, a4, a2
                  c.xor      s0, a0
                  c.addi16sp sp, -16
                  c.addi     a5, 26
                  sltu       a5, t1, s1
                  auipc      s0, 915740
                  sltiu      s5, a1, 245
                  rem        s6, s2, a0
                  mulhu      t1, a1, s6
                  add        s4, a4, a7
                  mulhsu     s1, a6, a5
                  mulhu      zero, zero, s0
                  c.sub      a2, a1
                  srli       tp, tp, 6
                  c.sub      a0, a5
                  c.li       t1, -1
                  slt        s5, a5, t6
                  or         s7, s10, sp
                  nop
                  and        sp, zero, t3
                  addi       gp, a2, -1001
                  lui        t4, 605717
                  mulhu      gp, a0, s6
                  mulhu      s6, t3, t6
                  c.or       a0, a5
                  auipc      a2, 230781
                  c.add      t4, s9
                  sra        t0, s8, t0
                  andi       s8, t2, 600
                  c.andi     a2, -1
                  c.addi     a2, -1
                  c.or       a2, a2
                  c.nop
                  mulhu      a3, s4, sp
                  c.srai     a2, 16
                  mulh       s4, a3, a7
                  auipc      a7, 341809
                  c.andi     s0, 3
                  lui        a6, 479167
                  sltu       s6, s6, s3
                  mulhu      a3, s9, s11
                  mulhu      s1, gp, s3
                  div        a1, t4, a2
                  xori       s0, t3, -714
                  c.mv       ra, a7
                  sltiu      a7, a6, 180
                  c.addi     t3, 20
                  c.addi     gp, -1
                  c.add      t4, tp
                  mulhsu     s0, a4, a0
                  c.lui      a6, 11
                  xori       t0, s10, -186
                  xor        s0, t6, gp
                  c.srli     a5, 16
                  srli       s1, t4, 4
                  div        gp, zero, a6
                  andi       a7, sp, 1015
                  c.lui      tp, 16
                  sll        ra, s6, zero
                  srai       a1, s11, 26
                  srli       tp, t1, 28
                  srl        tp, a6, t3
                  xor        a3, a0, s9
                  slti       a2, s3, 866
                  c.nop
                  ori        t3, t6, 321
                  c.slli     a5, 3
                  c.slli     t6, 29
                  sltiu      ra, tp, 397
                  lui        t5, 565202
                  c.and      a0, a0
                  mulh       gp, s6, t4
                  c.mv       s2, s6
                  c.srai     a5, 21
                  andi       s9, s6, -183
                  divu       s9, a4, s3
                  c.addi     t3, 15
                  c.and      s1, a3
                  c.nop
                  slli       gp, s8, 11
                  c.addi     s4, -1
                  lui        gp, 287480
                  c.and      a1, s1
                  nop
                  c.xor      a5, a2
                  c.andi     a0, 17
                  c.sub      a5, a1
                  c.addi     t1, -1
                  c.or       a2, a0
                  c.slli     a6, 16
                  xori       s0, tp, 694
                  nop
                  srl        s1, s2, t0
                  slt        s5, a3, s7
                  sll        s6, s0, s4
                  rem        s4, t2, s10
                  mulhsu     s9, t1, ra
                  or         t0, t0, s6
                  auipc      a6, 426580
                  srli       s10, a5, 15
                  c.addi     sp, -1
                  remu       a7, s5, t0
                  srai       gp, a4, 15
                  c.lui      a2, 7
                  c.srai     a5, 6
                  mulh       s5, a4, s9
                  andi       a2, t0, 1015
                  mul        s7, a6, a5
                  remu       a3, s4, t3
                  c.lui      t4, 13
                  slli       t5, t5, 25
                  slti       a6, t6, -726
                  mulh       a0, t6, s1
                  nop
                  div        a6, tp, t4
                  srli       s2, t1, 12
                  xor        s4, s2, zero
                  c.sub      a2, a0
                  c.or       a0, a0
                  xori       a2, sp, 885
                  slt        t2, zero, s4
                  auipc      tp, 994693
                  sub        a3, s2, s2
                  nop
                  xori       s1, s10, 60
                  c.mv       s0, a7
                  mul        a6, sp, t6
                  c.andi     a1, -1
                  rem        gp, s8, s7
                  lui        t1, 523087
                  nop
                  srli       t3, s7, 29
                  c.nop
                  c.andi     a3, 15
                  c.srli     a5, 3
                  auipc      s7, 750683
                  c.slli     s10, 24
                  mulhu      gp, gp, a5
                  and        t4, gp, t1
                  c.srli     a3, 29
                  c.lui      a3, 13
                  div        s9, a3, gp
                  c.nop
                  and        s10, t3, t3
                  c.mv       s5, s9
                  lui        t6, 364495
                  c.li       s1, 24
                  andi       a1, zero, 702
                  slti       tp, a5, -442
                  remu       s7, t6, s6
                  c.sub      a3, a0
                  c.addi     a7, 24
                  srl        a6, s11, t6
                  c.srli     a0, 25
                  mul        t1, s3, a6
                  ori        s6, a6, 394
                  c.slli     a3, 20
                  c.addi16sp sp, -16
                  c.or       a3, a0
                  slli       t4, a4, 25
                  div        a1, gp, t6
                  c.and      s1, a4
                  c.srli     a0, 21
                  remu       s7, ra, s9
                  mulhsu     s6, s9, t0
                  xor        a7, t5, s10
                  mulhu      s5, s7, a3
                  c.addi     t6, -1
                  addi       s2, a7, 513
                  c.slli     a3, 13
                  addi       zero, a7, -1020
                  sltu       s5, t0, s5
                  nop
                  srl        a3, s10, s5
                  mulh       t4, s4, tp
                  sub        s6, a4, s7
                  mulhsu     s7, zero, gp
                  mul        sp, gp, t0
                  c.add      t6, t6
                  c.addi16sp sp, -16
                  c.addi16sp sp, 32
                  c.nop
                  div        a0, a7, a7
                  or         s9, a3, sp
                  c.srai     s1, 3
                  c.nop
                  c.nop
                  c.and      a0, s1
                  sub        sp, s10, a2
                  c.xor      s0, a4
                  sltiu      s6, a3, -213
                  sltiu      s1, t1, 421
                  c.srai     a0, 31
                  c.addi16sp sp, -16
                  and        t0, sp, gp
                  auipc      tp, 512939
                  c.addi     sp, 24
                  slt        t4, a1, t5
                  c.addi16sp sp, -16
                  addi       a5, a3, -1016
                  lui        t1, 376158
                  c.andi     s0, -1
                  sub        t6, s11, s2
                  sltiu      s7, a5, 58
                  srai       s10, s2, 23
                  addi       a0, s0, 309
                  or         a6, s3, t3
                  xor        t6, s1, t6
                  xori       s4, a2, -245
                  c.srli     s1, 21
                  sub        s0, a1, s1
                  c.addi     s5, -1
                  c.srli     a2, 16
                  remu       s4, a0, s1
                  slli       t5, ra, 1
                  divu       a1, a6, a5
                  c.mv       t2, a1
                  auipc      ra, 145444
                  c.li       t0, -1
                  slt        t1, t1, a2
                  auipc      zero, 549624
                  c.mv       s4, a5
                  mulh       s2, a1, gp
                  sll        ra, zero, s9
                  c.xor      a0, s0
                  andi       a3, s9, -609
                  c.add      s6, a2
                  xor        tp, s9, s1
                  c.add      t0, a3
                  and        s6, tp, s3
                  c.addi     a5, 2
                  c.li       a2, 18
                  slli       s9, a6, 1
                  c.addi     a6, 25
                  slti       t0, a0, 716
                  c.srli     a1, 31
                  auipc      s10, 619335
                  srai       s8, s4, 27
                  mulhu      sp, t0, a3
                  c.slli     t6, 7
                  or         s2, s2, s4
                  c.addi     a6, 16
                  auipc      s7, 982437
                  addi       s7, gp, 633
                  srl        a0, t3, s11
                  remu       t4, s10, t2
                  c.nop
                  addi       s1, a1, 639
                  srli       t5, gp, 6
                  addi       a7, t0, -83
                  c.andi     a2, -1
                  slli       sp, t3, 2
                  srai       sp, s0, 3
                  or         t5, s11, a4
                  mulh       a1, a3, gp
                  c.addi16sp sp, -16
                  slli       s7, s2, 11
                  c.addi     a6, -1
                  add        t6, a5, a0
                  srl        ra, sp, t0
                  c.addi     a7, -1
                  srai       t6, s5, 6
                  c.mv       t1, s11
                  c.slli     s9, 25
                  c.or       a2, s1
                  rem        a3, ra, s2
                  remu       a5, a3, t5
                  andi       t0, ra, 76
                  add        t3, s1, t6
                  slti       zero, t3, -835
                  c.srai     a2, 27
                  c.srai     a5, 4
                  lui        t0, 623959
                  c.mv       t6, s2
                  div        t5, a6, a7
                  c.sub      s0, a5
                  andi       zero, s10, 434
                  c.addi16sp sp, 160
                  or         t5, s6, a2
                  c.xor      s1, a4
                  ori        t0, s5, 389
                  divu       ra, t1, a4
                  slli       t6, t1, 11
                  andi       a2, tp, -467
                  c.xor      a1, s1
                  auipc      t2, 391568
                  c.srai     s1, 8
                  andi       ra, t4, -627
                  srai       a0, a6, 0
                  c.and      a5, s0
                  sll        a2, t0, a4
                  c.addi     a7, 18
                  sltu       zero, s0, gp
                  sltu       zero, s5, gp
                  rem        t0, s10, a6
                  c.srli     a3, 27
                  mul        t4, a4, a6
                  auipc      a5, 479764
                  slt        gp, a7, t4
                  div        s0, t5, t3
                  sra        a3, s10, t6
                  sltu       s4, s2, s11
                  or         t5, s0, t4
                  c.and      a3, s1
                  c.add      a0, gp
                  sra        a3, a3, s9
                  div        tp, s6, t4
                  sltu       t4, a3, a7
                  div        gp, s1, ra
                  addi       t3, s7, 529
                  ori        s10, a4, 260
                  srai       s4, t0, 17
                  c.andi     a1, -1
                  rem        t2, s4, a2
                  srl        s9, a7, s1
                  divu       s0, a5, t5
                  sub        s7, s3, a0
                  c.andi     a2, 21
                  nop
                  or         t1, s9, s10
                  div        a5, s7, t5
                  auipc      t6, 704573
                  mulh       t0, a4, a5
                  slti       a0, t3, -295
                  auipc      s1, 566725
                  srl        t5, a7, a7
                  mulhu      t0, t3, a2
                  c.add      ra, s7
                  c.slli     s5, 25
                  divu       s1, s7, t5
                  c.nop
                  srl        gp, t1, zero
                  c.addi16sp sp, 16
                  c.lui      a1, 26
                  c.addi16sp sp, 256
                  sll        t2, a6, s9
                  mul        t4, a7, t5
                  c.li       s8, -1
                  rem        a6, s7, ra
                  lui        a7, 661338
                  xori       s10, t6, 75
                  remu       a1, s9, s6
                  mulhu      a1, a6, t2
                  c.srli     a3, 15
                  c.nop
                  sra        t4, s0, a2
                  c.addi     a2, 13
                  srai       t0, zero, 19
                  sra        a5, t3, s10
                  xori       a7, t0, -35
                  srli       s7, t2, 12
                  mul        s6, a5, s3
                  c.sub      a2, a5
                  mulh       s7, t2, s5
                  and        s0, s3, s3
                  c.or       s0, a0
                  c.add      s1, sp
                  c.srli     a2, 19
                  sra        t4, s6, s3
                  andi       s9, s5, 771
                  c.sub      s1, a1
                  sltu       a6, s8, t6
                  div        t5, a0, tp
                  xor        s5, a5, sp
                  div        a6, tp, t0
                  rem        zero, t6, s10
                  srli       tp, t3, 17
                  c.srli     s0, 2
                  sltu       s0, t6, ra
                  mul        ra, a4, t4
                  c.sub      a2, a1
                  c.xor      a3, a4
                  mulhu      s0, s2, a5
                  c.lui      a7, 21
                  mulhsu     zero, t5, s6
                  mulh       a1, gp, sp
                  c.or       s0, a1
                  remu       s5, s4, s9
                  nop
                  or         s10, a6, t5
                  sra        s1, s11, t5
                  sub        t2, s11, s6
                  divu       s10, t4, s4
                  sub        a0, s6, s10
                  mulhu      ra, a3, a3
                  c.addi16sp sp, -16
                  srli       s0, s9, 31
                  add        ra, s2, t0
                  c.slli     a6, 13
                  mulhsu     a5, s5, s9
                  and        a5, t1, tp
                  c.and      a5, a5
                  slti       gp, t4, -314
                  xor        s1, a4, t0
                  c.nop
                  slt        a0, gp, s4
                  xor        zero, t6, sp
                  ori        s0, s2, -72
                  slt        s2, s11, a3
                  sltiu      t0, s5, 498
                  mul        t3, s3, s10
                  sltu       s2, t5, a1
                  srai       s9, a5, 11
                  c.li       t0, 22
                  srl        s2, t1, a1
                  c.li       s2, 12
                  mulhu      t3, s7, t0
                  c.xor      a5, a0
                  nop
                  sra        a0, t1, t4
                  xor        a3, s10, a6
                  c.lui      s5, 20
                  c.and      a2, a1
                  or         s10, t6, t4
                  ori        s10, s11, -928
                  or         s7, sp, s6
                  c.lui      s6, 28
                  slt        a1, s11, a0
                  sll        tp, t4, a0
                  c.slli     s4, 2
                  or         t3, s10, a2
                  or         s10, tp, s1
                  rem        t0, s0, ra
                  mul        a7, s7, s2
                  sltu       a5, zero, s5
                  sub        gp, a4, a0
                  sltiu      a2, ra, -1002
                  mulh       a3, s3, s10
                  c.srai     s0, 6
                  divu       a1, t4, s4
                  c.andi     a5, 11
                  srai       t0, t3, 11
                  srai       s9, t4, 30
                  slti       tp, s11, 680
                  c.and      s1, a5
                  c.and      a5, a4
                  mul        s4, a5, s0
                  remu       ra, a2, s8
                  xori       s0, s10, 903
                  srli       s10, s3, 14
                  srai       ra, sp, 26
                  c.and      a1, a3
                  mulh       a2, a2, s5
                  srl        s9, t2, t4
                  mul        tp, s9, t0
                  xori       s8, sp, 888
                  lui        s7, 865731
                  sltu       t3, s10, t4
                  or         s4, a3, ra
                  c.xor      a5, a3
                  slt        zero, a6, zero
                  c.li       tp, 24
                  slt        t6, s10, s2
                  c.add      t2, s8
                  xori       t6, s11, -281
                  add        s4, t0, s4
                  add        a3, s10, t2
                  sub        a3, a2, t1
                  c.xor      a2, a0
                  c.srai     a5, 1
                  c.or       a5, a4
                  c.lui      a2, 22
                  c.xor      a1, s0
                  or         a7, a7, s7
                  xor        a7, a6, t2
                  c.add      s7, ra
                  sub        s1, s8, t2
                  c.srai     s1, 11
                  c.addi16sp sp, -16
                  auipc      a3, 135451
                  remu       s5, t6, s6
                  c.addi16sp sp, -16
                  c.addi16sp sp, 464
                  mulhsu     s1, s2, s10
                  andi       zero, s2, -11
                  c.sub      a2, a5
                  c.addi     s7, 16
                  mulhsu     s1, s4, s5
                  c.add      t5, s9
                  c.nop
                  sltu       s7, s5, s7
                  srai       tp, s9, 30
                  c.sub      s0, a4
                  xor        s0, ra, t5
                  slt        s4, tp, a5
                  c.mv       t1, ra
                  mul        a0, s11, tp
                  auipc      a6, 140556
                  sll        a2, t1, ra
                  divu       s2, s0, tp
                  ori        t4, t5, -592
                  c.or       a2, s1
                  mulhsu     s5, t5, s3
                  srai       t5, a4, 13
                  and        a2, s0, a3
                  remu       s2, sp, t1
                  c.srai     a2, 24
                  sltiu      s1, s5, 820
                  ori        tp, s8, 735
                  c.and      a3, a1
                  c.slli     s2, 19
                  c.slli     t3, 3
                  auipc      s2, 190454
                  xor        tp, zero, t5
                  addi       sp, a2, 930
                  sub        t6, a6, s0
                  nop
                  xori       s6, t2, -26
                  c.slli     s2, 15
                  c.sub      a2, a1
                  xori       t4, s9, -38
                  c.xor      a5, a5
                  nop
                  slli       t2, a5, 15
                  xori       t4, t4, -787
                  c.mv       a6, s8
                  auipc      s1, 845282
                  nop
                  slli       t0, t4, 2
                  sll        t3, zero, s4
                  c.sub      a2, a2
                  srli       a1, s0, 16
                  ori        a7, s7, 178
                  slli       t3, gp, 1
                  div        t2, ra, ra
                  c.srli     a2, 1
                  or         s5, gp, tp
                  c.nop
                  c.andi     s1, -1
                  addi       s10, a0, -9
                  or         t1, s1, t6
                  srli       ra, sp, 27
                  c.addi16sp sp, 32
                  sltu       t3, s6, a0
                  add        t0, t2, t5
                  c.srai     a5, 15
                  c.or       a1, s0
                  mulhsu     t5, s3, gp
                  sltu       t5, s10, a0
                  c.lui      s0, 4
                  auipc      zero, 744340
                  slti       s1, t4, -7
                  ori        s9, t5, -258
                  sra        zero, a6, s6
                  addi       t2, a4, 640
                  or         a6, s9, s5
                  div        a3, a3, a4
                  mulhu      a2, t0, a1
                  xori       t0, tp, -368
                  mulh       a5, s2, a2
                  sltiu      s0, t4, -604
                  sra        s1, s2, t4
                  sub        a5, a6, gp
                  mulhsu     a5, a1, s10
                  ori        ra, s1, 452
                  add        t1, t1, t1
                  c.nop
                  remu       a6, a4, s7
                  c.lui      s2, 18
                  c.li       gp, 22
                  c.andi     a3, -1
                  c.sub      a3, s1
                  divu       s2, s2, a6
                  xori       s0, t1, -967
                  slti       a6, t2, 648
                  mulh       a5, a3, t2
                  xor        s2, s2, t1
                  andi       s2, t4, 834
                  c.srli     s1, 27
                  c.add      a7, a7
                  div        t0, t4, a1
                  c.mv       s4, s7
                  srli       a5, a4, 31
                  div        gp, t1, s0
                  slti       s10, s10, 942
                  lui        s7, 198440
                  c.nop
                  srli       t0, s9, 15
                  rem        zero, s3, a3
                  c.srli     a3, 25
                  c.addi     s4, 26
                  andi       s2, s1, 190
                  sltu       gp, a7, a5
                  slti       s1, t6, -209
                  c.addi     t0, -1
                  xor        t5, t6, a0
                  remu       ra, s0, t3
                  c.addi16sp sp, 288
                  divu       s7, s11, ra
                  ori        tp, gp, -14
                  srli       s5, s11, 29
                  auipc      s9, 173864
                  c.srai     a0, 25
                  nop
                  c.li       s0, -1
                  sltu       tp, t4, a4
                  c.addi     a2, -1
                  c.xor      s1, a2
                  sltiu      t3, a0, -811
                  c.srli     s0, 9
                  srai       a2, tp, 22
                  c.addi     t2, -1
                  remu       s8, s1, s11
                  mulh       t2, sp, sp
                  c.srai     s1, 4
                  and        zero, ra, t5
                  c.lui      s8, 4
                  c.or       s0, a4
                  sltu       a6, s9, zero
                  add        s5, t5, s5
                  addi       t3, s0, -849
                  c.sub      a1, a2
                  xor        t5, a3, s0
                  add        a0, s2, t4
                  c.li       a3, 9
                  mulhsu     s8, a2, a6
                  c.li       s10, 27
                  c.and      a3, a4
                  c.addi16sp sp, -16
                  slli       t0, t1, 13
                  sra        a5, s1, t4
                  c.addi16sp sp, 48
                  c.addi     a6, 27
                  add        sp, ra, s2
                  c.nop
                  sltu       a3, t6, t5
                  c.addi16sp sp, 112
                  slt        s1, s6, s6
                  auipc      tp, 31011
                  sub        t3, a6, s10
                  c.lui      s1, 30
                  srli       a3, s7, 10
                  slt        a7, s1, t6
                  srl        s7, t0, sp
                  c.srli     a3, 12
                  xori       s6, t6, -728
                  c.addi16sp sp, 272
                  c.mv       t6, t5
                  mulhu      a6, s3, s4
                  ori        s6, a4, 470
                  sra        zero, s7, s2
                  c.xor      a5, a0
                  or         a6, s8, a4
                  sub        t3, t4, s9
                  c.and      s0, a3
                  c.li       s2, -1
                  add        sp, t0, gp
                  mulhsu     t2, gp, a7
                  ori        s9, s3, 583
                  c.addi16sp sp, 192
                  c.sub      a5, a1
                  auipc      s4, 876332
                  srl        t4, sp, s9
                  srli       gp, t6, 3
                  mulh       s1, a1, t1
                  sll        a3, t5, sp
                  c.and      s0, s1
                  slti       t3, a3, 782
                  xori       tp, s1, -958
                  c.slli     a6, 4
                  andi       s8, s0, -788
                  c.mv       s0, gp
                  rem        s1, s7, t0
                  c.slli     s8, 30
                  rem        s10, s11, t6
                  ori        a0, t5, 589
                  c.sub      a1, s1
                  xori       a2, s5, 346
                  c.add      a3, a0
                  c.addi     s0, 16
                  add        s5, zero, zero
                  mulhu      s10, t4, s4
                  addi       s5, t3, 125
                  c.nop
                  c.srli     a1, 10
                  c.lui      t0, 23
                  or         s1, s3, s6
                  c.xor      s0, s1
                  rem        s1, s0, a7
                  rem        s6, s9, tp
                  auipc      s7, 498112
                  c.mv       s8, a4
                  c.lui      a1, 14
                  lui        tp, 302820
                  mulh       a6, ra, gp
                  c.slli     a7, 25
                  c.li       s8, -1
                  mul        t5, ra, a6
                  c.add      t5, a1
                  c.add      a3, s4
                  add        sp, a4, a3
                  c.srli     a3, 19
                  sltu       t5, s1, sp
                  sll        a6, s11, sp
                  nop
                  sll        s7, s3, s3
                  andi       t4, tp, 749
                  c.add      ra, a3
                  slt        s6, s4, zero
                  c.mv       gp, s8
                  c.lui      a1, 16
                  mulh       sp, s2, s0
                  c.li       sp, 14
                  c.srli     a5, 15
                  c.slli     t4, 4
                  srl        s2, s9, s0
                  addi       a6, sp, 449
                  sltu       a2, a7, sp
                  rem        gp, a2, t1
                  c.or       a0, s1
                  slti       a7, s7, 564
                  slt        a1, tp, t0
                  add        a0, t5, s1
                  srl        s2, a7, gp
                  c.slli     a0, 2
                  sltiu      zero, t0, 586
                  ori        t4, a5, -415
                  slti       s8, t2, -26
                  mul        a2, a3, t6
                  srli       t5, s1, 15
                  or         a0, s4, zero
                  srli       t6, s11, 25
                  c.or       a3, a1
                  c.add      a3, t3
                  addi       t6, s3, -499
                  slli       s6, tp, 21
                  slti       a7, s6, 371
                  andi       s0, t4, 480
                  c.sub      a3, a0
                  c.addi16sp sp, 400
                  mulhu      s4, zero, t4
                  andi       s5, a6, -88
                  slt        t6, a6, t1
                  nop
                  c.li       t0, 22
                  c.addi     ra, -1
                  divu       a5, s4, a3
                  slti       t4, t6, -988
                  mulhsu     s7, s5, s3
                  c.add      t5, t2
                  c.mv       sp, a1
                  c.xor      a2, a4
                  div        sp, a0, sp
                  srl        s8, s5, zero
                  slti       sp, t5, -521
                  c.addi16sp sp, 224
                  divu       t2, sp, s5
                  add        s4, s11, s0
                  or         tp, s3, s10
                  c.lui      s4, 23
                  ori        zero, s3, -358
                  add        gp, a6, zero
                  srai       a5, t0, 8
                  c.mv       s8, s4
                  c.addi     s8, 13
                  c.nop
                  c.srai     a2, 14
                  mulhu      s6, gp, s2
                  rem        t4, a1, s5
                  c.andi     a3, 27
                  c.and      a1, a5
                  slt        s8, s9, s2
                  c.srli     s1, 10
                  remu       a5, ra, s9
                  c.or       a0, a2
                  sra        s8, a0, s5
                  c.lui      a6, 7
                  sltu       t4, t5, gp
                  c.nop
                  c.nop
                  rem        t6, s8, s3
                  c.li       s4, 1
                  mulhu      a2, ra, gp
                  mulhsu     zero, s9, a0
                  addi       gp, t5, -775
                  xor        t3, t1, a7
                  rem        s9, s11, sp
                  rem        s0, s6, s3
                  sll        s10, s0, s10
                  div        t0, t4, t5
                  c.nop
                  srli       s1, t0, 10
                  mulhu      s0, t5, s10
                  sub        s2, s4, a6
                  sub        s8, s3, t6
                  xori       t2, t6, 286
                  c.addi16sp sp, 416
                  slti       a7, zero, -330
                  mulhsu     a2, s6, t2
                  andi       t3, t0, 676
                  xor        tp, a1, s11
                  sra        t6, zero, a7
                  and        s7, t4, s6
                  c.addi16sp sp, 496
                  c.add      a5, s2
                  ori        a2, s2, -23
                  mulhsu     t3, s11, t0
                  and        a0, a1, t6
                  or         s6, s7, s6
                  and        s4, s11, s11
                  auipc      t5, 528272
                  slli       tp, gp, 7
                  c.slli     a1, 21
                  sub        t1, t1, zero
                  c.add      s7, s10
                  mulhu      t1, t5, t5
                  xor        s5, a3, s1
                  slli       t2, a6, 29
                  srai       s5, s9, 29
                  addi       t4, t2, 354
                  srl        s5, a4, s8
                  sub        s4, t6, a2
                  xori       s5, t3, -777
                  sra        s6, s0, s11
                  rem        t2, s2, t6
                  mulhsu     sp, s5, t4
                  sub        a0, t1, a4
                  div        t5, gp, s8
                  c.or       a0, a2
                  andi       t6, s8, -491
                  add        a3, a0, ra
                  div        a3, t3, s10
                  auipc      t0, 897155
                  addi       ra, t3, 515
                  c.nop
                  c.sub      a5, a4
                  c.addi     t2, 16
                  c.srai     a3, 21
                  slli       a5, t2, 0
                  mulhsu     s6, a5, s5
                  lui        t2, 739395
                  c.slli     gp, 16
                  xor        a6, t5, t5
                  srli       s4, tp, 8
                  or         a5, sp, s11
                  slt        ra, sp, s5
                  c.sub      s0, a2
                  add        gp, s0, s4
                  c.slli     s4, 14
                  c.lui      t2, 25
                  remu       a1, a5, s3
                  c.andi     a0, -1
                  c.srli     a5, 23
                  xor        a3, t6, t0
                  slli       a6, gp, 30
                  sra        t1, s1, t4
                  c.li       a6, 20
                  sub        s7, ra, s7
                  sltiu      s4, s11, 316
                  lui        t6, 646511
                  slti       t4, s9, 750
                  and        zero, a1, tp
                  srli       s0, a0, 6
                  c.add      s8, s5
                  srl        t1, s0, zero
                  sra        s7, s0, a1
                  c.sub      a2, a3
                  or         s0, zero, s11
                  sltu       t2, t3, s8
                  c.andi     s1, -1
                  divu       t5, s1, t1
                  c.sub      a2, a3
                  sltu       s10, s4, sp
                  xor        a1, t5, s1
                  sll        t6, zero, t0
                  addi       tp, s1, -922
                  mul        s9, s11, a2
                  div        s10, s0, t3
                  c.and      a5, a3
                  xori       t2, t4, 841
                  divu       t5, s2, t3
                  andi       a0, s11, 41
                  c.or       a2, a4
                  c.li       ra, -1
                  c.li       t6, -1
                  c.srai     a3, 26
                  c.mv       t5, a3
                  c.srai     a2, 29
                  divu       t3, a2, a7
                  mulh       t4, a1, t2
                  xor        a0, s3, s11
                  c.srai     a0, 9
                  nop
                  andi       s9, s9, 935
                  andi       s8, t0, -854
                  nop
                  or         t3, t3, s2
                  lui        gp, 160415
                  srl        s9, t0, a0
                  andi       a6, sp, -411
                  slti       s6, s9, -100
                  sltu       t5, a3, s0
                  rem        t3, a7, s0
                  c.or       a5, a5
                  xori       s9, sp, -890
                  c.addi16sp sp, -16
                  mulh       tp, t4, gp
                  c.and      a3, a5
                  slt        s6, a5, sp
                  srli       s5, s4, 4
                  slli       a0, s10, 27
                  slti       s8, t6, -307
                  c.sub      a1, a4
                  mulhu      t6, s5, a1
                  c.xor      a1, s1
                  c.or       a1, a5
                  c.andi     s0, -1
                  c.addi16sp sp, 32
                  nop
                  addi       t4, s11, -571
                  and        s1, s1, t2
                  div        s10, s3, a6
                  remu       s1, t3, s6
                  rem        t1, t5, s5
                  and        t4, ra, a1
                  and        sp, a6, s6
                  rem        t1, a2, s3
                  add        s0, s11, t3
                  sra        t6, a3, t4
                  sltu       s6, a0, s10
                  c.addi     a1, 25
                  srl        t2, t6, s8
                  sll        sp, t3, s0
                  c.srai     s0, 3
                  c.li       a7, -1
                  and        zero, t4, sp
                  slti       t1, t3, -738
                  div        t3, gp, a5
                  slt        s7, ra, s10
                  c.addi     s7, 12
                  mulhsu     a5, s0, t6
                  remu       s4, s0, t5
                  slti       t5, ra, -1015
                  srai       tp, a0, 31
                  c.lui      s7, 3
                  slti       s8, s6, 881
                  c.srai     a3, 24
                  lui        s7, 818807
                  remu       t6, s9, a0
                  c.srai     a0, 16
                  c.sub      s1, s1
                  srl        s2, s3, a4
                  slti       s2, tp, 561
                  mulhu      sp, a0, s11
                  sltu       a2, s0, zero
                  srli       t3, ra, 18
                  div        s6, sp, s10
                  c.nop
                  nop
                  c.and      a2, s1
                  c.sub      a3, a5
                  sub        t1, s8, gp
                  c.andi     a0, 11
                  slt        s5, a3, s2
                  sra        s8, t4, s1
                  c.sub      a0, a5
                  c.sub      a5, a4
                  lui        t0, 598043
                  sll        s8, a7, t4
                  srli       s4, gp, 9
                  c.nop
                  srli       s5, a3, 29
                  c.sub      s1, a3
                  c.addi16sp sp, 384
                  c.or       a0, a0
                  sra        a2, s2, tp
                  c.xor      a3, a2
                  nop
                  c.andi     s0, -1
                  add        ra, t5, t0
                  slti       s0, t0, -742
                  sra        zero, tp, zero
                  c.xor      s1, a2
                  xor        t4, t2, t0
                  c.andi     a5, -1
                  divu       sp, sp, s0
                  mulhsu     s10, t4, t2
                  mul        t4, s0, s1
                  c.nop
                  c.li       a6, 27
                  c.and      s0, a3
                  sra        a2, s1, s1
                  remu       s4, a5, s7
                  div        s7, tp, s5
                  sra        t6, s8, a3
                  slti       s0, t3, -470
                  mulh       a1, a7, s2
                  add        a3, a7, t1
                  c.and      s0, a3
                  remu       s1, a7, t2
                  rem        a5, t3, s1
                  or         t3, zero, a6
                  srli       s2, s9, 19
                  c.or       s1, a2
                  c.srai     a3, 14
                  and        s2, t2, s9
                  c.and      a2, a3
                  mulh       t4, s10, a3
                  ori        s7, tp, 490
                  slli       t2, s6, 23
                  auipc      t1, 692751
                  mulhsu     s1, a0, s7
                  sub        ra, s10, s9
                  mulh       a1, ra, s4
                  rem        t3, t1, a2
                  xori       a7, s9, -840
                  slt        s4, t0, sp
                  sub        a2, a0, sp
                  add        s0, s1, s1
                  xor        s2, a1, t0
                  srl        s8, s8, s1
                  slti       s8, s9, -560
                  mulh       a3, s11, s0
                  c.mv       gp, gp
                  add        a5, t2, s4
                  mul        s1, a0, ra
                  c.nop
                  auipc      t3, 636578
                  c.srai     s0, 25
                  c.li       s0, 2
                  slti       t2, zero, -943
                  srl        t5, sp, zero
                  xor        s1, t0, a4
                  add        a2, t1, t0
                  c.sub      a1, s0
                  mulhu      a2, s7, a1
                  srai       s1, ra, 27
                  c.sub      a1, s0
                  srl        ra, a1, s4
                  c.or       a5, a1
                  c.addi16sp sp, 208
                  srl        a3, t3, a1
                  c.nop
                  c.srli     s0, 30
                  c.lui      t5, 20
                  c.nop
                  c.addi     t4, 9
                  ori        t1, s5, 363
                  c.slli     t6, 23
                  auipc      s2, 154787
                  c.srli     a2, 16
                  srl        a7, s1, t1
                  or         gp, a6, a6
                  or         t4, zero, s11
                  c.andi     a0, -1
                  c.srli     a2, 30
                  c.li       t4, 3
                  ori        sp, s4, 784
                  andi       s7, t0, 845
                  c.or       a1, a3
                  srli       s4, a4, 24
                  rem        s9, ra, a3
                  c.addi16sp sp, 304
                  xori       s10, s3, -247
                  divu       s0, a7, s4
                  srl        t4, a1, s10
                  slli       t4, t2, 5
                  mulhu      ra, t1, a7
                  c.xor      a3, a3
                  mulh       s1, s4, a4
                  c.mv       s7, a2
                  slli       s0, a6, 22
                  c.or       a1, s0
                  lui        s4, 779781
                  srli       a2, t5, 28
                  srl        a0, s2, t0
                  ori        ra, s2, 767
                  srli       t1, zero, 3
                  c.srai     a3, 29
                  c.srai     s1, 2
                  andi       s4, sp, 717
                  and        s0, s10, tp
                  srl        sp, a2, s6
                  c.addi16sp sp, -16
                  sll        tp, a4, s6
                  slt        s0, a7, a1
                  c.addi     t3, 29
                  mulhsu     s7, t2, a0
                  c.srai     a2, 18
                  xori       s8, s8, 850
                  slti       s10, s3, 85
                  c.slli     a0, 3
                  or         s2, a4, a2
                  c.nop
                  xori       a1, s3, 275
                  srl        t6, a5, s0
                  c.srli     a3, 8
                  rem        a0, a0, a2
                  and        s2, a5, gp
                  c.sub      a2, s1
                  c.andi     a5, 11
                  mulh       a3, a0, s9
                  lui        t2, 590673
                  div        t6, zero, s1
                  c.nop
                  c.addi16sp sp, 256
                  nop
                  c.xor      s1, a2
                  sub        tp, a1, a1
                  and        a3, a6, s8
                  slt        t2, s3, s11
                  c.addi16sp sp, -16
                  or         s2, t0, t4
                  c.and      a1, a2
                  c.xor      a3, a3
                  srl        t6, a7, a4
                  remu       a1, a4, t4
                  c.mv       s5, a5
                  sra        sp, s4, s6
                  xori       s10, t5, -21
                  c.addi     s7, -1
                  rem        a2, a5, s7
                  divu       s4, a7, s1
                  andi       a5, s9, -381
                  slli       gp, s1, 4
                  c.srai     s1, 21
                  c.li       t6, 24
                  c.slli     t5, 23
                  sltiu      s7, a4, 973
                  mul        t5, t0, s0
                  slli       s8, ra, 14
                  slt        s6, a2, s6
                  c.lui      s10, 11
                  c.lui      t3, 4
                  sltiu      a3, tp, -533
                  c.srli     a1, 25
                  addi       s10, a2, -60
                  c.or       s0, a4
                  srl        t4, s9, s3
                  c.andi     a3, -1
                  srai       s9, a6, 7
                  nop
                  sra        zero, a3, s1
                  or         a6, a2, a1
                  rem        t2, s3, s6
                  div        s4, t5, a6
                  sltiu      s4, a1, 789
                  c.mv       s2, s3
                  c.mv       a1, ra
                  auipc      s10, 233193
                  or         a6, a1, t1
                  c.or       s0, a3
                  slti       a1, t0, 354
                  c.add      a2, t5
                  rem        a2, s4, t6
                  slli       a6, a5, 16
                  lui        t1, 971919
                  xori       t5, zero, 247
                  srai       a2, s7, 21
                  ori        s2, ra, 96
                  div        s10, s1, s5
                  divu       s9, sp, s10
                  c.add      gp, s2
                  mulh       s8, gp, gp
                  xori       zero, a7, 1022
                  remu       s9, s5, a7
                  slli       s2, a5, 1
                  c.andi     a2, 11
                  sll        s2, s4, gp
                  lui        ra, 593305
                  addi       a5, zero, -631
                  remu       t3, t6, t1
                  div        s9, s7, sp
                  c.and      a3, a4
                  mulhu      t2, s0, t2
                  sltu       a1, ra, t3
                  c.srli     a3, 12
                  ori        s1, s6, 562
                  andi       t0, t3, 153
                  c.or       s0, a3
                  auipc      s10, 64104
                  nop
                  ori        s5, t0, -447
                  div        t1, t0, a4
                  sll        tp, a6, s5
                  srai       sp, a4, 23
                  c.addi     s2, -1
                  sra        ra, s2, s11
                  sltiu      s5, s0, -773
                  c.addi     t3, -1
                  xor        t6, a5, t5
                  c.nop
                  c.lui      s6, 7
                  mulhsu     a6, t2, ra
                  mul        s9, s8, a2
                  sub        s8, s6, s6
                  c.lui      a1, 21
                  ori        t5, s4, -331
                  c.add      a3, a4
                  mulhu      t5, s1, s6
                  addi       s6, t2, -315
                  slli       t0, s11, 9
                  addi       s10, t6, -598
                  addi       a0, s0, 750
                  or         s0, a6, s11
                  c.and      s0, a3
                  divu       s9, s4, a2
                  ori        s2, a0, 4
                  andi       a1, tp, 878
                  sra        s9, zero, s1
                  c.xor      a1, s1
                  sltiu      t1, t6, 405
                  sltiu      s5, s5, -547
                  c.addi16sp sp, 384
                  slli       tp, a1, 25
                  c.sub      a5, a0
                  c.sub      a3, a4
                  c.or       a2, a1
                  sll        t1, s1, s1
                  srl        t2, s5, s0
                  rem        s4, a7, s9
                  c.xor      a0, a4
                  c.addi     t1, -1
                  c.and      a2, a5
                  rem        gp, s10, s4
                  c.nop
                  c.add      t3, s0
                  c.srai     a3, 31
                  mulh       s5, a1, tp
                  auipc      a5, 166436
                  slti       s1, a6, 683
                  or         s2, a5, t0
                  slli       sp, t0, 23
                  remu       s8, t4, ra
                  sltiu      a1, s11, -349
                  divu       s10, s7, s4
                  c.srli     a1, 11
                  andi       a6, s5, -29
                  remu       t4, s5, s8
                  nop
                  c.sub      s1, s1
                  srai       s6, a3, 29
                  c.nop
                  c.addi     a1, 12
                  or         a5, t4, t4
                  sra        sp, s7, s3
                  auipc      sp, 470966
                  c.sub      a3, a3
                  mul        t1, t4, t3
                  sltu       t4, t2, t0
                  sll        t1, a6, s0
                  srl        ra, a2, a7
                  sltiu      t2, t5, 64
                  c.addi16sp sp, 192
                  andi       s1, a1, -358
                  auipc      t4, 196947
                  xori       a6, t6, 206
                  c.andi     a0, 25
                  sra        t0, a7, t6
                  slli       t0, zero, 24
                  lui        gp, 369161
                  srai       t1, t6, 3
                  c.nop
                  sltiu      zero, s9, -408
                  c.slli     sp, 31
                  slli       t1, s3, 7
                  nop
                  c.li       a7, -1
                  sltu       sp, s8, a7
                  and        ra, a3, s5
                  c.lui      t1, 27
                  c.addi16sp sp, -16
                  mulhsu     t4, tp, ra
                  c.lui      t4, 14
                  c.lui      a5, 7
                  sra        s2, s10, s2
                  c.and      a5, a2
                  c.or       a1, a4
                  mulhsu     t3, a4, s4
                  divu       t2, a7, sp
                  sltiu      s2, t4, 343
                  c.addi     t4, -1
                  rem        ra, s0, gp
                  c.sub      a1, a2
                  srl        a0, sp, a4
                  sub        t1, t5, s0
                  divu       t3, s4, s11
                  c.add      a6, s7
                  div        sp, t3, gp
                  addi       tp, tp, -116
                  lui        t3, 265571
                  sltiu      a5, s10, 305
                  auipc      s10, 676965
                  xori       a5, t3, -757
                  and        a5, t3, s9
                  sll        a0, a3, t3
                  auipc      s9, 530415
                  andi       a0, a2, -476
                  c.add      t0, a0
                  c.lui      s0, 3
                  sll        s6, s9, s3
                  c.addi16sp sp, -16
                  slli       a2, s11, 10
                  mulh       t3, t1, s1
                  c.andi     a5, 10
                  slti       s2, s9, 179
                  c.andi     a5, 29
                  srai       s8, s3, 14
                  c.srli     s1, 7
                  mulh       tp, s4, s0
                  c.addi     s10, -1
                  c.or       a1, a2
                  div        s9, a5, s1
                  c.add      a7, s9
                  c.li       s10, -1
                  c.srai     a3, 15
                  divu       s8, a7, s9
                  add        sp, t3, tp
                  mul        t1, a3, s6
                  divu       tp, s9, t4
                  slli       s10, t1, 5
                  xor        sp, s5, t4
                  c.li       a0, 3
                  srai       a5, s5, 26
                  c.li       s2, -1
                  srai       s7, t5, 22
                  div        s9, a2, a2
                  mulhsu     t3, s3, sp
                  slt        s6, s7, sp
                  c.or       a3, a0
                  c.lui      s7, 27
                  divu       s2, a3, t2
                  c.mv       s8, a2
                  sub        t6, s7, a1
                  add        s7, a0, t5
                  c.srai     a5, 2
                  sll        ra, s1, t0
                  c.andi     a5, -1
                  sll        s10, a1, ra
                  ori        s0, s6, 207
                  c.and      s1, a0
                  c.li       a3, 29
                  divu       tp, s4, a5
                  addi       a5, s6, 643
                  remu       a5, tp, t1
                  srli       t6, t3, 13
                  sra        s9, s9, a4
                  mulhu      s8, s8, s3
                  slt        a7, s8, t2
                  c.li       gp, 18
                  divu       t3, s5, a2
                  srli       a7, tp, 6
                  c.xor      a0, s1
                  xor        s1, a0, s7
                  ori        a7, a2, 574
                  add        s7, s5, t4
                  sll        t6, tp, a4
                  sltiu      a6, s2, -893
                  slt        s5, s7, s11
                  c.sub      a1, s1
                  andi       sp, s3, -78
                  or         a3, t5, t6
                  sub        t1, s6, a0
                  c.or       s0, s0
                  sub        s7, s10, a6
                  c.andi     a3, 3
                  slti       t1, s10, 772
                  c.sub      s1, s0
                  sra        t1, t0, ra
                  srai       ra, t4, 20
                  c.mv       tp, a5
                  c.xor      a5, a3
                  remu       t3, s7, s7
                  lui        gp, 149134
                  c.addi16sp sp, 112
                  c.li       s2, -1
                  c.addi16sp sp, 336
                  mulhsu     t5, s5, t3
                  mulh       s0, a6, s11
                  slti       t3, s9, 74
                  mulh       t3, t2, s0
                  srl        t3, a1, s2
                  rem        s9, s5, a1
                  div        t5, s10, s7
                  c.addi16sp sp, -16
                  c.andi     a2, 24
                  c.slli     a2, 18
                  c.andi     s0, 15
                  c.and      a2, a3
                  auipc      a1, 804132
                  c.slli     a7, 10
                  srl        s6, s7, t6
                  rem        t6, s0, s8
                  c.mv       s4, s4
                  andi       tp, ra, 452
                  c.mv       s5, a0
                  slt        a2, s8, s10
                  xor        t3, s6, a5
                  xor        t5, t1, tp
                  c.srli     a2, 26
                  div        s6, s5, sp
                  addi       a1, a4, 707
                  c.addi     a7, -1
                  add        s2, a7, s6
                  c.nop
                  nop
                  sltiu      a6, t6, -99
                  ori        s1, s1, 570
                  c.lui      t3, 11
                  sltu       zero, t4, t6
                  ori        s1, s2, 648
                  c.srai     a3, 18
                  sltu       s1, s2, s4
                  nop
                  c.srli     a0, 10
                  srai       zero, a0, 19
                  c.and      s0, a4
                  c.andi     s0, 20
                  lui        sp, 179907
                  c.xor      a3, a0
                  c.nop
                  andi       a1, zero, 200
                  c.lui      a2, 31
                  srl        s2, s5, a6
                  or         a2, tp, a4
                  slti       s0, zero, -484
                  c.andi     a3, -1
                  remu       t2, s2, s2
                  srl        a7, a0, a7
                  c.srai     s1, 19
                  nop
                  c.mv       a1, s2
                  sra        sp, s9, ra
                  andi       a3, s5, 525
                  xori       tp, s5, -4
                  srli       sp, s3, 30
                  mulh       a2, s2, s9
                  c.sub      a1, a2
                  add        a7, s5, a5
                  mul        a2, s10, s0
                  ori        t4, t3, -940
                  c.or       a0, s0
                  mul        a5, a5, s7
                  or         s6, s2, t1
                  ori        t2, ra, 578
                  srai       tp, s11, 12
                  srai       t4, s5, 4
                  div        s8, tp, a3
                  c.lui      s4, 14
                  c.addi     tp, 6
                  sltiu      s0, s10, -186
                  sltu       ra, s1, s4
                  mulhsu     a2, s6, s10
                  c.lui      s9, 13
                  div        s8, s0, a3
                  and        a3, ra, s3
                  srli       t0, a2, 21
                  c.lui      t3, 17
                  c.slli     a7, 24
                  ori        a0, s3, 947
                  c.and      s0, a4
                  c.lui      a7, 27
                  c.xor      a5, a2
                  c.add      s2, s5
                  divu       a7, t2, a1
                  sub        s8, s8, gp
                  remu       t1, t5, s4
                  mulh       t5, tp, a3
                  c.mv       s4, a0
                  rem        s5, t1, a3
                  c.srli     a3, 31
                  addi       t2, tp, -298
                  andi       s5, a0, 894
                  remu       t5, a1, a1
                  srai       t1, s8, 11
                  c.sub      s0, s0
                  c.andi     s0, -1
                  add        a5, t2, t1
                  c.or       a3, a4
                  c.or       a3, a2
                  c.slli     a7, 8
                  c.andi     a3, 22
                  slt        s10, s9, t2
                  sltu       sp, s9, s6
                  c.srli     a0, 13
                  sll        tp, s0, s9
                  sltiu      s1, t4, -597
                  addi       t6, a4, -1015
                  c.addi16sp sp, 48
                  sll        s7, s2, t4
                  andi       a5, s3, 634
                  sltu       s2, t0, a7
                  c.srai     a1, 21
                  c.xor      a3, a3
                  c.srai     s0, 10
                  c.addi16sp sp, -16
                  mul        a0, ra, s2
                  c.mv       a7, tp
                  slli       zero, zero, 15
                  c.lui      s4, 25
                  c.addi16sp sp, -16
                  c.xor      a3, a1
                  srai       sp, t1, 23
                  sll        gp, a6, t6
                  add        tp, ra, t2
                  c.andi     a1, 23
                  sll        tp, t0, s6
                  auipc      t4, 203425
                  mulhu      s4, a0, s2
                  c.andi     s1, -1
                  c.nop
                  xori       tp, s7, 180
                  xori       t0, ra, -219
                  srli       a0, s6, 15
                  rem        a5, a7, s11
                  slt        t5, a1, t2
                  mulhu      s4, t1, t3
                  xori       a7, s2, 765
                  divu       s7, t5, a0
                  div        t4, s3, s0
                  c.add      t2, a4
                  xori       a6, a2, -716
                  c.or       s0, a1
                  and        s5, a6, a4
                  andi       s10, t3, -396
                  c.addi     s4, 1
                  mulhu      s7, s1, a6
                  sll        a6, s8, a1
                  auipc      a1, 40652
                  c.or       s0, a3
                  andi       a6, t3, 100
                  srai       a2, s2, 22
                  slti       t3, t4, 622
                  or         s6, s9, a6
                  mulhsu     s1, a7, s11
                  slt        s0, s0, a0
                  mulh       t3, s3, t2
                  mulhsu     s5, a5, t4
                  srai       s5, s8, 23
                  ori        s10, t2, 290
                  rem        t5, t3, s8
                  c.mv       t0, a7
                  slti       s8, t5, -1003
                  c.and      a2, a5
                  div        s7, a0, t6
                  slt        t4, s2, sp
                  sltiu      t4, s10, -936
                  xori       zero, t2, 408
                  c.addi     a7, -1
                  div        a6, a0, t0
                  slti       t2, gp, 682
                  mulh       t6, sp, tp
                  c.addi     a2, -1
                  and        a6, a1, tp
                  auipc      a0, 6848
                  xor        gp, s1, s1
                  c.addi16sp sp, -16
                  mulh       s4, gp, zero
                  mulhsu     s2, a6, a6
                  c.srai     s0, 30
                  c.srai     a3, 26
                  srl        s5, s7, t4
                  c.sub      a1, a4
                  c.and      a1, a4
                  addi       s6, t4, -83
                  c.srli     a1, 8
                  andi       s2, tp, -317
                  srli       a1, s10, 10
                  div        zero, s5, t2
                  c.lui      tp, 22
                  c.addi     t4, -1
                  auipc      t0, 505327
                  c.xor      s0, s0
                  xor        a1, s10, t0
                  sll        s1, a3, s8
                  xori       t3, a1, 846
                  sltu       a1, ra, tp
                  slt        s7, t0, s9
                  c.andi     a0, 2
                  c.add      s8, t1
                  c.srai     a5, 18
                  lui        s9, 261341
                  c.lui      ra, 26
                  c.sub      s1, a2
                  nop
                  div        t2, a1, s4
                  remu       a6, zero, s6
                  slli       gp, s3, 23
                  sltiu      a2, s7, 207
                  mulhu      a1, a1, t6
                  srl        s5, s9, s4
                  sra        a1, a5, s4
                  andi       zero, s6, -653
                  slti       s6, a3, 4
                  sltu       zero, t5, t1
                  nop
                  xor        ra, t4, t0
                  or         s5, t2, t1
                  c.slli     t2, 19
                  c.and      a3, a5
                  auipc      a6, 335738
                  ori        a3, a1, 581
                  mulhsu     t4, t1, s2
                  slti       s2, t0, 920
                  add        s10, t2, s10
                  slti       s0, s10, -197
                  slli       t2, s0, 5
                  ori        zero, s10, 143
                  sub        t4, a2, s3
                  c.srai     a0, 30
                  sub        t1, s4, s5
                  c.sub      s1, s0
                  divu       s5, t5, s11
                  c.mv       s6, a1
                  sub        s10, zero, sp
                  sll        t5, s5, a5
                  c.nop
                  c.or       a2, s0
                  sltu       t4, sp, s10
                  c.mv       t4, a6
                  sub        t1, gp, zero
                  c.nop
                  or         s1, sp, s3
                  srli       s1, t2, 17
                  srai       t0, a1, 27
                  nop
                  sltiu      t0, t5, -856
                  c.addi     t3, 25
                  c.andi     a3, -1
                  c.srli     a5, 18
                  c.or       a0, a4
                  c.lui      a3, 5
                  rem        t4, t2, a5
                  mulh       a0, a6, t3
                  c.slli     s4, 7
                  srli       t6, a7, 30
                  addi       t2, sp, -758
                  auipc      s0, 112311
                  c.sub      a2, a2
                  sltu       t4, s2, a2
                  srai       a3, t0, 1
                  c.sub      a2, a1
                  sll        a0, s6, a0
                  sltiu      s5, s9, 289
                  rem        a2, a6, t3
                  mulh       t1, a1, t3
                  c.andi     a2, -1
                  c.addi16sp sp, 48
                  andi       s9, zero, -147
                  c.andi     a3, 25
                  sll        s7, t0, a2
                  sltiu      s2, tp, 643
                  srli       s10, s3, 22
                  c.andi     s0, -1
                  c.slli     t5, 30
                  c.srai     a3, 20
                  c.addi16sp sp, 80
                  remu       s8, s7, s9
                  xor        s7, s9, t6
                  addi       a2, zero, 614
                  lui        t5, 674078
                  c.nop
                  ori        sp, a3, 804
                  mulhsu     a6, s10, t5
                  rem        s10, s9, ra
                  and        t6, a6, t0
                  or         s4, a5, s8
                  c.or       a1, a4
                  c.nop
                  c.slli     t3, 27
                  sltiu      s0, zero, 687
                  sll        a5, a6, tp
                  c.add      t3, t3
                  c.lui      s1, 21
                  c.srai     a5, 9
                  srli       s5, t1, 1
                  c.srli     a3, 4
                  sra        a3, a0, s5
                  srai       ra, a6, 30
                  rem        s0, a3, s10
                  c.li       s5, 24
                  c.li       a0, -1
                  c.or       a0, a1
                  c.addi16sp sp, 80
                  mul        t2, s7, a7
                  auipc      a6, 905082
                  c.sub      a1, a5
                  divu       t5, s6, a6
                  addi       t0, a0, 942
                  mulhsu     t0, a2, gp
                  div        t1, s10, t1
                  nop
                  sra        sp, s8, gp
                  andi       t4, t2, -222
                  c.andi     a3, -1
                  c.slli     a6, 5
                  div        s1, s8, a6
                  sub        s5, a5, gp
                  rem        s8, a5, s3
                  c.li       sp, -1
                  mulh       t0, a3, s11
                  c.srai     a5, 14
                  mul        s5, zero, s8
                  xor        s6, t2, a0
                  c.srli     a3, 26
                  c.or       s0, a1
                  nop
                  ori        s5, a3, -895
                  mulhsu     s1, s1, a0
                  slt        t0, t5, t4
                  c.nop
                  c.srli     a5, 29
                  divu       t0, t4, a4
                  rem        s0, s8, t5
                  rem        t1, s11, s9
                  rem        a6, zero, a6
                  srl        sp, a1, s10
                  c.add      t3, a1
                  sltiu      ra, s10, -808
                  or         s4, t6, gp
                  sll        tp, s9, t0
                  c.slli     a7, 23
                  addi       s5, s4, -960
                  c.addi16sp sp, -16
                  sll        a7, s1, sp
                  ori        s5, s3, 98
                  c.srai     a0, 2
                  rem        sp, a4, t2
                  or         zero, s11, a0
                  c.srai     s0, 30
                  sltu       sp, s9, t4
                  srli       t1, tp, 18
                  sll        zero, a0, sp
                  mulhu      t0, a3, t5
                  c.sub      a3, a5
                  c.mv       s5, tp
                  add        s2, s10, ra
                  andi       t6, s9, 299
                  mulh       t6, a7, s1
                  sra        s7, s6, s0
                  srl        s10, s3, a5
                  sll        s6, a3, a5
                  sra        s5, s10, a4
                  srai       s9, s6, 22
                  srl        t3, s0, s3
                  c.srli     a2, 20
                  ori        s9, zero, 753
                  c.addi     s10, 23
                  c.srli     s0, 16
                  slt        sp, t2, s0
                  xor        a7, t5, s9
                  srl        sp, s9, t3
                  div        t2, zero, s3
                  add        t1, t2, s4
                  c.sub      a1, a1
                  c.add      s4, s8
                  auipc      s6, 824210
                  c.andi     s1, 27
                  srli       s5, zero, 11
                  ori        a0, a2, -38
                  or         zero, a3, gp
                  mulhu      a0, s2, s6
                  rem        t3, a2, s5
                  or         ra, a3, t2
                  c.andi     a0, -1
                  xori       s0, t6, -340
                  c.andi     a5, 1
                  sltiu      t3, t0, -198
                  mul        s2, t4, t2
                  addi       sp, tp, 302
                  c.mv       t3, s4
                  c.mv       s5, t4
                  c.srai     a0, 19
                  c.li       s9, 0
                  sub        s5, s1, s8
                  sltu       t3, zero, s8
                  c.mv       a2, s1
                  c.sub      s1, s1
                  c.mv       s10, a3
                  or         s1, tp, tp
                  srai       t0, t3, 0
                  ori        s2, s6, -746
                  mulh       s1, a5, tp
                  rem        a5, s1, a5
                  sub        s10, zero, t3
                  slti       s9, sp, 668
                  sra        a2, a2, tp
                  c.andi     a2, 3
                  sub        t4, t3, s1
                  lui        s5, 251946
                  andi       a1, tp, -731
                  srl        s0, t3, a4
                  c.addi16sp sp, 272
                  srl        t1, a4, t4
                  c.addi     s9, 30
                  slli       s0, t1, 27
                  addi       gp, s7, 230
                  ori        a5, s11, 22
                  xor        t5, s4, s7
                  sub        t3, s11, a5
                  srli       a7, s4, 26
                  sub        s10, a2, s1
                  c.mv       sp, t5
                  c.or       s0, s1
                  sra        a0, tp, s1
                  mul        s5, zero, a0
                  or         tp, s10, a2
                  c.nop
                  c.addi16sp sp, 64
                  srli       s8, a7, 22
                  c.srli     a2, 14
                  c.and      a3, a0
                  mul        s2, s3, sp
                  xori       s0, s5, -61
                  slli       s5, s6, 0
                  ori        a6, t5, 635
                  lui        s7, 532605
                  mulh       a5, a4, a6
                  mulhsu     a3, t2, a2
                  c.srai     s1, 28
                  c.li       s4, 30
                  mul        a1, s1, a5
                  remu       s1, t6, s2
                  c.mv       a0, sp
                  c.srai     a3, 12
                  c.li       s2, 17
                  auipc      ra, 61616
                  c.or       a5, s1
                  slti       t5, a5, 444
                  remu       a7, s5, a4
                  c.addi16sp sp, 336
                  sub        tp, t1, s5
                  srai       t2, t3, 31
                  c.or       a1, s0
                  and        s4, zero, s5
                  c.xor      a0, a4
                  c.or       a3, a4
                  slti       t3, a3, 47
                  slli       a5, t0, 9
                  c.mv       t6, a5
                  slti       t3, t0, -22
                  addi       a6, gp, -638
                  sra        a3, s4, ra
                  c.mv       s2, s5
                  sltiu      a1, s4, 516
                  and        t5, gp, a6
                  c.nop
                  remu       a1, s3, t6
                  c.srai     s0, 19
                  c.srai     a2, 17
                  c.nop
                  divu       s0, s6, a1
                  sll        zero, s9, a3
                  or         a1, t5, s8
                  sub        s2, s2, ra
                  slli       a3, s9, 15
                  or         a0, a6, s9
                  xor        s5, zero, s5
                  auipc      t4, 63922
                  sra        s2, s3, a3
                  c.srai     a5, 13
                  ori        t6, a5, -32
                  lui        s2, 749102
                  or         t3, a7, t2
                  srl        s5, a1, s7
                  slt        t1, s3, zero
                  c.sub      a2, s0
                  c.li       sp, 30
                  slti       s9, s8, 492
                  c.andi     a2, -1
                  div        s9, t1, s4
                  remu       gp, t6, ra
                  c.addi16sp sp, -16
                  sltu       a1, t0, s4
                  c.srai     a0, 24
                  c.addi     t5, 18
                  sll        t4, tp, s10
                  c.nop
                  c.andi     a1, -1
                  ori        a1, s2, 690
                  and        s5, s10, t6
                  ori        sp, t1, 635
                  slti       a2, sp, 464
                  sltu       t1, a2, s10
                  c.addi16sp sp, -16
                  c.xor      s0, a3
                  c.or       a5, a4
                  nop
                  remu       s4, t3, sp
                  and        s1, s1, s2
                  c.and      a3, a5
                  c.and      a1, a3
                  c.or       a1, s0
                  c.srli     a5, 14
                  c.lui      s10, 5
                  slt        a0, a6, s0
                  c.addi     s10, -1
                  andi       t1, sp, -664
                  addi       ra, t2, 827
                  c.srli     a1, 6
                  srli       ra, s7, 5
                  div        s6, gp, a2
                  remu       a0, a5, a6
                  slti       t1, s1, -622
                  c.add      t6, s2
                  c.andi     s1, 20
                  div        t5, s3, a3
                  c.srli     s0, 25
                  c.addi     a3, -1
                  c.addi16sp sp, 432
                  c.lui      t1, 28
                  and        a6, t2, gp
                  ori        t4, t6, 412
                  sltu       a6, a4, zero
                  c.andi     a1, 1
                  nop
                  xor        a3, tp, t2
                  sltu       t5, tp, a2
                  divu       s6, s7, s4
                  c.add      a6, a7
                  c.slli     t4, 12
                  c.addi16sp sp, -16
                  c.and      s1, a5
                  mulhsu     s2, a6, zero
                  nop
                  lui        a2, 1025291
                  c.nop
                  remu       a7, a5, t1
                  c.xor      a3, a3
                  sll        a7, s7, s3
                  sltiu      t0, ra, -677
                  divu       a5, t3, s7
                  c.slli     s6, 20
                  sltu       s10, zero, t5
                  c.andi     a0, -1
                  add        t2, t4, t3
                  andi       ra, t2, 469
                  c.and      s0, a3
                  divu       s9, t5, s0
                  mulhu      s0, a7, s8
                  nop
                  auipc      gp, 276765
                  and        s8, a2, t6
                  c.srli     s1, 23
                  sub        s8, t6, t2
                  sltu       t0, ra, s0
                  slti       t1, sp, 360
                  c.srai     a0, 10
                  sub        a6, a4, ra
                  and        a2, tp, a6
                  divu       s2, t1, s7
                  addi       s7, t0, -120
                  mulhsu     a7, s9, s2
                  mulhu      sp, s8, ra
                  c.sub      a3, a0
                  slli       s4, a7, 24
                  sltu       a2, s8, s3
                  c.lui      a1, 7
                  addi       t3, ra, -585
                  c.add      s9, s4
                  c.or       s0, a0
                  rem        t4, zero, t5
                  ori        t6, a2, -468
                  slti       t0, ra, -477
                  add        t2, a1, a5
                  div        s1, a1, s11
                  slt        tp, s3, t6
                  c.addi     s4, -1
                  c.addi     gp, 20
                  mulh       s8, a1, a0
                  nop
                  or         s1, t4, a1
                  c.srli     a3, 27
                  sltu       sp, gp, a5
                  divu       a1, s2, s1
                  slt        s5, s0, s0
                  slli       t5, t0, 4
                  andi       s5, t4, 392
                  div        s2, sp, gp
                  div        s5, tp, t3
                  c.srli     a1, 15
                  srai       s4, t2, 14
                  ori        s10, s11, 600
                  auipc      t5, 251330
                  c.srli     a5, 14
                  and        tp, zero, t2
                  slli       s1, s4, 27
                  mulh       ra, s6, s10
                  c.and      a0, a2
                  mul        a7, s2, s1
                  addi       t6, zero, -944
                  c.srai     s1, 24
                  sll        s6, a6, s1
                  srli       t3, t1, 24
                  div        s10, s11, a3
                  c.or       s1, s1
                  slt        s5, s11, t0
                  sltiu      a1, zero, -570
                  c.lui      s0, 18
                  div        a1, a4, t0
                  slti       tp, s10, -123
                  rem        t0, s0, a6
                  addi       s6, s9, 259
                  mulhsu     a1, s9, tp
                  sub        a3, s7, s4
                  mulh       t5, a4, a4
                  c.and      a2, a2
                  srli       s9, s8, 3
                  c.mv       s0, a0
                  and        a0, s9, gp
                  c.srai     s0, 28
                  and        sp, s4, s1
                  c.or       a3, a0
                  slt        a2, a5, a3
                  c.andi     a2, -1
                  c.or       a0, a5
                  divu       t5, a4, tp
                  c.mv       s8, s11
                  c.andi     a2, -1
                  c.lui      a5, 12
                  sub        t3, s2, s10
                  srl        a6, sp, t0
                  mulhu      t4, gp, gp
                  lui        a2, 395396
                  c.slli     s8, 4
                  c.addi16sp sp, -16
                  sll        t4, a6, a5
                  mulhsu     t1, a6, sp
                  c.li       a6, 21
                  mulhu      gp, t6, a7
                  c.addi16sp sp, 192
                  div        sp, a0, t2
                  mulh       a0, sp, gp
                  slli       gp, gp, 7
                  divu       s6, s5, s2
                  c.or       a1, a4
                  srai       gp, tp, 17
                  c.addi     gp, 24
                  c.nop
                  srai       t5, t3, 11
                  slli       a7, s9, 27
                  c.addi     sp, 15
                  c.sub      a2, a1
                  rem        t0, s5, s2
                  nop
                  srl        a2, t4, a2
                  srli       t1, a0, 10
                  c.and      s0, s0
                  c.srai     a2, 9
                  divu       ra, t1, t5
                  c.srai     a3, 14
                  srai       s0, t0, 30
                  c.or       a0, a2
                  srai       a0, a4, 15
                  andi       s1, s6, 565
                  ori        ra, s5, -518
                  c.slli     s7, 29
                  and        t3, a2, s5
                  add        ra, sp, gp
                  mulhsu     a7, zero, t5
                  c.andi     a5, 27
                  div        t6, s6, t4
                  mul        s10, s6, ra
                  sra        a6, tp, s0
                  div        t5, a5, ra
                  c.xor      a5, s0
                  andi       s4, s6, -1010
                  nop
                  slti       a2, s3, -873
                  sra        s0, zero, t5
                  sll        gp, a4, t2
                  nop
                  mulh       t3, tp, a5
                  auipc      ra, 213026
                  or         a5, s10, s9
                  c.nop
                  xor        t1, s3, s6
                  c.mv       s10, s11
                  and        zero, s8, gp
                  c.mv       a0, s1
                  c.srai     a2, 9
                  sltu       t0, t2, s10
                  c.srai     a1, 2
                  xori       sp, s5, 998
                  or         s10, s5, a7
                  div        t2, gp, t1
                  mulh       s10, s8, t5
                  ori        t5, a2, 191
                  slli       a6, zero, 8
                  sra        s2, a1, s5
                  mul        s4, a3, a7
                  mul        s0, sp, s6
                  c.and      s0, s0
                  mulh       a1, t0, tp
                  ori        s6, ra, -5
                  c.nop
                  slti       s10, s10, -364
                  auipc      t3, 548934
                  rem        zero, s4, s1
                  sub        a7, s11, s9
                  slti       s8, s11, -362
                  c.or       a3, s1
                  c.nop
                  c.addi     t1, 3
                  c.or       a0, a2
                  c.and      s1, a3
                  addi       ra, s2, 457
                  sra        s6, a2, s2
                  remu       a3, s0, t6
                  xori       zero, s10, -732
                  ori        s0, s3, 624
                  c.sub      a5, a0
                  div        a5, gp, a6
                  ori        s5, t0, 904
                  slti       zero, t4, -675
                  div        s4, s4, s5
                  c.sub      a3, a5
                  c.slli     t1, 28
                  sra        s1, a3, a7
                  sra        s0, sp, s11
                  c.andi     a3, -1
                  xori       tp, t0, -114
                  slli       s6, s8, 30
                  slt        s2, a7, t3
                  and        t0, s5, s5
                  mulhsu     ra, ra, s7
                  srl        a7, s3, s7
                  mulhsu     t6, zero, sp
                  remu       s4, a5, t4
                  slti       s0, sp, -263
                  add        s9, t0, t1
                  andi       ra, a2, 540
                  c.add      s9, tp
                  mul        a1, a3, ra
                  ori        a7, s10, -398
                  or         ra, sp, t4
                  or         a2, a7, a1
                  or         s10, a0, ra
                  xor        s1, s8, t2
                  srl        s0, s8, sp
                  andi       a6, a0, -149
                  sub        ra, a5, s11
                  srai       s2, s0, 22
                  c.andi     a0, 2
                  remu       a5, a7, s10
                  c.slli     a7, 1
                  c.andi     a3, -1
                  c.addi16sp sp, -16
                  c.nop
                  srli       sp, t6, 4
                  sub        tp, tp, t2
                  c.addi16sp sp, -16
                  sltiu      s8, t2, 495
                  c.addi16sp sp, 112
                  sub        t6, s0, a4
                  and        s6, t0, t1
                  sub        t6, a2, s3
                  srli       s8, a2, 1
                  c.li       a5, 21
                  srai       t5, sp, 26
                  sltu       s9, s0, s10
                  c.slli     s2, 15
                  xori       t1, s5, 114
                  c.lui      s9, 8
                  or         t6, a7, s6
                  mulhu      ra, t3, tp
                  c.lui      a6, 29
                  divu       zero, a7, s3
                  c.srli     a1, 27
                  c.add      t6, a3
                  remu       s10, s11, s9
                  lui        t5, 676837
                  c.andi     a2, 30
                  c.li       t5, -1
                  slli       a0, t5, 21
                  mulhsu     t0, t1, s10
                  mulhu      s8, s7, t4
                  sll        a2, t5, a4
                  add        sp, t3, s7
                  c.lui      t0, 9
                  remu       s9, t5, t6
                  mulh       a6, t6, s7
                  sltiu      t5, zero, 789
                  slli       sp, s5, 11
                  rem        s0, a2, s6
                  c.srai     a2, 29
                  c.addi16sp sp, -16
                  c.slli     s7, 5
                  c.nop
                  c.andi     s1, 3
                  c.li       t4, 0
                  remu       s2, s7, a3
                  c.slli     s5, 21
                  andi       t6, s2, -286
                  c.addi     t4, -1
                  c.slli     a3, 10
                  sub        a7, gp, t4
                  srai       s4, a2, 21
                  sltu       s2, a5, sp
                  div        t2, zero, t4
                  srli       sp, t0, 27
                  c.addi     ra, 24
                  c.add      t4, s6
                  c.andi     a1, -1
                  slt        s2, a3, a3
                  c.srli     s0, 15
                  sra        t2, sp, t6
                  c.lui      s2, 5
                  lui        a3, 8153
                  mulhu      a5, s1, s5
                  srl        t2, s7, a4
                  c.lui      a5, 11
                  mulhsu     a1, gp, a5
                  sltu       t3, s5, s5
                  rem        a3, a6, s7
                  c.sub      a2, s1
                  xor        sp, a1, s10
                  c.addi     s0, 13
                  auipc      s4, 879425
                  srai       a1, s4, 30
                  c.mv       s4, s5
                  c.addi     s7, 1
                  sll        s10, a3, a1
                  c.and      a3, s0
                  divu       t3, s1, s5
                  rem        zero, a5, zero
                  c.srai     a1, 22
                  or         ra, a0, a6
                  c.addi16sp sp, 400
                  c.srli     a5, 26
                  c.nop
                  c.andi     a5, 0
                  c.srai     a0, 4
                  c.addi     ra, -1
                  c.sub      a1, a4
                  slt        sp, t0, t4
                  c.srai     a0, 25
                  c.or       s1, s1
                  or         s4, a2, s2
                  sll        zero, s9, s1
                  sltu       a0, s10, s3
                  slli       ra, gp, 10
                  rem        a1, zero, s10
                  div        s7, a6, s1
                  mulh       tp, s3, a6
                  c.lui      s4, 21
                  addi       a3, s10, 544
                  mulh       s8, a7, t3
                  c.addi16sp sp, -16
                  sltiu      t1, s6, 41
                  c.mv       a7, a2
                  c.andi     a1, -1
                  slli       t5, a6, 25
                  srli       t2, a1, 16
                  div        s4, a3, s10
                  mulhu      a1, s1, s2
                  addi       t5, s8, 213
                  add        tp, t2, s2
                  add        gp, t4, tp
                  c.srli     a1, 13
                  c.srai     a3, 17
                  c.andi     a1, -1
                  c.andi     s1, 8
                  remu       s10, s11, s8
                  mulh       sp, ra, a2
                  sub        t1, a5, s10
                  mul        t3, s2, s1
                  addi       s2, s2, 425
                  or         a6, gp, s11
                  c.or       a0, s1
                  addi       ra, s4, -496
                  sll        s8, zero, s1
                  c.xor      a5, a4
                  c.mv       a3, s1
                  srl        t0, t1, s8
                  and        a1, gp, zero
                  remu       a5, a1, s9
                  c.and      a3, a3
                  rem        ra, t1, s7
                  ori        t5, t0, 804
                  add        a5, s4, t5
                  and        s9, tp, s10
                  c.srai     a0, 3
                  nop
                  xor        s9, a6, tp
                  slti       s1, a5, 30
                  mulhsu     s4, t1, a3
                  mulhu      t1, zero, ra
                  div        t0, s0, s9
                  and        t4, s11, s2
                  c.add      s0, ra
                  remu       t1, t1, a2
                  srli       s1, s7, 10
                  rem        t1, t4, s0
                  c.slli     a0, 15
                  srl        a1, t6, s11
                  mulhsu     zero, a2, s3
                  c.or       a3, s1
                  slt        s9, s9, t5
                  c.or       a0, a5
                  remu       a2, t2, a0
                  or         s7, s7, a1
                  sltu       t5, s8, s4
                  c.addi16sp sp, -16
                  srli       s5, zero, 4
                  xori       t6, t6, -467
                  add        t0, tp, t5
                  mulhsu     t5, t3, t1
                  sll        t0, gp, a7
                  add        s9, t3, s10
                  c.addi16sp sp, 432
                  and        sp, a7, t3
                  c.addi16sp sp, 16
                  slti       s5, a6, 579
                  xori       s9, s2, -55
                  rem        a1, t0, s9
                  sll        s8, s11, t1
                  c.mv       a1, a2
                  add        s1, gp, a2
                  sltiu      t1, a0, -422
                  and        a6, gp, t3
                  sltiu      s0, a1, 273
                  divu       s5, s11, t3
                  remu       a2, a1, t5
                  lui        zero, 229478
                  c.add      ra, a2
                  c.andi     a0, 24
                  c.addi     t5, 5
                  andi       t6, s10, -776
                  c.addi16sp sp, 496
                  c.li       a1, 18
                  c.nop
                  c.lui      t0, 28
                  or         s4, gp, t6
                  c.and      a5, a5
                  sub        s7, t4, t1
                  mulhsu     s2, s10, t3
                  addi       a1, s11, -700
                  c.add      gp, a0
                  lui        a0, 461490
                  slli       a6, a2, 9
                  c.xor      a1, a2
                  srli       gp, tp, 5
                  sltu       t1, s9, t4
                  or         a3, t4, t1
                  c.slli     t2, 1
                  sltu       t0, a1, s2
                  c.srli     s0, 30
                  sltu       t2, t2, a6
                  sltiu      a6, a2, 529
                  c.lui      t1, 21
                  c.li       s0, 10
                  and        sp, s8, a4
                  sra        a2, a3, s9
                  sub        s7, s5, s7
                  c.li       t5, -1
                  lui        s10, 867483
                  mulhu      s7, ra, s8
                  srai       s8, gp, 16
                  and        t5, a6, tp
                  mul        zero, t6, a7
                  auipc      a1, 997555
                  rem        a6, t1, s8
                  ori        t1, t6, 982
                  c.srli     s1, 25
                  sll        a2, gp, s1
                  or         t1, s3, t1
                  and        gp, sp, a1
                  c.xor      s1, a4
                  c.sub      a0, a1
                  c.addi     s4, -1
                  mulhsu     ra, s1, a4
                  sll        s6, s10, s4
                  mulhsu     t3, t5, ra
                  mulhsu     t2, s3, s9
                  slt        a6, gp, tp
                  srli       s7, a6, 28
                  sub        a7, s7, a4
                  andi       zero, s7, 974
                  rem        a2, t1, s6
                  srli       s2, sp, 18
                  andi       a6, a0, 487
                  c.and      a1, a3
                  c.srli     a5, 23
                  c.lui      s9, 26
                  mulhsu     s4, s0, a2
                  c.lui      t3, 15
                  xori       t1, t6, -418
                  c.addi16sp sp, 144
                  c.xor      a1, a0
                  lui        gp, 10830
                  auipc      zero, 263166
                  addi       a7, a3, 982
                  xor        sp, s5, t4
                  divu       tp, ra, t1
                  c.srai     a5, 12
                  c.addi     s8, -1
                  add        a5, a4, t3
                  slt        s7, s11, t3
                  rem        s4, tp, s9
                  sltu       gp, s1, zero
                  xori       tp, s2, 660
                  c.addi16sp sp, 432
                  add        a3, a3, gp
                  c.li       a7, 25
                  remu       s4, t3, t1
                  mulhsu     s9, zero, a4
                  c.nop
                  c.li       s4, -1
                  c.nop
                  and        tp, s9, a7
                  srli       s4, a0, 23
                  sra        a1, a0, t5
                  auipc      t2, 1002264
                  srli       s8, a1, 27
                  rem        a0, s10, s10
                  c.sub      s0, a0
                  c.addi     a0, -1
                  slt        sp, s4, a6
                  or         s5, s2, tp
                  sra        tp, s4, a4
                  mul        s6, a7, gp
                  addi       s9, s5, -897
                  c.sub      a2, a2
                  srai       t2, a5, 30
                  remu       ra, gp, a7
                  srli       s9, tp, 23
                  addi       s7, s2, -898
                  mulhu      s10, sp, t5
                  xori       s4, a4, -310
                  c.andi     a0, -1
                  srai       s8, s4, 21
                  div        t0, t0, s5
                  c.nop
                  c.or       a1, a4
                  c.and      s1, a5
                  c.sub      s0, a0
                  c.srai     s0, 24
                  divu       s8, a0, a4
                  c.or       a5, a3
                  c.or       a3, s0
                  c.nop
                  c.andi     s1, 0
                  divu       sp, a1, s5
                  c.addi     t1, 9
                  sltu       a6, t4, s9
                  c.add      t2, tp
                  nop
                  mulhu      t6, zero, a2
                  mulhsu     a6, s6, s7
                  addi       s8, s10, -290
                  add        t2, a2, s6
                  slli       a3, s4, 26
                  rem        t4, s8, s2
                  c.and      s1, s1
                  or         t2, a4, s2
                  mulhu      s0, t2, a4
                  srl        zero, a0, s11
                  mulhu      t2, s10, s11
                  c.addi16sp sp, -16
                  sltiu      a3, s0, -769
                  c.add      t3, a7
                  c.add      s5, a1
                  andi       s2, a7, 29
                  srai       s10, s0, 16
                  lui        t1, 433662
                  c.or       a2, s1
                  sltu       a6, gp, s10
                  ori        s8, t4, 708
                  c.slli     s6, 15
                  divu       a5, s6, t0
                  mul        a1, s5, a3
                  slt        t6, t4, s9
                  mulh       a0, s3, s1
                  sltiu      s8, t0, -431
                  c.nop
                  addi       gp, a3, 65
                  or         t4, s10, t2
                  mul        gp, zero, s8
                  c.andi     a3, 27
                  lui        t3, 1035420
                  slt        t2, s4, a6
                  slli       a6, s11, 12
                  srli       s8, t6, 15
                  andi       a0, a2, -376
                  c.andi     a3, 23
                  and        s2, s11, s6
                  sll        a6, s3, s0
                  sra        a2, s7, a1
                  c.sub      a5, a4
                  c.li       t5, 3
                  xori       t5, s2, -1013
                  c.srai     a3, 4
                  c.srli     a3, 31
                  ori        a2, s9, 699
                  c.add      s2, s2
                  and        tp, a2, a1
                  div        s4, s6, s5
                  c.andi     a2, 7
                  c.add      t5, t0
                  andi       a3, t1, 131
                  sltiu      s1, s1, -694
                  slli       t5, t6, 4
                  nop
                  c.addi     s9, -1
                  slli       gp, t4, 21
                  c.slli     t1, 15
                  c.slli     t1, 22
                  sra        t5, s3, s1
                  sra        t5, s1, t5
                  nop
                  srl        s2, s4, a7
                  rem        t0, s10, a0
                  slli       s8, a5, 24
                  slli       a5, t1, 10
                  c.lui      t4, 11
                  mulhsu     t6, s10, t3
                  srl        s8, t1, s2
                  div        a6, s9, s8
                  mulhu      ra, s10, s8
                  c.li       s7, 12
                  sra        s4, a0, a0
                  sra        a2, sp, t6
                  sub        t6, t3, s4
                  c.srai     a0, 11
                  c.lui      t6, 13
                  mulhsu     t1, s10, s8
                  lui        gp, 838645
                  add        t0, a3, s9
                  nop
                  c.add      a7, a1
                  sll        ra, t4, t2
                  or         s10, s9, t4
                  mulh       s9, a5, tp
                  c.slli     ra, 24
                  c.li       t1, 21
                  c.xor      a3, a1
                  sra        s1, s2, t3
                  xor        s2, a7, s7
                  mulhsu     t2, t1, t2
                  ori        a7, a5, -179
                  c.slli     t4, 6
                  srai       s7, a3, 24
                  mulhsu     s4, a4, a4
                  sll        t2, s8, s0
                  c.and      a0, a5
                  xor        a0, t3, s1
                  c.nop
                  remu       a2, s1, s3
                  add        ra, a3, tp
                  sltu       t6, zero, ra
                  srli       sp, t5, 11
                  sll        gp, a2, t0
                  sltu       t5, t0, a7
                  mul        s4, ra, s2
                  mulhu      s6, a7, a6
                  div        t0, gp, ra
                  srl        gp, s5, s3
                  slti       s0, s10, -277
                  c.xor      a5, a0
                  slt        t2, s3, s2
                  ori        t4, t4, -400
                  sra        t4, a1, s4
                  srl        sp, a1, ra
                  c.xor      a3, s0
                  c.xor      a0, a4
                  c.or       a5, a3
                  slti       zero, t4, -509
                  mulhsu     s6, t6, t2
                  divu       s4, zero, s9
                  remu       t0, a5, s6
                  sltiu      a0, s1, -849
                  mulhu      t0, s4, s11
                  divu       ra, t2, s4
                  c.or       s0, s1
                  nop
                  srl        t4, s2, t1
                  ori        t5, a4, -152
                  c.andi     a1, 8
                  c.sub      a0, a3
                  sltiu      t0, ra, -616
                  or         t3, s4, ra
                  c.nop
                  div        a6, a0, a1
                  srai       s4, a0, 28
                  divu       s4, t0, t4
                  slti       ra, s2, -762
                  c.xor      a0, s1
                  andi       sp, t4, 633
                  sub        a0, ra, t3
                  c.xor      a0, a4
                  and        tp, t2, s6
                  c.addi16sp sp, -16
                  xori       a1, a6, -997
                  xor        t0, s0, t2
                  divu       s9, a1, a4
                  ori        s8, s3, 567
                  mul        tp, sp, a5
                  c.or       s1, a1
                  sra        s8, t2, tp
                  c.nop
                  srl        s0, a3, gp
                  slli       s2, s8, 12
                  srai       sp, ra, 6
                  c.addi     t5, -1
                  sltu       a0, s6, ra
                  nop
                  c.srli     a1, 5
                  c.mv       s6, gp
                  c.andi     a2, 28
                  c.sub      s0, a2
                  andi       s1, t0, 142
                  c.srli     a1, 2
                  c.andi     a1, 10
                  c.slli     a6, 27
                  slli       tp, a7, 19
                  c.xor      a3, a1
                  andi       s7, a1, -297
                  sra        t3, gp, zero
                  rem        t4, s7, a2
                  c.sub      a5, a2
                  c.addi16sp sp, 64
                  c.srai     s1, 3
                  c.lui      s1, 13
                  nop
                  c.srli     a1, 4
                  c.sub      s0, a3
                  or         t1, t3, gp
                  mul        a1, s11, s3
                  auipc      a3, 624553
                  or         sp, s2, a2
                  xor        s5, s6, t1
                  c.sub      s1, a3
                  c.andi     a1, -1
                  c.srai     a0, 20
                  sra        t3, s5, sp
                  sltiu      t6, s0, 523
                  add        s4, s6, tp
                  xor        s0, s3, gp
                  nop
                  c.addi16sp sp, -16
                  div        s0, t5, t3
                  sra        ra, s8, s8
                  srai       t2, s6, 10
                  remu       a7, sp, s6
                  lui        a2, 750649
                  c.srai     a0, 30
                  auipc      s7, 858252
                  xor        t5, s6, a2
                  mulhu      t6, t6, s5
                  c.lui      a6, 9
                  addi       a2, s2, 962
                  sub        a3, t3, a6
                  and        tp, a2, gp
                  nop
                  c.srli     a0, 28
                  xor        tp, s4, a2
                  add        t5, t5, s3
                  auipc      a3, 609664
                  sll        s7, t2, s10
                  auipc      a1, 970960
                  sub        t5, a6, s10
                  c.addi16sp sp, -16
                  xori       t2, a2, -795
                  c.srli     a2, 1
                  c.xor      a1, a4
                  c.li       s9, -1
                  mulhsu     a6, s2, s1
                  c.lui      s10, 26
                  slti       t0, s1, 623
                  c.and      s0, a2
                  xori       s2, t2, 532
                  srl        sp, ra, s5
                  srai       s4, t3, 16
                  c.li       a1, -1
                  sub        s10, s7, t1
                  mul        s2, a6, zero
                  sltiu      a6, s9, 109
                  or         a2, a1, a0
                  ori        t1, t4, 165
                  mul        t5, a7, gp
                  lui        t0, 287932
                  auipc      ra, 402300
                  mulhsu     s0, s1, s3
                  c.andi     s0, -1
                  srli       a2, gp, 8
                  c.mv       t1, sp
                  rem        gp, a3, zero
                  c.slli     a7, 27
                  mulhsu     a5, a5, a5
                  add        s4, a6, ra
                  rem        tp, a3, t4
                  xor        a3, t1, s4
                  remu       s10, t6, s1
                  srai       t5, s8, 24
                  lui        tp, 394070
                  slt        t2, a2, s6
                  andi       zero, s7, 306
                  c.or       a0, a2
                  c.xor      a3, s1
                  addi       t5, gp, -18
                  auipc      a1, 314661
                  div        t3, t1, s9
                  sub        s7, t0, s6
                  add        t3, t3, tp
                  c.slli     a5, 11
                  c.srai     a1, 4
                  slli       t2, s6, 29
                  c.addi16sp sp, 304
                  sltiu      a6, t6, -611
                  sra        t3, t5, sp
                  c.addi16sp sp, 256
                  divu       s5, sp, t2
                  c.sub      a0, a5
                  mul        s6, t4, a0
                  slti       s6, s2, 267
                  slli       s5, a3, 21
                  mul        s10, tp, gp
                  mulh       s4, t3, tp
                  c.or       a3, s0
                  c.li       s10, 9
                  c.sub      a2, s0
                  c.andi     s0, -1
                  c.srai     a2, 27
                  add        s4, a2, t5
                  divu       s9, s7, s2
                  c.slli     s2, 12
                  remu       gp, sp, s9
                  xori       s5, a1, -516
                  c.srli     a1, 26
                  auipc      a7, 655979
                  ori        a5, t3, 819
                  c.sub      a2, a5
                  sll        gp, a3, s9
                  sll        t5, s7, s6
                  srai       zero, gp, 15
                  and        t6, s11, s0
                  add        gp, s6, s7
                  sub        a1, s3, s0
                  auipc      a0, 139130
                  lui        t6, 224972
                  sltu       s8, t4, t4
                  addi       s6, s1, 509
                  c.srli     s1, 12
                  slli       a0, s3, 14
                  mulh       tp, t0, gp
                  andi       s1, a4, 800
                  sltiu      zero, s6, 520
                  lui        a0, 384408
                  addi       zero, s1, 559
                  c.mv       a5, sp
                  c.addi16sp sp, 16
                  mulh       a3, t1, s6
                  sll        a5, t5, a0
                  remu       s0, s7, gp
                  c.xor      a1, s1
                  c.xor      s0, a4
                  c.xor      a3, a1
                  c.lui      ra, 26
                  c.addi16sp sp, 416
                  nop
                  sll        sp, gp, s0
                  ori        t3, s1, -740
                  sll        ra, s4, a4
                  sltiu      ra, s2, -280
                  rem        s2, t5, s6
                  srl        t0, t5, s8
                  c.li       s9, -1
                  c.addi16sp sp, 64
                  sll        s7, t0, s7
                  sltiu      t0, tp, -883
                  c.xor      a1, s1
                  sra        tp, zero, sp
                  rem        s4, t1, a4
                  and        s6, sp, a7
                  c.addi16sp sp, -16
                  c.slli     s0, 7
                  rem        tp, s7, a0
                  c.or       a5, a4
                  auipc      sp, 843728
                  mulhsu     s8, s4, t2
                  sltu       s4, s1, s2
                  mulh       a3, s9, ra
                  c.add      t6, a3
                  srl        a6, tp, t3
                  c.li       t3, -1
                  rem        s10, t3, t6
                  auipc      tp, 39409
                  or         t5, s10, s5
                  lui        s2, 312809
                  c.mv       tp, s8
                  addi       s2, s2, -449
                  xor        t6, a7, a4
                  c.nop
                  xor        t0, s7, ra
                  c.nop
                  c.or       s1, s1
                  add        s2, t1, t0
                  c.addi     gp, 18
                  slli       s5, s11, 27
                  ori        s10, a7, -706
                  c.nop
                  sll        a6, ra, t4
                  xor        a1, ra, a7
                  c.nop
                  c.mv       t0, a7
                  and        s9, a6, s9
                  slli       s8, a1, 4
                  sltiu      t6, sp, -649
                  remu       a7, t3, s2
                  c.mv       a5, s2
                  srai       ra, s0, 20
                  c.sub      s1, s0
                  xori       t2, a5, -69
                  c.addi     t6, 24
                  c.and      s1, a2
                  c.srli     s1, 11
                  sll        a5, t0, a0
                  c.or       a1, s1
                  sltiu      t3, s2, 61
                  c.and      a1, a3
                  nop
                  c.andi     a3, 28
                  and        t1, s1, ra
                  c.srli     a2, 7
                  c.srai     a2, 2
                  sltu       t3, sp, a6
                  c.mv       s9, s0
                  c.mv       a0, t3
                  c.srai     a0, 10
                  sltiu      sp, s2, -847
                  c.and      a2, a0
                  or         ra, s1, t1
                  divu       sp, ra, a5
                  c.srai     a0, 7
                  mulhsu     t6, a1, s2
                  sra        s9, a2, ra
                  c.sub      a3, a3
                  c.andi     a0, 4
                  mul        a3, s3, s10
                  c.slli     a6, 8
                  c.addi     t4, -1
                  sltiu      a0, a4, 556
                  mulhu      s9, s11, a6
                  c.nop
                  c.lui      a5, 26
                  lui        tp, 480727
                  slt        s4, t5, s4
                  slti       a6, gp, -94
                  div        t4, s9, sp
                  srl        t2, s6, a3
                  slt        a6, a1, a5
                  lui        t2, 124368
                  auipc      s8, 892333
                  slti       a5, s6, 819
                  ori        a5, s9, 922
                  or         ra, a6, t3
                  sltu       t4, a7, s10
                  sltu       s5, a7, t1
                  nop
                  or         a2, t3, s4
                  divu       t0, s1, s1
                  c.srai     a0, 23
                  mulhsu     s9, s10, ra
                  c.srai     a1, 13
                  sub        a7, a6, s6
                  c.and      s0, a2
                  divu       t0, s0, s10
                  sra        a7, s11, a0
                  mul        s0, a2, ra
                  divu       sp, t2, sp
                  ori        a6, s0, 129
                  srai       t2, s10, 26
                  div        s6, a6, sp
                  c.and      s0, a0
                  c.li       a6, 2
                  nop
                  c.xor      s1, s0
                  mul        a1, a2, zero
                  srl        s5, t0, s5
                  c.li       s4, -1
                  slli       s8, s4, 26
                  xor        tp, s9, s9
                  div        s2, a4, t1
                  srli       a3, s0, 11
                  c.and      a3, a3
                  auipc      t1, 991078
                  c.or       s0, a4
                  auipc      t0, 610354
                  c.sub      a5, s1
                  and        tp, zero, s5
                  xori       a1, s4, 728
                  mulhsu     ra, s7, a3
                  sltu       a6, s2, s8
                  c.or       s1, a4
                  xori       t1, a3, 44
                  srl        zero, a4, s0
                  addi       s10, s7, 85
                  c.slli     a5, 1
                  c.or       a3, s1
                  addi       s4, t1, 36
                  c.xor      a0, a0
                  c.or       a0, s0
                  mulh       s10, a4, s2
                  c.lui      s2, 26
                  sub        s9, gp, ra
                  c.or       s1, a2
                  and        a5, s9, s3
                  c.addi16sp sp, -16
                  c.nop
                  c.or       a0, s0
                  div        ra, t0, s5
                  c.addi16sp sp, -16
                  divu       t3, zero, sp
                  sra        sp, t1, zero
                  sll        a3, tp, s1
                  c.li       a2, 25
                  mulhu      s5, sp, a2
                  c.add      s0, tp
                  srli       ra, zero, 29
                  auipc      s5, 915831
                  c.lui      s4, 5
                  sltiu      s8, s6, -541
                  add        a0, s5, s5
                  sll        a1, s7, s7
                  slti       s1, s3, -537
                  mul        t4, t4, t6
                  addi       a0, a1, -433
                  xori       a6, s10, 726
                  c.andi     a5, 20
                  andi       a6, t3, -1000
                  addi       s7, a1, -841
                  divu       t4, a0, s3
                  remu       s5, a0, t2
                  c.addi16sp sp, -16
                  andi       t0, s9, -1016
                  slt        tp, s4, t0
                  c.lui      t4, 14
                  c.li       s2, -1
                  c.addi     ra, 18
                  c.xor      a1, s0
                  c.slli     s10, 6
                  srai       ra, s5, 27
                  add        t4, s11, s9
                  srl        sp, s9, t1
                  sltiu      a2, t3, 441
                  mulh       a3, s10, a7
                  srai       a7, s11, 7
                  srai       t3, a0, 18
                  sltu       s0, t3, s2
                  c.sub      s1, a2
                  srai       t3, t5, 31
                  divu       tp, t4, s10
                  ori        sp, a7, 424
                  remu       s4, tp, t3
                  mulh       s2, tp, t4
                  remu       s2, a5, t3
                  c.addi16sp sp, -16
                  addi       a5, a4, 854
                  mul        gp, zero, a5
                  mulhu      a1, sp, sp
                  srl        s0, s8, s2
                  c.slli     a7, 22
                  xori       t4, t4, -569
                  c.or       s1, a2
                  sub        s1, a1, s6
                  div        t4, a3, s3
                  c.srai     s1, 31
                  c.sub      a5, s1
                  xori       a2, t6, -863
                  divu       s7, s7, a4
                  c.and      a2, s0
                  auipc      a7, 984656
                  slli       s9, s7, 29
                  c.lui      a1, 25
                  c.xor      s0, a0
                  auipc      s5, 797211
                  c.xor      a3, a2
                  divu       a6, tp, t1
                  remu       s2, s7, s2
                  c.sub      a0, s1
                  c.xor      a1, a1
                  sub        sp, a1, gp
                  and        a7, gp, a2
                  mulhsu     a1, t5, s11
                  andi       a1, s11, 782
                  xor        sp, t3, s2
                  slti       zero, s2, -64
                  ori        zero, s3, 350
                  c.add      s1, s3
                  sltiu      s0, a5, -592
                  c.or       s0, a3
                  xori       s4, s11, 760
                  c.addi16sp sp, -16
                  add        a7, a7, t5
                  ori        t4, ra, -228
                  c.sub      s1, a1
                  slt        s2, gp, s9
                  mul        a0, a3, a4
                  mulhsu     t0, a2, s11
                  c.and      a1, a0
                  sll        a0, s11, s2
                  c.slli     a7, 6
                  xor        s9, a6, t0
                  ori        t2, s4, 105
                  lui        t4, 336157
                  andi       a2, t6, 557
                  nop
                  c.lui      s1, 22
                  c.add      a3, s3
                  andi       ra, a3, -543
                  slt        a7, a1, t4
                  c.addi     t0, -1
                  c.addi     ra, 23
                  mul        s2, s1, s7
                  c.lui      t4, 23
                  xor        s8, t1, t0
                  sll        ra, a2, s0
                  remu       s4, a3, a1
                  nop
                  c.or       a1, a0
                  c.andi     a1, 10
                  mulh       t2, a0, s1
                  add        t1, zero, t1
                  ori        s1, s3, -455
                  srli       t3, sp, 27
                  sra        gp, a3, gp
                  add        s1, a6, a7
                  slt        tp, s10, gp
                  mul        s5, s10, a7
                  add        t1, tp, a1
                  c.add      s4, ra
                  sltu       s0, t4, s7
                  slli       ra, t2, 12
                  srai       s0, s3, 25
                  c.addi     t1, 30
                  addi       t2, s5, 713
                  auipc      s1, 614918
                  c.srli     a0, 21
                  xori       t2, a0, 125
                  nop
                  add        s7, t2, t0
                  c.andi     a2, -1
                  sll        t3, s3, t0
                  addi       s1, t0, -327
                  c.srli     a5, 8
                  and        s2, a5, s6
                  div        s5, s1, a2
                  or         a2, s8, s10
                  add        s10, s10, gp
                  slli       t4, t6, 21
                  slt        s5, t6, t2
                  auipc      s10, 155327
                  srli       a6, tp, 4
                  lui        t1, 813917
                  srl        t6, a5, s8
                  slli       s10, a7, 16
                  c.mv       t1, s4
                  auipc      a7, 180215
                  divu       s1, ra, a4
                  xori       ra, t5, -75
                  sub        a3, s3, t4
                  srai       t0, a2, 2
                  c.addi     s1, 13
                  divu       s10, s3, t6
                  div        zero, zero, s1
                  c.xor      s1, s1
                  sll        t2, s2, a0
                  c.addi16sp sp, 208
                  srl        t1, s1, s2
                  c.sub      s1, a0
                  sltiu      s9, s5, -479
                  sltu       s4, s8, t4
                  div        sp, t0, t6
                  and        s4, a7, a5
                  c.add      t5, s7
                  c.andi     a1, -1
                  or         zero, t3, t3
                  slti       zero, s5, -350
                  c.mv       t6, s9
                  add        s5, a5, s2
                  srl        t5, s7, s2
                  srli       zero, tp, 8
                  or         s5, t0, t4
                  rem        gp, sp, a2
                  slti       a3, a3, -375
                  srai       t3, t0, 17
                  c.sub      s0, s1
                  add        s1, a1, s9
                  sra        sp, a1, s1
                  nop
                  xori       s8, s6, -54
                  sltiu      t0, t1, -259
                  c.xor      a1, a5
                  c.addi     s8, 24
                  auipc      t4, 938939
                  c.nop
                  nop
                  mulhsu     ra, a5, s2
                  sltiu      ra, ra, -34
                  divu       gp, s0, s5
                  xori       t6, s1, -229
                  sltu       a3, a7, tp
                  addi       ra, a6, 29
                  c.or       a0, a0
                  c.and      a5, s1
                  slt        t6, s10, s0
                  c.li       a5, 9
                  auipc      a1, 284201
                  c.or       a3, a0
                  div        t3, sp, s11
                  xor        a1, a3, ra
                  or         zero, a2, s10
                  auipc      a2, 34273
                  auipc      sp, 295966
                  slt        zero, s8, sp
                  c.li       a2, 29
                  xor        a2, t1, zero
                  slt        a2, ra, a6
                  divu       a7, t2, s0
                  addi       sp, t4, 943
                  c.lui      s4, 21
                  rem        t4, t6, t5
                  c.sub      s0, a2
                  c.mv       tp, a0
                  c.srli     s0, 30
                  c.mv       t4, s5
                  sltiu      t5, a4, -568
                  add        a1, s11, s6
                  sll        t5, s2, a2
                  add        ra, a2, s1
                  slli       s1, a0, 29
                  add        zero, a6, a0
                  lui        t2, 265037
                  mul        s7, gp, t0
                  c.srai     a0, 18
                  c.or       a3, s0
                  or         s6, s4, t6
                  slti       a1, a3, 512
                  c.andi     a1, -1
                  addi       sp, a4, 15
                  auipc      s5, 353160
                  sltiu      s0, a1, 300
                  andi       t1, s8, 908
                  add        a2, s5, a4
                  divu       s8, t0, s4
                  mul        s8, a0, s9
                  mulhsu     a3, zero, t1
                  srai       s4, s9, 19
                  c.add      s8, a2
                  c.sub      s1, a2
                  c.li       a5, 22
                  xor        s1, s2, t2
                  xor        ra, s0, ra
                  slti       t3, s2, 333
                  c.add      s9, s1
                  div        t6, t5, a6
                  and        t3, a5, s0
                  c.sub      a1, s1
                  sub        t6, t2, s10
                  nop
                  sll        s5, s2, s6
                  slti       s0, s1, 351
                  c.add      t5, t0
                  nop
                  andi       ra, sp, -421
                  c.addi     sp, -1
                  c.srli     s1, 27
                  xor        tp, s9, t0
                  mulh       a5, t1, s7
                  c.mv       s2, s4
                  c.mv       a6, s8
                  auipc      ra, 550371
                  sltiu      s8, s2, -303
                  add        a0, s6, t1
                  nop
                  mulh       s6, t0, s8
                  c.srli     a0, 24
                  slti       a3, s4, -797
                  sll        s6, s8, s3
                  c.srai     a3, 12
                  div        a1, s2, t1
                  c.xor      a3, a0
                  srli       gp, s3, 24
                  c.or       a5, a4
                  nop
                  slt        t2, a5, t6
                  divu       t0, s7, tp
                  mulhu      t4, s5, s8
                  rem        a0, ra, sp
                  c.xor      s1, a0
                  mul        zero, ra, t5
                  c.sub      s0, a1
                  add        a2, t3, a1
                  addi       s10, a1, -112
                  c.slli     t1, 26
                  rem        t6, sp, a4
                  slli       tp, a2, 17
                  c.xor      a1, a3
                  andi       s8, t6, 70
                  slli       s0, t3, 7
                  c.lui      tp, 5
                  or         s2, s8, s9
                  mul        sp, t1, s11
                  add        s2, s11, s8
                  c.add      t3, t5
                  c.addi16sp sp, -16
                  addi       s4, s9, 537
                  sltiu      tp, ra, 408
                  c.addi16sp sp, 432
                  ori        ra, a5, 230
                  c.srai     a3, 31
                  mulhu      a0, s8, t2
                  c.mv       s9, s10
                  lui        sp, 444280
                  c.nop
                  c.add      s9, t3
                  c.add      t1, t6
                  srli       s9, s10, 21
                  sll        t3, t4, t3
                  srai       tp, gp, 0
                  slli       s8, t1, 28
                  slti       a2, tp, 224
                  sub        t3, s2, s2
                  mulhu      tp, zero, t6
                  sltu       t4, t3, s9
                  c.or       a0, a1
                  c.srli     s0, 14
                  c.srli     s1, 9
                  div        t4, a5, s4
                  lui        zero, 415293
                  sll        s1, s11, s0
                  c.addi16sp sp, -16
                  addi       s7, s11, -779
                  srai       t4, s9, 8
                  div        t5, s3, s7
                  divu       a0, a0, s0
                  lui        gp, 759359
                  slli       a1, s7, 27
                  auipc      sp, 135872
                  c.xor      a0, a4
                  c.and      a1, s1
                  sub        t3, ra, t0
                  c.add      t1, s1
                  sltu       zero, s10, t4
                  mulh       a5, t1, gp
                  nop
                  rem        t4, s0, ra
                  c.slli     s9, 3
                  sll        s0, sp, sp
                  c.sub      a0, a2
                  mulhu      t4, t4, zero
                  c.andi     a2, 28
                  nop
                  xor        zero, a3, t5
                  srli       t2, s0, 18
                  c.sub      a5, a3
                  addi       gp, a7, 984
                  c.slli     t4, 12
                  c.li       a3, -1
                  and        t6, t1, s7
                  c.nop
                  c.li       s0, 13
                  c.and      a1, a0
                  c.or       s0, a2
                  c.lui      ra, 25
                  div        t1, a6, s0
                  sltiu      t0, s1, 771
                  c.srli     s0, 22
                  mul        s7, t1, a4
                  c.mv       tp, tp
                  c.add      sp, a2
                  c.srai     a5, 17
                  c.andi     a3, 7
                  srl        zero, t6, a7
                  sltu       sp, zero, sp
                  c.or       a5, a4
                  div        sp, s9, a3
                  xor        zero, s3, t1
                  div        t5, t5, gp
                  addi       a3, gp, 581
                  c.and      a0, a1
                  sltu       s2, gp, a0
                  xori       s0, t5, 729
                  or         gp, zero, s3
                  mulh       t0, a4, a3
                  nop
                  c.addi     t1, 25
                  c.addi     s2, -1
                  c.srai     a1, 23
                  srai       t6, s2, 31
                  c.or       a0, s0
                  or         a5, a5, s6
                  srli       a1, a5, 25
                  srli       t3, t1, 8
                  c.xor      s0, a3
                  c.srai     a5, 12
                  ori        t6, s7, -123
                  c.add      s7, sp
                  mulhsu     s9, s7, t5
                  sub        t3, s4, t3
                  c.addi     gp, -1
                  addi       s0, t5, 567
                  c.and      a2, a1
                  srl        t2, s2, t0
                  c.addi16sp sp, 240
                  c.sub      s1, a1
                  c.add      s2, t2
                  ori        s2, gp, -26
                  c.li       tp, 18
                  sra        s9, zero, s7
                  c.nop
                  mul        a5, s1, a0
                  c.nop
                  sltu       t1, t5, s7
                  slli       a7, t4, 1
                  c.srai     s0, 5
                  xori       s8, t3, -927
                  sltiu      t0, t6, -404
                  sltiu      t0, s10, 103
                  remu       zero, sp, ra
                  c.lui      ra, 15
                  c.sub      a5, s1
                  sra        s5, s8, a6
                  mulhu      gp, s6, t4
                  sub        a6, a7, a3
                  xor        t4, s8, s3
                  ori        a7, s0, 428
                  c.srli     a0, 11
                  c.xor      a5, a2
                  addi       gp, s5, 852
                  slli       s5, t1, 2
                  sra        s10, t6, s10
                  c.mv       t3, a4
                  sub        t1, zero, t6
                  c.nop
                  nop
                  c.li       s1, 29
                  sltu       a2, t6, a7
                  mul        a7, t0, s0
                  c.and      a1, a5
                  c.nop
                  c.srai     a2, 2
                  mulhsu     gp, s6, s8
                  andi       ra, a4, -749
                  c.addi     t6, -1
                  slti       s7, t4, -800
                  c.addi16sp sp, -16
                  srli       s9, s6, 16
                  div        sp, t1, s2
                  remu       a0, s1, ra
                  auipc      tp, 56707
                  rem        t4, s4, s0
                  mulhsu     s2, s6, s0
                  lui        a6, 1027249
                  slt        a1, a7, gp
                  c.mv       s10, s2
                  or         s4, t2, sp
                  sub        s9, t2, s2
                  sltu       s7, s11, s2
                  c.add      s1, a4
                  divu       s9, a2, s5
                  srl        t3, t0, sp
                  or         a5, gp, a1
                  c.srli     a5, 20
                  mulhu      s5, s5, a4
                  xor        gp, s3, a3
                  c.xor      a5, a3
                  add        s6, t1, s8
                  c.nop
                  xor        t4, t3, s5
                  c.nop
                  c.mv       s8, s5
                  c.li       s10, 28
                  c.lui      tp, 30
                  auipc      a0, 774005
                  addi       t4, t4, -263
                  nop
                  mulh       s9, a2, t3
                  c.lui      gp, 5
                  divu       ra, zero, a0
                  srai       a6, a4, 25
                  div        s1, zero, s7
                  slt        a5, t0, a1
                  c.slli     t2, 10
                  c.srli     s0, 8
                  lui        a1, 1002644
                  c.srli     a5, 17
                  sll        t1, s0, s2
                  sll        s10, a7, tp
                  xori       a6, s10, -809
                  remu       gp, t0, t4
                  mulhu      t6, s7, s10
                  c.lui      a0, 22
                  sltu       gp, gp, s8
                  sll        t3, t5, s0
                  addi       tp, s8, -242
                  rem        t0, a1, t1
                  sub        t0, a1, a5
                  xori       t2, t6, 108
                  c.addi     t3, 31
                  c.srai     a5, 9
                  or         a7, s1, s10
                  ori        a6, a5, -272
                  div        t4, s1, s2
                  c.sub      a1, s1
                  c.li       s5, 15
                  andi       a7, sp, -770
                  c.li       s5, 14
                  andi       s0, ra, -608
                  rem        sp, s9, a5
                  c.or       s0, a5
                  mulhsu     s10, a7, a0
                  slt        zero, t1, a6
                  sub        t0, a7, s8
                  c.or       a3, a1
                  c.lui      a7, 17
                  add        t4, sp, s8
                  ori        t3, s4, -554
                  c.or       a2, s1
                  slti       s8, s1, 428
                  mul        sp, a6, s7
                  srai       s6, ra, 9
                  divu       a1, s0, t3
                  xori       s6, ra, -760
                  c.addi     a7, -1
                  div        t4, ra, a4
                  remu       ra, t4, ra
                  c.nop
                  addi       a6, t4, 645
                  ori        a7, s7, 1009
                  c.nop
                  c.slli     s4, 21
                  c.mv       gp, t3
                  auipc      s0, 811496
                  c.mv       t6, tp
                  c.addi     a3, 19
                  add        gp, s11, a0
                  c.addi16sp sp, -16
                  auipc      s7, 333200
                  lui        t0, 133073
                  divu       s6, s0, s0
                  c.xor      a1, a0
                  c.addi     ra, -1
                  or         a0, t4, s7
                  c.sub      a2, s0
                  sll        a6, ra, a1
                  c.and      s1, a4
                  c.or       a5, s1
                  c.mv       sp, s5
                  mulhsu     a5, a3, s5
                  c.lui      s5, 28
                  or         s9, a1, s8
                  ori        gp, t6, 622
                  c.srli     a1, 6
                  c.addi     t3, 1
                  lui        tp, 955913
                  c.slli     s1, 18
                  c.nop
                  mulhsu     s0, a2, t2
                  slli       tp, t6, 2
                  or         a0, t6, zero
                  c.slli     sp, 28
                  sltiu      s1, t2, -740
                  sltu       s6, a5, tp
                  mulh       t3, a5, t4
                  srli       t3, a2, 13
                  c.srai     s1, 2
                  mulh       a3, t0, a6
                  sub        ra, s0, s2
                  c.and      a2, a3
                  c.add      tp, s4
                  c.sub      a5, a0
                  c.srai     a1, 19
                  sltiu      a6, a2, -152
                  sra        a2, a7, a1
                  srli       s6, sp, 16
                  sltu       a5, zero, t1
                  divu       s6, a1, s7
                  and        zero, s6, s4
                  mul        s8, t6, a0
                  mulhu      a2, a4, t4
                  slti       a0, t4, 447
                  c.srai     a3, 7
                  srl        t0, a5, s4
                  c.addi     t0, -1
                  c.add      t5, s3
                  sltu       a0, a1, s0
                  or         a7, sp, s4
                  nop
                  c.addi16sp sp, -16
                  mulhu      tp, s10, s7
                  div        s7, s4, t3
                  c.add      a5, t2
                  c.slli     a3, 2
                  lui        s10, 514976
                  auipc      s7, 296531
                  c.addi16sp sp, 272
                  srli       gp, s11, 25
                  sll        a1, gp, t2
                  ori        a6, a5, -434
                  ori        t2, a1, 260
                  slti       t5, s1, 436
                  mulhu      a1, s9, a4
                  or         t0, a5, t3
                  or         a7, ra, t1
                  and        s6, s3, s10
                  c.or       a0, s1
                  srl        a0, sp, t1
                  c.srai     a1, 4
                  mul        s5, a5, s7
                  c.slli     t4, 4
                  c.srai     s1, 13
                  sltiu      t4, a3, 328
                  mulhu      s7, s4, t2
                  c.add      a5, s10
                  div        a5, s7, s2
                  addi       s5, a2, 8
                  c.xor      s1, s1
                  divu       a1, s10, a1
                  rem        a5, ra, t5
                  c.srai     a5, 13
                  srl        s1, a7, a1
                  c.sub      a3, a3
                  ori        s6, a2, 377
                  c.srai     a2, 20
                  c.lui      a6, 4
                  rem        t5, t4, s11
                  lui        a2, 169230
                  c.xor      a1, s0
                  sltu       s9, a4, a0
                  sra        s1, s11, ra
                  c.li       a3, -1
                  andi       zero, tp, -745
                  rem        s6, t4, s9
                  c.lui      t0, 7
                  sltu       t2, ra, t2
                  rem        gp, s1, zero
                  andi       a5, s0, -718
                  c.and      a5, a0
                  sltu       zero, t0, a4
                  xor        s8, tp, tp
                  c.lui      t4, 10
                  sltiu      a2, s1, 1004
                  c.sub      a1, a2
                  slt        t3, t5, s7
                  and        s0, a2, a7
                  slti       a6, t4, 316
                  mulhu      a5, t5, s3
                  div        s8, s1, s2
                  or         a0, s0, s6
                  c.lui      t2, 15
                  c.or       a2, a2
                  sll        s6, t0, s11
                  slt        t3, gp, t3
                  sub        tp, gp, s3
                  c.xor      s0, a2
                  c.or       a0, a5
                  slli       s6, t5, 1
                  sll        a7, zero, s2
                  mulh       s10, a0, t5
                  slli       s1, s11, 21
                  mulh       t0, a4, s8
                  mulhsu     t6, a0, sp
                  sub        a7, t3, a6
                  c.nop
                  or         sp, a3, s9
                  sub        t1, tp, s9
                  c.srai     s0, 14
                  sra        tp, s4, a1
                  xori       a3, t1, -744
                  divu       s9, s0, gp
                  xor        s6, ra, tp
                  slt        a7, sp, t1
                  or         sp, s8, s8
                  ori        tp, t6, -77
                  c.nop
                  c.mv       t1, a2
                  c.addi16sp sp, 464
                  auipc      t1, 908203
                  sra        s2, a4, s8
                  slti       zero, s10, 267
                  slli       a7, s0, 12
                  xor        s6, s4, t2
                  c.add      t6, sp
                  rem        s6, a1, t0
                  c.srai     a1, 24
                  srl        a2, t4, s4
                  srli       t5, s1, 0
                  div        gp, s7, t5
                  slti       a3, a7, -439
                  sll        t5, tp, a2
                  c.add      s0, t4
                  srli       a5, gp, 25
                  sltiu      t4, s3, 831
                  slt        a2, sp, gp
                  mulh       a5, a3, s1
                  rem        gp, s11, sp
                  srai       a6, t5, 10
                  nop
                  c.mv       s7, s3
                  sll        s7, t1, s11
                  xori       a5, s2, -845
                  addi       s8, zero, -680
                  divu       t3, a0, t6
                  c.or       s1, a3
                  mulh       a0, a7, s9
                  and        t5, s8, s0
                  c.xor      a1, s1
                  srai       t4, ra, 0
                  mulhu      a0, a4, t5
                  sra        gp, s4, t5
                  xor        s1, a7, s5
                  slt        s0, a5, a0
                  srl        s7, a5, s6
                  mulhu      t4, s5, s6
                  and        a6, a4, s4
                  sltu       t5, s6, s7
                  c.xor      a0, a5
                  c.li       t4, 8
                  auipc      s10, 31314
                  mulhu      ra, t6, s7
                  c.sub      a2, a2
                  sltiu      a7, s6, 858
                  c.add      s4, s2
                  sub        a1, s9, a4
                  xori       a1, s10, 270
                  xori       t2, s5, -105
                  c.addi16sp sp, 240
                  c.xor      a1, s1
                  xor        t6, s6, t6
                  mulhu      tp, a2, s11
                  c.addi16sp sp, 336
                  andi       s9, t6, 686
                  lui        s10, 487791
                  c.slli     s10, 29
                  sltu       t3, a0, a3
                  sll        tp, a2, a0
                  or         ra, s11, s0
                  sll        sp, s2, s2
                  c.sub      a1, s0
                  div        t6, a6, a2
                  sltu       a1, sp, s5
                  srai       s9, s5, 2
                  andi       s0, sp, -688
                  mulhsu     gp, t2, s4
                  c.srli     a2, 14
                  srl        t4, gp, t3
                  srli       a2, a1, 31
                  mul        a3, s6, tp
                  auipc      tp, 915965
                  ori        s6, t2, 934
                  c.lui      s10, 12
                  mul        s2, a1, s5
                  c.sub      a3, a1
                  slt        a0, t1, a4
                  c.addi     s2, 30
                  div        s1, t1, a0
                  mul        s4, t5, a4
                  divu       a6, a2, a7
                  c.and      a0, a0
                  c.sub      a0, a3
                  slt        t1, a2, s8
                  c.and      a5, a3
                  srai       s1, t6, 13
                  or         a2, s7, s7
                  sltiu      t5, s8, 329
                  c.mv       t1, t4
                  c.addi16sp sp, 304
                  srai       ra, a4, 2
                  c.and      a5, s1
                  div        a6, s11, t1
                  slti       t4, a1, 286
                  nop
                  mulhu      s10, t0, t6
                  c.slli     a6, 11
                  sub        s8, s1, a6
                  sra        t6, a4, s5
                  c.andi     a1, -1
                  auipc      t3, 201707
                  c.slli     sp, 20
                  sll        a5, s10, s4
                  c.add      a0, s5
                  auipc      sp, 562332
                  sra        t0, s9, a1
                  c.or       s1, a0
                  rem        a0, t3, t6
                  div        t1, t3, t4
                  sltu       s2, s5, sp
                  andi       a5, a7, 412
                  ori        zero, t4, -805
                  srai       s5, s2, 1
                  lui        s8, 313424
                  c.slli     a1, 17
                  sub        s5, a4, t3
                  sltu       s0, s9, t3
                  mulhu      ra, t1, t0
                  and        s9, tp, s5
                  rem        s1, a7, zero
                  sub        ra, t6, a4
                  div        sp, a3, a6
                  lui        a1, 733515
                  srl        tp, s8, s4
                  sra        s4, ra, a4
                  ori        t5, t1, -732
                  sub        ra, s4, s11
                  rem        a7, t5, t2
                  mulh       zero, s2, a5
                  divu       tp, s6, ra
                  c.nop
                  c.andi     a1, 1
                  c.srli     a2, 31
                  c.or       a3, a3
                  or         zero, zero, s0
                  add        sp, s5, s3
                  mul        s7, sp, t6
                  c.xor      a2, a3
                  c.slli     s9, 30
                  remu       s5, tp, t5
                  addi       gp, t3, -602
                  srai       a6, t3, 2
                  slt        sp, s2, s9
                  or         t1, gp, s1
                  c.slli     a6, 26
                  slti       a0, s4, 893
                  c.mv       s5, t2
                  c.li       s4, 26
                  srli       t1, s9, 12
                  slti       a0, a2, -405
                  c.addi     s7, 29
                  sltiu      s5, s8, 446
                  sll        s9, t2, a2
                  c.srli     a3, 27
                  addi       a0, a5, 635
                  or         t0, t5, t5
                  sltu       zero, s4, ra
                  c.addi16sp sp, 208
                  srli       a5, s3, 18
                  sub        s2, a0, a4
                  lui        s9, 434121
                  mulhu      t6, ra, t3
                  c.lui      t3, 28
                  slt        t0, t5, s11
                  sltu       s4, s7, t6
                  ori        a5, zero, -687
                  add        s10, t3, s7
                  andi       a7, a6, 349
                  c.sub      a1, a5
                  sub        a2, ra, t0
                  div        s6, a4, s4
                  sra        t4, a6, s8
                  c.srai     a1, 17
                  sll        s2, ra, s7
                  c.addi     a6, -1
                  auipc      sp, 216676
                  c.mv       s10, s1
                  c.or       a5, a1
                  c.li       s4, 5
                  c.xor      a3, s1
                  auipc      ra, 507133
                  addi       t3, s3, -417
                  c.addi16sp sp, -16
                  nop
                  c.addi     ra, -1
                  addi       t3, a1, -397
                  c.andi     a2, -1
                  mul        s9, t4, a5
                  ori        gp, a7, 985
                  srl        s0, s9, ra
                  mulh       s7, sp, s4
                  srl        s6, s1, sp
                  xor        tp, t2, s9
                  c.srli     a1, 26
                  c.nop
                  c.addi16sp sp, 144
                  rem        t6, s0, a5
                  ori        s9, s6, 538
                  div        s1, a1, a3
                  c.addi     a7, -1
                  slti       t2, s10, -354
                  auipc      s5, 954372
                  sll        t2, gp, t1
                  or         a2, a0, s7
                  c.slli     t4, 15
                  slli       t6, t4, 5
                  c.srai     a2, 12
                  rem        gp, t5, gp
                  c.andi     a2, -1
                  divu       gp, a1, s6
                  mulhsu     t2, s7, s7
                  c.or       a1, a3
                  slli       t1, a7, 1
                  c.slli     s7, 14
                  c.andi     s1, -1
                  srai       a2, gp, 25
                  slli       t3, s0, 2
                  mulh       t6, a7, s11
                  c.or       a5, a0
                  c.addi     t6, -1
                  lui        t6, 197189
                  lui        ra, 617852
                  srl        sp, tp, sp
                  c.nop
                  rem        t6, s9, gp
                  mulhu      s6, tp, s2
                  mulhsu     a7, zero, a0
                  mul        t2, zero, t4
                  c.addi     t0, -1
                  mul        s6, s10, t5
                  c.nop
                  mulh       ra, s11, s6
                  c.srai     a3, 24
                  c.nop
                  addi       a3, a3, -963
                  slli       s2, a6, 0
                  xor        sp, sp, t4
                  add        s6, sp, s11
                  remu       t4, s10, zero
                  c.andi     a5, -1
                  sll        ra, t6, gp
                  mulhu      s4, t4, a7
                  or         t4, s10, zero
                  addi       t1, s2, 324
                  c.slli     s4, 16
                  andi       s5, a7, -58
                  rem        s0, s11, a1
                  c.or       a0, a4
                  nop
                  slli       s6, a7, 26
                  slt        s8, s8, t0
                  c.nop
                  c.srai     a5, 20
                  xori       s5, t2, 668
                  addi       s7, s3, 556
                  lui        t2, 172082
                  slt        sp, zero, a2
                  or         gp, a1, a1
                  c.slli     tp, 18
                  lui        t1, 88872
                  c.slli     s9, 24
                  srai       tp, s1, 7
                  mulh       a1, s0, t1
                  xor        t2, s11, s6
                  mulhu      s0, s0, s3
                  c.lui      t4, 26
                  slti       t4, s5, 777
                  slt        ra, a1, s0
                  c.xor      a3, s1
                  div        s8, a3, t5
                  srai       ra, s9, 12
                  andi       sp, s11, 411
                  mulhsu     a7, t1, s5
                  c.sub      s0, a5
                  or         t0, s5, a2
                  sltiu      s1, s8, -762
                  div        s8, zero, a4
                  auipc      gp, 851517
                  ori        a0, a1, 305
                  srli       a1, t6, 28
                  slti       s5, a2, -566
                  addi       sp, s4, -529
                  c.mv       s9, a7
                  c.andi     a3, 26
                  mulhu      s1, a0, s0
                  ori        t6, a2, 429
                  remu       sp, t6, a5
                  c.and      s1, a3
                  sltiu      a5, s3, 885
                  slli       a7, s7, 21
                  c.srai     a2, 20
                  remu       s2, t6, s7
                  addi       a6, zero, -681
                  mulhu      t3, s5, s6
                  add        s1, a6, s10
                  c.andi     s1, 21
                  c.srai     s1, 10
                  c.andi     s0, -1
                  mulhsu     t6, zero, a2
                  sll        a3, a5, a2
                  c.addi16sp sp, -16
                  c.and      a3, a2
                  c.lui      s10, 27
                  mul        t3, a1, s4
                  andi       s2, a7, -785
                  rem        s0, a5, a2
                  slli       a7, tp, 1
                  slti       s9, s6, 671
                  c.sub      s0, a5
                  c.add      t4, t5
                  remu       gp, s3, s6
                  c.addi     tp, -1
                  or         a5, a7, s10
                  c.mv       a7, s11
                  andi       a7, s7, 175
                  auipc      t5, 885384
                  andi       sp, ra, 682
                  sll        s0, s0, s9
                  c.lui      s1, 19
                  c.slli     s7, 17
                  sra        s6, s4, s8
                  c.li       t3, 24
                  sltu       t5, s10, s7
                  addi       s8, t4, 608
                  and        a3, a5, zero
                  xor        t0, s5, a5
                  c.mv       gp, s5
                  remu       t0, a2, a5
                  c.mv       t6, a3
                  c.srli     a1, 7
                  xor        s4, s4, ra
                  xor        a6, s3, s0
                  slli       s2, s1, 13
                  nop
                  sub        a1, ra, a3
                  c.sub      a2, s0
                  rem        t0, a5, ra
                  div        a5, s8, s10
                  andi       s9, s11, 76
                  div        t6, a2, a0
                  c.nop
                  lui        gp, 359293
                  sub        sp, s1, a4
                  or         sp, s11, s7
                  xori       t1, a1, -429
                  addi       s9, s1, 801
                  c.slli     a5, 10
                  c.srli     a0, 21
                  srli       a7, sp, 23
                  c.lui      a1, 7
                  slti       s10, s5, 731
                  lui        t1, 311763
                  c.srai     a3, 21
                  c.and      a3, a5
                  c.andi     s0, 5
                  mulhu      s0, s1, s1
                  ori        gp, a5, 370
                  addi       t4, a6, -870
                  sll        a2, s0, s6
                  rem        s8, t3, tp
                  c.mv       t6, a1
                  divu       ra, a2, s5
                  mul        a3, t6, s7
                  sll        a1, s4, a3
                  nop
                  slli       t3, sp, 20
                  rem        a7, t4, s5
                  andi       a2, a7, -244
                  andi       s9, t3, 538
                  divu       t5, t1, sp
                  sll        t0, s10, t2
                  divu       s9, s9, a5
                  addi       s4, a3, -97
                  mulhsu     t4, ra, s1
                  c.sub      a1, s1
                  c.li       s6, 27
                  mulhu      t3, s6, s4
                  add        s1, s0, s9
                  nop
                  slt        t1, ra, s4
                  c.addi     s10, -1
                  sll        t4, s11, s11
                  c.srai     a1, 1
                  sra        a1, s6, s11
                  c.addi     t4, 22
                  srli       s6, a5, 2
                  c.or       a2, s0
                  c.or       s1, a2
                  c.nop
                  srl        tp, a6, a1
                  c.addi16sp sp, -16
                  slt        a1, s0, t5
                  xori       s10, a6, -481
                  xori       t2, t4, -869
                  sltiu      a2, a3, -360
                  c.addi     s4, 6
                  c.addi     s8, 23
                  sltu       t5, t5, t2
                  lui        t5, 1024291
                  srl        tp, s9, t3
                  sll        a7, s4, s5
                  sra        s7, t5, s7
                  andi       s1, s0, 610
                  rem        s4, a5, a5
                  c.slli     a7, 24
                  xor        a5, a7, a5
                  c.li       tp, 28
                  xori       a6, s0, 1003
                  c.addi16sp sp, 480
                  ori        t3, zero, -941
                  c.add      a6, t2
                  c.addi16sp sp, -16
                  lui        s5, 388275
                  or         t1, t0, sp
                  c.sub      a3, a4
                  c.or       s0, a4
                  slt        a0, s4, zero
                  andi       a2, s10, -346
                  andi       s7, s4, -217
                  mulhu      gp, s4, s4
                  mulh       s2, t3, s11
                  add        a7, s11, a4
                  rem        t1, s6, a1
                  mulhsu     a7, a2, gp
                  slt        s7, a1, a2
                  remu       tp, gp, s1
                  c.mv       a7, t1
                  lui        s9, 1005457
                  c.lui      s7, 9
                  sll        s2, sp, sp
                  ori        gp, gp, 913
                  mul        t6, t5, s4
                  sltu       s10, s4, a2
                  c.or       a5, a3
                  andi       t1, s2, 94
                  c.nop
                  slli       s10, s5, 2
                  c.add      t6, t1
                  c.xor      a3, a1
                  srli       t4, a2, 0
                  srl        sp, s5, t5
                  or         t3, s2, t2
                  add        t3, zero, a5
                  c.and      s1, a0
                  and        a5, a7, a7
                  c.mv       a5, gp
                  c.li       t1, -1
                  mul        a2, s5, s6
                  srai       sp, sp, 4
                  add        sp, gp, a6
                  c.srai     s0, 30
                  c.addi     t2, 11
                  sub        t5, s9, a0
                  c.nop
                  and        s5, s6, s4
                  mul        t5, s9, s3
                  remu       s7, t6, t5
                  nop
                  nop
                  c.add      a5, s7
                  mulhsu     a2, s2, sp
                  c.slli     t3, 4
                  c.xor      s0, a4
                  lui        a2, 513726
                  or         ra, t6, s9
                  remu       t3, s5, t0
                  c.srai     s1, 29
                  sltiu      t1, a2, 417
                  and        s2, s2, s9
                  div        t0, t0, t4
                  slt        gp, zero, t2
                  sra        t5, a3, s11
                  c.lui      s4, 4
                  sltu       a3, sp, t0
                  remu       a3, t0, s4
                  c.andi     a0, 30
                  c.lui      a6, 22
                  mulhsu     a6, t4, gp
                  sltu       t5, a2, s11
                  c.srli     a5, 11
                  srai       s0, s1, 25
                  mul        a3, s8, s0
                  lui        s9, 830325
                  c.and      s1, a4
                  div        ra, s3, s6
                  c.andi     a2, -1
                  c.nop
                  ori        s10, t0, -630
                  c.sub      a1, a2
                  add        gp, s11, ra
                  c.nop
                  nop
                  c.andi     a5, 4
                  c.srai     s0, 7
                  div        s5, t5, s11
                  andi       ra, a7, -897
                  c.xor      s0, a1
                  div        t2, a4, s1
                  slli       s8, s7, 26
                  c.nop
                  sub        s4, tp, s4
                  sll        s7, a4, s2
                  slli       s5, a1, 6
                  mulhsu     s7, sp, s10
                  slti       s6, t0, 384
                  c.lui      t2, 22
                  xor        a6, ra, sp
                  c.srai     a0, 22
                  addi       s1, a4, 1015
                  xor        t4, s7, a7
                  divu       ra, s0, s5
                  mul        a1, a3, s5
                  mulh       gp, s3, t0
                  ori        a2, t0, 872
                  or         tp, s9, t4
                  sltu       a1, a5, a4
                  div        s9, s0, s5
                  sub        s2, gp, gp
                  sra        a0, sp, s5
                  c.mv       t6, s11
                  remu       s4, s6, s3
                  srai       s7, a5, 11
                  c.and      a3, a5
                  srai       s2, gp, 3
                  c.mv       a1, a2
                  sltiu      a6, s4, 668
                  sub        a2, a3, s8
                  c.li       s5, -1
                  slli       t6, a1, 11
                  c.and      a5, s1
                  slli       s10, s11, 5
                  c.andi     s1, -1
                  auipc      t5, 929830
                  ori        s0, s2, -559
                  sltu       a6, t0, s0
                  mulhu      s0, tp, s8
                  sltiu      gp, t2, 849
                  srl        a0, tp, a6
                  c.add      a6, t1
                  sltu       a2, t5, a0
                  c.addi16sp sp, 496
                  lui        s6, 71037
                  add        t1, a2, s5
                  c.lui      s7, 28
                  c.slli     t5, 23
                  sltiu      s8, gp, -311
                  c.add      a5, a5
                  c.or       a0, a1
                  xori       t0, s5, 575
                  or         t5, a3, s2
                  c.addi     ra, -1
                  slli       s2, t6, 18
                  lui        t0, 1035887
                  nop
                  srli       s8, t0, 25
                  srl        a5, a3, sp
                  c.sub      a2, a4
                  xor        tp, s5, s7
                  c.lui      s1, 11
                  c.addi16sp sp, -16
                  mulh       tp, a0, s1
                  c.xor      a2, a4
                  mulh       s9, sp, t3
                  c.sub      a3, a5
                  mul        s2, s6, s11
                  slt        s5, a2, a1
                  sltu       a7, s4, s4
                  sltu       gp, a6, a2
                  nop
                  srli       s1, zero, 23
                  addi       t0, zero, 578
                  c.nop
                  andi       a1, s6, 784
                  divu       s9, s8, t0
                  rem        a3, a0, t2
                  c.nop
                  andi       ra, t0, 660
                  c.mv       s2, t5
                  c.nop
                  remu       s1, s5, t3
                  addi       s2, tp, 583
                  c.srai     s1, 10
                  nop
                  add        a6, s5, t4
                  c.slli     s0, 29
                  slli       a1, a7, 20
                  sra        t6, s3, s9
                  mulhsu     sp, a7, s1
                  c.mv       s4, s9
                  mulhu      a3, sp, s0
                  slli       s7, a6, 24
                  and        s1, s1, a2
                  mulhsu     gp, a7, s2
                  ori        a5, s8, 433
                  ori        s10, s11, 983
                  c.or       s0, a0
                  c.li       s9, 26
                  slt        t5, s7, s3
                  c.sub      a1, a5
                  mul        a6, a2, s4
                  srai       t4, s4, 27
                  sll        s0, a7, a1
                  srai       a3, a5, 18
                  div        ra, zero, t0
                  mulhsu     t4, s2, zero
                  and        s0, t5, s9
                  mul        s1, s4, t1
                  rem        s5, a6, s10
                  srai       t4, s10, 13
                  c.slli     s1, 26
                  nop
                  c.sub      a1, a0
                  c.sub      a0, s1
                  sltu       s10, s5, s8
                  remu       a0, s2, a4
                  add        t5, s0, sp
                  andi       a5, t5, 498
                  addi       ra, t2, 679
                  sub        s1, s9, s2
                  slli       s7, s10, 21
                  slti       t4, s10, 41
                  sll        a5, s10, a1
                  c.li       a6, -1
                  remu       s7, ra, t5
                  divu       t6, gp, t6
                  slli       gp, t6, 21
                  c.xor      a0, s1
                  mulhsu     gp, tp, t0
                  slli       a5, a4, 22
                  ori        a1, s8, -1003
                  rem        a0, a2, t5
                  sub        s5, t3, s10
                  sltiu      ra, s0, -581
                  slti       s10, s4, 1016
                  c.srai     a3, 1
                  c.or       a5, a3
                  addi       s4, t2, -1
                  lui        tp, 284198
                  auipc      s1, 327811
                  and        t1, tp, a3
                  or         a2, s1, a7
                  sub        s9, s4, s6
                  c.slli     s9, 23
                  c.andi     a0, 4
                  divu       t6, s6, t2
                  c.or       s1, a5
                  c.srli     a2, 14
                  lui        t1, 1040753
                  sltu       a0, s0, t2
                  c.addi     a6, 5
                  srli       s0, t1, 9
                  c.slli     sp, 25
                  divu       gp, t6, ra
                  add        s10, tp, s0
                  srl        t6, t2, s11
                  srl        s10, a4, a4
                  andi       sp, a1, 983
                  xor        s5, s2, t1
                  xor        a1, s7, t6
                  auipc      t1, 408905
                  c.addi     s1, -1
                  srai       a6, sp, 4
                  slt        zero, a7, t5
                  c.nop
                  sra        t2, s8, a0
                  remu       s8, s1, ra
                  slli       a3, s0, 16
                  sub        t4, a4, s8
                  c.addi16sp sp, -16
                  c.nop
                  c.addi16sp sp, 208
                  c.lui      s9, 8
                  nop
                  c.mv       gp, a6
                  c.addi16sp sp, 64
                  slli       a0, t4, 24
                  remu       t5, a3, t5
                  sltu       t1, s4, t2
                  c.li       a0, -1
                  slt        s6, a0, t5
                  c.mv       s0, sp
                  sltiu      s6, t6, -953
                  c.srai     a1, 21
                  nop
                  c.xor      a2, a3
                  andi       a6, s4, -434
                  remu       s5, t4, a7
                  sltu       gp, zero, zero
                  c.li       s10, 18
                  sltu       a0, t5, zero
                  sll        a3, s8, s2
                  mul        a3, s5, s1
                  xori       t5, a2, -453
                  addi       a3, t3, 33
                  c.andi     a3, 28
                  div        gp, s3, s9
                  c.srli     a1, 31
                  addi       s7, s10, 434
                  rem        a1, s0, s9
                  sra        s10, s4, s7
                  c.lui      a2, 2
                  xor        gp, tp, s2
                  srl        s8, t5, t0
                  divu       zero, gp, a5
                  slt        s7, t4, t0
                  c.nop
                  slti       s9, s1, -599
                  c.add      a3, a3
                  c.sub      s0, a0
                  sub        a5, a1, t6
                  sub        t6, zero, t0
                  c.mv       t0, s9
                  sltiu      a7, t4, -516
                  srl        t0, s2, s1
                  c.or       s1, s1
                  remu       s4, gp, s7
                  c.lui      s5, 15
                  srai       s10, s9, 9
                  slli       t4, t3, 15
                  c.mv       a2, t3
                  sltiu      t1, s8, -667
                  c.addi16sp sp, 400
                  mul        t6, s10, a2
                  c.xor      a3, a0
                  sll        t5, t0, a4
                  sltu       t4, zero, s0
                  xor        s9, t2, t6
                  c.xor      a0, s1
                  mulhu      s5, tp, a3
                  c.andi     a2, -1
                  c.andi     a3, -1
                  srli       s6, t0, 26
                  slt        s5, t5, s9
                  c.srai     s1, 31
                  c.mv       s5, t3
                  auipc      a0, 339228
                  mulh       t5, a6, a5
                  addi       a7, s5, 831
                  mulh       a7, a1, a3
                  c.srai     s0, 9
                  sra        s8, t4, tp
                  add        a0, gp, t6
                  srli       a0, s10, 20
                  and        s0, s5, t4
                  sll        t6, t5, t0
                  remu       s2, t0, s7
                  c.nop
                  mulh       a7, t0, s11
                  c.or       s0, a4
                  srl        s8, s6, ra
                  xor        s4, tp, s0
                  mulh       ra, t3, s4
                  mulhsu     a0, s0, s8
                  c.add      s8, ra
                  c.add      t6, a2
                  mul        s1, t6, s3
                  c.addi16sp sp, 416
                  and        s0, s5, t5
                  mulhsu     a2, s10, s0
                  sra        a7, s2, t2
                  sra        s10, s9, sp
                  mul        a5, a1, s5
                  xor        a7, s10, t0
                  c.addi     gp, -1
                  nop
                  c.slli     a1, 5
                  c.andi     s1, -1
                  remu       s10, s7, s4
                  sltu       t4, t3, s11
                  c.or       a1, a4
                  c.mv       s4, t0
                  mulh       s6, t2, s11
                  xor        s0, s4, s0
                  sltu       a7, t2, t6
                  c.nop
                  c.srli     a3, 28
                  c.li       s2, 4
                  remu       a1, t1, a4
                  div        s6, s6, s5
                  and        s5, s4, t6
                  div        a1, a4, s8
                  auipc      a2, 99050
                  c.nop
                  slli       t2, a0, 25
                  c.addi     s7, -1
                  c.sub      a5, a2
                  ori        t6, gp, 432
                  addi       s7, a3, -75
                  slli       s6, t4, 2
                  c.or       a0, a0
                  addi       t4, gp, -873
                  add        a0, sp, t0
                  c.xor      s0, a5
                  mulhu      s0, a5, t4
                  sra        s1, a7, t1
                  div        s5, a4, a3
                  andi       s4, s8, -422
                  c.slli     s0, 6
                  rem        t2, s10, tp
                  sltu       a1, s8, t5
                  c.srai     a5, 17
                  c.xor      a0, a0
                  c.sub      a1, a3
                  xor        a2, a2, t2
                  c.mv       t2, t5
                  slti       a5, s4, -164
                  addi       t0, a7, -502
                  c.add      t5, s5
                  c.xor      a1, a2
                  slli       t6, gp, 9
                  mulh       s2, t6, s3
                  sltu       t3, a0, t1
                  c.mv       a6, a3
                  c.nop
                  sub        a5, t2, s1
                  mulhsu     ra, s0, t3
                  rem        s4, t2, zero
                  mulhu      s2, sp, a1
                  sll        t2, a3, a5
                  c.srai     a5, 19
                  c.addi     s4, -1
                  xori       t3, a1, -534
                  sltu       t5, t3, t4
                  c.li       s2, 4
                  slli       t4, s3, 12
                  xor        t3, s11, t4
                  c.slli     a6, 5
                  c.andi     s1, 19
                  slli       s10, gp, 28
                  slli       a7, a6, 1
                  c.or       a1, a3
                  c.xor      a3, s0
                  c.li       s2, -1
                  c.li       s9, 15
                  slti       s1, t2, 788
                  c.srai     a2, 11
                  slt        a6, gp, a0
                  ori        gp, s0, -951
                  c.xor      a3, a3
                  rem        a5, a3, t3
                  sll        s4, t0, zero
                  mul        s4, ra, gp
                  and        a7, a7, s0
                  andi       s0, a2, -234
                  c.slli     a1, 31
                  remu       a2, a3, s3
                  mulhu      s10, a6, a1
                  c.or       a0, a0
                  c.and      a3, a1
                  ori        a1, zero, -85
                  c.add      s0, tp
                  lui        a2, 692865
                  c.li       s1, 3
                  addi       s8, s3, -878
                  c.srli     s1, 21
                  c.addi     a3, -1
                  c.add      a1, s10
                  auipc      t5, 771449
                  and        s2, s0, a4
                  add        t1, t6, s7
                  c.mv       a5, s4
                  ori        s6, a7, -215
                  sll        t6, a5, sp
                  slli       t3, a5, 16
                  c.sub      a1, a0
                  ori        ra, t6, -454
                  c.addi16sp sp, -16
                  c.xor      a1, a3
                  sll        sp, s7, t2
                  c.srli     a5, 4
                  srl        t6, a6, s0
                  xor        s8, zero, s5
                  nop
                  xori       t6, gp, -624
                  c.addi     t4, 23
                  c.sub      s0, a3
                  auipc      s6, 719895
                  c.srli     a2, 23
                  c.nop
                  sltu       s2, a5, zero
                  slli       a0, s2, 13
                  srai       tp, a5, 8
                  nop
                  srai       t2, s1, 12
                  xor        t2, tp, s3
                  c.andi     a0, 14
                  lui        s6, 23540
                  c.xor      a1, s0
                  addi       a7, s11, 179
                  c.nop
                  xor        t0, s3, s6
                  slt        ra, zero, s6
                  mulhu      zero, s6, a5
                  mulhsu     t5, s10, zero
                  sltu       s9, t5, zero
                  c.nop
                  c.or       a5, a5
                  c.or       a2, a1
                  c.sub      a1, a1
                  c.and      a5, a2
                  div        a3, t5, s5
                  mulhsu     s6, s3, a6
                  or         sp, a0, ra
                  srl        t1, sp, s10
                  mulh       s6, t3, s0
                  c.add      s8, s4
                  c.xor      a2, a0
                  mulhu      s1, s6, s5
                  sltu       s4, s8, s0
                  c.srai     a1, 10
                  add        s9, s1, s7
                  andi       tp, s2, -524
                  c.lui      s4, 4
                  xor        a0, t1, t5
                  xori       sp, s7, -983
                  mul        gp, gp, s2
                  slt        s1, s2, t0
                  srl        ra, s7, s3
                  or         a0, s11, s4
                  c.nop
                  srli       s7, s0, 12
                  or         t5, s9, a0
                  remu       a2, s8, a5
                  c.mv       a5, s2
                  c.nop
                  c.nop
                  add        t1, t4, s4
                  c.srli     s0, 21
                  srl        a3, ra, a6
                  srli       t4, s2, 22
                  c.addi     t3, -1
                  xori       a0, t5, 20
                  srai       s1, t5, 16
                  slli       t1, t6, 2
                  c.srli     s0, 23
                  addi       s6, s6, 402
                  and        t1, a1, a3
                  c.nop
                  c.srai     a1, 23
                  c.sub      a2, a1
                  lui        gp, 579560
                  c.addi16sp sp, -16
                  srl        a7, a7, s7
                  rem        gp, t6, s4
                  sra        tp, sp, a4
                  c.addi16sp sp, -16
                  srl        gp, t6, a3
                  c.add      s0, a6
                  c.add      s0, s1
                  c.mv       a3, sp
                  lui        t6, 398504
                  c.li       sp, 21
                  c.srli     s0, 19
                  c.sub      s0, a5
                  c.nop
                  c.andi     s0, -1
                  or         t4, s9, sp
                  c.srli     s1, 16
                  c.sub      a5, a4
                  xori       a1, s1, -924
                  sll        s5, gp, s5
                  nop
                  ori        t4, t1, -715
                  auipc      s1, 51987
                  slli       t0, s6, 20
                  c.sub      a3, s0
                  c.li       t2, -1
                  divu       t5, t4, s10
                  c.addi16sp sp, 288
                  div        t4, s5, t5
                  nop
                  c.slli     s1, 3
                  nop
                  xor        a7, gp, zero
                  srli       t5, a2, 30
                  rem        gp, a2, a6
                  sll        a6, s7, t4
                  c.add      sp, s6
                  div        t5, a1, t0
                  srl        tp, a0, s4
                  c.mv       s1, s7
                  c.li       t4, -1
                  c.and      a5, a3
                  sltiu      a7, t4, -915
                  mulhsu     a0, a1, t3
                  slt        zero, s0, s2
                  xor        sp, a2, s3
                  c.nop
                  div        zero, s10, a3
                  c.or       a3, s0
                  c.nop
                  sltu       a3, a6, s9
                  c.xor      s1, a1
                  c.xor      a5, a4
                  ori        sp, a4, 990
                  c.andi     a0, -1
                  c.lui      t5, 8
                  andi       s5, a2, 403
                  div        s2, t1, t6
                  c.slli     s8, 7
                  mulhu      s9, a1, a4
                  c.addi     a1, 11
                  and        s4, s10, tp
                  ori        ra, a1, 279
                  and        s8, s1, a4
                  c.add      s2, s5
                  c.lui      ra, 28
                  c.nop
                  auipc      t1, 686342
                  ori        s1, s6, -647
                  auipc      a3, 957350
                  slti       a7, tp, 528
                  sltiu      s5, t4, 529
                  sltu       s7, s1, s4
                  sltiu      s8, s7, -351
                  mulh       s1, ra, s0
                  c.sub      a0, a1
                  c.mv       a2, s11
                  lui        t3, 286166
                  c.add      t4, s7
                  ori        a5, t0, 381
                  c.xor      s0, a3
                  srl        s2, s7, a1
                  sra        s7, sp, zero
                  sll        gp, s3, a3
                  divu       s8, a2, t3
                  c.xor      a3, s0
                  addi       s9, a7, 901
                  rem        a1, s6, ra
                  c.addi     s5, -1
                  xor        s0, t2, tp
                  mulhu      a5, t2, s9
                  srai       ra, gp, 7
                  srli       a5, a4, 4
                  mulhu      a7, a5, t2
                  slt        s2, a5, a1
                  c.slli     tp, 19
                  srl        a2, a0, s9
                  c.andi     a5, -1
                  or         t5, t1, t1
                  auipc      s4, 282233
                  srai       s1, a6, 24
                  remu       s6, t5, s2
                  c.xor      a5, a4
                  sub        t2, s11, a2
                  c.mv       s10, sp
                  slli       t4, zero, 14
                  nop
                  rem        t4, t1, gp
                  c.xor      a5, a0
                  mulh       a0, s7, t5
                  c.slli     tp, 17
                  auipc      t4, 714020
                  c.or       a3, a4
                  xori       a3, t0, -456
                  sltiu      s8, a3, -3
                  c.mv       s2, a1
                  div        s0, a2, t4
                  addi       s7, zero, -128
                  sltiu      t0, t2, 979
                  c.lui      s1, 7
                  div        ra, zero, a4
                  c.xor      a2, s1
                  sltiu      s8, t2, 375
                  andi       s2, a1, 1
                  c.xor      s1, s0
                  c.li       tp, 30
                  mulhsu     a1, zero, s2
                  slti       a0, a6, -335
                  ori        a0, a5, -989
                  add        s9, a0, tp
                  c.mv       sp, t2
                  c.srai     s1, 31
                  c.andi     a5, 27
                  slli       t1, s10, 28
                  c.srai     a2, 24
                  slli       s9, sp, 31
                  sll        a3, s4, ra
                  c.mv       s5, s2
                  xori       s7, a7, 973
                  c.srli     a1, 21
                  andi       s6, s6, 925
                  rem        zero, t1, a3
                  c.sub      a0, a3
                  c.add      s2, s0
                  mulhu      s5, t4, gp
                  c.or       a2, a0
                  andi       ra, s1, -19
                  nop
                  c.add      t0, t3
                  c.nop
                  srl        s6, s4, t5
                  srl        s7, s11, a7
                  c.addi     s10, -1
                  c.mv       ra, t6
                  div        t4, sp, gp
                  c.lui      s1, 29
                  c.xor      s1, a4
                  add        t2, s2, a2
                  sltiu      s6, s10, 484
                  c.addi16sp sp, -16
                  sltiu      a7, tp, -163
                  c.sub      a0, a5
                  remu       gp, t4, t0
                  c.slli     ra, 16
                  auipc      a5, 989215
                  slli       t0, s4, 6
                  slli       tp, s6, 6
                  lui        a0, 350506
                  ori        t0, s7, 576
                  c.xor      s0, s0
                  slli       s1, t3, 5
                  sltiu      a6, t0, 876
                  c.xor      a0, a4
                  srai       t3, t3, 14
                  div        s4, t0, s1
                  sub        tp, zero, t2
                  and        s5, t0, a6
                  div        zero, s7, s9
                  sll        gp, s7, zero
                  lui        s4, 669513
                  mulhu      t5, a5, s9
                  c.mv       s10, t2
                  sub        zero, t4, s6
                  sltu       t0, a4, sp
                  rem        s7, t3, sp
                  add        ra, s3, t6
                  slli       sp, s1, 11
                  addi       t1, s9, -362
                  c.add      a7, t1
                  rem        gp, a1, t4
                  c.nop
                  nop
                  add        s2, t4, t2
                  xori       s6, s8, -979
                  c.sub      a5, a3
                  c.xor      a1, a1
                  rem        t4, ra, t1
                  c.addi16sp sp, -16
                  auipc      t2, 782892
                  c.xor      s1, a1
                  xor        t5, s8, s4
                  div        s0, a1, s7
                  mulh       s5, ra, t0
                  mulhu      s9, t6, gp
                  add        s2, a4, sp
                  rem        s6, t4, a4
                  sltiu      sp, s8, 66
                  c.or       s1, a1
                  c.andi     s1, 24
                  rem        s6, s4, a5
                  c.lui      s2, 24
                  c.srli     a1, 9
                  c.andi     a5, -1
                  slti       t5, s10, 143
                  c.li       a6, 25
                  addi       s8, a6, 884
                  c.addi     t3, 2
                  mul        a2, a1, s5
                  div        sp, s4, sp
                  c.srli     a3, 17
                  c.or       a0, a5
                  divu       a0, a2, s3
                  slt        s0, s10, s2
                  sltiu      s8, s8, -942
                  srli       t4, s10, 4
                  divu       t4, s3, t6
                  add        t1, a1, a4
                  c.or       a2, a3
                  srai       s2, gp, 25
                  srli       t4, s11, 0
                  c.lui      t3, 18
                  slli       s4, a5, 30
                  or         gp, s5, a5
                  ori        a3, a3, -881
                  slli       tp, s11, 8
                  rem        t3, s6, s7
                  rem        t5, a1, t3
                  c.lui      s6, 14
                  c.slli     t1, 16
                  c.addi16sp sp, -16
                  sra        t4, s1, ra
                  ori        t0, s10, 526
                  addi       s2, s8, -409
                  srl        s0, a3, s9
                  c.addi16sp sp, -16
                  nop
                  c.add      a5, s9
                  andi       tp, ra, 271
                  c.srli     s1, 12
                  c.and      s0, a3
                  sub        t3, a6, s10
                  or         t0, s10, a1
                  c.addi     t6, 27
                  andi       a0, s0, 624
                  c.addi     a2, 26
                  c.sub      a1, s0
                  c.li       gp, -1
                  xor        t1, zero, s8
                  c.andi     a2, 21
                  sltiu      s9, gp, 911
                  c.xor      s1, a5
                  mul        t2, s1, t4
                  mul        s7, s10, a5
                  divu       t2, s3, gp
                  remu       gp, a7, a4
                  c.addi     a2, -1
                  sltu       t3, t6, s11
                  ori        a5, s9, 806
                  or         s7, s11, t1
                  c.addi16sp sp, -16
                  c.li       t5, -1
                  c.addi16sp sp, 176
                  andi       a1, ra, -760
                  c.andi     s0, -1
                  lui        t1, 545528
                  mulhsu     sp, t1, t6
                  c.or       a5, a2
                  lui        a7, 116447
                  slti       s8, zero, -719
                  divu       gp, t2, s9
                  c.addi     a5, 28
                  nop
                  c.srli     a0, 6
                  c.srli     a1, 10
                  c.nop
                  sltiu      s1, s3, -268
                  slti       s2, t1, -990
                  c.mv       s4, t0
                  c.or       a2, s1
                  sltu       a0, s1, a6
                  slti       a7, a2, -525
                  sub        s5, a1, t1
                  srai       ra, a7, 20
                  xor        s0, s4, s7
                  c.addi16sp sp, 16
                  sub        s6, s8, zero
                  addi       s7, s0, -651
                  c.sub      a2, a2
                  c.andi     a0, 19
                  c.srli     a0, 26
                  c.srai     a1, 31
                  sra        s4, s9, tp
                  rem        a7, s0, s1
                  mul        a3, s9, t3
                  slt        t6, s6, t2
                  mulh       t6, s4, a0
                  slli       s2, a5, 19
                  mulhu      ra, a6, t1
                  c.srli     a1, 7
                  c.add      s1, s6
                  c.srai     a3, 26
                  mulhu      s2, t4, a0
                  c.or       a2, a3
                  add        t5, t5, s1
                  andi       a0, s3, 313
                  c.or       s1, a4
                  c.mv       a7, t2
                  mulhsu     t2, a1, a7
                  ori        s2, zero, 213
                  slt        s10, gp, s7
                  rem        ra, t4, t5
                  mulhu      tp, a7, s11
                  mulhsu     s2, a1, s2
                  and        t4, s4, s2
                  c.nop
                  slt        s7, t4, t5
                  andi       a5, tp, 154
                  rem        zero, s5, a0
                  xori       a3, s4, -71
                  auipc      s4, 185359
                  c.nop
                  sub        a6, s6, s0
                  nop
                  c.xor      a1, a5
                  c.and      a1, a4
                  c.srai     a1, 10
                  sll        t2, s1, a4
                  c.nop
                  sra        t1, s7, gp
                  c.srai     s0, 8
                  c.sub      s0, a0
                  c.and      a5, a2
                  slli       a2, t3, 12
                  or         a2, a3, gp
                  c.andi     s1, -1
                  rem        t5, s10, ra
                  c.lui      t0, 14
                  srl        gp, tp, t5
                  c.srai     a0, 12
                  and        gp, s4, s4
                  lui        t5, 919879
                  c.srli     a2, 13
                  sltiu      t3, s6, 934
                  div        a3, a4, a3
                  nop
                  sra        t0, tp, s10
                  c.and      a2, a4
                  addi       t5, zero, -445
                  mulhsu     a2, s8, ra
                  c.srli     s0, 3
                  c.mv       s4, t1
                  sltiu      s6, s11, 410
                  c.addi16sp sp, -16
                  c.li       t1, 13
                  srl        s0, s1, a3
                  slli       a7, a5, 3
                  xor        a5, a1, s9
                  mul        t5, a4, t2
                  sltu       s2, s1, a4
                  nop
                  c.and      s1, a3
                  c.li       tp, 14
                  sll        s6, t6, s5
                  or         a7, s6, tp
                  or         t5, a2, t3
                  c.srai     a0, 28
                  andi       s7, tp, 700
                  c.or       a5, a3
                  srl        t1, s7, a6
                  nop
                  lui        t2, 543090
                  c.or       a5, a5
                  srai       s8, s11, 25
                  sll        s6, a1, t3
                  c.nop
                  rem        a2, s3, a1
                  sltu       t0, t5, s5
                  c.addi16sp sp, -16
                  divu       a7, sp, s6
                  c.andi     a3, -1
                  ori        s0, ra, -10
                  c.mv       s9, t0
                  c.mv       tp, t4
                  div        sp, s1, gp
                  srai       t2, t2, 15
                  c.and      a5, a0
                  c.add      t2, gp
                  c.xor      s0, a5
                  xor        a5, t4, s9
                  c.mv       sp, s2
                  c.li       t1, -1
                  mul        ra, zero, ra
                  c.sub      a1, s0
                  slt        t6, tp, s3
                  c.andi     a3, -1
                  and        s7, a0, t4
                  sra        s2, s6, a1
                  andi       a6, a4, 157
                  c.xor      a1, a1
                  c.add      s7, a3
                  slti       s1, s10, -60
                  addi       s6, s4, -656
                  mulhsu     a7, s5, s10
                  c.sub      s0, a3
                  c.andi     a1, 30
                  c.addi16sp sp, 320
                  c.sub      a0, a3
                  sub        a3, a3, a6
                  sra        s6, s8, s11
                  c.srai     a5, 30
                  srl        a3, s9, t5
                  slli       t6, a4, 17
                  or         t0, s1, sp
                  slt        s9, t0, s3
                  srl        t4, s8, a0
                  div        t0, s7, s3
                  srli       s8, t2, 22
                  slti       t5, t2, -763
                  and        a1, t4, s3
                  sltiu      s5, a2, 371
                  c.xor      a1, a4
                  addi       a5, a3, 12
                  add        s7, s8, t3
                  nop
                  c.add      s4, a1
                  slli       a5, t3, 27
                  sub        sp, a0, t4
                  mul        t4, t0, s4
                  lui        s10, 432800
                  srai       sp, sp, 25
                  srl        s10, s2, ra
                  c.srli     s0, 24
                  lui        a3, 657369
                  sltiu      s0, s4, -532
                  c.sub      a3, a4
                  c.srai     s1, 29
                  c.and      a3, a5
                  remu       sp, s9, s1
                  sra        t5, tp, a3
                  srl        zero, s1, s6
                  c.sub      a3, s0
                  c.add      a7, a6
                  mul        gp, t1, s8
                  add        t1, t6, s6
                  c.mv       a6, s1
                  c.srli     a2, 1
                  sltiu      s8, s5, 280
                  c.add      t6, s7
                  c.nop
                  mulhu      s8, a4, s6
                  c.srai     s0, 10
                  c.add      s4, s2
                  srl        t1, zero, t2
                  divu       gp, s9, t3
                  c.addi16sp sp, 400
                  div        zero, s4, t1
                  sltiu      t2, a6, -614
                  rem        ra, t5, s5
                  c.srli     a1, 10
                  srl        ra, s4, t4
                  srai       gp, t0, 12
                  mulhsu     a2, a5, t1
                  c.add      s0, a7
                  add        s6, s2, a0
                  c.xor      a2, a2
                  remu       ra, t3, s5
                  nop
                  nop
                  c.sub      s1, s0
                  auipc      tp, 733770
                  mulhsu     s6, s6, t5
                  mulhsu     a5, s1, a3
                  c.addi     t0, 15
                  mulh       tp, ra, s6
                  div        ra, t6, s0
                  c.addi16sp sp, 32
                  div        s0, t2, t1
                  rem        a7, s9, s9
                  sra        a5, a4, a5
                  and        a7, s5, tp
                  c.srai     a3, 19
                  sltu       s7, s8, s8
                  c.lui      a3, 3
                  rem        t1, s9, tp
                  c.andi     s1, 7
                  c.mv       a0, t3
                  add        a1, t5, a2
                  mulhu      t6, s2, s4
                  c.srli     a5, 9
                  sltiu      a5, zero, -295
                  c.lui      a3, 18
                  c.addi     s7, 16
                  lui        zero, 575820
                  slti       s7, a3, 475
                  c.li       s5, 14
                  mul        zero, t5, t3
                  c.mv       ra, t0
                  c.lui      t0, 2
                  div        t0, a6, a3
                  c.srai     a2, 1
                  c.add      t5, a0
                  addi       s10, tp, 573
                  xor        tp, zero, t4
                  c.xor      s1, s0
                  srai       s7, a6, 4
                  auipc      a6, 647622
                  sltiu      zero, s2, -411
                  c.add      t2, sp
                  c.sub      s1, a2
                  divu       a7, s2, s8
                  c.srai     s0, 22
                  rem        a5, s4, sp
                  c.addi     s9, 24
                  sll        s7, t6, s0
                  c.add      s4, a3
                  c.add      s2, s3
                  remu       a2, t5, s10
                  c.nop
                  slti       a6, a0, -727
                  andi       a2, s3, 682
                  c.nop
                  srai       a5, a0, 1
                  andi       t3, t1, -210
                  divu       t2, t2, s7
                  slt        a7, a3, a7
                  xor        s2, ra, a6
                  c.mv       t2, a1
                  c.andi     a3, -1
                  divu       ra, a5, a6
                  c.add      t6, s3
                  srli       s8, a1, 21
                  auipc      t2, 340641
                  rem        s6, t5, a3
                  slli       s0, s3, 18
                  c.mv       t1, t1
                  sra        s6, s9, t0
                  nop
                  c.li       sp, -1
                  div        s5, t0, t1
                  div        t3, a2, s5
                  slli       a0, s6, 23
                  sltiu      t0, zero, -147
                  sltu       tp, s8, s5
                  add        t6, tp, t0
                  srl        t2, a1, t6
                  ori        s7, s6, 893
                  ori        s5, s6, 19
                  c.add      a3, sp
                  c.nop
                  c.mv       ra, s8
                  ori        s10, s11, 15
                  andi       a6, s10, 918
                  auipc      s4, 294303
                  or         ra, a7, zero
                  div        t3, sp, zero
                  slti       a3, gp, 522
                  c.andi     a1, -1
                  auipc      t3, 263438
                  addi       s0, s3, 609
                  c.or       a3, a0
                  divu       s9, a6, a5
                  auipc      s10, 701396
                  addi       s5, t2, -782
                  c.and      a5, s0
                  mulhsu     t0, a7, a6
                  auipc      a2, 36105
                  srli       s1, s8, 6
                  c.xor      a5, a5
                  sra        s9, s2, sp
                  sub        s8, s9, s10
                  mulh       t4, t4, sp
                  divu       s10, s7, s8
                  c.xor      s1, a2
                  c.li       t3, -1
                  remu       s8, t0, s0
                  sltu       s2, a6, s1
                  c.lui      s8, 26
                  addi       a5, t2, -833
                  c.srli     a1, 26
                  srl        s5, s7, a4
                  c.and      a0, a5
                  sub        a6, tp, a0
                  c.andi     a0, -1
                  andi       ra, a3, 267
                  sltu       ra, a1, a7
                  andi       s10, s2, -690
                  c.addi16sp sp, -16
                  c.nop
                  div        ra, s9, t3
                  div        s1, s0, s3
                  slti       tp, s9, 82
                  c.and      a2, a4
                  lui        a2, 25228
                  lui        t1, 56814
                  mulh       tp, t1, s5
                  c.add      s9, a1
                  c.add      a0, t6
                  c.sub      s1, s0
                  ori        a1, sp, 924
                  remu       ra, t6, t0
                  or         s1, a0, a0
                  mulhsu     t6, ra, t4
                  c.srli     a0, 9
                  srli       t1, t0, 6
                  c.andi     a1, -1
                  c.xor      s1, s1
                  rem        a0, t0, t0
                  nop
                  or         sp, t0, s6
                  c.addi     s4, -1
                  c.lui      tp, 28
                  c.addi     t6, 16
                  rem        a5, s6, t4
                  c.andi     a1, -1
                  c.lui      s2, 20
                  srai       zero, s6, 8
                  add        t5, sp, s1
                  remu       t1, s6, t6
                  addi       t5, gp, 56
                  auipc      s0, 791213
                  slt        a5, s1, s11
                  c.srli     a1, 26
                  c.mv       t2, s6
                  sra        zero, a2, sp
                  rem        s6, sp, a5
                  mulhsu     a3, s5, s0
                  slli       s5, ra, 2
                  slti       a5, s0, 883
                  xori       a6, s9, 430
                  slti       s0, a0, 901
                  divu       s9, s4, t3
                  srai       a2, s5, 17
                  c.srli     a2, 8
                  and        a7, a4, t3
                  c.andi     a2, -1
                  c.mv       s9, t0
                  lui        a1, 132854
                  c.and      a1, a1
                  c.srli     a5, 12
                  div        t4, zero, a0
                  add        a7, tp, s2
                  divu       s8, a3, t2
                  sltu       a6, ra, ra
                  c.slli     t2, 12
                  c.lui      s0, 31
                  div        a3, a3, ra
                  ori        t6, tp, -113
                  c.and      a2, a5
                  c.addi16sp sp, -16
                  mulhsu     a0, s10, s9
                  c.andi     a3, 21
                  c.sub      a2, a5
                  c.and      a3, a5
                  mulhu      t2, s6, t0
                  slt        ra, s5, zero
                  c.or       a2, a4
                  c.srai     s1, 12
                  c.andi     a1, -1
                  ori        a3, s7, -941
                  sltu       ra, t0, s10
                  auipc      t4, 297134
                  srli       s0, t2, 16
                  sra        sp, t4, tp
                  c.mv       s7, s11
                  c.add      t3, t3
                  c.nop
                  srai       t6, s1, 9
                  ori        t5, a0, -376
                  mulhsu     a1, s10, a7
                  c.andi     s0, 9
                  nop
                  c.nop
                  c.lui      a7, 20
                  slti       s9, gp, -281
                  ori        t6, s3, -179
                  srl        a3, a5, s10
                  sll        a3, zero, t2
                  c.andi     s1, -1
                  c.addi16sp sp, -16
                  sll        s7, s11, t2
                  c.sub      a5, a4
                  ori        t5, t1, 981
                  sub        t1, s10, t5
                  c.addi16sp sp, 336
                  sltu       sp, s10, t0
                  c.xor      s0, a2
                  slt        s1, a0, t5
                  mulhsu     sp, zero, s8
                  c.li       tp, 28
                  ori        sp, s5, -672
                  mul        t4, s8, a4
                  srl        t5, s8, t5
                  and        s4, s8, a5
                  xor        s10, s5, a0
                  c.add      a5, s9
                  remu       a3, s6, zero
                  srl        zero, s2, a5
                  nop
                  ori        t2, ra, -320
                  c.slli     s6, 17
                  c.and      a5, a4
                  c.and      s0, s1
                  ori        a3, tp, -195
                  mulhu      a3, a5, ra
                  or         a5, s9, s2
                  divu       t6, s8, s2
                  sltu       gp, a7, s6
                  c.or       s0, a4
                  c.srli     a3, 28
                  sltu       a2, ra, s2
                  c.and      a1, s0
                  sltu       gp, s8, s1
                  divu       s7, s9, gp
                  div        a1, s0, a0
                  mulh       t2, a1, t0
                  c.addi     gp, -1
                  srl        s7, a5, s10
                  rem        t4, s10, s8
                  remu       a6, t5, gp
                  divu       s4, s7, s5
                  xor        a6, s10, s6
                  c.slli     t4, 12
                  srli       s7, a4, 6
                  c.slli     a1, 12
                  xori       a2, s2, -906
                  c.sub      s1, s1
                  c.or       a3, a1
                  mul        tp, s5, tp
                  div        gp, s11, t4
                  mul        a3, t1, s4
                  add        s5, s2, t0
                  c.srai     s0, 18
                  or         a3, a2, a2
                  srai       ra, s11, 24
                  mulhsu     a3, a5, a6
                  c.mv       t4, s0
                  sll        t1, s3, s7
                  mulh       a7, sp, s8
                  mulh       s8, t6, a7
                  c.nop
                  divu       s4, t2, t1
                  c.or       a2, a3
                  add        ra, a7, t3
                  srli       s6, s5, 24
                  addi       a7, s10, 468
                  add        t3, sp, s9
                  divu       t0, t2, s7
                  and        s10, s2, t4
                  srli       t1, t0, 7
                  addi       s5, s5, 810
                  divu       t3, s8, t1
                  slt        sp, a2, s9
                  auipc      s7, 1033291
                  mul        s7, s4, s8
                  c.addi16sp sp, 80
                  rem        a5, s4, t4
                  xori       t1, zero, 507
                  ori        t1, s10, -15
                  nop
                  nop
                  sltu       t6, s6, t5
                  ori        s0, s9, 383
                  slti       s8, ra, -209
                  c.and      s0, a3
                  c.sub      a2, a1
                  c.nop
                  or         s5, s0, s8
                  addi       tp, a5, -756
                  c.xor      s0, a2
                  rem        a7, s11, t5
                  mulhu      t3, ra, a1
                  xori       a2, s1, -903
                  nop
                  srl        a3, t4, a7
                  xor        t6, sp, t6
                  divu       s4, s7, s11
                  slt        gp, t0, gp
                  sub        t3, s10, a4
                  sll        a2, t3, a6
                  srl        t2, s5, a1
                  remu       gp, zero, s5
                  nop
                  c.addi     s2, -1
                  mulhsu     s1, s1, s4
                  divu       a6, s8, s7
                  c.and      s0, a5
                  divu       a1, ra, t1
                  c.lui      a7, 20
                  add        s9, a2, t0
                  sltiu      t0, s10, 991
                  c.srai     a5, 3
                  srl        a0, t4, s7
                  mul        a7, s2, s1
                  c.xor      a1, a5
                  add        a2, t4, t5
                  auipc      gp, 727655
                  c.slli     t4, 30
                  sub        ra, s5, a1
                  c.nop
                  sra        s7, a1, s10
                  or         s7, a7, a6
                  xori       gp, t6, 404
                  srai       s4, a1, 23
                  c.lui      s7, 23
                  mulhsu     tp, a4, s5
                  nop
                  and        s6, t4, a6
                  nop
                  mulh       a3, s6, a5
                  c.mv       a5, s2
                  divu       a3, a4, gp
                  slt        a7, s3, t0
                  srli       t3, s2, 10
                  xori       s8, s4, 692
                  c.or       a5, a2
                  c.nop
                  c.srli     a5, 9
                  c.andi     s0, -1
                  xor        s9, s6, t3
                  auipc      s7, 160339
                  srai       t3, s1, 4
                  c.nop
                  xori       s7, t4, -616
                  or         s5, t3, t3
                  c.addi     t5, -1
                  srli       zero, a0, 6
                  nop
                  c.li       a0, -1
                  ori        s0, s6, -785
                  c.mv       s0, a4
                  mulhu      zero, sp, s2
                  slli       t6, s0, 13
                  c.lui      a5, 19
                  c.mv       sp, tp
                  mulhu      a6, s3, t5
                  andi       t2, s10, -812
                  slt        s2, t0, gp
                  divu       gp, s10, s5
                  c.srli     a3, 6
                  srli       t0, s2, 28
                  mulhsu     t4, sp, s6
                  c.srai     a2, 5
                  auipc      t6, 624390
                  mulhsu     t5, s10, gp
                  sra        t0, s10, tp
                  c.and      s0, s0
                  remu       a6, t3, s5
                  srai       t0, a7, 1
                  c.li       a0, -1
                  sub        t3, s10, t0
                  mulh       s6, s5, s0
                  sltiu      t5, s4, -123
                  c.add      s9, s7
                  div        a1, t6, t2
                  c.sub      a1, a0
                  add        a3, s5, s1
                  addi       s8, tp, -874
                  srli       t0, s9, 28
                  c.mv       s10, t1
                  xori       s4, s4, -702
                  rem        t5, t4, s7
                  slli       t5, zero, 29
                  c.srli     s0, 28
                  xor        a1, a0, s9
                  nop
                  nop
                  mulh       sp, s0, s6
                  nop
                  c.li       s7, -1
                  sltiu      t3, sp, -728
                  mulhu      s10, s3, s3
                  srl        t1, t6, s4
                  c.and      a2, a4
                  c.nop
                  xor        gp, s5, s9
                  ori        t3, gp, 459
                  nop
                  c.srli     a2, 21
                  add        a6, a7, s6
                  divu       t5, t5, t0
                  addi       gp, s11, -98
                  slt        s2, t1, s8
                  srl        s0, a4, t3
                  mul        a6, a6, s3
                  c.srli     s1, 10
                  sltiu      ra, s5, 820
                  srl        tp, t0, t6
                  slt        gp, s2, t5
                  xori       a5, sp, -159
                  mulhu      s5, t4, s2
                  and        t2, t1, s11
                  c.or       a1, a1
                  c.nop
                  rem        s7, t5, a3
                  ori        t4, ra, 425
                  c.sub      s0, s0
                  c.add      s7, t4
                  srli       s2, s0, 19
                  srli       s6, a6, 9
                  ori        gp, s10, 476
                  mulh       t0, a1, s1
                  sltu       s2, zero, t1
                  mulh       ra, a2, t1
                  c.andi     a2, 18
                  ori        s10, t4, 50
                  mulh       a1, t5, t6
                  and        a2, t2, a3
                  xori       s0, s5, -45
                  c.and      a3, a4
                  c.andi     a5, -1
                  c.lui      t3, 14
                  mulhu      s6, t2, s0
                  c.srli     a0, 21
                  addi       ra, s10, -711
                  sll        a2, a3, t4
                  auipc      a1, 808091
                  mulh       t2, t6, s1
                  mul        s4, t4, a5
                  mul        tp, s11, t4
                  sll        t2, a6, s11
                  c.nop
                  sltiu      ra, a4, -528
                  c.andi     s1, 13
                  sltu       tp, a0, a0
                  c.xor      s0, a1
                  add        t1, a2, gp
                  addi       t2, a3, -885
                  srli       s1, a5, 15
                  mulhsu     a6, sp, t3
                  div        s1, s0, a1
                  or         s4, t3, a4
                  andi       t5, t0, -441
                  c.add      a1, gp
                  c.nop
                  sra        s0, s9, s5
                  xor        tp, tp, t4
                  c.and      a1, a5
                  addi       s7, t0, -977
                  mulhu      t5, a0, t1
                  or         s4, s4, a2
                  mulhu      s7, t1, a4
                  srl        a1, s6, s1
                  srl        s8, t5, gp
                  c.addi     a1, -1
                  srai       a5, zero, 24
                  srl        s8, a1, s3
                  remu       s7, t3, a3
                  mulhsu     t2, s11, a3
                  andi       t3, a4, -290
                  c.or       a5, s0
                  sltu       s6, s11, t5
                  remu       tp, t4, t1
                  slt        a3, s7, a3
                  ori        a5, s7, -877
                  c.sub      a5, a3
                  c.lui      s4, 18
                  mulh       ra, s2, a3
                  auipc      t6, 99662
                  or         a1, t2, tp
                  remu       s5, s10, s4
                  xori       s8, s0, -607
                  slt        t3, tp, tp
                  mulhsu     a5, t1, s7
                  lui        t1, 748512
                  slti       a0, t6, 973
                  div        a2, s7, t6
                  slti       t2, t1, -227
                  slli       s10, a5, 16
                  xori       s7, t2, -526
                  add        s2, s4, t3
                  c.srai     s0, 13
                  mulhu      t2, t0, a7
                  rem        a6, a3, a6
                  srai       t4, t1, 19
                  c.addi16sp sp, 432
                  nop
                  mulhu      t0, s4, s4
                  sltu       ra, s2, gp
                  nop
                  or         zero, s1, zero
                  c.mv       s10, t4
                  c.srai     a1, 2
                  sub        a6, a2, s5
                  slti       ra, s3, 700
                  auipc      a7, 39274
                  c.add      t1, a0
                  c.mv       s5, s11
                  c.srai     a1, 6
                  srl        s1, s8, a4
                  c.nop
                  xori       s6, t5, -28
                  c.lui      ra, 9
                  or         s2, s8, s2
                  mulhsu     s5, t4, t0
                  divu       tp, sp, a7
                  remu       s7, gp, zero
                  c.nop
                  ori        s8, s3, 628
                  slli       a2, s5, 22
                  mulhsu     t5, t4, s10
                  remu       s1, zero, ra
                  sltiu      s4, s10, -257
                  c.sub      s0, a0
                  divu       s0, t5, t5
                  srli       zero, a0, 11
                  c.addi     t5, -1
                  c.mv       a6, s7
                  rem        s5, t3, s2
                  lui        s0, 849962
                  or         a2, a6, ra
                  sra        sp, a5, a0
                  sra        t3, s6, s3
                  ori        t0, s6, 750
                  auipc      a0, 682124
                  sltu       t6, s2, tp
                  auipc      a7, 531818
                  c.li       s10, 9
                  c.srli     a3, 7
                  c.srai     a2, 29
                  rem        a2, s1, a4
                  c.add      sp, a2
                  mul        a1, t3, s0
                  sll        gp, a6, a0
                  sll        a6, a6, a1
                  c.addi     s5, -1
                  div        s9, zero, t0
                  divu       t5, a3, a5
                  c.nop
                  add        s1, tp, s8
                  add        t1, a3, t3
                  c.lui      a1, 29
                  or         s1, a1, t4
                  auipc      ra, 377755
                  lui        a2, 575133
                  c.srai     s0, 6
                  xori       a3, a7, -766
                  c.nop
                  c.add      gp, s6
                  c.or       a5, s0
                  c.sub      a2, a1
                  mulh       a5, a5, s7
                  mulhu      gp, a7, s9
                  srai       a1, t6, 19
                  and        t6, s10, s5
                  ori        a7, s10, -178
                  c.or       a1, a5
                  addi       s6, a1, -999
                  sltiu      a5, s2, -643
                  xor        a6, s9, t5
                  addi       sp, s2, 995
                  sltu       t2, s8, a4
                  ori        a3, s9, 869
                  lui        zero, 350891
                  lui        t0, 235764
                  c.sub      s1, s0
                  c.andi     a5, 23
                  divu       a0, t6, s3
                  c.sub      s1, s1
                  c.addi16sp sp, 320
                  rem        s9, a2, a7
                  c.srli     a2, 9
                  c.slli     a3, 13
                  lui        s5, 8923
                  mulhu      s4, s8, zero
                  c.slli     gp, 31
                  c.and      a0, a3
                  andi       tp, s11, -95
                  divu       a5, a2, s9
                  mulhsu     a0, t0, a6
                  nop
                  xor        gp, s0, t5
                  c.srli     a3, 12
                  c.srli     a1, 6
                  xor        s5, s0, a2
                  c.li       s2, -1
                  sub        t1, t0, a2
                  mulh       s9, t3, a6
                  mul        t2, s2, tp
                  lui        ra, 498517
                  slt        ra, s8, ra
                  mulh       tp, a2, a5
                  sltiu      t2, gp, -918
                  mul        s4, s9, s2
                  sra        t0, t2, a1
                  srl        s2, t1, s9
                  srai       a3, a5, 20
                  lui        t4, 576406
                  ori        gp, t5, -212
                  sltu       a7, s3, t0
                  xor        t6, t1, s5
                  mulhsu     s2, s1, tp
                  mul        tp, a4, s6
                  mul        gp, s2, t4
                  sub        gp, s3, t6
                  rem        tp, t3, a4
                  c.addi     s0, -1
                  srl        a1, a0, s0
                  c.srai     a0, 11
                  c.addi     a2, -1
                  srai       a1, s8, 1
                  auipc      s4, 253677
                  srli       t2, t6, 14
                  rem        s0, t2, t3
                  xor        s1, a1, a3
                  ori        s5, a1, -195
                  srli       a3, a7, 9
                  slti       s1, t2, 260
                  div        a6, s5, zero
                  srli       t6, sp, 3
                  div        sp, zero, t0
                  c.nop
                  div        a2, t3, s0
                  c.add      a1, a2
                  remu       tp, s8, a1
                  andi       a1, s11, 133
                  and        s2, s6, t5
                  slti       sp, zero, -961
                  rem        t3, t4, t5
                  sltu       t5, a0, t1
                  div        t5, a5, s6
                  c.lui      a0, 17
                  c.xor      a0, a2
                  c.nop
                  slli       s8, s6, 30
                  xori       a2, ra, 32
                  sltiu      zero, t6, -613
                  c.xor      s1, s1
                  c.slli     s10, 9
                  or         t5, a1, t1
                  c.srai     s0, 10
                  c.nop
                  srli       t5, a5, 27
                  srli       gp, s6, 5
                  c.and      s1, a4
                  srai       a7, t0, 21
                  slt        a1, t3, s4
                  sll        s9, a2, t4
                  sub        t4, a7, t3
                  c.srai     a1, 2
                  sll        s6, sp, s9
                  add        t4, gp, a4
                  or         t3, s5, s0
                  mulhsu     t0, s1, a0
                  c.li       s1, -1
                  andi       zero, a2, -84
                  remu       s10, s5, s5
                  srai       tp, sp, 31
                  c.addi16sp sp, 480
                  remu       a3, t2, s8
                  c.or       a3, s0
                  sltiu      zero, a0, 143
                  remu       t3, sp, a4
                  c.add      a1, s5
                  mulhu      tp, a1, s9
                  xori       t6, s7, 338
                  sra        a0, a5, t5
                  srl        s7, ra, t4
                  c.mv       t4, sp
                  c.lui      t2, 1
                  slt        t4, t6, gp
                  andi       a2, a2, 610
                  sll        t3, t2, s9
                  c.srai     s1, 20
                  divu       s7, a5, s4
                  c.and      s0, s0
                  sub        t0, t6, s5
                  sltiu      zero, a4, 302
                  xor        s5, t5, a4
                  slti       t3, t2, 689
                  addi       t2, t6, -828
                  c.and      a1, a1
                  srai       t5, t1, 18
                  ori        a7, s1, -739
                  c.or       a5, s1
                  andi       a6, a3, -909
                  sltu       s2, t3, s8
                  slli       t4, t1, 5
                  add        s7, t6, a1
                  c.nop
                  sll        s7, s10, a6
                  c.srai     s0, 29
                  c.mv       tp, t2
                  srli       t6, s11, 19
                  sltu       s5, a6, tp
                  c.xor      s0, a3
                  xori       s5, a2, -637
                  xor        a3, t1, a0
                  c.and      a5, a4
                  add        s0, t1, s0
                  slt        s0, s5, s4
                  xor        a0, a7, s11
                  sll        s1, s4, a4
                  xor        s8, s8, s9
                  add        a2, s10, s4
                  srl        t5, a6, a5
                  c.mv       ra, s2
                  c.srli     a3, 28
                  sub        a2, t4, s9
                  srli       s7, s11, 20
                  sra        t5, a6, s11
                  addi       t5, sp, 258
                  mulhsu     t0, a3, zero
                  xori       s5, t3, -265
                  c.addi16sp sp, -16
                  c.slli     ra, 20
                  add        a7, s0, t1
                  sltiu      a6, s6, 1017
                  sub        t2, s3, a5
                  addi       tp, a7, 351
                  c.xor      a1, s1
                  xor        a6, zero, s10
                  c.sub      a1, a2
                  xori       ra, a1, 71
                  c.slli     t3, 27
                  sltiu      s6, s1, 789
                  remu       a1, ra, s11
                  andi       s9, zero, -361
                  c.mv       t6, tp
                  c.srai     a2, 22
                  add        s4, t4, a4
                  add        t2, a7, t1
                  slli       s7, t5, 15
                  nop
                  or         a7, s11, s1
                  sll        gp, ra, sp
                  srl        sp, t3, s6
                  c.lui      s0, 19
                  c.sub      a1, a1
                  sub        s9, a3, t0
                  andi       a1, s1, 599
                  div        s5, t0, t6
                  c.add      s1, sp
                  or         tp, ra, a6
                  c.li       s0, -1
                  div        t1, a5, gp
                  andi       a2, a4, 882
                  ori        s7, s1, 680
                  sra        a0, a2, t4
                  srl        ra, a5, gp
                  c.li       s10, 18
                  div        a0, t4, s1
                  c.srai     s0, 29
                  remu       t6, a6, t1
                  xor        t3, a1, a3
                  andi       t3, a1, -51
                  c.xor      a1, a3
                  xori       a6, sp, 461
                  sub        t0, s3, a3
                  div        t5, sp, a1
                  remu       sp, t0, a0
                  or         t0, s6, t6
                  mulh       t6, s0, t1
                  div        zero, t5, t2
                  c.sub      s0, a4
                  divu       s7, t3, a1
                  sltu       tp, a2, a6
                  divu       s2, s5, a7
                  mulh       a0, t4, a5
                  c.addi16sp sp, -16
                  c.xor      a3, a5
                  c.mv       sp, s7
                  andi       s2, s7, 341
                  sltiu      t6, a1, -444
                  c.addi16sp sp, -16
                  c.addi     s7, 31
                  remu       s1, t2, a3
                  xor        a6, t6, s10
                  divu       t2, s7, ra
                  slt        s9, s5, s7
                  sltu       s5, ra, s0
                  c.or       a2, a3
                  c.nop
                  slti       tp, s1, 849
                  c.li       a0, 24
                  andi       a6, a2, 548
                  c.nop
                  c.srai     a0, 14
                  slti       t5, a0, -514
                  lui        a0, 852004
                  mulhu      gp, s10, gp
                  c.addi     t3, -1
                  add        s2, zero, a0
                  c.srli     a1, 13
                  srl        t5, a0, s8
                  c.andi     s1, -1
                  c.andi     a5, 10
                  lui        t6, 50945
                  div        a1, s9, t5
                  andi       a0, s11, 811
                  remu       s1, t3, s1
                  xor        s6, a7, t0
                  remu       s5, zero, s5
                  ori        t2, s10, -430
                  c.addi     tp, -1
                  ori        s9, t0, 37
                  sltiu      s4, t6, -727
                  sltu       a5, s2, t6
                  sll        t1, t0, tp
                  or         t5, s11, s6
                  sltu       a0, a4, a3
                  andi       a6, s4, -998
                  c.addi     s9, -1
                  c.srli     s1, 23
                  sra        t4, s7, sp
                  or         a1, s4, s1
                  slli       t5, t5, 24
                  remu       a6, s1, t5
                  sltu       gp, a7, tp
                  srai       gp, t5, 20
                  divu       gp, t1, t2
                  div        s0, a7, t4
                  mulhsu     t4, ra, s9
                  nop
                  slli       s4, s11, 21
                  mulh       a5, tp, s0
                  lui        s5, 110373
                  or         s8, ra, s0
                  lui        s2, 866069
                  mulhsu     s1, sp, a3
                  c.add      t6, t2
                  xori       a2, gp, 374
                  srli       a2, t1, 28
                  xor        s9, a6, a2
                  c.or       s1, s1
                  sll        a6, a6, sp
                  and        t0, s6, tp
                  c.nop
                  sltiu      a5, t3, 725
                  mul        s9, a6, s6
                  c.mv       s9, s7
                  c.add      a0, a3
                  ori        t4, sp, -138
                  c.sub      a0, a5
                  div        s7, s4, a1
                  c.lui      a3, 3
                  or         t3, s6, a3
                  srli       zero, s3, 6
                  c.nop
                  c.addi     s5, -1
                  srl        s7, a5, s2
                  c.slli     a0, 28
                  c.add      t2, t2
                  c.mv       t2, s9
                  c.add      t5, t4
                  c.and      a5, s0
                  c.nop
                  div        s5, s2, a2
                  divu       sp, gp, a4
                  c.or       a3, a1
                  or         a5, a0, a7
                  sll        a2, s1, a1
                  add        t0, tp, t2
                  add        a6, a1, a3
                  xor        t6, a7, s10
                  xor        s0, a1, sp
                  c.lui      t3, 5
                  mul        gp, a3, a7
                  sub        sp, s11, s6
                  c.andi     s1, -1
                  slt        s1, s2, s0
                  mulh       a5, t3, s6
                  xori       t3, a6, 584
                  c.srli     s1, 11
                  xor        s0, ra, tp
                  addi       s10, t5, -993
                  xori       zero, ra, -464
                  c.addi16sp sp, 240
                  andi       s10, a5, 55
                  c.add      a6, s9
                  rem        s5, zero, s9
                  and        a7, s2, tp
                  c.sub      a0, a1
                  andi       gp, a6, -704
                  c.xor      a3, a1
                  rem        s6, s9, tp
                  auipc      s8, 584245
                  c.mv       a3, a4
                  c.add      gp, s9
                  nop
                  divu       a7, a5, a5
                  sltu       t4, s3, t4
                  sltiu      a7, gp, 888
                  and        s0, s10, s1
                  xori       t4, s1, -766
                  c.andi     a2, 11
                  c.add      t5, s8
                  nop
                  c.mv       tp, a3
                  slt        a5, s3, tp
                  mulh       a5, a2, t3
                  rem        t1, t6, t6
                  ori        zero, t4, -56
                  ori        t6, s3, -589
                  xor        s2, zero, t3
                  remu       s9, t2, s0
                  andi       t6, a4, 324
                  c.add      gp, s5
                  mulhsu     a3, s8, a2
                  c.or       a2, a4
                  mulhu      tp, gp, t0
                  sltu       ra, a1, s4
                  c.sub      s0, a1
                  c.slli     t4, 26
                  or         tp, t2, s7
                  slti       a7, t0, -826
                  sra        s6, sp, s4
                  mulhsu     a7, a3, s7
                  c.or       s1, s1
                  ori        s6, t6, 977
                  sltiu      a1, t2, -228
                  or         s10, a0, t6
                  add        t4, a4, tp
                  add        t5, t4, s4
                  c.or       s0, a4
                  sub        a7, s8, s9
                  sll        a5, t5, a3
                  srli       a0, s7, 29
                  srai       t3, s2, 0
                  c.lui      t2, 22
                  remu       ra, s5, t4
                  srl        a2, a5, s10
                  c.mv       s4, gp
                  remu       t2, s11, a4
                  mulhu      t6, t1, s7
                  div        sp, s0, t4
                  sub        a3, t0, s0
                  c.slli     a1, 25
                  c.srli     a5, 17
                  sub        s2, s9, ra
                  c.add      gp, a1
                  srli       t0, a7, 5
                  or         a3, sp, a0
                  c.li       s5, 10
                  c.addi16sp sp, 352
                  c.srai     a2, 12
                  or         s7, t5, t5
                  andi       t0, a1, -550
                  sll        t0, t5, a3
                  or         s4, gp, s10
                  c.nop
                  sub        s8, s3, s11
                  c.mv       a1, gp
                  or         t4, t3, t4
                  c.srai     a0, 12
                  mulhsu     a5, gp, t3
                  sub        s0, s7, s9
                  c.lui      ra, 11
                  nop
                  c.xor      a0, a0
                  mul        t4, t2, s11
                  c.addi     t0, -1
                  div        t4, s0, s5
                  c.lui      a2, 30
                  xor        ra, s1, a4
                  c.slli     s5, 1
                  c.srli     a5, 18
                  addi       a5, a5, 935
                  sltu       s1, s2, zero
                  srl        ra, s0, t0
                  xori       a0, s9, 626
                  srl        t4, s6, s7
                  srl        s7, s11, s10
                  c.addi16sp sp, -16
                  srli       sp, s1, 20
                  sltiu      s7, s8, 808
                  c.lui      a5, 4
                  c.add      gp, s8
                  addi       t2, t3, -74
                  sltiu      s4, s6, 769
                  or         t4, s9, s1
                  c.mv       s0, t4
                  c.nop
                  c.addi16sp sp, 352
                  xor        tp, a3, t3
                  ori        t6, s10, -646
                  c.srli     a0, 24
                  xori       sp, tp, -425
                  slt        s5, t6, ra
                  c.or       a3, a1
                  mulhsu     s9, t2, a7
                  mulhu      t1, t5, s6
                  srl        t3, t4, s9
                  c.and      a0, a2
                  slli       t1, s8, 25
                  divu       a5, a3, zero
                  c.srli     a3, 3
                  addi       t6, t6, -999
                  lui        t3, 572416
                  sub        a2, zero, s7
                  sll        s4, s8, a0
                  c.slli     t0, 22
                  add        s6, s2, a7
                  sub        t0, s0, a3
                  and        gp, a6, a1
                  lui        s0, 543969
                  slli       sp, s6, 29
                  rem        t3, t0, s1
                  sra        t2, t3, a1
                  nop
                  sltu       s6, a7, sp
                  srai       tp, s2, 29
                  c.nop
                  c.add      t3, a6
                  c.addi     s1, -1
                  div        s4, s11, t3
                  ori        a7, a0, -744
                  c.sub      s1, a5
                  mulhu      s0, s1, s9
                  rem        s1, gp, a3
                  srai       ra, a4, 3
                  srai       t6, a4, 10
                  c.addi     s1, 31
                  sra        s8, s4, a3
                  or         a2, a6, tp
                  c.li       s5, -1
                  mulhsu     s8, s2, s1
                  c.andi     a1, -1
                  slt        s1, a3, a1
                  or         t3, s3, s10
                  mul        gp, s2, t6
                  c.addi     s7, 27
                  srai       t6, s0, 14
                  sltiu      s6, t1, 401
                  and        a2, a7, a3
                  srl        a6, s11, s0
                  add        ra, s5, t4
                  c.mv       ra, a2
                  mulhu      a3, s9, a3
                  srl        a5, a6, t3
                  remu       a7, a6, s8
                  c.add      s10, s3
                  c.sub      s0, a1
                  c.xor      a1, a0
                  and        t0, s6, t2
                  nop
                  add        tp, t6, tp
                  sub        s4, s7, s4
                  srli       t5, a3, 31
                  xor        t0, s6, s8
                  sll        a7, s2, t2
                  c.mv       s9, a5
                  c.add      s8, s0
                  c.or       s0, s1
                  srli       s7, s10, 29
                  c.add      s8, t2
                  sltu       ra, sp, a0
                  add        gp, t5, a6
                  c.addi16sp sp, 48
                  nop
                  sub        ra, s3, t4
                  c.xor      s1, s1
                  c.li       t4, 11
                  sll        s9, a6, s4
                  slt        a2, t6, s3
                  or         s2, gp, ra
                  xor        s8, s1, s5
                  c.li       t2, -1
                  sltu       t1, t3, t6
                  c.addi     gp, -1
                  sltu       t5, zero, tp
                  sll        a2, t4, s5
                  c.xor      a3, a2
                  srli       a1, a6, 20
                  c.srli     a1, 25
                  mulhsu     t1, sp, a7
                  divu       s9, zero, t2
                  rem        s4, sp, t6
                  srli       s2, s10, 2
                  c.lui      s9, 2
                  and        a3, t4, a2
                  ori        s4, s5, -980
                  sra        s10, a6, a0
                  sltiu      a2, s1, -456
                  mulhu      t1, t5, a1
                  lui        zero, 980869
                  remu       s2, t3, t2
                  xori       gp, s1, -737
                  srl        a1, t3, s1
                  ori        a3, t0, -983
                  div        t6, t0, a2
                  sll        s0, s1, sp
                  nop
                  and        s7, ra, t4
                  or         zero, s6, s3
                  ori        s8, s4, -161
                  sltu       t1, s6, t6
                  nop
                  c.nop
                  sll        a2, zero, t6
                  srli       a0, s11, 27
                  sra        a7, s8, a1
                  xori       a5, s8, 259
                  c.srli     s1, 23
                  mulhu      a7, s9, s10
                  mulhsu     t3, t5, a2
                  addi       s5, s8, 691
                  c.xor      a5, a0
                  div        a7, t3, gp
                  c.lui      a0, 26
                  slti       t6, tp, 390
                  c.addi     t2, -1
                  c.addi16sp sp, 48
                  div        sp, s4, a0
                  c.slli     t2, 4
                  c.srli     a5, 21
                  c.and      a5, s1
                  c.srli     a5, 26
                  sltiu      zero, a4, -654
                  c.and      s1, a3
                  c.lui      a5, 26
                  c.addi     tp, 16
                  div        a1, s9, a3
                  xor        sp, t1, a0
                  c.addi     s4, 14
                  nop
                  c.li       t4, -1
                  auipc      s4, 977260
                  c.srli     a3, 7
                  c.and      a1, a4
                  c.srai     a0, 23
                  c.addi     gp, 17
                  div        t1, s6, t5
                  c.or       a5, s1
                  c.sub      s1, s1
                  slti       sp, s2, -445
                  c.addi     t0, -1
                  rem        tp, s1, s5
                  auipc      a7, 885492
                  c.or       a1, a1
                  sll        tp, s4, t4
                  sltiu      s8, a4, -480
                  add        a2, a3, s3
                  slti       a7, s7, -727
                  xor        s1, s6, gp
                  c.mv       s5, ra
                  slli       a0, s11, 22
                  c.mv       t0, t4
                  c.or       a1, a3
                  xor        t3, t2, a5
                  nop
                  lui        ra, 52242
                  c.or       a2, a3
                  srli       a0, s10, 13
                  c.mv       s9, t5
                  nop
                  c.mv       a5, a2
                  c.slli     t5, 1
                  c.or       s0, a3
                  c.nop
                  slti       a1, a6, -263
                  c.andi     a3, -1
                  slt        zero, t0, a6
                  remu       s4, a4, a1
                  srli       s1, s1, 1
                  sll        a5, t6, tp
                  mulhsu     s0, t4, s3
                  c.srai     a2, 16
                  c.or       a0, s0
                  slt        t4, tp, s11
                  sra        t4, s4, a6
                  sltu       s2, t3, s6
                  sll        s4, s10, a0
                  add        s0, s11, t3
                  slli       gp, t6, 4
                  or         s9, sp, s8
                  sltiu      t6, t3, 802
                  c.addi     s10, 15
                  add        t5, gp, s0
                  div        s8, tp, a2
                  and        a0, t2, t2
                  sltu       ra, s10, s11
                  addi       t4, sp, 646
                  srli       s2, s6, 1
                  sll        a0, s1, a0
                  add        a0, a6, t1
                  sltiu      a7, s2, 920
                  c.srli     a2, 20
                  or         a2, t1, t6
                  sra        tp, s3, t2
                  andi       s0, s5, -538
                  divu       tp, t4, a1
                  sub        s4, s8, s1
                  mulhu      ra, a6, s9
                  c.add      a2, tp
                  nop
                  c.mv       a5, t6
                  c.addi     s10, -1
                  divu       s5, s5, s6
                  mul        t5, t1, a5
                  c.sub      a5, a0
                  c.srli     a0, 10
                  sltiu      s8, sp, -257
                  slt        a6, t6, gp
                  addi       a7, t6, 197
                  rem        a2, s9, tp
                  divu       sp, tp, s6
                  auipc      s7, 31917
                  slli       a6, t1, 12
                  mulh       a6, zero, t4
                  c.addi16sp sp, 240
                  c.xor      s0, a2
                  srl        sp, a0, t5
                  srl        t3, a5, s7
                  c.srai     s1, 5
                  slti       t2, s7, 779
                  xor        s4, a5, t6
                  mulhu      t2, ra, s0
                  srai       s1, a2, 19
                  mulh       t1, s6, a4
                  lui        t2, 116795
                  addi       s1, t5, -826
                  addi       s1, a6, -394
                  rem        s6, t0, ra
                  c.addi16sp sp, 368
                  c.addi     a2, -1
                  slti       t4, a0, 327
                  lui        t4, 402380
                  xori       s9, ra, -147
                  and        s1, s7, s7
                  nop
                  c.srai     a1, 22
                  srl        s4, s9, s10
                  slt        gp, s5, s11
                  slt        s8, t6, t1
                  mul        a0, t3, t1
                  xor        a2, gp, a6
                  c.srai     a0, 25
                  add        a1, a1, a4
                  nop
                  c.and      a0, a1
                  sub        a5, a3, t3
                  c.srai     s0, 8
                  c.andi     a2, 6
                  c.li       t6, 3
                  c.nop
                  c.slli     a6, 6
                  sub        s7, s1, a1
                  c.or       a1, a2
                  c.srli     a2, 31
                  slt        t3, a2, a4
                  divu       t0, t2, zero
                  c.add      a6, s10
                  srl        a5, a2, t0
                  div        a1, s9, t3
                  c.xor      s0, a1
                  c.and      a5, a3
                  lui        t2, 231484
                  mulh       t1, s0, t5
                  mulhu      ra, s1, t2
                  srl        a7, t0, a5
                  ori        t6, sp, 552
                  c.xor      s1, a1
                  mulh       s2, sp, sp
                  mulhu      a2, t6, s6
                  c.sub      s1, s1
                  mulhu      a7, sp, gp
                  c.add      t6, a3
                  slti       s2, a5, 615
                  c.and      s1, a4
                  c.srai     a1, 29
                  c.srli     s1, 25
                  c.or       a5, a2
                  sra        a6, a3, a0
                  sll        a3, tp, ra
                  ori        a0, s0, -914
                  slti       a3, t6, 5
                  c.xor      a0, a0
                  c.andi     a0, -1
                  mul        t5, a5, s10
                  c.mv       gp, t6
                  sra        a1, tp, a6
                  c.andi     a5, -1
                  srl        a7, a5, t1
                  srli       a2, gp, 30
                  slti       t5, zero, -274
                  srai       tp, a1, 26
                  sll        s10, t2, s1
                  rem        s10, t3, tp
                  c.mv       t6, a0
                  c.li       t0, -1
                  mulhsu     t2, s2, s4
                  mulhu      s10, s7, s7
                  and        t6, a5, a2
                  and        a0, sp, s0
                  c.xor      a5, a3
                  srli       t0, t0, 10
                  srl        a2, a1, t3
                  slli       t2, a5, 7
                  c.nop
                  or         a7, tp, t6
                  c.add      t2, a2
                  addi       a1, s8, -442
                  and        s9, s10, s1
                  div        a5, t2, s4
                  srl        s2, sp, a4
                  c.lui      ra, 1
                  div        zero, a3, s7
                  c.andi     a3, 7
                  div        a2, zero, a7
                  c.li       t2, -1
                  remu       a6, t3, t5
                  c.mv       t4, s5
                  sltu       t1, a0, s10
                  slli       t1, a0, 14
                  auipc      a6, 639082
                  and        s7, t5, s11
                  xori       a7, tp, 140
                  c.mv       gp, tp
                  andi       a5, s3, -1003
                  sltu       t6, t0, t6
                  c.andi     a3, 1
                  divu       a6, a7, a4
                  c.andi     a2, 8
                  c.srli     a1, 26
                  srl        ra, a1, a1
                  c.sub      s1, s0
                  c.nop
                  c.lui      t4, 25
                  andi       zero, t1, 161
                  sll        a5, a4, s5
                  c.lui      t6, 17
                  mulh       gp, a6, t2
                  andi       s1, t0, -600
                  srai       s10, t0, 26
                  srai       gp, s6, 15
                  c.addi16sp sp, -16
                  c.addi     a3, 1
                  mul        a0, t3, a1
                  c.andi     s0, -1
                  add        t6, s7, s11
                  c.addi16sp sp, -16
                  remu       zero, s2, a0
                  c.xor      s0, s1
                  auipc      a0, 8289
                  c.and      a5, a2
                  c.xor      s1, a2
                  rem        a6, s9, sp
                  ori        zero, a3, 121
                  xor        t6, t2, s2
                  add        s4, t6, s9
                  c.sub      a0, s1
                  c.lui      s8, 20
                  sll        t1, a0, s5
                  auipc      s9, 827456
                  lui        s1, 112336
                  srl        zero, t6, s2
                  slti       sp, s2, 707
                  c.xor      a3, a0
                  c.or       a1, a5
                  c.addi     a3, 28
                  sra        a6, s10, a5
                  slt        s9, s11, s0
                  mul        s5, s4, a3
                  c.srai     a1, 4
                  c.addi     t2, -1
                  xor        sp, gp, a2
                  c.mv       s2, t5
                  addi       s5, s0, 767
                  srl        tp, s5, s3
                  c.addi     s10, 1
                  auipc      s5, 322177
                  and        a0, zero, sp
                  andi       s4, t1, 264
                  sll        s2, s0, t1
                  slti       t3, s7, -790
                  or         s8, s2, t3
                  div        a3, s4, t0
                  xori       t4, a2, 721
                  addi       t0, s4, -990
                  addi       t3, ra, -202
                  c.or       a3, a3
                  sra        s1, s10, s11
                  andi       a2, s5, -919
                  add        a5, a5, s4
                  c.slli     t1, 28
                  sub        a0, a0, s9
                  sll        zero, t4, a3
                  andi       a6, s8, 966
                  sltu       s9, s0, t0
                  add        gp, s3, t3
                  mulh       a2, a0, s10
                  c.andi     s1, 2
                  sltiu      sp, t3, -581
                  divu       t3, tp, t6
                  sll        a7, a7, s8
                  c.andi     s0, -1
                  sub        s1, a4, zero
                  c.srai     a1, 16
                  c.addi     a0, 1
                  and        a5, s9, s8
                  or         s2, s11, s7
                  c.mv       s6, t6
                  c.nop
                  sltiu      s4, t3, -531
                  c.addi     gp, -1
                  mul        a1, s3, s8
                  sra        s4, s0, gp
                  sltu       s0, gp, a5
                  slt        a3, s6, s8
                  sll        s8, t5, a6
                  add        gp, t0, a7
                  sub        s7, s2, s3
                  c.addi16sp sp, 480
                  c.srai     a2, 8
                  mul        s8, zero, sp
                  mulhsu     t2, gp, s11
                  mulh       s8, s3, s6
                  c.lui      t1, 15
                  srai       a3, s1, 2
                  srai       s1, a7, 11
                  slli       t3, s2, 16
                  c.addi     a1, 19
                  slti       sp, a4, 98
                  addi       s0, tp, -116
                  nop
                  srl        t2, t0, ra
                  xor        gp, a6, s9
                  c.sub      a2, a5
                  lui        gp, 410669
                  xor        a7, a4, sp
                  c.and      a2, a4
                  slt        t4, zero, a5
                  div        t2, t5, sp
                  and        zero, s10, s1
                  c.or       a2, a2
                  srai       zero, s0, 1
                  lui        t3, 61594
                  slti       a0, s6, -107
                  xor        gp, t2, s1
                  sltu       a0, s11, zero
                  srl        t4, s0, a5
                  sltu       t3, zero, s7
                  mul        s0, s6, t2
                  mulhu      tp, t0, a6
                  c.and      a1, a0
                  c.slli     t2, 5
                  c.li       a2, -1
                  addi       s5, a7, 287
                  rem        s4, t1, gp
                  slt        t4, gp, t0
                  c.sub      s1, s1
                  c.nop
                  sra        s8, s5, s10
                  auipc      t6, 698114
                  mul        t4, zero, s3
                  nop
                  xor        zero, a7, s3
                  slti       a7, s0, 728
                  c.add      gp, s6
                  sltu       t3, sp, s2
                  sltu       t0, tp, s2
                  srli       s0, a4, 24
                  sll        s0, tp, t6
                  c.and      a2, a5
                  andi       ra, t3, -434
                  c.srli     a5, 5
                  sub        s5, t3, a3
                  sltiu      a1, tp, 585
                  slli       gp, s6, 3
                  sub        zero, a6, a6
                  remu       ra, t4, a2
                  rem        a6, a3, s4
                  c.slli     t0, 1
                  lui        t2, 749422
                  c.addi     s4, -1
                  divu       a1, t3, t6
                  c.addi     s0, -1
                  c.xor      a0, a5
                  sub        t3, gp, s4
                  c.or       s1, a2
                  mulhu      s8, zero, ra
                  c.xor      s1, a0
                  and        a2, a0, a2
                  andi       s0, sp, 121
                  c.and      a5, a1
                  mulhu      a5, s5, gp
                  srl        s5, s7, s0
                  sra        s4, t2, t4
                  sra        s9, a5, gp
                  mulhu      a7, zero, a0
                  andi       s8, a5, 980
                  add        t1, s0, t3
                  lui        s8, 670274
                  slt        s2, t2, s10
                  mul        t0, s6, t1
                  auipc      zero, 309409
                  c.srli     a0, 23
                  c.and      a3, a3
                  sltiu      s1, a0, 519
                  slli       zero, t6, 12
                  xor        gp, zero, a1
                  xori       s7, sp, 80
                  add        s9, t6, ra
                  auipc      s5, 303438
                  c.xor      a2, a5
                  c.srli     a2, 18
                  srl        s1, s0, s10
                  mulh       a1, t1, s7
                  c.add      a0, a5
                  srai       gp, tp, 2
                  sll        a3, ra, s4
                  ori        s1, t4, -904
                  c.srai     a3, 24
                  auipc      a3, 482700
                  c.mv       a7, sp
                  sltiu      a3, t6, 337
                  c.srli     a0, 6
                  sra        a5, s3, s1
                  sltiu      s9, s4, 101
                  c.addi16sp sp, -16
                  c.slli     a1, 20
                  add        a1, t3, s9
                  c.srli     a3, 8
                  ori        zero, s0, 974
                  rem        a6, gp, s2
                  ori        zero, a7, 228
                  add        a6, sp, sp
                  divu       a3, s11, a4
                  c.sub      s1, a1
                  auipc      a5, 252126
                  auipc      t6, 309480
                  c.or       a0, a3
                  sra        t5, t0, gp
                  sltu       a2, t1, s3
                  addi       s6, t2, 287
                  div        s7, tp, t1
                  nop
                  c.nop
                  andi       s6, s11, 98
                  sll        gp, s6, t2
                  rem        a3, t6, a5
                  xor        a7, t6, s1
                  c.and      a5, a1
                  ori        t4, a6, -42
                  c.mv       s4, t1
                  c.li       sp, 23
                  sltu       t1, a2, t3
                  c.srai     s1, 28
                  srl        a7, s0, tp
                  c.li       t6, 21
                  slti       s4, t2, 745
                  c.or       a3, a0
                  andi       gp, gp, -189
                  srai       a7, sp, 3
                  c.mv       t6, s5
                  lui        a7, 159284
                  slli       a2, tp, 31
                  sll        t6, s3, sp
                  c.srli     a0, 30
                  c.nop
                  sra        s10, a5, s8
                  c.add      t6, ra
                  sll        ra, s10, t2
                  srai       s10, s2, 12
                  c.and      a3, a3
                  or         t0, t3, gp
                  c.addi16sp sp, 128
                  c.slli     t6, 16
                  c.li       t6, 11
                  div        a1, t2, s3
                  sra        t4, s8, s8
                  c.xor      a3, s1
                  c.sub      s0, s1
                  c.or       s1, a5
                  mulhu      t3, a7, a3
                  c.or       a1, a1
                  c.lui      s5, 25
                  srai       a0, a7, 23
                  c.mv       a0, s9
                  lui        s6, 249469
                  add        t2, s9, s5
                  c.li       s7, 2
                  divu       t1, t1, s10
                  slli       s7, s4, 26
                  c.li       a5, 30
                  c.srli     a2, 24
                  mulh       t6, s10, t4
                  nop
                  c.lui      a7, 18
                  c.sub      a0, a5
                  srl        t1, s3, t3
                  mulhu      a6, a0, s5
                  c.slli     gp, 8
                  mulhsu     s1, zero, t4
                  c.andi     a3, -1
                  c.xor      a5, a3
                  c.sub      a5, s0
                  xor        ra, a4, s3
                  c.and      s0, a1
                  c.mv       ra, a4
                  srai       s4, a1, 26
                  c.and      a0, a0
                  mulhsu     s8, t1, s3
                  c.lui      ra, 19
                  mulhsu     s8, s7, zero
                  add        a2, s11, s10
                  or         a1, a0, t5
                  c.addi     s6, -1
                  sltu       s8, s6, s0
                  andi       s8, a4, 750
                  addi       s6, a6, 657
                  c.add      t4, s4
                  sltiu      t4, s8, 323
                  c.xor      s0, a3
                  c.slli     s8, 3
                  rem        a1, s11, s7
                  nop
                  srl        t5, a3, a6
                  divu       t0, a1, s9
                  rem        s4, sp, a2
                  c.nop
                  lui        a1, 425242
                  srl        zero, s10, a1
                  c.add      s6, s2
                  c.nop
                  srli       a0, t4, 7
                  c.andi     s0, 4
                  remu       t6, ra, s1
                  c.nop
                  c.li       a6, 30
                  c.sub      a1, a4
                  c.nop
                  sltiu      a1, s11, 962
                  sra        t2, t2, zero
                  mul        s8, tp, s4
                  c.mv       s10, t6
                  c.srai     s0, 30
                  remu       s7, s9, a4
                  mulhsu     s6, t3, a7
                  c.lui      a1, 2
                  c.sub      a1, a1
                  sub        a7, s3, sp
                  xori       t5, a6, -720
                  mul        s9, t4, s1
                  remu       s2, a6, t6
                  c.lui      s5, 1
                  c.lui      a2, 15
                  srl        t5, ra, ra
                  xori       t0, s1, 1010
                  c.addi16sp sp, -16
                  sub        a3, t2, t5
                  sltiu      s8, zero, 117
                  c.sub      a3, s0
                  divu       t4, s5, t1
                  c.andi     a3, -1
                  srl        s10, s0, s9
                  xor        a2, a7, s5
                  xori       tp, a6, -188
                  mul        s6, a4, t2
                  c.add      s1, s11
                  divu       t5, tp, gp
                  c.sub      s0, a5
                  c.slli     a5, 4
                  xor        t6, t6, s0
                  div        t6, s7, s0
                  xor        a3, a7, s10
                  slt        t1, s5, s0
                  slli       s0, t4, 8
                  xor        t5, sp, zero
                  div        s9, s3, a3
                  sra        a6, zero, t0
                  c.sub      a1, s0
                  divu       s10, t6, zero
                  c.addi16sp sp, 160
                  mulhu      a1, s11, ra
                  auipc      t3, 137099
                  sltu       gp, a0, s10
                  andi       zero, a7, 863
                  srai       s10, gp, 22
                  srai       s9, ra, 29
                  c.li       s9, -1
                  slt        sp, zero, t3
                  divu       s5, s0, sp
                  slt        zero, t5, t2
                  xor        s2, s2, ra
                  rem        t2, t5, s7
                  sub        t5, s1, s3
                  divu       a2, a3, t3
                  slti       a6, a2, -618
                  sll        a2, ra, t3
                  and        s8, t1, s10
                  srai       a2, a3, 23
                  or         s0, a0, s10
                  srai       a0, a1, 22
                  c.slli     a0, 23
                  mulhu      a0, s6, s3
                  c.lui      s10, 9
                  add        a0, t0, ra
                  sub        t0, a2, s3
                  mulh       a0, t5, s6
                  c.or       s1, s0
                  c.and      s1, s0
                  div        s2, t6, tp
                  c.lui      a3, 13
                  xor        a6, s2, zero
                  rem        a0, t1, s0
                  c.and      s0, a0
                  c.li       a5, -1
                  add        t1, t1, a2
                  c.addi     t6, 10
                  remu       a7, tp, s4
                  c.nop
                  xori       t2, s6, -469
                  xori       gp, t6, -789
                  c.or       a3, a1
                  srli       a7, sp, 21
                  slt        a6, s5, s9
                  mul        t2, t4, s0
                  sltu       sp, s11, t5
                  mulhu      t1, s2, a2
                  div        sp, t6, a2
                  lui        t3, 63986
                  c.slli     tp, 4
                  c.sub      a2, a2
                  div        t5, a2, a4
                  c.or       s0, s0
                  slli       t3, a4, 21
                  c.add      ra, t0
                  rem        a7, t5, zero
                  c.srli     a5, 9
                  div        a2, s5, s8
                  ori        t5, t1, 467
                  slti       a0, s4, 223
                  mulhsu     t1, tp, s10
                  or         gp, t5, t5
                  sub        t4, s8, s3
                  sra        ra, sp, t1
                  c.srai     a1, 28
                  and        s7, tp, s5
                  xor        t2, sp, a7
                  mulhsu     t5, a6, a4
                  c.li       s9, -1
                  c.xor      a5, s0
                  c.li       t1, -1
                  add        ra, t3, t3
                  mulhu      a0, a6, s8
                  c.andi     a2, 24
                  auipc      s6, 451681
                  c.addi     s6, 26
                  mulh       s8, a1, s3
                  auipc      a2, 260335
                  c.or       a0, s1
                  mulhsu     t0, s9, s8
                  c.addi     s6, 13
                  c.sub      a0, s0
                  c.srli     s1, 20
                  mulhu      t6, s9, a4
                  addi       a6, a2, -143
                  xori       a0, tp, -813
                  andi       t5, a3, -308
                  srl        sp, t2, a3
                  srl        s5, s6, s0
                  remu       t2, s6, a7
                  c.slli     a2, 1
                  sub        a1, a5, t1
                  c.addi16sp sp, -16
                  and        a3, s4, ra
                  mulh       a3, s3, ra
                  sra        s5, gp, t2
                  srai       t3, gp, 12
                  sll        gp, s5, t3
                  sra        s2, t2, sp
                  c.nop
                  sltu       t4, ra, ra
                  mulhsu     a2, t1, a2
                  c.srli     a0, 17
                  nop
                  c.li       t2, 21
                  sub        a1, s7, s5
                  mul        t6, a3, t6
                  c.srli     a5, 17
                  sltiu      s5, t2, -208
                  andi       s0, s11, -160
                  c.andi     a1, -1
                  c.xor      a0, a1
                  mulh       t2, ra, ra
                  mulhu      s5, t3, t4
                  c.li       a5, 22
                  c.nop
                  or         t2, s4, t1
                  c.srli     a2, 3
                  sltu       s7, a2, t1
                  c.li       ra, 10
                  rem        t0, gp, s0
                  c.lui      s6, 9
                  sltiu      s8, t3, -544
                  c.nop
                  sltu       t1, s10, s7
                  or         sp, tp, gp
                  mulh       t5, s5, s3
                  divu       sp, s4, s5
                  c.srai     s0, 1
                  c.lui      t5, 12
                  mulhu      a1, t3, t6
                  c.lui      t0, 26
                  slli       tp, t2, 19
                  sltu       gp, zero, t0
                  or         a3, a4, gp
                  c.addi     t5, 9
                  div        t1, s9, s3
                  addi       s2, s5, 913
                  addi       t1, s8, -215
                  srl        t0, s2, s1
                  mulhu      s7, t6, a5
                  c.lui      a2, 25
                  srai       s8, s6, 19
                  c.mv       a7, t4
                  c.mv       t2, a6
                  divu       s2, s10, s4
                  nop
                  c.andi     a0, -1
                  divu       a3, a4, t3
                  and        zero, a4, t5
                  c.addi16sp sp, 416
                  mul        s0, s1, ra
                  add        s0, s10, a2
                  sra        s6, a2, a2
                  srli       t6, tp, 11
                  slti       s5, t2, -607
                  c.nop
                  c.add      ra, a0
                  and        tp, s4, ra
                  sltu       a5, t0, t5
                  lui        s2, 509306
                  c.and      a2, s1
                  c.srai     s0, 31
                  xor        t2, a5, zero
                  lui        s7, 642863
                  srai       a3, a6, 23
                  div        t0, s10, s1
                  c.and      a1, a2
                  xori       s5, t1, 593
                  or         sp, tp, ra
                  nop
                  c.xor      a5, a1
                  rem        tp, t1, ra
                  c.or       a2, s0
                  rem        t3, s0, t1
                  addi       t6, s2, -273
                  sll        s4, tp, t1
                  sltiu      t0, s8, 918
                  lui        a0, 258547
                  c.li       t6, 15
                  sltiu      s9, t3, 295
                  c.and      s0, a0
                  sltiu      s4, s6, 438
                  and        a5, s10, a3
                  xor        zero, s7, tp
                  slti       s1, s9, 981
                  c.srli     a1, 24
                  slli       s5, a5, 12
                  add        s9, s1, s7
                  srl        s10, t3, t1
                  c.addi16sp sp, -16
                  srai       gp, s10, 0
                  c.and      a5, a5
                  remu       a1, s8, a1
                  c.xor      a1, a3
                  andi       a7, zero, -634
                  c.addi     tp, 7
                  sll        s10, a7, s9
                  divu       s1, s1, s7
                  c.addi     ra, 1
                  c.and      a5, a0
                  sltu       zero, a6, a7
                  div        t3, a2, ra
                  sltiu      s5, s11, -292
                  c.srai     a3, 11
                  c.srai     a0, 12
                  sltiu      s8, sp, -618
                  slti       t3, a4, 321
                  c.addi16sp sp, -16
                  c.srai     a1, 6
                  sltiu      zero, s4, 979
                  ori        t3, a0, 817
                  add        s0, s4, s2
                  c.and      s1, s1
                  mulhsu     a7, s2, s5
                  c.xor      a5, a5
                  c.li       t6, -1
                  sll        a0, s2, a1
                  mulhsu     a0, s10, a5
                  c.slli     a3, 25
                  srli       a0, s1, 8
                  or         t6, zero, t3
                  lui        tp, 137264
                  lui        s10, 149166
                  sltiu      s1, s9, 759
                  addi       a1, s9, 777
                  sltiu      a3, tp, 664
                  slli       a7, s9, 2
                  nop
                  c.nop
                  sub        zero, s6, s2
                  slti       t3, a4, 983
                  c.xor      a0, s0
                  srai       zero, a6, 9
                  and        a3, a0, a0
                  nop
                  remu       s9, s2, t5
                  slti       t4, a4, 888
                  auipc      tp, 827076
                  c.mv       s8, s4
                  addi       a0, t2, 663
                  ori        s9, a5, 696
                  mul        s9, t1, zero
                  c.sub      s0, a5
                  divu       s4, a5, s9
                  remu       a6, a4, t1
                  nop
                  rem        s2, s7, s6
                  sra        t6, t4, a7
                  ori        tp, a1, 540
                  sub        s9, s6, s4
                  xori       s0, t5, 409
                  sltiu      a5, s8, -696
                  sltu       t4, s3, s5
                  lui        t0, 957309
                  mulhu      s2, s9, t2
                  c.xor      a1, s0
                  sltu       t2, s8, t0
                  c.mv       s6, t4
                  c.mv       t4, a0
                  or         a2, ra, s4
                  sub        s2, a2, a5
                  add        s8, s2, a1
                  or         a1, s0, sp
                  c.sub      a0, s1
                  slt        a2, s8, a3
                  div        s2, a0, a2
                  c.add      a3, s2
                  srl        t3, t3, s2
                  sll        zero, s6, a5
                  mulhu      a6, s1, t1
                  slti       s8, t3, -651
                  sra        a1, t4, t6
                  srli       s4, a0, 31
                  c.srai     a3, 12
                  auipc      zero, 718545
                  lui        ra, 418368
                  sub        t4, gp, s5
                  sra        t4, tp, a7
                  srl        t5, a2, t5
                  c.slli     t3, 7
                  or         s2, t3, s10
                  c.li       t3, 28
                  c.addi16sp sp, -16
                  add        t5, t1, s2
                  c.xor      a5, a5
                  c.andi     a0, 4
                  auipc      t2, 870572
                  c.lui      a2, 16
                  sltu       zero, t6, a2
                  c.srli     s1, 15
                  xori       zero, zero, -136
                  add        s7, s1, a1
                  and        t2, sp, s2
                  mul        s1, a6, s8
                  andi       s8, a6, -193
                  div        sp, s2, t4
                  srli       t2, s11, 7
                  slt        a3, a5, s9
                  c.srai     a0, 5
                  and        t3, s8, a2
                  auipc      s8, 1033727
                  c.srli     a2, 3
                  mulh       s2, s5, gp
                  srl        sp, a2, t5
                  slt        t6, t4, t0
                  c.andi     a3, 9
                  c.srli     a0, 27
                  srli       zero, s7, 21
                  mul        a0, zero, s2
                  srai       t0, ra, 6
                  c.srai     a1, 2
                  c.andi     s0, 22
                  andi       a7, s4, -166
                  andi       a1, ra, -413
                  srl        tp, t5, s9
                  remu       s2, t5, a6
                  c.srli     a3, 28
                  xor        s6, s3, gp
                  andi       s10, t0, 470
                  c.add      s8, a0
                  xori       t2, gp, -213
                  c.srai     s1, 23
                  slti       t0, t3, -866
                  mulh       t0, s7, s8
                  c.lui      s9, 21
                  mulhsu     s5, ra, a7
                  c.mv       s1, t1
                  and        s9, s5, ra
                  c.and      s1, a5
                  srli       zero, t0, 18
                  ori        tp, a3, 887
                  c.srli     a0, 8
                  divu       s9, a7, s7
                  srli       gp, t2, 7
                  slt        tp, s10, s11
                  mul        sp, s7, zero
                  srl        s9, s11, s10
                  c.srli     a2, 27
                  c.mv       s0, sp
                  slti       t2, s6, -902
                  c.li       a7, 15
                  c.nop
                  c.xor      a2, a1
                  c.li       t3, 6
                  rem        s4, t0, a6
                  c.mv       s1, t4
                  c.sub      s0, s1
                  sra        a3, ra, s1
                  c.add      t6, a3
                  lui        a6, 621053
                  c.mv       s0, gp
                  rem        t0, t2, t3
                  c.nop
                  divu       t4, s8, t4
                  srl        t4, t6, t5
                  addi       s5, a5, -945
                  ori        s10, t6, 445
                  slli       a7, a6, 31
                  srai       a7, s5, 0
                  c.addi16sp sp, -16
                  c.xor      a1, a1
                  c.srli     a2, 31
                  mulhsu     s2, a1, s7
                  mulh       zero, s1, a3
                  c.srai     s0, 24
                  nop
                  add        a1, t3, t5
                  sltu       ra, s3, s9
                  remu       a5, zero, t5
                  nop
                  c.addi     s0, -1
                  c.srai     a5, 20
                  c.add      a3, t2
                  c.xor      a0, a5
                  slt        a7, s2, s2
                  c.xor      a3, a2
                  mulh       tp, s11, t4
                  addi       zero, s10, 746
                  srai       a2, s7, 23
                  c.addi     ra, 21
                  c.mv       a3, s0
                  c.srli     a0, 23
                  divu       s7, t1, a2
                  and        s5, t3, a3
                  c.lui      s9, 7
                  or         t3, a3, s3
                  c.nop
                  auipc      t2, 739546
                  mulhsu     tp, s3, t0
                  c.mv       s0, s11
                  sub        t4, s8, gp
                  divu       a0, a1, zero
                  andi       s1, t3, -611
                  rem        a1, s3, s7
                  auipc      a0, 595535
                  mul        a5, s1, t0
                  or         s2, s5, t6
                  sltiu      t5, s5, -438
                  rem        t1, t3, a0
                  c.andi     s0, 6
                  and        t3, t5, gp
                  and        a3, t0, a6
                  and        t0, t5, ra
                  xori       tp, s10, -781
                  c.mv       s7, a3
                  and        sp, t0, t2
                  c.addi16sp sp, 48
                  divu       ra, a3, s9
                  andi       s1, zero, -475
                  sltiu      a0, s7, -109
                  nop
                  c.add      a1, t3
                  c.sub      a1, a4
                  xori       a2, tp, -166
                  c.and      a1, s1
                  sltiu      s2, s4, -916
                  c.addi     t4, -1
                  mulhsu     t3, a7, a6
                  sra        s7, a1, s8
                  sltiu      a1, s3, -251
                  sra        t2, a0, s7
                  div        a6, t1, s4
                  c.lui      a0, 22
                  c.mv       t6, a3
                  sltiu      tp, t1, -810
                  c.or       a5, s1
                  c.srai     a2, 18
                  c.andi     a5, -1
                  c.li       s1, -1
                  c.slli     s6, 18
                  c.add      a1, a5
                  slti       a7, tp, -381
                  c.srli     a0, 20
                  lui        a7, 940846
                  c.xor      a5, s0
                  sltu       s4, gp, a2
                  add        sp, t4, a1
                  remu       gp, a0, a7
                  divu       t2, s5, t6
                  slt        s4, t1, s3
                  c.add      s9, a1
                  c.xor      a2, a0
                  srai       gp, s0, 26
                  addi       a6, t2, -72
                  mul        sp, t0, a0
                  c.addi16sp sp, -16
                  xori       zero, s8, -347
                  c.addi16sp sp, 176
                  sll        t0, s11, s7
                  c.slli     s0, 22
                  slti       t6, a6, -815
                  c.nop
                  c.or       a5, a5
                  sltiu      a0, s5, -181
                  sra        a3, s6, s2
                  addi       a3, s3, -103
                  ori        s2, s3, -762
                  c.mv       s9, s1
                  lui        s6, 296991
                  mulh       t4, t1, t1
                  mulhsu     a3, s9, a3
                  c.srai     a0, 17
                  c.addi16sp sp, -16
                  sltiu      s4, t4, -191
                  sll        t3, gp, s0
                  andi       a5, s7, 126
                  remu       t3, a7, a5
                  c.srai     s1, 6
                  c.slli     a1, 10
                  auipc      s6, 822554
                  ori        t2, s8, 628
                  or         s1, ra, s6
                  xori       t5, s3, 558
                  ori        t4, a5, -917
                  ori        a3, a7, -438
                  rem        t5, s1, t2
                  sub        t0, a0, gp
                  div        a5, tp, t0
                  c.addi     s9, -1
                  srli       s9, s8, 9
                  c.sub      a1, a0
                  c.addi16sp sp, 464
                  mulh       t6, s6, a3
                  mul        s7, s1, a7
                  mulh       t3, s9, t5
                  andi       tp, a0, -563
                  sub        s0, s8, t6
                  divu       t6, zero, zero
                  or         t5, s0, a6
                  c.and      a3, a0
                  c.srli     s1, 21
                  divu       s2, t5, a1
                  divu       a5, t5, a5
                  nop
                  c.xor      a3, a3
                  div        t1, s0, gp
                  remu       s10, s8, s4
                  sra        t2, t0, s10
                  or         s5, a2, s4
                  add        a6, ra, s11
                  c.li       t4, -1
                  lui        a0, 790099
                  srl        gp, t5, a3
                  nop
                  c.slli     t2, 20
                  c.sub      a0, s0
                  c.andi     a0, 3
                  nop
                  c.nop
                  srli       ra, s2, 22
                  c.lui      a2, 16
                  c.lui      s10, 30
                  c.mv       s2, tp
                  remu       tp, s8, s7
                  add        s6, a3, t4
                  sll        a3, s7, t2
                  c.srli     a0, 12
                  mulh       s1, a4, a6
                  mulhsu     a7, zero, ra
                  ori        gp, t3, 192
                  auipc      t5, 147532
                  slt        a2, gp, t1
                  xor        t2, a2, s8
                  slt        s6, a5, t2
                  c.andi     a2, 24
                  rem        t3, a7, s0
                  c.addi     a5, 28
                  or         s7, s4, s3
                  srli       tp, s7, 15
                  or         s2, a4, gp
                  c.sub      a0, a1
                  xori       t3, s1, -520
                  sltu       s10, t2, s4
                  mulh       a5, s10, a0
                  c.addi16sp sp, -16
                  mul        a7, a7, s7
                  c.nop
                  c.srli     s1, 2
                  slt        s10, t6, a6
                  slt        a1, s3, t5
                  c.slli     t3, 27
                  rem        gp, ra, a7
                  ori        t1, gp, 461
                  addi       a3, a0, -546
                  sra        sp, s5, s4
                  c.srli     a5, 29
                  c.addi     s7, -1
                  mul        s9, tp, ra
                  srli       s10, tp, 24
                  srli       s4, s5, 1
                  slli       t0, ra, 4
                  c.lui      s6, 25
                  srl        t5, s4, a1
                  addi       t2, t6, 275
                  ori        a5, t0, 129
                  c.srai     a1, 18
                  sra        sp, s8, t3
                  div        t6, s4, a0
                  c.andi     a3, 24
                  divu       s10, s0, a2
                  mulh       gp, s9, t2
                  ori        a6, a3, -215
                  c.and      s0, a0
                  c.and      a2, a3
                  xor        t6, s7, t4
                  c.add      s10, t0
                  sltu       sp, s9, tp
                  c.and      s0, s1
                  mulhsu     a5, s6, a7
                  slli       t4, ra, 5
                  c.nop
                  and        a5, s8, a7
                  c.slli     ra, 29
                  mulhu      s6, s9, zero
                  sll        t4, s5, s11
                  remu       s0, s5, t4
                  andi       s2, a7, 920
                  andi       ra, t3, -859
                  c.lui      s8, 10
                  c.add      t4, tp
                  c.srli     a1, 20
                  c.srai     a3, 15
                  slt        a3, s6, t1
                  mul        gp, t2, a6
                  lui        s7, 296404
                  xori       a1, s8, 563
                  c.and      a5, a2
                  c.mv       t0, t1
                  sra        s4, t5, a7
                  srl        t2, a4, a4
                  c.and      a3, a5
                  c.li       a3, 10
                  xor        s8, s4, s10
                  slti       s6, s4, -633
                  c.addi     tp, -1
                  c.add      t0, t2
                  auipc      a1, 948497
                  add        a0, t0, zero
                  add        s7, a6, s5
                  c.and      a3, s0
                  c.and      a2, a2
                  remu       ra, s1, a2
                  remu       a6, tp, s1
                  xor        zero, t2, t1
                  c.li       a7, 15
                  div        a2, t5, s0
                  c.addi16sp sp, 448
                  srli       a3, s9, 13
                  sltiu      s4, a6, 919
                  slt        s0, s6, s9
                  c.srli     a5, 6
                  slt        s8, a3, a5
                  remu       s1, a0, sp
                  divu       a1, t2, s7
                  c.and      a1, a3
                  nop
                  div        s2, a5, tp
                  divu       s4, s9, s8
                  addi       t3, s6, -754
                  c.addi     t3, -1
                  c.xor      a0, a2
                  slti       s9, s0, 501
                  auipc      t3, 764551
                  remu       sp, s6, s0
                  sll        tp, a2, s11
                  ori        s10, sp, 862
                  c.mv       ra, t1
                  c.mv       tp, s9
                  c.xor      a5, s1
                  srl        zero, t3, t0
                  c.and      a0, a1
                  sub        a2, s1, s1
                  c.xor      a3, a4
                  remu       a6, s7, a0
                  c.and      a0, a0
                  rem        s4, a2, s6
                  mulh       s5, a7, a1
                  slt        a2, t6, a1
                  c.add      s9, t4
                  auipc      s9, 756427
                  srai       gp, t4, 11
                  sra        s5, s11, t0
                  auipc      s6, 410221
                  nop
                  mulhsu     s1, t3, s9
                  xor        t1, a1, s11
                  c.addi     a6, 30
                  c.lui      a1, 18
                  xor        sp, t1, s10
                  addi       t5, zero, 365
                  srli       a3, a4, 31
                  sltu       sp, s0, t0
                  sra        a3, a7, a7
                  c.andi     a2, 30
                  c.xor      s1, a5
                  c.xor      a5, a1
                  or         s1, t6, tp
                  nop
                  remu       ra, a5, t6
                  sltiu      tp, s11, -19
                  mulhu      tp, s8, s3
                  add        ra, a1, a4
                  c.sub      a0, a4
                  c.li       t2, 2
                  c.add      s9, a2
                  xori       a3, a2, 914
                  or         a7, s2, a3
                  remu       t6, a4, s0
                  addi       a3, a7, -337
                  mulhsu     a6, gp, zero
                  srl        tp, s11, s4
                  c.lui      a2, 6
                  c.slli     s4, 18
                  c.lui      ra, 6
                  sra        s6, a4, a0
                  c.srli     a5, 12
                  and        a3, s2, a0
                  auipc      s2, 413251
                  c.xor      a2, a1
                  mulhsu     zero, s8, t6
                  srl        a1, sp, s1
                  c.mv       s10, a1
                  sra        s8, s8, a1
                  c.add      s0, a3
                  rem        a2, a0, s0
                  mul        t6, s3, t2
                  c.xor      a0, s1
                  c.sub      s1, s0
                  slli       s5, a1, 5
                  c.slli     a5, 24
                  slti       s2, t0, -631
                  slli       s7, s3, 10
                  andi       gp, s0, 495
                  srl        gp, a6, s7
                  c.lui      t0, 30
                  c.add      ra, sp
                  sltiu      gp, a5, -89
                  c.slli     ra, 23
                  remu       sp, s10, a7
                  c.mv       t5, t3
                  sra        s1, ra, tp
                  c.add      sp, t5
                  c.sub      s1, a0
                  c.addi16sp sp, 192
                  ori        ra, a2, -913
                  auipc      s1, 861044
                  slti       tp, a7, 383
                  sll        s6, s1, a2
                  slt        s4, s3, s2
                  add        ra, s9, s1
                  or         s10, a4, t2
                  ori        t3, a0, -106
                  sltu       s10, s2, t4
                  sub        s1, t5, s9
                  add        s2, t5, s7
                  c.lui      t3, 7
                  slt        s8, ra, t6
                  sub        t1, t3, tp
                  mulhsu     a5, s11, s9
                  c.srli     a2, 4
                  srli       t3, t3, 26
                  c.addi     s1, -1
                  auipc      a6, 752591
                  xor        t5, s5, t1
                  c.slli     t4, 17
                  slt        s8, a0, a6
                  mulhu      ra, a4, a7
                  sltiu      a6, a5, -460
                  and        t1, a3, t4
                  rem        s4, a3, a1
                  slti       zero, s11, 877
                  srli       a2, s6, 26
                  c.sub      a5, a0
                  mulh       t5, a5, s6
                  slt        gp, a6, a7
                  c.addi     t4, 1
                  sra        t2, s1, s10
                  c.xor      a3, a2
                  slli       a2, s6, 29
                  sll        s6, s3, sp
                  lui        a3, 516797
                  mulhu      a2, t0, s11
                  c.lui      s4, 20
                  lui        t5, 193674
                  mul        a1, s6, tp
                  c.lui      t6, 29
                  c.andi     a2, 15
                  nop
                  auipc      t4, 951037
                  c.slli     t4, 2
                  and        t1, gp, s6
                  sub        tp, t3, t1
                  slti       s8, s11, 903
                  rem        s8, s1, a6
                  xor        s8, s2, a7
                  c.andi     a1, -1
                  c.or       a2, s0
                  c.addi     t3, 13
                  ori        tp, a4, -115
                  nop
                  mulh       a7, s8, a3
                  c.and      a5, a0
                  divu       s5, s2, s1
                  sub        tp, s6, a2
                  sub        t2, a4, t6
                  c.and      s1, a2
                  divu       a5, s10, a6
                  mulhu      t4, tp, a0
                  mul        s2, a7, s1
                  divu       s1, s7, a2
                  sub        t6, s0, t0
                  ori        t0, t6, -234
                  c.xor      a2, s1
                  mulh       a7, s11, gp
                  sll        ra, t0, s6
                  sltu       t5, a0, a7
                  c.and      s1, a1
                  or         ra, t0, s3
                  addi       a5, a1, -676
                  div        s1, t6, a7
                  mulhsu     gp, t5, a7
                  auipc      s7, 92007
                  and        t6, a2, s4
                  c.mv       a7, s9
                  mulh       a0, s8, a3
                  mul        t2, a4, s9
                  sltiu      s4, a4, -420
                  andi       gp, a5, -867
                  c.nop
                  c.and      s1, s1
                  sltu       s5, a6, s7
                  c.or       a0, a1
                  srl        s6, t4, s6
                  add        sp, s8, s1
                  c.srli     a1, 14
                  slti       a7, s1, -848
                  c.andi     s1, 6
                  c.sub      a3, a5
                  c.mv       a2, tp
                  c.xor      a0, a4
                  mulhu      t2, a7, s10
                  and        gp, s11, a3
                  srai       gp, t2, 13
                  c.li       s8, 22
                  c.or       a2, s0
                  srl        s8, s3, ra
                  sltu       s0, t1, gp
                  mulhu      s1, a3, t4
                  nop
                  c.and      a0, s0
                  srl        a0, t4, zero
                  c.mv       a1, s3
                  nop
                  c.srli     s0, 18
                  c.mv       a5, a3
                  remu       s6, ra, t4
                  add        zero, s0, t3
                  slli       s2, a2, 7
                  c.slli     sp, 24
                  c.slli     a6, 28
                  sltu       s6, tp, s7
                  andi       s7, s5, 915
                  sltiu      a7, ra, -627
                  nop
                  divu       s4, t3, s11
                  sub        ra, t5, a4
                  mulh       s4, s9, a6
                  sub        s1, s9, sp
                  c.and      a2, a4
                  xor        s1, a0, s9
                  ori        s10, a4, -734
                  c.addi     t2, 12
                  slli       t3, a5, 11
                  c.li       a6, 15
                  srai       t2, s4, 24
                  mulh       s2, s1, ra
                  c.addi16sp sp, 176
                  sll        t3, s0, a6
                  sltu       a7, s1, s2
                  c.lui      a3, 28
                  sub        s6, s0, s6
                  c.or       a5, s1
                  c.or       s0, a2
                  c.xor      a5, a1
                  srl        s10, a6, a7
                  srai       gp, s4, 0
                  xor        s7, s9, s3
                  c.xor      a1, s0
                  slli       s0, s3, 15
                  xor        s0, s11, a7
                  c.add      s7, t4
                  c.addi16sp sp, -16
                  sub        ra, t0, s10
                  c.addi16sp sp, 224
                  c.sub      a5, a3
                  c.srli     a0, 15
                  c.slli     s0, 13
                  srl        t6, gp, a3
                  addi       ra, t2, 4
                  xori       s0, a2, 899
                  mul        a1, t2, a2
                  or         a3, tp, gp
                  xori       a0, s1, -34
                  c.nop
                  lui        s9, 549410
                  c.andi     s1, 21
                  c.li       a2, 28
                  add        a5, s0, s10
                  slli       tp, s0, 19
                  srl        s10, s1, ra
                  slli       s8, tp, 28
                  c.andi     a2, 30
                  ori        t2, t2, -308
                  rem        s10, s8, s11
                  c.addi16sp sp, 288
                  xor        t0, t3, t3
                  c.li       tp, 24
                  andi       ra, gp, -540
                  divu       s8, s7, tp
                  srl        s2, s6, s4
                  c.srai     a2, 20
                  c.addi16sp sp, 240
                  c.add      s10, t0
                  c.and      s1, a5
                  srl        s5, a1, t0
                  ori        s2, t5, 688
                  xori       a6, t2, -625
                  xor        t6, s7, s6
                  c.xor      a1, a2
                  mulhsu     a7, a1, s1
                  slt        s6, t6, s2
                  c.or       a2, a3
                  rem        a0, s0, s2
                  lui        t6, 982872
                  c.addi16sp sp, -16
                  mulh       s0, t4, tp
                  slt        t1, t2, s1
                  sltiu      t2, s9, 480
                  srli       t4, a7, 3
                  slli       s8, t6, 26
                  c.addi     s2, -1
                  auipc      s1, 1045326
                  sub        sp, t3, a7
                  divu       s2, a7, a7
                  mul        a3, a3, gp
                  nop
                  c.li       ra, 19
                  slli       s0, s3, 29
                  add        t4, t5, a1
                  mulhsu     gp, t1, s6
                  mulhsu     a0, s3, t4
                  srli       s8, t1, 8
                  auipc      s10, 983558
                  mul        s4, ra, a1
                  c.or       a5, s1
                  sra        t5, s4, s0
                  addi       s2, s4, 501
                  sra        sp, s11, t5
                  addi       s8, a4, 150
                  c.and      a2, a2
                  sll        s1, gp, sp
                  mulhsu     a2, s7, s4
                  srl        s5, a5, t5
                  srl        gp, t4, s7
                  sub        t4, t1, s7
                  andi       s1, gp, 836
                  c.sub      s1, a2
                  mulh       a6, s11, a3
                  slli       t0, gp, 14
                  slti       a6, s8, 763
                  sltiu      s9, s11, -467
                  remu       t3, s4, a4
                  andi       t6, a7, 1008
                  c.srli     a2, 5
                  div        zero, s4, t4
                  c.mv       ra, t1
                  div        t3, a7, s5
                  c.lui      tp, 3
                  sltiu      ra, t4, -388
                  xori       a0, s10, 340
                  and        gp, sp, s6
                  slt        tp, s0, a3
                  remu       a0, s0, t3
                  nop
                  andi       s10, a0, -354
                  sltu       t5, a6, s7
                  c.or       a0, a0
                  sra        t4, s9, s1
                  c.srai     s0, 21
                  c.addi16sp sp, -16
                  slti       s10, t1, 975
                  c.sub      a1, a4
                  c.mv       a2, s0
                  c.mv       s6, s5
                  sra        zero, ra, s4
                  xori       t2, t0, -934
                  c.li       t3, 29
                  add        s8, a3, gp
                  divu       gp, s4, s10
                  c.addi     s8, 10
                  mulhu      a1, a0, s10
                  c.add      a2, a2
                  remu       s9, a0, s3
                  sltu       s5, zero, a1
                  c.xor      s1, a1
                  andi       s2, a5, -183
                  c.addi     s9, 30
                  mulh       t2, a7, t3
                  divu       t5, sp, s10
                  add        s10, zero, a0
                  c.addi     s10, 29
                  c.mv       s9, a4
                  c.li       s7, -1
                  mulhu      s1, t5, zero
                  xori       s4, t5, -712
                  slli       a0, sp, 9
                  c.srai     a1, 18
                  srl        s2, sp, t5
                  c.add      t4, s11
                  rem        s6, t2, t6
                  auipc      s2, 475359
                  div        zero, a6, s11
                  sltiu      t2, t1, 739
                  c.srli     a1, 24
                  c.srai     a2, 14
                  div        a5, gp, t5
                  divu       a7, s5, s10
                  xori       a3, s4, 427
                  c.slli     s7, 12
                  c.xor      a1, s1
                  mulhu      t2, t0, s0
                  nop
                  c.addi16sp sp, 320
                  and        sp, t2, a2
                  rem        zero, t2, s3
                  c.and      a3, a0
                  sltiu      a2, t3, 577
                  c.lui      s0, 5
                  add        sp, a7, s2
                  auipc      s5, 602406
                  sra        s7, t0, s6
                  sub        s1, t5, t5
                  srli       a2, s9, 16
                  mul        s9, a3, s5
                  xor        s2, t6, zero
                  rem        t6, sp, t1
                  c.nop
                  c.addi     sp, 1
                  srli       a1, s8, 15
                  c.addi16sp sp, 352
                  andi       s4, s5, -18
                  ori        s10, s1, -405
                  andi       a2, t5, 677
                  mulhu      s8, t1, t0
                  ori        s5, s10, -797
                  and        sp, t0, a6
                  mul        t1, s9, t2
                  c.srai     a2, 15
                  andi       t1, sp, -396
                  add        sp, s9, sp
                  add        zero, tp, t6
                  or         a1, t0, t4
                  mulhsu     s4, t4, zero
                  c.srai     s0, 22
                  slti       s7, sp, 607
                  c.mv       s7, s6
                  add        t3, t1, s8
                  c.sub      s0, s1
                  srai       s4, sp, 4
                  mulhsu     s2, a7, t0
                  sub        zero, ra, a6
                  addi       s7, t0, -994
                  c.addi     s1, 16
                  c.sub      a3, a2
                  c.li       s4, -1
                  c.addi16sp sp, 448
                  and        zero, s3, t2
                  sll        s2, t6, a4
                  c.lui      a0, 13
                  c.mv       a5, s6
                  c.add      a1, a7
                  ori        a1, s6, 960
                  c.add      a0, gp
                  c.addi     s6, 6
                  xor        a7, sp, a5
                  srli       t3, s4, 18
                  divu       t4, sp, a4
                  c.nop
                  c.add      tp, s4
                  rem        a7, t6, s5
                  c.or       s0, a3
                  addi       tp, a6, 433
                  sra        a0, s0, a4
                  auipc      s9, 976198
                  mulh       gp, zero, s6
                  sltiu      s6, tp, -322
                  c.li       t3, -1
                  sra        t4, s9, a3
                  c.andi     a1, 18
                  c.li       t6, -1
                  slti       ra, ra, -993
                  sltu       s4, a0, s9
                  xori       s5, s4, 319
                  c.slli     a2, 22
                  mulhsu     s9, a0, a0
                  c.srli     a2, 17
                  div        t6, t5, s6
                  c.lui      s0, 13
                  nop
                  remu       zero, t2, a2
                  slt        s1, a6, s1
                  c.li       s9, 17
                  mul        gp, a2, s5
                  c.srli     a5, 30
                  c.srli     a0, 10
                  c.slli     t0, 6
                  mulhsu     a1, t2, s0
                  c.add      a3, s8
                  c.xor      s1, a0
                  or         s5, a5, a2
                  c.nop
                  c.sub      a5, a0
                  div        s5, s7, s10
                  c.srli     a3, 18
                  sub        s0, a3, gp
                  add        s2, a3, a1
                  slti       a2, s7, -990
                  sltiu      s2, s5, -601
                  srli       a0, t5, 31
                  c.add      t2, s6
                  c.li       tp, 26
                  sub        a3, t5, s0
                  mulhsu     s6, s9, s5
                  c.srli     s1, 3
                  srli       gp, s6, 18
                  sltu       tp, s9, a6
                  addi       s9, gp, 378
                  nop
                  slt        s9, t1, a6
                  c.add      t0, s3
                  c.mv       s9, a5
                  div        s1, s9, s3
                  c.addi     s2, 11
                  sra        a7, s1, a6
                  c.nop
                  sra        a2, ra, s1
                  c.andi     a1, 25
                  div        s8, s0, a7
                  c.add      t5, s10
                  c.mv       a7, t5
                  c.addi16sp sp, -16
                  add        a3, a4, s9
                  mulh       a0, t2, s10
                  c.add      a1, a0
                  xori       a0, s10, -873
                  xor        s10, s7, s3
                  c.slli     s6, 13
                  c.slli     a7, 25
                  lui        a5, 102413
                  mulhu      gp, a6, t5
                  and        t4, s2, s4
                  c.mv       a7, s8
                  sltu       t2, a2, a6
                  srli       t2, s3, 13
                  c.addi16sp sp, -16
                  slt        zero, a7, t6
                  div        a3, a6, sp
                  add        a2, gp, t1
                  xori       t0, s0, -16
                  c.mv       t5, a2
                  andi       zero, s9, -449
                  mulhsu     s6, s9, s7
                  c.add      a3, a6
                  c.add      t6, a4
                  xor        s1, t3, a7
                  add        s4, sp, t6
                  andi       t3, zero, -521
                  mul        zero, a3, t2
                  mulhu      a1, s10, s3
                  c.or       a0, a5
                  lui        a5, 973783
                  div        t4, s0, s8
                  mulhu      a1, s8, a2
                  c.addi16sp sp, 16
                  slt        sp, t0, a4
                  mulh       t1, zero, a0
                  sra        s10, s3, a6
                  nop
                  auipc      s7, 490295
                  c.add      s1, a4
                  c.or       a3, a4
                  nop
                  andi       s4, a1, 497
                  div        t5, sp, s7
                  c.mv       s6, s7
                  divu       t0, s4, s9
                  div        zero, s11, a6
                  ori        s6, t0, 391
                  addi       ra, sp, -369
                  c.nop
                  srl        s6, t0, sp
                  sra        a2, t4, s5
                  mulh       a0, gp, s6
                  remu       s0, a5, t5
                  andi       t0, a5, -663
                  and        tp, gp, t0
                  sub        s1, s4, ra
                  mulhu      sp, tp, s2
                  xori       a0, t6, 526
                  mulhsu     a6, sp, s9
                  mul        s4, s6, s3
                  remu       s7, a7, a2
                  mulhu      s7, a6, a5
                  c.mv       a0, s3
                  c.mv       a5, s4
                  nop
                  c.slli     t3, 1
                  remu       s2, tp, t3
                  nop
                  auipc      s0, 454020
                  auipc      t6, 890766
                  c.addi     tp, -1
                  c.li       a5, 25
                  sltu       s7, s9, sp
                  sltiu      sp, sp, 109
                  c.srai     s0, 25
                  sra        gp, sp, t0
                  srli       s10, a0, 23
                  xori       a7, a4, 359
                  c.nop
                  c.lui      s5, 6
                  auipc      s6, 286808
                  c.lui      t0, 26
                  c.li       t0, -1
                  remu       t5, s2, s8
                  add        tp, s3, a2
                  c.addi     tp, -1
                  srli       t5, s8, 4
                  mulh       t3, sp, ra
                  c.srli     a5, 16
                  c.nop
                  c.lui      a6, 23
                  ori        zero, t2, -358
                  divu       s5, a4, s9
                  addi       s7, a1, 485
                  lui        t5, 243475
                  c.andi     a2, -1
                  sra        s5, t6, a7
                  xor        t0, t1, a2
                  c.srli     a0, 25
                  c.lui      a2, 3
                  srli       s6, tp, 0
                  c.li       t1, 3
                  add        s9, s6, a1
                  addi       a6, s4, -980
                  c.mv       tp, t5
                  c.xor      a2, a3
                  slt        a3, t6, a6
                  sub        tp, s9, gp
                  c.srli     s1, 13
                  c.addi16sp sp, -16
                  add        s10, t1, tp
                  nop
                  srl        s6, s2, s6
                  xor        ra, t3, s3
                  srli       a1, s2, 15
                  andi       s5, t3, -517
                  or         a5, a7, zero
                  xor        t1, a7, s10
                  c.andi     s1, -1
                  mul        sp, zero, a7
                  ori        s8, s8, -189
                  c.slli     t6, 6
                  nop
                  mulh       s6, s10, t4
                  c.sub      a1, a2
                  c.mv       a0, s5
                  mul        tp, s11, s10
                  c.and      a1, a1
                  sltiu      s9, s1, 852
                  sltiu      zero, a2, -580
                  mulhu      t5, tp, tp
                  sll        s5, sp, a3
                  ori        a1, s5, 389
                  c.or       a1, a5
                  ori        ra, t2, -478
                  c.li       s5, 30
                  c.or       a5, a3
                  c.xor      a5, s0
                  nop
                  c.or       s1, a1
                  xor        s10, s2, s3
                  div        a3, s5, a0
                  ori        s9, zero, -62
                  ori        s0, t5, -721
                  xori       s4, gp, 995
                  c.addi16sp sp, -16
                  slti       zero, sp, 799
                  mulhsu     s0, a0, a6
                  mulhsu     a2, t4, ra
                  slli       a6, s8, 0
                  c.srli     a0, 1
                  c.slli     tp, 11
                  sra        t2, a2, tp
                  divu       a3, a3, zero
                  c.srai     a3, 3
                  div        t1, t0, zero
                  rem        a0, t3, s8
                  c.or       s1, a4
                  addi       t4, s1, -84
                  slti       s2, a7, 75
                  mulhsu     a0, s8, t2
                  rem        a5, s2, s3
                  mulh       a7, s5, sp
                  c.xor      a2, s1
                  or         zero, s4, s4
                  srai       gp, t5, 3
                  c.li       s2, 21
                  c.srai     a2, 18
                  c.add      a1, s0
                  andi       sp, sp, -768
                  c.nop
                  c.addi     t0, 23
                  lui        s6, 160407
                  c.mv       a0, a2
                  slti       a2, t6, -70
                  srli       a3, s1, 17
                  c.li       a7, 6
                  c.xor      a3, a1
                  sra        gp, t4, zero
                  srai       s9, s1, 16
                  slli       s9, ra, 7
                  ori        s9, t4, -408
                  sub        s0, t3, t5
                  xori       s8, s0, 859
                  add        a1, a3, a6
                  c.lui      s7, 11
                  sll        s9, t5, t4
                  lui        s6, 622810
                  c.lui      a1, 28
                  and        t4, s3, ra
                  or         t3, t6, t2
                  srli       s5, s6, 31
                  c.srai     a2, 7
                  c.add      s0, sp
                  c.nop
                  srl        a2, a2, t0
                  c.addi16sp sp, -16
                  addi       s5, s11, -148
                  slli       s0, a2, 10
                  sra        gp, t5, tp
                  c.li       t6, 0
                  xor        tp, a3, s9
                  mulhu      t1, t2, a0
                  mulh       ra, s10, a6
                  c.li       t5, 16
                  rem        t0, s4, s7
                  c.srli     a3, 3
                  c.lui      t0, 11
                  mulhu      s2, t2, a5
                  lui        a7, 903911
                  sra        sp, s4, sp
                  mulhu      s8, s7, s2
                  c.addi     t5, -1
                  srai       t6, s1, 5
                  mulh       s0, s8, t4
                  remu       s6, sp, s5
                  srli       s6, tp, 24
                  mulh       gp, a1, t5
                  c.andi     a0, 31
                  xor        a2, s0, s0
                  andi       s4, a7, 1018
                  srai       s2, a0, 10
                  divu       a7, s3, zero
                  sltu       a7, a6, s11
                  remu       a7, a4, t0
                  auipc      a3, 1026428
                  c.nop
                  add        a3, ra, s9
                  slli       s7, s10, 3
                  and        a6, s1, a7
                  srai       s9, s0, 12
                  c.li       t3, -1
                  srli       s4, a7, 28
                  addi       s0, s9, -65
                  srli       a1, t4, 11
                  lui        sp, 794867
                  sltu       t1, t3, a6
                  mulhu      t0, t0, s1
                  xor        a6, t0, s6
                  c.andi     a3, -1
                  slti       t1, a2, -483
                  c.add      t2, s2
                  mulhu      s7, s5, s7
                  c.mv       gp, s5
                  c.add      ra, a7
                  c.addi16sp sp, 400
                  sltiu      sp, a7, 204
                  addi       s7, a7, 679
                  or         t5, s6, s11
                  c.addi     s2, -1
                  srli       a0, s9, 2
                  srai       s1, a3, 11
                  sra        t1, t4, s4
                  c.nop
                  auipc      s9, 450624
                  addi       s0, t2, 713
                  add        a1, s9, a1
                  mulh       s0, s2, t0
                  sltiu      t1, s7, 615
                  c.sub      a5, s0
                  remu       t2, s5, a6
                  xor        zero, s4, s9
                  rem        t1, s2, a7
                  c.mv       a5, s5
                  c.nop
                  xori       t3, s11, -659
                  sltu       s6, t1, gp
                  mulh       a2, s8, s11
                  divu       a0, t0, gp
                  lui        sp, 752885
                  c.lui      s7, 12
                  slt        s5, s11, t0
                  c.or       a2, a5
                  add        s9, s1, t6
                  c.slli     sp, 12
                  sll        s9, s0, s10
                  sltiu      s1, s7, -693
                  slti       ra, a0, 297
                  mulhsu     t6, t2, a4
                  c.sub      a2, a3
                  sub        t0, s8, a1
                  xor        a5, s0, s4
                  c.or       a5, a4
                  ori        a0, t1, 907
                  c.or       s0, s0
                  c.xor      s0, a5
                  c.xor      s1, a5
                  slti       t4, s2, -114
                  sll        t4, s0, s8
                  and        s1, s9, tp
                  srl        s6, s10, zero
                  and        zero, s3, s1
                  c.slli     a5, 23
                  sltu       t1, t5, t0
                  lui        s6, 151545
                  sll        a7, s10, tp
                  c.addi16sp sp, 400
                  srli       a6, a3, 0
                  srl        t3, t6, t4
                  addi       s4, t5, 229
                  sra        s8, a7, a1
                  ori        s1, s6, 235
                  addi       s4, t6, 985
                  srl        s6, a0, tp
                  mulhsu     t3, a1, tp
                  c.addi16sp sp, 160
                  andi       a0, ra, 86
                  mulhu      t4, tp, s7
                  xor        a2, a3, t5
                  xori       s10, t5, -772
                  sra        sp, a3, s7
                  c.lui      s7, 22
                  c.mv       a1, t0
                  c.addi     ra, 26
                  remu       t4, t0, s7
                  c.addi16sp sp, -16
                  nop
                  sltu       a6, s0, t5
                  ori        a5, s10, -228
                  xor        s10, t3, s3
                  and        s7, s11, a2
                  c.addi     s0, -1
                  nop
                  mulhsu     s5, t2, t5
                  c.addi     t2, -1
                  srai       s4, t5, 25
                  slli       t3, t2, 16
                  lui        a7, 601675
                  c.srai     s0, 12
                  c.or       a2, a3
                  andi       s7, sp, -952
                  mul        t6, a3, s1
                  c.srai     s0, 27
                  or         s8, a2, a5
                  c.xor      s1, a0
                  c.mv       a5, s4
                  auipc      t5, 861210
                  rem        s2, s0, a2
                  c.addi     t6, 24
                  mulh       t3, s6, t0
                  c.xor      a3, a2
                  srai       gp, s9, 23
                  c.sub      s0, a5
                  divu       zero, t3, a3
                  c.and      a1, s0
                  mulh       t2, s10, s1
                  add        s4, s3, zero
                  srai       tp, a1, 30
                  c.slli     s9, 12
                  c.addi16sp sp, 480
                  c.srli     a3, 9
                  c.lui      t2, 14
                  c.andi     a5, 5
                  mulh       a5, s2, a4
                  sub        s1, s11, t2
                  c.srli     s0, 6
                  mulhsu     a5, a1, a0
                  auipc      zero, 111933
                  c.mv       a6, s9
                  mulhu      a6, ra, a4
                  c.sub      s1, s0
                  c.slli     gp, 12
                  mulhu      a5, t3, t0
                  srai       s2, t3, 13
                  slli       gp, s3, 12
                  ori        t5, s1, -308
                  xori       s10, t2, -86
                  slli       t1, s10, 31
                  mulhsu     sp, s11, a3
                  sll        t5, zero, sp
                  srl        tp, gp, a0
                  c.or       a0, s1
                  c.add      ra, a3
                  slti       a0, s10, -627
                  auipc      s10, 1023556
                  andi       a5, s1, -243
                  mul        t0, a1, s2
                  c.sub      a5, a5
                  c.nop
                  c.srli     s0, 16
                  mul        s5, s7, s8
                  sltiu      a5, s4, 638
                  xori       s1, s11, 330
                  addi       t0, a5, 142
                  add        a7, s0, s1
                  andi       s5, a0, 397
                  c.srli     a3, 3
                  or         zero, a5, s4
                  rem        s1, s2, a0
                  add        a3, a1, t0
                  c.srli     a2, 27
                  c.or       s1, a0
                  slt        a7, t4, s10
                  c.add      t4, s2
                  slt        a2, a1, a4
                  srl        s7, s10, s4
                  c.srli     s1, 23
                  srl        s5, a4, s11
                  xor        t4, t5, a3
                  add        a2, t5, ra
                  ori        s6, a3, 410
                  c.mv       a6, a5
                  or         a1, ra, a5
                  divu       t4, s8, s2
                  c.lui      s7, 2
                  div        t1, s5, a7
                  remu       s4, a5, a6
                  mulh       s10, tp, a1
                  sra        a2, a7, a1
                  and        t4, s3, t6
                  c.lui      s8, 6
                  xor        s8, t0, a7
                  c.srai     a0, 21
                  sll        a6, s3, s8
                  slli       s2, a1, 16
                  mul        s6, sp, t5
                  c.srai     a2, 26
                  c.addi     s7, -1
                  c.lui      s4, 9
                  or         s8, t5, s3
                  c.slli     a0, 1
                  slli       a5, a5, 31
                  c.andi     s0, 10
                  xor        a5, s7, a5
                  mulhu      a5, a3, t6
                  c.and      a3, s0
                  auipc      s7, 873753
                  rem        t3, s10, t2
                  slti       a3, s9, 1016
                  rem        s4, a1, sp
                  mulhsu     t4, a0, zero
                  andi       t2, a7, -145
                  sub        tp, a4, s5
                  srl        t3, t0, s4
                  auipc      t4, 34223
                  c.mv       a0, tp
                  remu       a6, a2, sp
                  slli       t0, s2, 26
                  slli       s0, sp, 29
                  c.srli     s0, 3
                  remu       a5, tp, s6
                  and        s5, s8, s5
                  c.li       sp, -1
                  auipc      t4, 735414
                  sra        a2, gp, s4
                  mul        t1, s1, s6
                  ori        a3, t3, 332
                  c.addi16sp sp, -16
                  c.lui      s0, 6
                  c.srli     s1, 7
                  slt        s7, a0, s8
                  c.mv       s1, s3
                  ori        t0, s10, -99
                  ori        t4, zero, -492
                  mulhsu     s6, s6, s8
                  sll        s1, a1, a7
                  c.or       a1, s0
                  mulhu      ra, a0, a4
                  divu       a5, gp, a6
                  lui        s2, 168263
                  c.or       a1, s0
                  c.srai     a2, 2
                  c.xor      s1, a3
                  slt        ra, ra, ra
                  ori        s0, t2, 88
                  xori       s6, s3, 901
                  c.and      a3, a2
                  c.addi     s2, -1
                  c.srai     a1, 15
                  c.addi16sp sp, -16
                  c.srai     a1, 30
                  sra        s10, s4, a4
                  mulh       s0, s0, gp
                  slti       a7, a3, 172
                  c.sub      a5, a2
                  slti       a7, gp, -695
                  c.srli     s1, 29
                  add        s10, t4, s5
                  rem        s1, s10, s3
                  c.mv       a5, s7
                  xori       ra, a3, 217
                  slti       a5, zero, 590
                  nop
                  mulhsu     s8, s6, s2
                  sll        a0, a7, gp
                  rem        s6, s3, a7
                  slt        sp, a3, t1
                  div        s4, s11, tp
                  sra        tp, s11, a2
                  c.addi16sp sp, 224
                  sub        s0, sp, a2
                  c.lui      tp, 5
                  c.sub      a2, a4
                  c.and      s0, a1
                  slt        gp, gp, sp
                  c.add      s9, s7
                  lui        s7, 327393
                  mulhu      s5, s8, s11
                  c.and      a1, a2
                  or         tp, s4, s4
                  divu       gp, zero, s8
                  mul        a3, t3, a1
                  slti       a6, t2, 140
                  mulhu      a1, a2, zero
                  c.or       s0, a0
                  mulhsu     tp, a0, s9
                  srai       s8, s4, 15
                  c.nop
                  c.li       s4, 3
                  mulh       s2, s9, s6
                  mulh       t3, tp, s1
                  slti       t5, a1, 723
                  c.addi     s4, 6
                  mulhsu     s8, t4, a6
                  ori        t3, a0, -725
                  nop
                  add        t5, a3, t3
                  slti       s9, s5, -902
                  c.xor      s0, a1
                  c.li       a6, -1
                  rem        a0, a4, t4
                  sll        t1, zero, a0
                  slti       s6, s7, 971
                  sltiu      t5, t3, -876
                  c.srai     s0, 3
                  add        a1, s11, a3
                  xori       s4, a3, 147
                  mulhsu     s5, s0, a4
                  c.nop
                  divu       t4, s3, a6
                  mulhsu     s4, t0, sp
                  mulhsu     t5, t2, a3
                  slti       a6, zero, 445
                  and        ra, t0, a7
                  slt        a0, t0, zero
                  c.and      a0, a4
                  c.add      s0, s11
                  addi       sp, t5, -155
                  remu       a3, s3, a4
                  rem        a3, a0, s10
                  srli       a2, a4, 4
                  slli       s10, t4, 20
                  or         s9, s9, s8
                  mulhsu     sp, t5, s2
                  andi       t5, s11, 563
                  slt        ra, s8, zero
                  slt        a5, a6, t3
                  mulhu      s9, s5, a4
                  divu       t3, ra, t5
                  mulh       a7, s1, s4
                  divu       sp, s10, t6
                  c.add      s8, a1
                  c.mv       a2, a6
                  lui        s0, 995587
                  mulhsu     s0, a1, s10
                  slt        s6, sp, a1
                  c.li       a2, -1
                  srli       zero, ra, 4
                  c.slli     t4, 14
                  srl        s5, sp, ra
                  slti       s4, s0, 667
                  c.add      s1, t4
                  mul        s2, a2, tp
                  divu       a2, tp, s7
                  c.slli     s9, 14
                  nop
                  mul        a7, t2, s1
                  divu       ra, zero, ra
                  c.nop
                  c.lui      a5, 19
                  addi       a2, zero, 939
                  c.srai     a2, 5
                  mul        sp, gp, t6
                  mulhsu     tp, s11, s1
                  mulh       gp, a0, s6
                  remu       a6, gp, a2
                  c.li       a3, -1
                  add        s9, s2, t6
                  c.sub      a0, s1
                  mulhsu     s9, t5, a2
                  lui        t6, 93766
                  mulhu      a0, s3, t5
                  c.lui      gp, 5
                  mulhu      s4, a6, t6
                  addi       tp, a1, -159
                  c.add      s0, t4
                  sub        t5, t4, t3
                  c.addi16sp sp, 304
                  c.lui      t5, 31
                  divu       t5, s0, t5
                  remu       t5, zero, a5
                  c.addi     a2, -1
                  c.or       s1, a5
                  c.slli     s4, 26
                  lui        a1, 362040
                  c.sub      a5, a0
                  add        t4, s1, s10
                  c.srli     a0, 19
                  mulh       a1, a0, a0
                  c.addi16sp sp, 352
                  c.srli     s1, 31
                  and        s1, a2, tp
                  slti       gp, s1, 759
                  remu       zero, a0, t0
                  c.slli     a2, 21
                  remu       t0, sp, t2
                  c.xor      s1, a0
                  addi       t0, s5, -441
                  sll        s8, a7, s0
                  c.and      s0, s1
                  c.addi16sp sp, -16
                  c.srai     s0, 24
                  div        s0, s4, t0
                  c.and      a3, a0
                  c.srai     a2, 7
                  c.slli     t4, 27
                  divu       a1, a0, t2
                  c.mv       s7, t5
                  srl        s9, a6, t1
                  andi       s9, s9, 843
                  ori        a2, s9, -10
                  auipc      s4, 259703
                  c.sub      s1, s1
                  c.add      s1, t2
                  xori       tp, s10, -814
                  mulhsu     a7, a5, a2
                  sltiu      s7, t2, 616
                  srl        t5, a0, t1
                  sll        sp, s0, s3
                  c.addi     ra, -1
                  c.and      a1, a2
                  auipc      t3, 549470
                  rem        s8, t4, t4
                  c.slli     gp, 29
                  rem        s2, a7, s0
                  ori        ra, tp, 503
                  c.nop
                  c.nop
                  slli       gp, ra, 18
                  sub        a7, t2, s7
                  c.xor      s1, a0
                  srli       a3, ra, 3
                  divu       s6, sp, s0
                  xori       s8, s2, 739
                  remu       s7, gp, a5
                  srli       a7, ra, 19
                  c.li       a6, -1
                  mulh       s8, s8, s3
                  sltu       s7, a3, zero
                  divu       s1, t2, s0
                  divu       s4, s5, s0
                  c.andi     a2, 3
                  mulhsu     t1, ra, s2
                  c.or       a5, a2
                  c.xor      a1, a3
                  add        s4, a3, a0
                  c.add      s10, a4
                  rem        s2, a3, a3
                  slti       tp, a1, -749
                  and        s4, zero, s6
                  c.and      a3, a5
                  c.li       s6, -1
                  sub        a6, t5, t1
                  div        ra, s7, a3
                  c.mv       s4, a0
                  sltiu      t0, s1, 410
                  slli       s4, gp, 30
                  srai       a6, s8, 12
                  nop
                  c.slli     a2, 20
                  remu       a3, sp, s5
                  c.srai     a2, 10
                  srl        t2, s0, s5
                  sltu       t5, a4, s10
                  c.or       a5, a4
                  c.addi     s8, -1
                  c.mv       t0, a3
                  slt        s9, tp, t6
                  c.sub      a5, a2
                  add        sp, ra, zero
                  sra        s7, t2, s5
                  mulhu      sp, a1, s5
                  lui        s1, 227586
                  srli       s1, a2, 31
                  c.xor      a5, a5
                  c.nop
                  slti       s8, t4, -942
                  srli       a1, a1, 28
                  srl        s5, gp, zero
                  c.srai     s0, 25
                  add        gp, t6, t1
                  c.addi16sp sp, 368
                  c.nop
                  sltu       s8, t0, s4
                  mulhu      s4, s2, sp
                  slti       t4, s9, -785
                  ori        zero, s7, 23
                  andi       s10, a5, -694
                  c.and      a0, a1
                  auipc      s5, 507798
                  srai       t2, s11, 2
                  xori       t2, t1, 374
                  c.or       a1, s1
                  mulh       t4, s5, a6
                  remu       t0, gp, a6
                  slt        t5, s1, a1
                  ori        tp, zero, 446
                  sra        s6, a0, a7
                  c.srli     a3, 18
                  addi       s4, t0, -542
                  c.addi     s0, 7
                  c.li       s2, -1
                  c.add      s1, s9
                  or         t6, a1, s9
                  srl        t4, t1, t5
                  divu       tp, s3, s11
                  xori       t6, a4, -795
                  xori       a2, t0, 967
                  div        zero, t3, s8
                  add        s6, s10, s0
                  c.srai     a2, 7
                  xori       t4, a2, 949
                  c.andi     a5, -1
                  divu       a0, s3, s0
                  c.and      a5, a0
                  add        a7, t1, t4
                  mulhu      gp, t1, a0
                  c.sub      a2, a1
                  c.addi     s5, -1
                  srai       a5, s9, 30
                  add        t0, a5, t2
                  lui        ra, 359335
                  c.addi     t4, 17
                  c.sub      a2, a1
                  c.srai     s0, 6
                  sltu       s2, s8, t5
                  mulhsu     s2, s9, sp
                  sltiu      s8, s11, 34
                  c.lui      s9, 19
                  remu       t3, t3, a5
                  sub        sp, s3, s4
                  remu       s0, s3, a5
                  xor        a2, t6, s10
                  c.addi16sp sp, -16
                  c.addi16sp sp, 144
                  c.nop
                  c.mv       t6, a5
                  sltiu      a6, zero, 80
                  xor        sp, t6, t2
                  c.and      a5, a3
                  slli       a1, s3, 29
                  srl        t6, t5, s2
                  slti       tp, a0, 760
                  c.srai     a2, 11
                  xor        s5, s0, t0
                  srli       s4, s8, 29
                  c.nop
                  div        a5, a6, a5
                  c.addi     tp, -1
                  sub        gp, t1, t0
                  lui        t6, 977940
                  srli       t1, s2, 15
                  mulh       s5, a3, t1
                  mulh       s10, a1, a5
                  srai       s7, s10, 18
                  sltu       t5, s7, a1
                  slt        s9, t0, s6
                  c.add      a6, a3
                  slt        s1, s10, t3
                  c.addi16sp sp, -16
                  remu       sp, ra, a4
                  mulh       s7, s6, s1
                  c.addi16sp sp, -16
                  add        ra, a2, a7
                  andi       ra, s7, 807
                  c.lui      s10, 17
                  sltiu      a5, sp, -350
                  slli       a6, a1, 31
                  sll        s8, a7, sp
                  xori       s9, s3, 498
                  c.and      s0, a4
                  c.and      a5, a1
                  srli       a5, s11, 9
                  c.srli     a3, 30
                  c.mv       s2, t4
                  sltiu      a6, a3, 33
                  and        zero, a2, a3
                  c.srai     a5, 3
                  c.li       t3, -1
                  remu       gp, s0, sp
                  c.nop
                  sra        s0, a5, a6
                  add        a6, a4, s2
                  sll        a1, a0, ra
                  c.add      a2, s3
                  c.lui      tp, 20
                  andi       a0, a3, 433
                  slti       gp, a3, 820
                  remu       t2, a5, t1
                  c.andi     a1, 24
                  sll        s8, t2, s11
                  sll        t2, t5, s0
                  c.mv       s10, s1
                  c.sub      a2, a1
                  nop
                  c.andi     a5, -1
                  mul        a0, s8, tp
                  c.addi     t5, -1
                  c.srli     a3, 17
                  c.addi16sp sp, -16
                  slt        t5, s6, s7
                  sra        t1, a6, a5
                  sll        a3, t1, s4
                  rem        t2, s10, s10
                  c.srai     s1, 17
                  lui        s10, 728537
                  mulhu      t0, t2, zero
                  slli       s2, t0, 19
                  c.srai     a0, 31
                  c.nop
                  c.addi     s0, -1
                  slt        zero, ra, t2
                  c.xor      s1, a2
                  c.srli     s0, 12
                  andi       s8, a7, 808
                  remu       a3, s3, a3
                  c.srai     s0, 13
                  c.slli     sp, 2
                  srl        t2, a6, s1
                  slt        s5, t4, a1
                  c.addi     s4, 15
                  mulhu      s9, s8, sp
                  lui        t2, 790990
                  srai       tp, s6, 9
                  mul        zero, s9, s6
                  remu       sp, s5, t1
                  add        gp, s1, s1
                  c.lui      tp, 9
                  nop
                  c.li       gp, 13
                  addi       sp, s5, -152
                  c.nop
                  c.srli     a2, 28
                  c.andi     a1, 23
                  sltu       sp, t3, s4
                  auipc      t3, 78307
                  addi       s2, s0, -256
                  slli       a3, s3, 3
                  srli       t0, s0, 16
                  xori       t0, t0, -187
                  c.xor      s0, a3
                  andi       s7, a3, 432
                  addi       s8, s5, -963
                  mul        a6, gp, ra
                  remu       t0, a3, s4
                  sra        s2, t0, s3
                  c.lui      s0, 18
                  addi       s7, s7, -23
                  sub        t6, s3, a3
                  slt        ra, s5, t3
                  div        a1, gp, s1
                  c.or       s1, s1
                  rem        s6, s7, t1
                  ori        s1, a6, -919
                  srli       s7, t5, 16
                  sltu       a3, a4, a7
                  slt        s5, t3, a2
                  c.and      a0, s1
                  srl        s10, t5, a7
                  sll        s4, s10, ra
                  addi       s7, a1, -899
                  mulhsu     t4, t4, s11
                  slti       s0, t3, 586
                  c.andi     a1, 25
                  andi       s5, a5, -384
                  xor        sp, a0, a3
                  auipc      s0, 1014823
                  sra        t0, tp, t4
                  addi       ra, a3, -626
                  sll        s10, s5, a0
                  divu       s7, t2, s4
                  c.srli     s1, 12
                  c.srai     a5, 26
                  c.or       s0, a4
                  andi       t5, s5, 415
                  c.srai     a1, 5
                  addi       s1, a7, -225
                  c.nop
                  sra        s4, gp, t1
                  slti       t5, a2, -148
                  srai       t1, s3, 29
                  srl        s6, a1, ra
                  sra        a0, s1, a4
                  c.srli     a5, 5
                  ori        t5, s9, -18
                  or         s0, s0, s7
                  divu       tp, s3, t4
                  srli       tp, ra, 12
                  slt        a7, ra, s1
                  ori        s0, s10, 139
                  div        a2, s6, t1
                  sll        tp, s1, s3
                  xori       t2, a0, 598
                  c.and      a2, a1
                  addi       a6, sp, 523
                  slli       tp, s4, 0
                  srl        t5, t2, s4
                  c.srli     a1, 13
                  xor        t5, s4, a0
                  c.sub      s0, a0
                  nop
                  mulhsu     t3, s1, a3
                  mulhu      a3, a1, t3
                  xori       s2, tp, 431
                  remu       s10, t5, s7
                  mulh       t0, s8, s1
                  srai       a0, s2, 26
                  c.srli     a1, 28
                  c.and      a3, s1
                  c.sub      a0, a5
                  c.srai     a2, 21
                  c.xor      a1, a4
                  mulhu      a2, zero, zero
                  srli       s9, s9, 17
                  remu       s10, tp, s0
                  auipc      s2, 563386
                  lui        a1, 557809
                  c.or       a0, a1
                  sub        s4, s10, s3
                  or         s10, s5, sp
                  c.addi16sp sp, 384
                  or         t5, s5, s10
                  c.slli     gp, 11
                  c.mv       s5, tp
                  slli       t3, ra, 31
                  c.slli     a6, 8
                  mulhu      sp, s6, t2
                  rem        a7, t5, s6
                  c.nop
                  srli       t0, s11, 23
                  slt        a0, t6, t4
                  srli       a0, t0, 4
                  sltiu      t4, t3, -816
                  mulhu      a6, s1, t3
                  c.or       a1, s1
                  c.sub      a2, a4
                  srai       a6, a3, 1
                  c.or       a5, a5
                  sub        t4, a6, s0
                  mulh       s2, t4, s0
                  slli       s8, a5, 11
                  andi       s2, a1, 799
                  c.srai     s1, 18
                  slti       s10, s0, 307
                  c.or       a0, a0
                  or         sp, s11, a7
                  c.srli     s0, 23
                  or         t1, s11, a4
                  slt        s2, sp, a3
                  or         ra, s2, zero
                  xor        s2, s8, s3
                  auipc      s6, 388792
                  slt        a7, t1, t1
                  add        s8, a2, s8
                  sub        a1, t1, a7
                  sra        t3, ra, a1
                  mulhu      a6, sp, tp
                  mulhu      s4, s2, sp
                  xori       s7, t4, -356
                  c.srai     s1, 18
                  c.andi     a0, 15
                  c.nop
                  andi       s5, a1, 395
                  slli       t6, s8, 13
                  divu       a6, t1, s3
                  c.nop
                  sra        tp, t6, a4
                  rem        t0, s1, a3
                  c.addi     s8, -1
                  srai       ra, s6, 7
                  c.lui      t4, 9
                  sub        a7, s1, a0
                  c.andi     a3, -1
                  c.lui      t3, 5
                  c.addi16sp sp, 64
                  lui        s10, 760041
                  div        a1, s7, s2
                  div        t3, t6, t5
                  srli       a6, s6, 29
                  add        ra, t1, s8
                  slt        s4, t2, a6
                  c.add      ra, s9
                  nop
                  c.add      t5, s2
                  sll        t1, sp, t4
                  sltu       a6, s6, a0
                  c.srai     a0, 5
                  nop
                  addi       s0, gp, 140
                  c.slli     tp, 20
                  c.add      t1, t0
                  slli       s8, t2, 4
                  c.addi     s7, -1
                  c.slli     sp, 29
                  c.slli     sp, 1
                  auipc      a2, 586965
                  srli       t2, s1, 8
                  or         t2, s3, a3
                  c.mv       sp, s3
                  c.add      t0, t5
                  c.li       s4, 20
                  c.andi     a2, -1
                  sll        s7, a0, s0
                  c.li       tp, -1
                  srl        s2, a2, t4
                  addi       a6, s6, -628
                  c.and      a2, s0
                  mulh       t0, a6, t4
                  andi       s2, s6, -84
                  slt        s4, t5, s5
                  mulhsu     s6, zero, s10
                  c.li       s6, 25
                  addi       a3, a4, -805
                  c.slli     ra, 24
                  slli       t3, t3, 13
                  remu       s2, s6, s0
                  c.li       gp, -1
                  c.lui      a3, 20
                  sra        s2, a2, t4
                  xor        a3, t6, a2
                  c.slli     sp, 18
                  sra        s9, sp, t3
                  nop
                  c.srai     a2, 26
                  ori        t5, t6, -448
                  auipc      t2, 3438
                  c.slli     gp, 23
                  c.xor      a2, a3
                  c.li       t0, -1
                  xor        s1, s10, a6
                  add        t4, gp, t0
                  srli       t1, t2, 4
                  c.andi     s1, 13
                  divu       a7, t2, s3
                  nop
                  c.slli     s7, 22
                  c.nop
                  c.srai     a2, 14
                  slt        t5, s5, s5
                  c.li       ra, 4
                  c.sub      a1, a1
                  xor        zero, a7, t2
                  sltu       tp, a6, a1
                  srli       gp, t4, 3
                  c.andi     a5, 28
                  andi       tp, s2, 829
                  sub        t1, s8, t1
                  c.or       a1, s1
                  auipc      s0, 750728
                  and        t1, ra, s3
                  slli       s0, s4, 17
                  slli       s5, gp, 12
                  sll        t3, s5, ra
                  c.slli     t1, 18
                  c.or       s1, a3
                  or         t5, s7, s9
                  srl        s4, ra, t1
                  lui        s0, 192911
                  lui        s10, 444232
                  rem        t0, s0, sp
                  div        s1, t3, s2
                  c.mv       a7, tp
                  xori       t3, t3, 419
                  add        a0, t2, tp
                  c.li       a0, 17
                  nop
                  c.or       a3, a5
                  addi       s10, a0, 386
                  lui        a7, 704865
                  c.or       a5, a0
                  div        t2, t3, s2
                  srli       sp, a1, 16
                  c.add      gp, s0
                  c.and      a3, a0
                  srai       t0, s11, 2
                  sltu       a6, s1, a5
                  c.li       s10, 7
                  c.addi     tp, 10
                  divu       ra, s10, s7
                  c.add      s1, s3
                  sll        a6, s4, t2
                  c.srai     a0, 25
                  slti       s6, s7, -91
                  div        s10, s11, a1
                  slli       tp, a5, 12
                  c.nop
                  srli       s4, a2, 22
                  c.li       t4, -1
                  c.addi16sp sp, 400
                  sltiu      t1, s10, -929
                  c.mv       gp, s10
                  mulh       t3, a1, s6
                  or         s6, a6, a6
                  or         a5, ra, s3
                  srli       zero, t3, 29
                  srai       s2, gp, 8
                  c.add      t0, s8
                  c.srli     s0, 5
                  srli       s2, t6, 7
                  c.or       s0, a4
                  slt        a6, s0, s7
                  slti       s0, s5, 34
                  mulhsu     t2, s3, s4
                  auipc      zero, 560051
                  srai       s6, t2, 31
                  addi       s5, a0, -319
                  sltu       s2, s10, t2
                  auipc      a5, 898120
                  c.lui      t0, 11
                  or         s10, s10, a3
                  mulhsu     zero, t6, a5
                  c.slli     s5, 23
                  sub        s1, t1, zero
                  slli       sp, s6, 8
                  c.srli     a3, 9
                  rem        t1, s5, a4
                  div        s6, t4, s9
                  c.li       t1, 23
                  srl        a7, s8, s3
                  sltu       t2, s9, a3
                  addi       a6, gp, -223
                  divu       s10, a7, a7
                  mulhsu     s10, a3, a3
                  ori        s7, a2, 908
                  c.li       a2, -1
                  rem        s8, ra, tp
                  sll        t0, zero, s8
                  divu       s9, s3, s10
                  c.slli     t1, 2
                  auipc      gp, 459104
                  slt        s0, a7, t5
                  srli       s1, a2, 15
                  ori        s4, a2, 116
                  addi       a6, t6, 508
                  sltiu      t1, sp, 809
                  c.lui      tp, 24
                  mulhsu     a3, a2, t5
                  divu       gp, s5, s9
                  lui        t2, 696215
                  mulhsu     t4, s1, s10
                  rem        zero, s7, a0
                  srli       s0, s9, 13
                  mulhu      a6, gp, s1
                  lui        tp, 163739
                  auipc      s4, 834256
                  ori        s1, a4, -225
                  remu       s5, a5, a0
                  mulhu      t3, gp, t6
                  c.srai     a2, 2
                  and        t4, a3, s0
                  srai       a7, t0, 28
                  divu       tp, t3, t0
                  c.li       a0, 5
                  mulhsu     s6, a3, s7
                  sra        ra, t2, s11
                  remu       a7, s11, s8
                  sltiu      tp, a5, 218
                  sltiu      sp, gp, 641
                  mulhsu     s6, a1, a3
                  c.addi16sp sp, -16
                  mul        a2, a2, t0
                  mulhu      s2, s2, a7
                  srai       sp, s2, 28
                  auipc      t1, 901908
                  c.srai     a2, 5
                  c.sub      a1, a4
                  srl        t2, t1, t6
                  c.add      t2, s0
                  remu       ra, s3, s8
                  nop
                  andi       t5, s1, -150
                  remu       zero, s9, gp
                  slt        a5, t5, a1
                  c.addi     t1, -1
                  auipc      s7, 441449
                  c.addi16sp sp, -16
                  sub        s9, t2, a6
                  div        sp, s3, zero
                  srli       tp, s8, 20
                  mul        s5, s10, t6
                  c.li       t4, 2
                  c.srai     a3, 19
                  sltiu      s2, s9, -429
                  c.nop
                  remu       s9, s8, s2
                  mulh       tp, t5, a2
                  c.lui      s10, 12
                  mulhu      s5, s5, a7
                  c.srai     s0, 4
                  addi       a7, a5, -656
                  add        zero, t1, s4
                  sltu       s4, s10, t2
                  mulhsu     tp, t5, a3
                  c.addi     s0, 18
                  c.li       a7, 25
                  remu       s5, a6, sp
                  c.lui      t1, 8
                  xor        s9, s1, s6
                  nop
                  remu       a3, tp, a2
                  c.mv       t2, a6
                  or         a6, a3, zero
                  remu       sp, t0, s9
                  mulhsu     s9, a6, a2
                  nop
                  c.mv       t2, a7
                  slli       s8, t0, 25
                  c.mv       t5, s5
                  c.srli     s0, 22
                  remu       s5, a7, t6
                  addi       s8, s4, 129
                  c.sub      s0, a3
                  xori       s9, s9, -497
                  c.srli     s1, 11
                  mul        sp, t4, a7
                  sll        t2, a6, t3
                  srl        s6, s1, s4
                  sltiu      s6, s2, -860
                  c.lui      s6, 26
                  div        a5, s11, t3
                  c.andi     a3, 19
                  sub        s2, t3, ra
                  sll        t4, s1, s6
                  c.andi     a3, 6
                  mul        t2, gp, t3
                  xori       t0, s0, 291
                  andi       a0, t4, -860
                  c.and      s1, a1
                  add        t2, a3, s2
                  div        s1, t4, a3
                  c.addi16sp sp, -16
                  sra        gp, a1, s5
                  auipc      t0, 807528
                  srai       a0, t3, 13
                  mulhsu     s7, t2, s0
                  mulh       a2, t3, s2
                  c.add      s9, s10
                  remu       gp, gp, a7
                  c.addi     t4, 31
                  mulh       tp, s9, s0
                  sltu       t0, gp, t2
                  xori       a7, s8, -82
                  auipc      zero, 30164
                  mulh       s6, s2, a2
                  andi       s0, a4, -198
                  sltu       s7, a0, t5
                  c.sub      a3, s1
                  xori       zero, a7, -616
                  remu       a3, s1, a7
                  c.xor      s1, a5
                  mulhsu     s0, s4, s8
                  c.nop
                  c.and      a2, a4
                  c.lui      a2, 15
                  c.addi16sp sp, 80
                  srl        t6, t5, s8
                  sltiu      t0, a6, 326
                  sub        a6, t0, s7
                  c.nop
                  c.xor      s0, a3
                  sltu       t0, tp, s0
                  c.srli     a2, 3
                  sltu       t6, s8, t5
                  c.xor      a3, a1
                  sra        t3, s4, s10
                  mulh       a2, a6, a3
                  slt        s9, a0, s3
                  and        a6, s10, s10
                  srai       t5, s9, 22
                  rem        s9, s0, t4
                  c.slli     t0, 29
                  rem        a0, t3, s4
                  sll        a1, s5, a0
                  c.slli     t6, 21
                  slti       gp, sp, 208
                  mul        s2, sp, t2
                  c.lui      ra, 4
                  auipc      s4, 682491
                  srli       t6, a1, 8
                  slti       a7, s5, -225
                  sll        a6, s11, s8
                  srli       s2, a3, 21
                  srai       t2, s4, 11
                  c.and      a1, s0
                  remu       t6, s5, s5
                  c.add      s9, t1
                  slti       s1, s0, 473
                  divu       sp, t0, s9
                  c.sub      a1, a2
                  c.xor      a1, a2
                  c.addi     ra, 23
                  rem        s5, a0, a4
                  c.addi     sp, 26
                  c.li       a2, 18
                  c.andi     a3, 4
                  c.lui      a2, 19
                  xori       zero, s6, -705
                  mulh       zero, s2, a1
                  and        a2, a7, a5
                  sltu       s7, s11, a4
                  xori       s4, a1, -70
                  srli       zero, t2, 17
                  auipc      t0, 949382
                  c.srai     a2, 4
                  or         ra, t6, a5
                  c.lui      s8, 14
                  lui        t1, 401056
                  c.addi     gp, 15
                  lui        sp, 723933
                  c.andi     a1, -1
                  auipc      a6, 579002
                  sltu       a6, a1, s4
                  nop
                  sub        s0, t5, t2
                  c.nop
                  c.li       tp, -1
                  c.lui      s9, 4
                  c.sub      a1, a5
                  c.li       t0, 6
                  sra        a6, a2, s4
                  slti       s1, t2, -368
                  divu       a1, s6, s11
                  c.sub      a3, a2
                  c.slli     s1, 8
                  remu       a0, s2, t5
                  sll        a5, tp, s4
                  mulhu      s10, a0, s5
                  c.xor      a2, a0
                  c.addi     a3, -1
                  andi       s8, t0, 206
                  c.srai     a1, 17
                  rem        ra, s4, a4
                  addi       t4, a5, -66
                  auipc      t0, 1041890
                  c.srli     a2, 22
                  c.lui      t2, 1
                  srai       s2, t0, 3
                  rem        zero, s9, s8
                  add        a3, t3, tp
                  rem        t6, s5, s5
                  andi       s0, gp, -697
                  auipc      ra, 397932
                  add        s8, t6, t4
                  andi       s8, sp, 586
                  ori        t1, a2, 289
                  mulhu      a0, a0, a6
                  c.lui      t6, 12
                  c.addi16sp sp, 128
                  or         s4, a0, a7
                  addi       a2, a0, 554
                  c.srai     a5, 25
                  sra        sp, t4, s7
                  and        t5, a4, a3
                  slli       s8, a0, 28
                  c.srli     s1, 9
                  lui        s7, 616721
                  xor        t3, s5, s3
                  srl        t3, s5, s7
                  xori       a0, t4, -972
                  remu       gp, gp, ra
                  c.srli     s0, 1
                  mulh       t3, ra, tp
                  sra        s6, t1, s7
                  c.addi     s4, 1
                  slti       zero, s6, 757
                  slti       a7, a1, -413
                  c.or       a2, a0
                  sll        t0, a5, t4
                  c.srli     a3, 10
                  slti       t3, s11, -736
                  srai       a0, s8, 8
                  xori       gp, s4, -518
                  sra        a5, s6, s7
                  auipc      t0, 408208
                  c.srli     a5, 2
                  slli       t2, s1, 2
                  addi       tp, ra, 711
                  mulhsu     s10, t5, t2
                  divu       t6, a5, t4
                  sra        t0, gp, t2
                  remu       s10, tp, s5
                  c.addi     gp, -1
                  c.slli     sp, 9
                  remu       s7, s1, a7
                  c.slli     tp, 19
                  and        s2, t2, sp
                  c.li       s2, -1
                  sltu       a1, s0, s9
                  c.andi     a0, -1
                  c.srli     s0, 14
                  div        s7, s3, sp
                  mul        t1, s7, s6
                  c.andi     s1, 31
                  nop
                  c.mv       a1, s1
                  c.lui      a6, 23
                  sll        s1, a3, s3
                  c.nop
                  remu       tp, t2, t6
                  divu       t6, s10, t6
                  ori        s8, s11, -297
                  div        s4, s2, s9
                  srli       t4, s7, 25
                  auipc      tp, 634398
                  srai       s0, a7, 21
                  c.or       s1, a3
                  sltiu      s2, t4, 574
                  sltiu      s8, a3, 288
                  srai       tp, gp, 21
                  mulh       s7, a2, s3
                  add        a6, s10, a1
                  c.sub      a0, a1
                  nop
                  c.addi     t2, 24
                  c.mv       ra, a0
                  ori        t4, s4, -89
                  c.srai     s0, 12
                  c.and      a2, s1
                  c.slli     a1, 5
                  or         zero, sp, ra
                  and        s10, t1, ra
                  xori       t0, t6, 860
                  c.nop
                  c.srli     a2, 19
                  mulhu      t6, a2, s11
                  rem        s10, t0, t6
                  c.addi16sp sp, -16
                  srli       a5, s3, 29
                  c.andi     a1, -1
                  slli       t4, s3, 20
                  srai       a5, s2, 7
                  mulhu      zero, tp, s9
                  slli       a2, s9, 9
                  slli       s0, t1, 8
                  srai       tp, a3, 28
                  c.xor      s0, a2
                  remu       a6, ra, t4
                  c.srli     a2, 14
                  ori        s1, a5, 672
                  srl        s9, t2, t5
                  div        a6, t6, gp
                  mulh       a5, s6, s7
                  c.srli     a1, 19
                  sltu       s9, s9, s0
                  andi       gp, s10, 839
                  c.mv       a5, s8
                  c.sub      a2, a3
                  auipc      t0, 667278
                  c.xor      a0, a1
                  auipc      t1, 1019626
                  remu       s5, s4, a3
                  nop
                  c.nop
                  slt        s6, s3, t5
                  auipc      s5, 876025
                  c.addi     a5, -1
                  sltu       s10, t6, s1
                  ori        ra, a5, 443
                  sra        t2, ra, a4
                  mulhu      t6, s1, a4
                  div        s6, s9, a6
                  c.slli     s6, 7
                  add        s0, a6, s10
                  andi       a0, gp, -376
                  c.mv       s10, a6
                  srli       t2, t3, 5
                  c.add      a5, t3
                  mulhsu     sp, a4, t3
                  c.and      s0, a5
                  mulhsu     a5, s6, s6
                  andi       t2, t4, 245
                  rem        t2, s0, s9
                  c.xor      s0, s1
                  c.sub      a3, a3
                  nop
                  mul        t0, s0, a7
                  xor        t4, s0, s4
                  andi       t4, t4, 130
                  sltiu      a1, s3, 516
                  srli       a3, s2, 24
                  c.add      s5, a0
                  mulhu      t6, t4, t6
                  srai       t6, s5, 7
                  slti       gp, t2, 17
                  mulh       s1, t1, gp
                  c.andi     s1, 7
                  slli       tp, t4, 26
                  xor        a7, a0, sp
                  div        t3, s7, a5
                  c.add      s5, a5
                  c.andi     a1, -1
                  c.li       s7, -1
                  sltu       t2, s6, a1
                  mulhu      gp, s6, t2
                  c.srai     a0, 15
                  srl        a1, s1, a5
                  c.lui      a5, 4
                  c.xor      a0, s1
                  div        t6, zero, s10
                  nop
                  c.xor      s1, a2
                  srl        ra, t5, s1
                  rem        s5, s11, s5
                  slli       a2, s8, 23
                  nop
                  c.addi16sp sp, -16
                  srli       a2, s8, 14
                  slti       ra, a3, 583
                  or         s1, a0, a4
                  c.sub      s0, a2
                  andi       zero, s8, -553
                  c.or       a2, a1
                  mulh       s8, s6, a7
                  xor        a2, t0, s4
                  c.srli     a1, 4
                  c.or       a0, s0
                  auipc      a2, 56348
                  mul        t2, t4, gp
                  c.li       t2, -1
                  andi       s9, a4, 9
                  slti       t5, s2, 743
                  sll        s7, t4, s10
                  xor        s2, a3, s5
                  c.andi     a3, -1
                  add        s2, s1, s1
                  sra        t2, t2, a5
                  slt        s10, s3, t1
                  slli       s7, s0, 3
                  auipc      t0, 187663
                  add        s6, t4, t5
                  mulhsu     t6, t3, a3
                  c.add      s10, s0
                  slli       gp, s5, 24
                  slt        s5, t2, s0
                  c.mv       t4, s11
                  addi       t6, tp, -744
                  srai       a7, t1, 29
                  div        s1, s3, s3
                  srl        a1, t1, t0
                  c.slli     s5, 16
                  div        s8, a0, a3
                  nop
                  c.slli     s0, 29
                  c.add      ra, gp
                  and        s10, s2, a7
                  c.li       t6, 19
                  c.slli     s9, 22
                  c.srli     s1, 15
                  slli       s6, s3, 16
                  c.addi16sp sp, -16
                  c.li       a1, -1
                  c.lui      s7, 28
                  srli       t0, s11, 17
                  c.mv       s9, a2
                  c.lui      a2, 30
                  sltiu      a0, t0, 1004
                  sltiu      t4, s6, -609
                  c.addi16sp sp, 208
                  lui        t0, 117904
                  sra        a7, t6, s3
                  c.and      a0, s0
                  or         t0, s11, a6
                  divu       a1, a1, s8
                  c.xor      a2, s0
                  xor        zero, a2, t0
                  sltiu      s4, s10, 741
                  c.addi16sp sp, 336
                  sra        a3, s5, tp
                  mulhsu     t3, gp, t4
                  mulhsu     t1, s2, sp
                  mulh       ra, a3, t6
                  c.srli     s1, 22
                  mulhu      s9, s7, tp
                  c.and      a2, s1
                  srai       s1, t5, 2
                  sra        a1, a5, a0
                  sltiu      s7, t0, 749
                  div        a1, t0, a2
                  srai       s5, t4, 14
                  sub        sp, tp, a4
                  c.and      a3, s1
                  slli       t2, t0, 3
                  c.sub      a3, s1
                  c.addi     t0, 8
                  divu       t4, a5, a2
                  remu       s6, t3, a1
                  c.xor      a2, a4
                  c.xor      s1, a1
                  sra        t4, t6, a7
                  c.nop
                  or         s0, t1, gp
                  c.mv       a0, a1
                  c.sub      a3, a0
                  sltu       s0, t2, t3
                  mulhu      a5, s11, a3
                  mulh       a0, a0, t4
                  c.srai     a3, 23
                  sltu       a2, a4, a1
                  addi       a2, a1, -748
                  addi       a5, s8, 269
                  c.or       a1, a4
                  ori        s7, zero, -783
                  ori        t6, t6, -396
                  slti       a6, s6, -1011
                  sub        zero, a2, s7
                  xori       a7, t4, 782
                  div        s2, a0, s7
                  add        ra, a2, s7
                  mulhu      s9, a1, sp
                  and        zero, a3, s3
                  mulh       a0, a0, ra
                  c.add      a5, a4
                  nop
                  add        a0, s3, zero
                  mulhu      s9, s10, t3
                  c.mv       a2, s7
                  div        s6, t0, s1
                  sltiu      t2, t3, -441
                  or         ra, t5, s8
                  ori        a2, t6, 930
                  slt        s7, sp, s3
                  c.or       a1, a1
                  ori        s2, a1, 836
                  c.srai     a1, 12
                  slti       t5, gp, 690
                  c.add      s10, a1
                  div        a1, s5, t1
                  srai       t6, a1, 10
                  xori       s8, s9, -325
                  rem        t6, a5, s10
                  remu       a3, a0, a4
                  mulhsu     a7, zero, a3
                  nop
                  ori        s8, s9, 718
                  add        s10, s6, tp
                  xori       a7, t0, -500
                  slt        a6, s4, a7
                  c.lui      gp, 7
                  ori        s9, a5, 789
                  mulhu      sp, s11, a7
                  srai       gp, t1, 25
                  srl        t6, s10, t5
                  c.andi     a3, 27
                  slt        sp, a1, zero
                  c.addi     a1, -1
                  c.lui      a5, 11
                  c.andi     a2, -1
                  c.nop
                  c.mv       s7, a0
                  slti       tp, gp, 448
                  srl        t3, a2, t5
                  sltu       gp, s4, s10
                  c.or       s0, a2
                  slt        sp, t3, s4
                  remu       a5, t5, a0
                  div        s5, s0, t0
                  slli       a2, t1, 25
                  c.xor      a2, a5
                  c.li       s5, 28
                  mulhsu     a7, s6, s11
                  c.andi     a0, 0
                  mul        t1, s10, s1
                  c.li       a0, -1
                  mulh       t6, s6, a0
                  and        s7, a0, zero
                  srli       a7, a6, 21
                  div        s5, s11, t6
                  slti       s9, t2, 662
                  c.addi     s2, 15
                  c.li       s4, 4
                  c.addi     tp, 30
                  c.xor      a5, a5
                  c.addi16sp sp, 96
                  nop
                  mulh       a6, s4, zero
                  sub        t5, s0, s10
                  slli       a7, a3, 6
                  srai       a2, a2, 3
                  xori       s2, t3, -1
                  remu       t6, a7, t4
                  c.lui      a6, 1
                  rem        sp, s5, a5
                  lui        ra, 269521
                  nop
                  c.sub      a3, s0
                  ori        tp, s11, -220
                  ori        t6, t2, 480
                  c.addi16sp sp, -16
                  lui        s5, 630302
                  nop
                  c.slli     a6, 24
                  slli       t4, s2, 1
                  c.addi16sp sp, -16
                  c.sub      a1, a5
                  srai       s7, a6, 13
                  c.and      a1, a1
                  mulhu      t0, a5, t5
                  srai       t4, a6, 1
                  c.slli     a0, 15
                  c.srai     a5, 18
                  divu       s8, s2, s0
                  mul        t1, a0, a3
                  sltu       tp, a4, zero
                  xor        zero, a7, t0
                  srl        s10, sp, t0
                  ori        t0, s1, 795
                  auipc      a1, 560203
                  c.srli     s0, 29
                  ori        t6, gp, 945
                  sltiu      s2, t1, 377
                  c.mv       t4, s4
                  auipc      t2, 540688
                  mulh       a6, s8, t6
                  c.mv       t5, a1
                  mulh       s4, a4, a0
                  c.and      s1, a4
                  rem        a1, s2, s9
                  c.slli     s7, 11
                  c.or       a5, a3
                  c.mv       gp, t3
                  add        a3, s2, a1
                  c.and      a3, a3
                  auipc      ra, 420166
                  add        a6, a2, t0
                  ori        a6, tp, 440
                  c.addi     ra, 1
                  mulhsu     s10, t4, zero
                  mulh       s1, t3, s3
                  mulhu      s8, t1, tp
                  c.add      ra, t5
                  c.srli     a1, 16
test_done:        
                  li gp, 1
                  ecall
write_tohost:     
                  sw gp, tohost, t5

_exit:            
                  j write_tohost

init_machine_mode:
                  li x11, 0x81800
                  csrw 0x300, x11 # MSTATUS
                  li x11, 0x0
                  csrw 0x304, x11 # MIE
                  mret
.data
.pushsection .tohost,"aw",@progbits;
.align 6; .global tohost; tohost: .dword 0;
.align 6; .global fromhost; fromhost: .dword 0;
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
                  csrrw x27, 0x340, x27
                  add x27, x14, zero
                  1: addi x27, x27, -124
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_2:
                  csrrw x27, 0x340, x27
                  add x27, x14, zero
                  1: addi x27, x27, -124
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_3:
                  csrrw x27, 0x340, x27
                  add x27, x14, zero
                  1: addi x27, x27, -124
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_4:
                  csrrw x27, 0x340, x27
                  add x27, x14, zero
                  1: addi x27, x27, -124
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_5:
                  csrrw x27, 0x340, x27
                  add x27, x14, zero
                  1: addi x27, x27, -124
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_6:
                  csrrw x27, 0x340, x27
                  add x27, x14, zero
                  1: addi x27, x27, -124
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_7:
                  csrrw x27, 0x340, x27
                  add x27, x14, zero
                  1: addi x27, x27, -124
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_8:
                  csrrw x27, 0x340, x27
                  add x27, x14, zero
                  1: addi x27, x27, -124
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_9:
                  csrrw x27, 0x340, x27
                  add x27, x14, zero
                  1: addi x27, x27, -124
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_10:
                  csrrw x27, 0x340, x27
                  add x27, x14, zero
                  1: addi x27, x27, -124
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_11:
                  csrrw x27, 0x340, x27
                  add x27, x14, zero
                  1: addi x27, x27, -124
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_12:
                  csrrw x27, 0x340, x27
                  add x27, x14, zero
                  1: addi x27, x27, -124
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_13:
                  csrrw x27, 0x340, x27
                  add x27, x14, zero
                  1: addi x27, x27, -124
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_14:
                  csrrw x27, 0x340, x27
                  add x27, x14, zero
                  1: addi x27, x27, -124
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
                  j mmode_intr_handler
                  1: j test_done

mmode_intr_vector_15:
                  csrrw x27, 0x340, x27
                  add x27, x14, zero
                  1: addi x27, x27, -124
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  csrr x11, 0x342 # MCAUSE
                  srli x11, x11, 0x1f
                  beqz x11, 1f
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
                  csrrw x27, 0x340, x27
                  add x27, x14, zero
                  1: addi x27, x27, -124
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  csrr x11, 0x341 # MEPC
                  csrr x11, 0x342 # MCAUSE
                  li x2, 0x3 # BREAKPOINT
                  beq x11, x2, ebreak_handler
                  li x2, 0x8 # ECALL_UMODE
                  beq x11, x2, ecall_handler
                  li x2, 0x9 # ECALL_SMODE
                  beq x11, x2, ecall_handler
                  li x2, 0xb # ECALL_MMODE
                  beq x11, x2, ecall_handler
                  li x2, 0x1
                  beq x11, x2, instr_fault_handler
                  li x2, 0x5
                  beq x11, x2, load_fault_handler
                  li x2, 0x7
                  beq x11, x2, store_fault_handler
                  li x2, 0xc
                  beq x11, x2, pt_fault_handler
                  li x2, 0xd
                  beq x11, x2, pt_fault_handler
                  li x2, 0xf
                  beq x11, x2, pt_fault_handler
                  li x2, 0x2 # ILLEGAL_INSTRUCTION
                  beq x11, x2, illegal_instr_handler
                  csrr x2, 0x343 # MTVAL
                  1: jal x1, test_done 

ebreak_handler:   
                  csrr  x11, mepc
                  addi  x11, x11, 4
                  csrw  mepc, x11
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 124
                  add x14, x27, zero
                  csrrw x27, 0x340, x27
                  mret

ecall_handler:    
                  la x11, _start
                  sw x0, 0(x11)
                  sw x1, 4(x11)
                  sw x2, 8(x11)
                  sw x3, 12(x11)
                  sw x4, 16(x11)
                  sw x5, 20(x11)
                  sw x6, 24(x11)
                  sw x7, 28(x11)
                  sw x8, 32(x11)
                  sw x9, 36(x11)
                  sw x10, 40(x11)
                  sw x11, 44(x11)
                  sw x12, 48(x11)
                  sw x13, 52(x11)
                  sw x14, 56(x11)
                  sw x15, 60(x11)
                  sw x16, 64(x11)
                  sw x17, 68(x11)
                  sw x18, 72(x11)
                  sw x19, 76(x11)
                  sw x20, 80(x11)
                  sw x21, 84(x11)
                  sw x22, 88(x11)
                  sw x23, 92(x11)
                  sw x24, 96(x11)
                  sw x25, 100(x11)
                  sw x26, 104(x11)
                  sw x27, 108(x11)
                  sw x28, 112(x11)
                  sw x29, 116(x11)
                  sw x30, 120(x11)
                  sw x31, 124(x11)
                  j write_tohost
illegal_instr_handler:
                  csrr  x11, mepc
                  addi  x11, x11, 4
                  csrw  mepc, x11
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 124
                  add x14, x27, zero
                  csrrw x27, 0x340, x27
                  mret

instr_fault_handler:
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 124
                  add x14, x27, zero
                  csrrw x27, 0x340, x27
                  mret

load_fault_handler:
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 124
                  add x14, x27, zero
                  csrrw x27, 0x340, x27
                  mret

store_fault_handler:
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 124
                  add x14, x27, zero
                  csrrw x27, 0x340, x27
                  mret

pt_fault_handler: 
                  nop

.align 12
mmode_intr_handler:
                  csrr  x11, 0x300 # MSTATUS;
                  csrr  x11, 0x304 # MIE;
                  csrr  x11, 0x344 # MIP;
                  csrrc x11, 0x344, x11 # MIP;
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 124
                  add x14, x27, zero
                  csrrw x27, 0x340, x27
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
