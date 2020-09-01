#include "defines.h"

#define ITERATIONS 1
extern int STACK;
void main();


#define STDOUT 0xd0580000

#define dccm_saddr 0xf004000
#define dccm_eaddr 0xf0047ff0
#define ones 0xffffffff
#define zeros 0x00000000 

__asm (".section .text");
__asm (".global _start");
__asm ("_start:");

// Enable Caches in MRAC
//__asm ("li t0, 0x5f555555");
//__asm ("csrw 0x7c0, t0");

// Set stack pointer.
__asm ("la sp, STACK");

__asm ("jal main");

// Write 0xff to STDOUT for TB to termiate test.
__asm (".global _finish");
__asm ("_finish:");
__asm ("li t0, 0xd0580000");
__asm ("addi t1, zero, 0xff");
__asm ("sb t1, 0(t0)");
__asm ("beq x0, x0, _finish");
__asm (".rept 10");
__asm ("nop");
__asm (".endr");


main()
{
volatile int *addr;
/////ADD Code Here/////
addr = (volatile int*)STDOUT;
char arr[37]="Hello, is it me you are looking for!";
for(int i=0; i<sizeof(arr); i++){
//while(*arr!='\0'){
   *addr=arr[i];
   //arr++;
}
	
//////////////////////

 	return(0); 
}



