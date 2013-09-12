	.file	"fun_a.c"
	.text
	.globl	fun_a
	.type	fun_a, @function
fun_a:
.LFB0:
	.cfi_startproc
	movl	4(%esp), %edx
	movl	$0, %eax
	testl	%edx, %edx
	je	.L2
.L3:
	xorl	%edx, %eax
	shrl	%edx
	jne	.L3
.L2:
	rep
	ret
	.cfi_endproc
.LFE0:
	.size	fun_a, .-fun_a
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
