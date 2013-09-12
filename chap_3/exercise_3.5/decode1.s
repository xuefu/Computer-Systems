	.file	"decode1.c"
	.text
	.globl	decode1
	.type	decode1, @function
decode1:
.LFB0:
	.cfi_startproc
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	movl	%ebx, (%esp)
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	movl	16(%esp), %eax
	movl	20(%esp), %ecx
	movl	24(%esp), %edx
	movl	(%eax), %edi
	.cfi_offset 7, -8
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	(%ecx), %esi
	movl	(%edx), %ebx
	movl	%edi, (%ecx)
	movl	%esi, (%edx)
	movl	%ebx, (%eax)
	movl	(%esp), %ebx
	movl	4(%esp), %esi
	movl	8(%esp), %edi
	addl	$12, %esp
	.cfi_def_cfa_offset 4
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 3
	ret
	.cfi_endproc
.LFE0:
	.size	decode1, .-decode1
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
