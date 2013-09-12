	.file	"buffer_overflow.c"
	.text
	.globl	gets
	.type	gets, @function
gets:
.LFB22:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	stdin, %eax
	movl	%eax, (%esp)
	call	_IO_getc
	movl	32(%esp), %ebx
.L3:
	movb	$0, (%ebx)
	addl	$1, %ebx
	movl	stdin, %eax
	movl	%eax, (%esp)
	call	_IO_getc
	jmp	.L3
	.cfi_endproc
.LFE22:
	.size	gets, .-gets
	.globl	echo
	.type	echo, @function
echo:
.LFB23:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$40, %esp
	.cfi_def_cfa_offset 48
	movl	%gs:20, %eax
	movl	%eax, 28(%esp)
	xorl	%eax, %eax
	leal	20(%esp), %ebx
	movl	%ebx, (%esp)
	call	gets
	movl	%ebx, (%esp)
	call	puts
	movl	28(%esp), %eax
	xorl	%gs:20, %eax
	je	.L5
	call	__stack_chk_fail
.L5:
	addl	$40, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_def_cfa_offset 4
	.cfi_restore 3
	.p2align 4,,2
	ret
	.cfi_endproc
.LFE23:
	.size	echo, .-echo
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
