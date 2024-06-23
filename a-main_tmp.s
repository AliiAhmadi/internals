	.file	"main_tmp.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d %d"
.LC1:
	.string	"%lld"
.LC2:
	.string	"%lld\n"
	.text
	.globl	testCase
	.type	testCase, @function
testCase:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-56(%rbp), %rdx
	leaq	-60(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	$0, -52(%rbp)
	jmp	.L2
.L3:
	movl	-52(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	addl	$1, -52(%rbp)
.L2:
	movl	-56(%rbp), %eax
	cmpl	%eax, -52(%rbp)
	jl	.L3
	movl	$0, -48(%rbp)
	jmp	.L4
.L5:
	movl	-48(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	addl	$1, -48(%rbp)
.L4:
	movl	-56(%rbp), %eax
	cmpl	%eax, -48(%rbp)
	jl	.L5
	movq	$0, -40(%rbp)
	movabsq	$100000000000, %rax
	movq	%rax, -32(%rbp)
	jmp	.L6
.L11:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	movq	%rax, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -44(%rbp)
	jmp	.L7
.L9:
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rax
	subq	$1, %rax
	movl	-44(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rsi
	movq	-80(%rbp), %rdx
	addq	%rsi, %rdx
	movq	(%rdx), %rdi
	cqto
	idivq	%rdi
	addq	$1, %rax
	imulq	%rcx, %rax
	addq	%rax, -24(%rbp)
	movl	-60(%rbp), %eax
	cltq
	cmpq	%rax, -24(%rbp)
	jl	.L8
	movl	-60(%rbp), %eax
	cltq
	movq	%rax, -24(%rbp)
.L8:
	addl	$1, -44(%rbp)
.L7:
	movl	-56(%rbp), %eax
	cmpl	%eax, -44(%rbp)
	jl	.L9
	movl	-60(%rbp), %eax
	cltq
	cmpq	%rax, -24(%rbp)
	jl	.L10
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L6
.L10:
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
.L6:
	movq	-32(%rbp), %rax
	subq	-40(%rbp), %rax
	cmpq	$1, %rax
	jg	.L11
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	testCase, .-testCase
	.section	.rodata
.LC3:
	.string	"%d"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1600000, %edi
	call	malloc@PLT
	movq	%rax, -24(%rbp)
	movl	$1600000, %edi
	call	malloc@PLT
	movq	%rax, -16(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	$0, -28(%rbp)
	jmp	.L15
.L16:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	testCase
	addl	$1, -28(%rbp)
.L15:
	movl	-32(%rbp), %eax
	cmpl	%eax, -28(%rbp)
	jl	.L16
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L18
	call	__stack_chk_fail@PLT
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
