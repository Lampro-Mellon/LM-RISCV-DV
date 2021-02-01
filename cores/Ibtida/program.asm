nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
# trap handler
sw x0, 0x8(x2)
addi x6, x0, 1
sw x6, 0(x2)
lw x7, 0(x2)	
waitForIntrToEnd:
	bne x0, x7, waitForIntrToEnd
add x3,x3,x3
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
# program memory
li x2, 0x00001880
li x15, 0x10000000
sw x2, 0(x15)
lw x3, 0(x15)
csrrw x4, 0x300, x3
csrrw x5, 0x300, x4
csrrw x6, 0x300, x0
nop
nop
nop

