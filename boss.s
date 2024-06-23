	.file	"boss.c"
	.text
	.globl	cmp_
	.type	cmp_, @function
cmp_:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %eax
	movq	-8(%rbp), %rdx
	addq	$4, %rdx
	movl	(%rdx), %edx
	subl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	cmp_, .-cmp_
	.globl	sort
	.type	sort, @function
sort:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	$0, %edi
	movl	$0, %eax
	call	time@PLT
	movl	%eax, %edi
	call	srand@PLT
	call	rand@PLT
	movl	%eax, -16(%rbp)
	movl	$0, -24(%rbp)
	jmp	.L4
.L7:
	movl	$0, -20(%rbp)
	jmp	.L5
.L6:
	call	rand@PLT
	movl	-16(%rbp), %edx
	imull	%edx, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	cltd
	idivl	-44(%rbp)
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	cltd
	idivl	-44(%rbp)
	movl	%edx, -12(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	cltd
	idivl	-44(%rbp)
	movl	-44(%rbp), %eax
	addl	%edx, %eax
	cltd
	idivl	-44(%rbp)
	movl	%edx, -12(%rbp)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	addl	$1, -20(%rbp)
.L5:
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L6
	addl	$1, -24(%rbp)
.L4:
	cmpl	$1, -24(%rbp)
	jle	.L7
	movl	-44(%rbp), %eax
	movslq	%eax, %rsi
	movq	-40(%rbp), %rax
	leaq	cmp_(%rip), %rdx
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rdi
	call	qsort@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	sort, .-sort
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d %d"
.LC2:
	.string	"1"
.LC3:
	.string	"%lld\n"
	.text
	.globl	solve
	.type	solve, @function
solve:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-88(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	jmp	.L9
.L23:
	leaq	-80(%rbp), %rdx
	leaq	-84(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-80(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -40(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, -76(%rbp)
	jmp	.L10
.L11:
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	movl	$8, %edi
	call	malloc@PLT
	movq	%rax, (%rbx)
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cltq
	addq	%rax, -64(%rbp)
	addl	$1, -76(%rbp)
.L10:
	movl	-80(%rbp), %eax
	cmpl	%eax, -76(%rbp)
	jl	.L11
	movl	$0, -76(%rbp)
	jmp	.L12
.L13:
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	addq	$4, %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	addl	$1, -76(%rbp)
.L12:
	movl	-80(%rbp), %eax
	cmpl	%eax, -76(%rbp)
	jl	.L13
	movl	-80(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sort
	movq	$1, -72(%rbp)
	movl	-84(%rbp), %eax
	cltq
	cmpq	%rax, -64(%rbp)
	jl	.L14
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L15
.L14:
	movq	$1, -56(%rbp)
	movabsq	$40000000001, %rax
	movq	%rax, -48(%rbp)
	jmp	.L16
.L20:
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$0, -76(%rbp)
	jmp	.L17
.L18:
	movq	-32(%rbp), %rax
	subq	$1, %rax
	movl	-76(%rbp), %edx
	movslq	%edx, %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-40(%rbp), %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rdx
	addq	$4, %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rbx
	cqto
	idivq	%rbx
	movq	%rax, %rdx
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cltq
	imulq	%rdx, %rax
	addq	%rax, -72(%rbp)
	addl	$1, -76(%rbp)
.L17:
	movl	-80(%rbp), %eax
	cmpl	%eax, -76(%rbp)
	jl	.L18
	movl	-84(%rbp), %eax
	cltq
	cmpq	%rax, -72(%rbp)
	jl	.L19
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.L16
.L19:
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
.L16:
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jl	.L20
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L15:
	movl	$0, -76(%rbp)
	jmp	.L21
.L22:
	movl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	addl	$1, -76(%rbp)
.L21:
	movl	-80(%rbp), %eax
	cmpl	%eax, -76(%rbp)
	jl	.L22
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L9:
	movl	-88(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -88(%rbp)
	testl	%eax, %eax
	jne	.L23
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L24
	call	__stack_chk_fail@PLT
.L24:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	solve, .-solve
	.globl	main
	.type	main, @function
main:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %eax
	call	solve
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
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
