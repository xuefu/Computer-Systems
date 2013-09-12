	.file	"shift_left2_rightn.c"
	.text
	.globl	shift_left2_rightn
	.type	shift_left2_rightn, @function
shift_left2_rightn:
.LFB0:
	.cfi_startproc
	movl	4(%esp), %eax
	sall	$2, %eax
	movl	8(%esp), %ecx
	sarl	%cl, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	shift_left2_rightn, .-shift_left2_rightn
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
