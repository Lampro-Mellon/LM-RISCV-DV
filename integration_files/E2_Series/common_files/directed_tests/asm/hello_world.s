
.section .text
.global _start
_start:

	add x5, x0, x0
	addi x6, x0, 7
	addi x7, x6, 8
	

    li x3, 0xd0580000
    la x4, hw_data

loop:
   lb x5, 0(x4)
   sb x5, 0(x3)
   addi x4, x4, 1
   bnez x5, loop

_finish:
    li x3, 0xd0580000
    addi x5, x0, 0xff
    sb x5, 0(x3)
    beq x0, x0, _finish
.rept 100
    nop
.endr

.global hw_data
.data
hw_data:
.ascii "----------------------------------\n"
.ascii "Hello World !!\n"
.ascii "----------------------------------\n"
.byte 0
