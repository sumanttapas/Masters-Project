	.file	"LockFreeListFinal_4_thread.cpp"
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
.LC0:
	.string	"stoi"
	.section	.text._ZSt4stoiRKSsPji,"axG",@progbits,_ZSt4stoiRKSsPji,comdat
	.weak	_ZSt4stoiRKSsPji
	.type	_ZSt4stoiRKSsPji, @function
_ZSt4stoiRKSsPji:
.LFB665:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZNKSs5c_strEv
	movl	16(%ebp), %edx
	movl	%edx, 16(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	$.LC0, 4(%esp)
	movl	$strtol, (%esp)
	call	_ZN9__gnu_cxx6__stoaIlicIiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PjS9_
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE665:
	.size	_ZSt4stoiRKSsPji, .-_ZSt4stoiRKSsPji
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._ZNSt14numeric_limitsIiE3minEv,"axG",@progbits,_ZNSt14numeric_limitsIiE3minEv,comdat
	.weak	_ZNSt14numeric_limitsIiE3minEv
	.type	_ZNSt14numeric_limitsIiE3minEv, @function
_ZNSt14numeric_limitsIiE3minEv:
.LFB1286:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	$-2147483648, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1286:
	.size	_ZNSt14numeric_limitsIiE3minEv, .-_ZNSt14numeric_limitsIiE3minEv
	.section	.text._ZNSt14numeric_limitsIiE3maxEv,"axG",@progbits,_ZNSt14numeric_limitsIiE3maxEv,comdat
	.weak	_ZNSt14numeric_limitsIiE3maxEv
	.type	_ZNSt14numeric_limitsIiE3maxEv, @function
_ZNSt14numeric_limitsIiE3maxEv:
.LFB1287:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	$2147483647, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1287:
	.size	_ZNSt14numeric_limitsIiE3maxEv, .-_ZNSt14numeric_limitsIiE3maxEv
	.text
	.globl	_Z13constructArgsP4nodeii
	.type	_Z13constructArgsP4nodeii, @function
_Z13constructArgsP4nodeii:
.LFB1367:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	8(%ebp), %eax
	andl	$-4, %eax
	movl	%eax, -4(%ebp)
	cmpl	$1, 12(%ebp)
	jne	.L8
	movl	-4(%ebp), %eax
	orl	$2, %eax
	movl	%eax, -4(%ebp)
.L8:
	cmpl	$1, 16(%ebp)
	jne	.L9
	movl	-4(%ebp), %eax
	orl	$1, %eax
	movl	%eax, -4(%ebp)
.L9:
	movl	-4(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1367:
	.size	_Z13constructArgsP4nodeii, .-_Z13constructArgsP4nodeii
	.globl	_Z10HelpMarkedP4nodeS0_
	.type	_Z10HelpMarkedP4nodeS0_, @function
_Z10HelpMarkedP4nodeS0_:
.LFB1368:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$60, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	12(%ebp), %eax
	andl	$-4, %eax
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z13constructArgsP4nodeii
	movl	%eax, -32(%ebp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z13constructArgsP4nodeii
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, %ecx
	movl	%eax, %ebx
	sarl	$31, %ebx
	movl	-32(%ebp), %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	8(%ebp), %eax
	andl	$-4, %eax
	addl	$4, %eax
	movl	%eax, -44(%ebp)
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%ecx, %esi
	movl	%ebx, %edi
	movl	%esi, %ebx
	movl	%edi, %ecx
	movl	-44(%ebp), %edi
	lock cmpxchg8b	(%edi)
	movl	%edx, -52(%ebp)
	movl	%eax, -56(%ebp)
	movl	12(%ebp), %eax
	andl	$-4, %eax
	movl	%eax, (%esp)
	call	free
	addl	$60, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1368:
	.size	_Z10HelpMarkedP4nodeS0_, .-_Z10HelpMarkedP4nodeS0_
	.globl	_Z10SearchFromiP4node
	.type	_Z10SearchFromiP4node, @function
_Z10SearchFromiP4node:
.LFB1369:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	16(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	.L13
.L18:
	jmp	.L14
.L17:
	movl	16(%ebp), %eax
	andl	$-4, %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	andl	$-4, %eax
	cmpl	%eax, %edx
	jne	.L15
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z10HelpMarkedP4nodeS0_
.L15:
	movl	16(%ebp), %eax
	andl	$-4, %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L14:
	movl	-12(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L16
	movl	16(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L17
	movl	16(%ebp), %eax
	andl	$-4, %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	andl	$-4, %eax
	cmpl	%eax, %edx
	jne	.L17
.L16:
	movl	-12(%ebp), %eax
	andl	$-4, %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jg	.L13
	movl	-12(%ebp), %eax
	movl	%eax, 16(%ebp)
	movl	16(%ebp), %eax
	andl	$-4, %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
.L13:
	movl	-12(%ebp), %eax
	andl	$-4, %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jle	.L18
	movl	8(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 4(%eax)
	nop
	movl	8(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
.LFE1369:
	.size	_Z10SearchFromiP4node, .-_Z10SearchFromiP4node
	.globl	_Z7TryMarkP4node
	.type	_Z7TryMarkP4node, @function
_Z7TryMarkP4node:
.LFB1370:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$60, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
.L22:
	movl	8(%ebp), %eax
	andl	$-4, %eax
	movl	4(%eax), %eax
	movl	%eax, -40(%ebp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z13constructArgsP4nodeii
	movl	%eax, -36(%ebp)
	movl	$0, 8(%esp)
	movl	$1, 4(%esp)
	movl	-40(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z13constructArgsP4nodeii
	movl	%eax, -32(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, %ecx
	movl	%eax, %ebx
	sarl	$31, %ebx
	movl	-36(%ebp), %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	8(%ebp), %eax
	andl	$-4, %eax
	addl	$4, %eax
	movl	%eax, -52(%ebp)
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%ecx, %esi
	movl	%ebx, %edi
	movl	%esi, %ebx
	movl	%edi, %ecx
	movl	-52(%ebp), %edi
	lock cmpxchg8b	(%edi)
	movl	%edx, -44(%ebp)
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L21
	movl	-28(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L21
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z11HelpFlaggedP4nodeS0_
.L21:
	movl	8(%ebp), %eax
	andl	$-4, %eax
	movl	4(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	je	.L22
	addl	$60, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1370:
	.size	_Z7TryMarkP4node, .-_Z7TryMarkP4node
	.globl	_Z11HelpFlaggedP4nodeS0_
	.type	_Z11HelpFlaggedP4nodeS0_, @function
_Z11HelpFlaggedP4nodeS0_:
.LFB1371:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	12(%ebp), %eax
	andl	$-4, %eax
	movl	8(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	12(%ebp), %eax
	andl	$-4, %eax
	movl	4(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L24
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z7TryMarkP4node
.L24:
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z10HelpMarkedP4nodeS0_
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1371:
	.size	_Z11HelpFlaggedP4nodeS0_, .-_Z11HelpFlaggedP4nodeS0_
	.globl	_Z6insertiP4node
	.type	_Z6insertiP4node, @function
_Z6insertiP4node:
.LFB1372:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$92, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	leal	-32(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Z10SearchFromiP4node
	subl	$4, %esp
	movl	-32(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	-60(%ebp), %eax
	andl	$-4, %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L26
	movl	$-1, %eax
	jmp	.L36
.L26:
	movl	$12, (%esp)
	call	malloc
	movl	%eax, -52(%ebp)
	movl	-52(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
.L35:
	movl	-60(%ebp), %eax
	andl	$-4, %eax
	movl	4(%eax), %eax
	movl	%eax, -48(%ebp)
	movl	-48(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L28
	movl	-48(%ebp), %eax
	andl	$-4, %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z11HelpFlaggedP4nodeS0_
	jmp	.L29
.L28:
	movl	-52(%ebp), %eax
	movl	-56(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-56(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z13constructArgsP4nodeii
	movl	%eax, -44(%ebp)
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z13constructArgsP4nodeii
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, %ecx
	movl	%eax, %ebx
	sarl	$31, %ebx
	movl	-44(%ebp), %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	-60(%ebp), %eax
	andl	$-4, %eax
	addl	$4, %eax
	movl	%eax, -92(%ebp)
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%ecx, %esi
	movl	%ebx, %edi
	movl	%esi, %ebx
	movl	%edi, %ecx
	movl	-92(%ebp), %edi
	lock cmpxchg8b	(%edi)
	movl	%edx, -84(%ebp)
	movl	%eax, -88(%ebp)
	movl	-88(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	cmpl	-56(%ebp), %eax
	jne	.L30
	movl	$0, %eax
	jmp	.L36
.L30:
	movl	-36(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L31
	movl	-36(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 4(%esp)
	movl	-60(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z11HelpFlaggedP4nodeS0_
.L31:
	jmp	.L32
.L33:
	movl	-60(%ebp), %eax
	andl	$-4, %eax
	movl	8(%eax), %eax
	movl	%eax, -60(%ebp)
.L32:
	movl	-60(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L33
.L29:
	leal	-80(%ebp), %eax
	movl	-60(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	8(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Z10SearchFromiP4node
	subl	$4, %esp
	movl	-80(%ebp), %eax
	movl	-76(%ebp), %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	-32(%ebp), %eax
	andl	$-4, %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	jne	.L34
	movl	-52(%ebp), %eax
	movl	%eax, (%esp)
	call	free
	movl	$-1, %eax
	jmp	.L36
.L34:
	jmp	.L35
.L36:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1372:
	.size	_Z6insertiP4node, .-_Z6insertiP4node
	.globl	_Z7TryFlagP4nodeS0_
	.type	_Z7TryFlagP4nodeS0_, @function
_Z7TryFlagP4nodeS0_:
.LFB1373:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$76, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
.L45:
	movl	12(%ebp), %eax
	andl	$-4, %eax
	movl	4(%eax), %eax
	cmpl	16(%ebp), %eax
	jne	.L38
	movl	12(%ebp), %eax
	andl	$-4, %eax
	movl	4(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L38
	movl	12(%ebp), %eax
	andl	$-4, %eax
	movl	4(%eax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L38
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	$0, 4(%eax)
	movl	8(%ebp), %eax
	movl	$0, 12(%eax)
	jmp	.L47
.L38:
	movl	$0, 8(%esp)
	movl	$0, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z13constructArgsP4nodeii
	movl	%eax, -44(%ebp)
	movl	$1, 8(%esp)
	movl	$0, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z13constructArgsP4nodeii
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	%eax, %ecx
	movl	%eax, %ebx
	sarl	$31, %ebx
	movl	-44(%ebp), %eax
	movl	%eax, %esi
	movl	%eax, %edi
	sarl	$31, %edi
	movl	12(%ebp), %eax
	andl	$-4, %eax
	addl	$4, %eax
	movl	%eax, -76(%ebp)
	movl	%esi, %eax
	movl	%edi, %edx
	movl	%ecx, %esi
	movl	%ebx, %edi
	movl	%esi, %ebx
	movl	%edi, %ecx
	movl	-76(%ebp), %edi
	lock cmpxchg8b	(%edi)
	movl	%edx, -68(%ebp)
	movl	%eax, -72(%ebp)
	movl	-72(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L40
	movl	-36(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L40
	movl	-36(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L40
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	$1, 4(%eax)
	movl	8(%ebp), %eax
	movl	$0, 12(%eax)
	jmp	.L47
.L40:
	movl	-36(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L41
	movl	-36(%ebp), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L41
	movl	-36(%ebp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L41
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	$0, 4(%eax)
	movl	8(%ebp), %eax
	movl	$0, 12(%eax)
	jmp	.L47
.L41:
	jmp	.L42
.L43:
	movl	12(%ebp), %eax
	andl	$-4, %eax
	movl	8(%eax), %eax
	movl	%eax, 12(%ebp)
.L42:
	movl	12(%ebp), %eax
	andl	$-4, %eax
	movl	4(%eax), %eax
	andl	$2, %eax
	testl	%eax, %eax
	jne	.L43
	movl	16(%ebp), %eax
	andl	$-4, %eax
	movl	(%eax), %eax
	movl	%eax, -60(%ebp)
	fildl	-60(%ebp)
	fldl	.LC1
	fsubrp	%st, %st(1)
	fnstcw	-62(%ebp)
	movzwl	-62(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -64(%ebp)
	fldcw	-64(%ebp)
	fistpl	-60(%ebp)
	fldcw	-62(%ebp)
	movl	-60(%ebp), %edx
	leal	-32(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Z10SearchFromiP4node
	subl	$4, %esp
	movl	-32(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	-32(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	-28(%ebp), %edx
	movl	8(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-32(%ebp), %eax
	movl	%eax, 12(%ebp)
	movl	-28(%ebp), %eax
	cmpl	16(%ebp), %eax
	je	.L44
	movl	8(%ebp), %eax
	movl	$0, (%eax)
	movl	8(%ebp), %eax
	movl	$0, 4(%eax)
	jmp	.L47
.L44:
	jmp	.L45
.L47:
	movl	8(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
.LFE1373:
	.size	_Z7TryFlagP4nodeS0_, .-_Z7TryFlagP4nodeS0_
	.section	.rodata
.LC3:
	.string	"Delete start"
.LC4:
	.string	"Delete sucess %d\n"
	.text
	.globl	_Z11delete_nodeiP4node
	.type	_Z11delete_nodeiP4node, @function
_Z11delete_nodeiP4node:
.LFB1374:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$72, %esp
	movl	$.LC3, (%esp)
	call	puts
	fildl	8(%ebp)
	fldl	.LC1
	fsubrp	%st, %st(1)
	fnstcw	-42(%ebp)
	movzwl	-42(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -44(%ebp)
	fldcw	-44(%ebp)
	fistpl	-48(%ebp)
	fldcw	-42(%ebp)
	movl	-48(%ebp), %edx
	leal	-32(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Z10SearchFromiP4node
	subl	$4, %esp
	movl	-32(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-28(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	andl	$-4, %eax
	movl	(%eax), %eax
	cmpl	8(%ebp), %eax
	je	.L49
	movl	$-1, %eax
	jmp	.L54
.L49:
	leal	-24(%ebp), %eax
	movl	-40(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	-36(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Z7TryFlagP4nodeS0_
	subl	$4, %esp
	movl	-24(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-12(%ebp), %eax
	testl	%eax, %eax
	je	.L51
	movl	-12(%ebp), %eax
	movl	%eax, -40(%ebp)
.L51:
	cmpl	$0, -36(%ebp)
	je	.L52
	movl	-40(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-36(%ebp), %eax
	movl	%eax, (%esp)
	call	_Z11HelpFlaggedP4nodeS0_
.L52:
	movl	-20(%ebp), %eax
	testl	%eax, %eax
	jne	.L53
	movl	$-1, %eax
	jmp	.L54
.L53:
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$.LC4, (%esp)
	call	printf
	movl	$1, %eax
.L54:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1374:
	.size	_Z11delete_nodeiP4node, .-_Z11delete_nodeiP4node
	.section	.rodata
.LC5:
	.string	"Value of Head:%p\n"
	.text
	.globl	_Z12init_LF_listv
	.type	_Z12init_LF_listv, @function
_Z12init_LF_listv:
.LFB1375:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$12, (%esp)
	call	malloc
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$.LC5, (%esp)
	call	printf
	movl	$12, (%esp)
	call	malloc
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 4(%eax)
	call	_ZNSt14numeric_limitsIiE3minEv
	movl	-16(%ebp), %edx
	movl	%eax, (%edx)
	movl	-12(%ebp), %eax
	movl	$0, 4(%eax)
	call	_ZNSt14numeric_limitsIiE3maxEv
	movl	-12(%ebp), %edx
	movl	%eax, (%edx)
	movl	-16(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1375:
	.size	_Z12init_LF_listv, .-_Z12init_LF_listv
	.section	.rodata
.LC6:
	.string	"Dereferernce of head:%d\n"
.LC7:
	.string	"Value of first element:%p\n"
.LC8:
	.string	"%d\t"
	.text
	.globl	_Z9printlistP4node
	.type	_Z9printlistP4node, @function
_Z9printlistP4node:
.LFB1376:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$.LC5, (%esp)
	call	printf
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$.LC6, (%esp)
	call	printf
	movl	8(%ebp), %eax
	andl	$-4, %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$.LC7, (%esp)
	call	printf
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$.LC6, (%esp)
	call	printf
	jmp	.L58
.L59:
	movl	8(%ebp), %eax
	andl	$-4, %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$.LC8, (%esp)
	call	printf
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, 8(%ebp)
.L58:
	movl	8(%ebp), %eax
	andl	$-4, %eax
	movl	(%eax), %ebx
	call	_ZNSt14numeric_limitsIiE3maxEv
	cmpl	%eax, %ebx
	setne	%al
	testb	%al, %al
	jne	.L59
	movl	$10, (%esp)
	call	putchar
	addl	$20, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1376:
	.size	_Z9printlistP4node, .-_Z9printlistP4node
	.globl	_Z7destroyP4node
	.type	_Z7destroyP4node, @function
_Z7destroyP4node:
.LFB1377:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	andl	$-4, %eax
	movl	%eax, -16(%ebp)
	jmp	.L61
.L62:
	movl	-16(%ebp), %eax
	andl	$-4, %eax
	movl	4(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	free
	movl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
.L61:
	movl	-16(%ebp), %eax
	andl	$-4, %eax
	testl	%eax, %eax
	jne	.L62
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1377:
	.size	_Z7destroyP4node, .-_Z7destroyP4node
	.globl	_Z9list_initv
	.type	_Z9list_initv, @function
_Z9list_initv:
.LFB1378:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$24, (%esp)
	call	malloc
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	$_Z12init_LF_listv, 4(%eax)
	movl	-12(%ebp), %eax
	movl	$_Z11delete_nodeiP4node, 12(%eax)
	movl	-12(%ebp), %eax
	movl	$_Z6insertiP4node, 8(%eax)
	movl	-12(%ebp), %eax
	movl	$_Z9printlistP4node, 16(%eax)
	movl	-12(%ebp), %eax
	movl	$_Z7destroyP4node, 20(%eax)
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1378:
	.size	_Z9list_initv, .-_Z9list_initv
	.globl	threadlimit
	.bss
	.align 4
	.type	threadlimit, @object
	.size	threadlimit, 4
threadlimit:
	.zero	4
	.section	.rodata
.LC9:
	.string	"\nError! Pass 2 arguments"
.LC10:
	.string	"Time=%ld\n"
.LC11:
	.string	"Exiting Gracefully"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1379:
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA1379
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	andl	$-16, %esp
	subl	$64, %esp
	.cfi_offset 3, -12
	call	_Z9list_initv
	movl	%eax, 32(%esp)
	movl	32(%esp), %eax
	movl	4(%eax), %eax
.LEHB0:
	call	*%eax
	movl	32(%esp), %edx
	movl	%eax, (%edx)
	cmpl	$3, 8(%ebp)
	jle	.L66
	movl	$.LC9, (%esp)
	call	printf
.LEHE0:
.L66:
	leal	48(%esp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcEC1Ev
	movl	12(%ebp), %eax
	addl	$4, %eax
	movl	(%eax), %eax
	leal	48(%esp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	56(%esp), %eax
	movl	%eax, (%esp)
.LEHB1:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE1:
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	leal	56(%esp), %eax
	movl	%eax, (%esp)
.LEHB2:
	call	_ZSt4stoiRKSsPji
.LEHE2:
	movl	%eax, threadlimit
	leal	56(%esp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	leal	48(%esp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
	leal	48(%esp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcEC1Ev
	movl	12(%ebp), %eax
	addl	$8, %eax
	movl	(%eax), %eax
	leal	48(%esp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	leal	56(%esp), %eax
	movl	%eax, (%esp)
.LEHB3:
	call	_ZNSsC1EPKcRKSaIcE
.LEHE3:
	movl	$10, 8(%esp)
	movl	$0, 4(%esp)
	leal	56(%esp), %eax
	movl	%eax, (%esp)
.LEHB4:
	call	_ZSt4stoiRKSsPji
.LEHE4:
	movl	%eax, 36(%esp)
	leal	56(%esp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	leal	48(%esp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
	movl	36(%esp), %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	malloc
	movl	%eax, 40(%esp)
	movl	36(%esp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, (%esp)
	call	malloc
	movl	%eax, 44(%esp)
	movl	$0, 4(%esp)
	leal	48(%esp), %eax
	movl	%eax, (%esp)
	call	gettimeofday
	movl	$0, 28(%esp)
	jmp	.L67
.L68:
	movl	28(%esp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	44(%esp), %eax
	addl	%eax, %edx
	movl	32(%esp), %eax
	movl	%eax, (%edx)
	movl	28(%esp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	44(%esp), %eax
	addl	%eax, %edx
	movl	28(%esp), %eax
	movl	%eax, 4(%edx)
	movl	28(%esp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	44(%esp), %eax
	addl	%eax, %edx
	movl	36(%esp), %eax
	movl	%eax, 8(%edx)
	movl	28(%esp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	44(%esp), %eax
	addl	%eax, %edx
	movl	28(%esp), %eax
	leal	0(,%eax,4), %ecx
	movl	40(%esp), %eax
	addl	%ecx, %eax
	movl	%edx, 12(%esp)
	movl	$_Z7thread1Pv, 8(%esp)
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	pthread_create
	addl	$1, 28(%esp)
.L67:
	movl	28(%esp), %eax
	cmpl	36(%esp), %eax
	jl	.L68
	movl	$0, 28(%esp)
	jmp	.L69
.L70:
	movl	28(%esp), %eax
	leal	0(,%eax,4), %edx
	movl	40(%esp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
.LEHB5:
	call	pthread_join
	addl	$1, 28(%esp)
.L69:
	movl	28(%esp), %eax
	cmpl	36(%esp), %eax
	jl	.L70
	movl	$0, 4(%esp)
	leal	56(%esp), %eax
	movl	%eax, (%esp)
	call	gettimeofday
	movl	56(%esp), %eax
	imull	$1000000, %eax, %edx
	movl	60(%esp), %eax
	leal	(%edx,%eax), %ecx
	movl	48(%esp), %eax
	imull	$-1000000, %eax, %edx
	movl	52(%esp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%ecx, %eax
	movl	%eax, 4(%esp)
	movl	$.LC10, (%esp)
	call	printf
	movl	32(%esp), %eax
	movl	16(%eax), %eax
	movl	32(%esp), %edx
	movl	(%edx), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	32(%esp), %eax
	movl	20(%eax), %eax
	movl	32(%esp), %edx
	movl	(%edx), %edx
	movl	%edx, (%esp)
	call	*%eax
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	free
	movl	$.LC11, (%esp)
	call	puts
	movl	$0, %eax
	jmp	.L80
.L77:
	movl	%eax, %ebx
	leal	56(%esp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	jmp	.L73
.L76:
	movl	%eax, %ebx
.L73:
	leal	48(%esp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
	movl	%ebx, %eax
	movl	%eax, (%esp)
	call	_Unwind_Resume
.L79:
	movl	%eax, %ebx
	leal	56(%esp), %eax
	movl	%eax, (%esp)
	call	_ZNSsD1Ev
	jmp	.L75
.L78:
	movl	%eax, %ebx
.L75:
	leal	48(%esp), %eax
	movl	%eax, (%esp)
	call	_ZNSaIcED1Ev
	movl	%ebx, %eax
	movl	%eax, (%esp)
	call	_Unwind_Resume
.LEHE5:
.L80:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1379:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1379:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1379-.LLSDACSB1379
.LLSDACSB1379:
	.uleb128 .LEHB0-.LFB1379
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1379
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L76-.LFB1379
	.uleb128 0
	.uleb128 .LEHB2-.LFB1379
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L77-.LFB1379
	.uleb128 0
	.uleb128 .LEHB3-.LFB1379
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L78-.LFB1379
	.uleb128 0
	.uleb128 .LEHB4-.LFB1379
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L79-.LFB1379
	.uleb128 0
	.uleb128 .LEHB5-.LFB1379
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE1379:
	.text
	.size	main, .-main
	.globl	_Z7thread1Pv
	.type	_Z7thread1Pv, @function
_Z7thread1Pv:
.LFB1380:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	jmp	.L82
.L83:
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	-12(%ebp), %edx
	movl	(%edx), %edx
	movl	(%edx), %ecx
	movl	-16(%ebp), %edx
	movl	%ecx, 4(%esp)
	movl	%edx, (%esp)
	call	*%eax
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	addl	%eax, -16(%ebp)
.L82:
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	threadlimit, %eax
	imull	%eax, %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	addl	%edx, %eax
	cmpl	-16(%ebp), %eax
	ja	.L83
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1380:
	.size	_Z7thread1Pv, .-_Z7thread1Pv
	.section	.text._ZN9__gnu_cxx6__stoaIlicIiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PjS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIlicIiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PjS9_,comdat
	.weak	_ZN9__gnu_cxx6__stoaIlicIiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PjS9_
	.type	_ZN9__gnu_cxx6__stoaIlicIiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PjS9_, @function
_ZN9__gnu_cxx6__stoaIlicIiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PjS9_:
.LFB1382:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	call	__errno_location
	movl	$0, (%eax)
	movl	24(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	16(%ebp), %eax
	movl	%eax, (%esp)
	movl	8(%ebp), %eax
	call	*%eax
	movl	%eax, -16(%ebp)
	movl	-20(%ebp), %eax
	cmpl	16(%ebp), %eax
	jne	.L85
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZSt24__throw_invalid_argumentPKc
.L85:
	call	__errno_location
	movl	(%eax), %eax
	cmpl	$34, %eax
	jne	.L86
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZSt20__throw_out_of_rangePKc
.L86:
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
	cmpl	$0, 20(%ebp)
	je	.L87
	movl	-20(%ebp), %eax
	movl	%eax, %edx
	movl	16(%ebp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %edx
	movl	20(%ebp), %eax
	movl	%edx, (%eax)
.L87:
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1382:
	.size	_ZN9__gnu_cxx6__stoaIlicIiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PjS9_, .-_ZN9__gnu_cxx6__stoaIlicIiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PjS9_
	.weak	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PjS9_
	.set	_ZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PjS9_,_ZN9__gnu_cxx6__stoaIlicIiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PjS9_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB1527:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	cmpl	$1, 8(%ebp)
	jne	.L89
	cmpl	$65535, 12(%ebp)
	jne	.L89
	movl	$_ZStL8__ioinit, (%esp)
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, 8(%esp)
	movl	$_ZStL8__ioinit, 4(%esp)
	movl	$_ZNSt8ios_base4InitD1Ev, (%esp)
	call	__cxa_atexit
.L89:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1527:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z13constructArgsP4nodeii, @function
_GLOBAL__sub_I__Z13constructArgsP4nodeii:
.LFB1528:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$65535, 4(%esp)
	movl	$1, (%esp)
	call	_Z41__static_initialization_and_destruction_0ii
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1528:
	.size	_GLOBAL__sub_I__Z13constructArgsP4nodeii, .-_GLOBAL__sub_I__Z13constructArgsP4nodeii
	.section	.init_array,"aw"
	.align 4
	.long	_GLOBAL__sub_I__Z13constructArgsP4nodeii
	.section	.rodata
	.align 4
	.type	_ZZL18__gthread_active_pvE20__gthread_active_ptr, @object
	.size	_ZZL18__gthread_active_pvE20__gthread_active_ptr, 4
_ZZL18__gthread_active_pvE20__gthread_active_ptr:
	.long	_ZL28__gthrw___pthread_key_createPjPFvPvE
	.weakref	_ZL28__gthrw___pthread_key_createPjPFvPvE,__pthread_key_create
	.align 8
.LC1:
	.long	-1717986918
	.long	1070176665
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
