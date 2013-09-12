	.file	"switch_eg.c"
	.text
	.globl	switch_eg
	.type	switch_eg, @function
switch_eg:
.LFB0:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	8(%esp), %edx
	subl	$100, %edx
	cmpl	$6, %edx
	ja	.L8
	jmp	*.L7(,%edx,4)
	.section	.rodata
	.align 4
	.align 4
.L7:
	.long	.L3
	.long	.L8
	.long	.L4
	.long	.L5
	.long	.L6
	.long	.L8
	.long	.L6
	.text
.L3:
	leal	(%eax,%eax,2), %edx
	leal	(%eax,%edx,4), %eax
	ret
.L4:
	addl	$10, %eax
.L5:
	addl	$11, %eax
	ret
.L6:
	imull	%eax, %eax
	ret
.L8:
	movl	$0, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	switch_eg, .-switch_eg
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
