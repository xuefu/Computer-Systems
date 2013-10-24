	.file	"swap.c"
	.text
	.p2align 4,,15
	.globl	swap
	.type	swap, @function
swap:
.LFB0:
	.cfi_startproc
	movq	bufp0(%rip), %rax
	movl	buf+4(%rip), %ecx
	movq	$buf+4, bufp1(%rip)
	movl	(%rax), %edx
	movl	%ecx, (%rax)
	movl	%edx, buf+4(%rip)
	ret
	.cfi_endproc
.LFE0:
	.size	swap, .-swap
	.comm	bufp1,8,8
	.globl	bufp0
	.data
	.align 8
	.type	bufp0, @object
	.size	bufp0, 8
bufp0:
	.quad	buf
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
