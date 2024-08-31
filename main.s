	.file	"main.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC1:
	.ascii "hello world\0"
LC2:
	.ascii "lahaleebo ya7ya7\0"
LC3:
	.ascii "x = %d\12\0"
LC4:
	.ascii "y = %f\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB14:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$32, %esp
	call	___main
	movl	$50, 28(%esp)
	flds	LC0
	fstps	24(%esp)
	movl	$LC1, (%esp)
	call	_puts
	movl	$LC2, (%esp)
	call	_puts
	movl	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_printf
	flds	24(%esp)
	fstpl	4(%esp)
	movl	$LC4, (%esp)
	call	_printf
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE14:
	.section .rdata,"dr"
	.align 4
LC0:
	.long	1078523331
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
