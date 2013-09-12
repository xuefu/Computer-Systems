	.file	"absdiff_cmovl.c"
	.text
	.globl	absdiff
	.type	absdiff, @function
absdiff:
.LFB0:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	8(%esp), %edx
	cmpl	%edx, %eax
	jge	.L2
	subl	%eax, %edx
	movl	%edx, %eax
	ret
.L2:
	subl	%edx, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	absdiff, .-absdiff
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
