.PHONY: all compile assemble dump clean

all: compile assemble dump

compile:
	riscv64-unknown-elf-gcc -S csr.c
assemble:
	riscv64-unknown-elf-gcc -c csr.s
dump:
	 riscv64-unknown-elf-objdump -d csr.o

clean:
	rm *.s
	rm *.o
