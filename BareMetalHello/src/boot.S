#include "mm.h"

.section ".text.boot"

.globl _start
_start:
	mrs x0, mpidr_el1
	and x0, x0, #0xFF
	cbz x0, master //checks flag register and branches to master if zero
	b proc_hang //otherise branch to hang for non zero cores

proc_hang:
	b proc_hang //inf loop

master:
	adr x0, bss_begin
	adr x1, bss_end
	sub x1, x1, x0
	bl memzero
	bl kernel_main
	b proc_hang //should not reach here
