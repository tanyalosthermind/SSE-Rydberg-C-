	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 12, 1
	.globl	__Z4siteiiii                    ## -- Begin function _Z4siteiiii
	.p2align	4, 0x90
__Z4siteiiii:                           ## @_Z4siteiiii
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        ## kill: def $esi killed $esi def $rsi
                                        ## kill: def $edi killed $edi def $rdi
	imull	%edx, %esi
	leal	(%rsi,%rdi), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z10site_to_xyiii              ## -- Begin function _Z10site_to_xyiii
	.p2align	4, 0x90
__Z10site_to_xyiii:                     ## @_Z10site_to_xyiii
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%edi, %eax
	cltd
	idivl	%esi
	movl	%edx, %ebx
	movl	%eax, %r14d
	leaq	-32(%rbp), %r15
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	__ZNSt3__15arrayIiLm2EEixEm
	movl	%ebx, (%rax)
	movl	$1, %esi
	movq	%r15, %rdi
	callq	__ZNSt3__15arrayIiLm2EEixEm
	movl	%r14d, (%rax)
	movq	-32(%rbp), %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__15arrayIiLm2EEixEm
__ZNSt3__15arrayIiLm2EEixEm:            ## @_ZNSt3__15arrayIiLm2EEixEm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	(%rdi,%rsi,4), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z16bond_to_operatoriiii       ## -- Begin function _Z16bond_to_operatoriiii
	.p2align	4, 0x90
__Z16bond_to_operatoriiii:              ## @_Z16bond_to_operatoriiii
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
                                        ## kill: def $ecx killed $ecx def $rcx
	movl	$-1, %eax
	cmpl	%esi, %edi
	je	LBB3_6
## %bb.1:
	imull	%edx, %ecx
	testl	%ecx, %ecx
	jle	LBB3_6
## %bb.2:
	leal	-1(%rcx,%rcx), %r9d
	movl	$-1, %eax
	xorl	%r8d, %r8d
	.p2align	4, 0x90
LBB3_3:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_4 Depth 2
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB3_4:                                 ##   Parent Loop BB3_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%eax, %r10d
	movl	%r8d, %r11d
	xorl	%edi, %r11d
	leal	1(%r9), %r14d
	movl	%esi, %ebx
	xorl	%edx, %ebx
	orl	%r11d, %ebx
	cmovel	%r14d, %eax
	cmpl	%edx, %r8d
	cmovnel	%r14d, %r9d
	cmovel	%r10d, %eax
	incl	%edx
	cmpl	%edx, %ecx
	jne	LBB3_4
## %bb.5:                               ##   in Loop: Header=BB3_3 Depth=1
	incl	%r8d
	cmpl	%ecx, %r8d
	jne	LBB3_3
LBB3_6:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z16operator_to_bondiii        ## -- Begin function _Z16operator_to_bondiii
	.p2align	4, 0x90
__Z16operator_to_bondiii:               ## @_Z16operator_to_bondiii
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
                                        ## kill: def $esi killed $esi def $rsi
	movl	%edi, %r12d
	imull	%edx, %esi
	leal	(%rsi,%rsi), %r13d
	cmpl	%edi, %r13d
	jle	LBB4_1
## %bb.9:
	movl	%r12d, %ebx
	shrl	$31, %ebx
	addl	%r12d, %ebx
	sarl	%ebx
	leaq	-48(%rbp), %r14
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	__ZNSt3__15arrayIiLm2EEixEm
	movl	%ebx, (%rax)
	movl	$1, %esi
	movq	%r14, %rdi
	callq	__ZNSt3__15arrayIiLm2EEixEm
	movl	%ebx, (%rax)
	jmp	LBB4_10
LBB4_1:
	testl	%esi, %esi
	jle	LBB4_10
## %bb.2:
	decl	%r13d
	xorl	%ebx, %ebx
	jmp	LBB4_3
	.p2align	4, 0x90
LBB4_8:                                 ##   in Loop: Header=BB4_3 Depth=1
	incl	%ebx
	cmpl	%esi, %ebx
	je	LBB4_10
LBB4_3:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB4_4 Depth 2
	xorl	%r15d, %r15d
	jmp	LBB4_4
	.p2align	4, 0x90
LBB4_7:                                 ##   in Loop: Header=BB4_4 Depth=2
	incl	%r15d
	cmpl	%r15d, %esi
	je	LBB4_8
LBB4_4:                                 ##   Parent Loop BB4_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	%r15d, %ebx
	je	LBB4_7
## %bb.5:                               ##   in Loop: Header=BB4_4 Depth=2
	incl	%r13d
	cmpl	%r12d, %r13d
	jne	LBB4_7
## %bb.6:                               ##   in Loop: Header=BB4_4 Depth=2
	leaq	-48(%rbp), %rdi
	movq	%rsi, %r14
	xorl	%esi, %esi
	callq	__ZNSt3__15arrayIiLm2EEixEm
	movl	%ebx, (%rax)
	movl	$1, %esi
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__15arrayIiLm2EEixEm
	movq	%r14, %rsi
	movl	%r15d, (%rax)
	jmp	LBB4_7
LBB4_10:
	movq	-48(%rbp), %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z12distance_pbciiii           ## -- Begin function _Z12distance_pbciiii
	.p2align	4, 0x90
__Z12distance_pbciiii:                  ## @_Z12distance_pbciiii
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%ecx, %r14d
	movl	%edx, %r12d
	movl	%esi, %r15d
	movl	%edx, %esi
	callq	__Z10site_to_xyiii
	movq	%rax, -48(%rbp)
	movl	%r15d, %edi
	movl	%r12d, %esi
	callq	__Z10site_to_xyiii
	movq	%rax, -56(%rbp)
	leaq	-56(%rbp), %rbx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	__ZNSt3__15arrayIiLm2EEixEm
	movl	(%rax), %r13d
	leaq	-48(%rbp), %rdi
	xorl	%esi, %esi
	callq	__ZNSt3__15arrayIiLm2EEixEm
	subl	(%rax), %r13d
	movl	%r13d, %r15d
	negl	%r15d
	cmovll	%r13d, %r15d
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	__ZNSt3__15arrayIiLm2EEixEm
	movl	(%rax), %ebx
	movl	$1, %esi
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__15arrayIiLm2EEixEm
	subl	(%rax), %ebx
	movl	%ebx, %eax
	negl	%eax
	cmovll	%ebx, %eax
	movl	%r12d, %ecx
	shrl	$31, %ecx
	addl	%r12d, %ecx
	sarl	%ecx
	cmpl	%ecx, %r15d
	jle	LBB5_2
## %bb.1:
	subl	%r15d, %r12d
	jmp	LBB5_3
LBB5_2:
	negl	%ecx
	cmpl	%ecx, %r15d
	movl	$0, %ecx
	cmovgl	%ecx, %r12d
	addl	%r15d, %r12d
LBB5_3:
	movl	%r14d, %ecx
	shrl	$31, %ecx
	addl	%r14d, %ecx
	sarl	%ecx
	cmpl	%ecx, %eax
	jle	LBB5_5
## %bb.4:
	subl	%eax, %r14d
	jmp	LBB5_6
LBB5_5:
	negl	%ecx
	xorl	%edx, %edx
	cmpl	%ecx, %eax
	cmovgl	%edx, %r14d
	addl	%eax, %r14d
LBB5_6:
	movl	%r12d, %edi
	movl	%r14d, %esi
	callq	__ZL5hypotIiiENSt3__19_MetaBaseIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueEE13_EnableIfImplINS0_9__promoteIS2_S3_vEEE4typeES2_S3_
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZL5hypotIiiENSt3__19_MetaBaseIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueEE13_EnableIfImplINS0_9__promoteIS2_S3_vEEE4typeES2_S3_
__ZL5hypotIiiENSt3__19_MetaBaseIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueEE13_EnableIfImplINS0_9__promoteIS2_S3_vEEE4typeES2_S3_: ## @_ZL5hypotIiiENSt3__19_MetaBaseIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueEE13_EnableIfImplINS0_9__promoteIS2_S3_vEEE4typeES2_S3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	cvtsi2sd	%edi, %xmm0
	cvtsi2sd	%esi, %xmm1
	callq	_hypot
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z7vec_miniiii                 ## -- Begin function _Z7vec_miniiii
	.p2align	4, 0x90
__Z7vec_miniiii:                        ## @_Z7vec_miniiii
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%ecx, -48(%rbp)                 ## 4-byte Spill
	movl	%edx, %r13d
	movl	%esi, %ebx
	movl	%edx, %esi
	callq	__Z10site_to_xyiii
	movq	%rax, -88(%rbp)
	movl	%ebx, %edi
	movl	%r13d, %esi
	callq	__Z10site_to_xyiii
	movq	%rax, -64(%rbp)
	xorl	%r12d, %r12d
	leaq	-64(%rbp), %rdi
	xorl	%esi, %esi
	callq	__ZNSt3__15arrayIiLm2EEixEm
	movl	(%rax), %ebx
	leaq	-88(%rbp), %r14
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	__ZNSt3__15arrayIiLm2EEixEm
	subl	(%rax), %ebx
	movl	%ebx, %r15d
	negl	%r15d
	cmovll	%ebx, %r15d
	movl	$1, %esi
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__15arrayIiLm2EEixEm
	movl	(%rax), %ebx
	movl	$1, %esi
	movq	%r14, %rdi
	callq	__ZNSt3__15arrayIiLm2EEixEm
	subl	(%rax), %ebx
	movl	%ebx, %eax
	negl	%eax
	cmovll	%ebx, %eax
	movl	%r13d, %r14d
	shrl	$31, %r14d
	addl	%r13d, %r14d
	sarl	%r14d
	cmpl	%r14d, %r15d
	jle	LBB7_2
## %bb.1:
	movl	%r13d, %r12d
	subl	%r15d, %r12d
	jmp	LBB7_3
LBB7_2:
	movl	%r14d, %ecx
	negl	%ecx
	cmpl	%ecx, %r15d
	cmovlel	%r13d, %r12d
	addl	%r15d, %r12d
LBB7_3:
	movl	-48(%rbp), %edx                 ## 4-byte Reload
	movl	%edx, %ebx
	shrl	$31, %ebx
	addl	%edx, %ebx
	sarl	%ebx
	cmpl	%ebx, %eax
	movq	%r12, -72(%rbp)                 ## 8-byte Spill
	jle	LBB7_5
## %bb.4:
	subl	%eax, %edx
	movl	%edx, -44(%rbp)                 ## 4-byte Spill
	jmp	LBB7_6
LBB7_5:
	movl	%ebx, %ecx
	negl	%ecx
	xorl	%esi, %esi
	cmpl	%ecx, %eax
	cmovlel	%edx, %esi
	addl	%eax, %esi
	movl	%esi, -44(%rbp)                 ## 4-byte Spill
LBB7_6:
	incl	%r14d
	incl	%ebx
	movslq	%r14d, %r15
	movslq	%ebx, %rsi
	movl	$0, -52(%rbp)
	leaq	-112(%rbp), %r12
	leaq	-52(%rbp), %rdx
	movq	%r12, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1EmRKi
Ltmp0:
	leaq	-136(%rbp), %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEEC1EmRKS3_
Ltmp1:
## %bb.7:
	leaq	-112(%rbp), %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev
	cmpl	$-1, %r13d
	jge	LBB7_8
LBB7_15:
	movslq	-72(%rbp), %rsi                 ## 4-byte Folded Reload
	leaq	-136(%rbp), %r14
	movq	%r14, %rdi
	callq	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEEixEm
	movslq	-44(%rbp), %rsi                 ## 4-byte Folded Reload
	movq	%rax, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	(%rax), %ebx
	movq	%r14, %rdi
	callq	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEED1Ev
	movl	%ebx, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB7_8:
	movl	%r14d, %eax
	movq	%rax, -80(%rbp)                 ## 8-byte Spill
	movl	%ebx, %r15d
	xorl	%r12d, %r12d
	leaq	-136(%rbp), %r14
	xorl	%r13d, %r13d
	jmp	LBB7_9
	.p2align	4, 0x90
LBB7_14:                                ##   in Loop: Header=BB7_9 Depth=1
	incq	%r12
	cmpq	-80(%rbp), %r12                 ## 8-byte Folded Reload
	je	LBB7_15
LBB7_9:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB7_11 Depth 2
	cmpl	$-1, -48(%rbp)                  ## 4-byte Folded Reload
	jl	LBB7_14
## %bb.10:                              ##   in Loop: Header=BB7_9 Depth=1
	xorl	%ebx, %ebx
	jmp	LBB7_11
	.p2align	4, 0x90
LBB7_13:                                ##   in Loop: Header=BB7_11 Depth=2
	incq	%rbx
	cmpq	%rbx, %r15
	je	LBB7_14
LBB7_11:                                ##   Parent Loop BB7_9 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpq	%rbx, %r12
	ja	LBB7_13
## %bb.12:                              ##   in Loop: Header=BB7_11 Depth=2
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEEixEm
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	%r13d, (%rax)
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEEixEm
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	%r13d, (%rax)
	incl	%r13d
	jmp	LBB7_13
LBB7_16:
Ltmp2:
	movq	%rax, %rbx
	leaq	-112(%rbp), %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table7:
Lexception0:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Lfunc_begin0-Lfunc_begin0      ## >> Call Site 1 <<
	.uleb128 Ltmp0-Lfunc_begin0             ##   Call between Lfunc_begin0 and Ltmp0
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp0-Lfunc_begin0             ## >> Call Site 2 <<
	.uleb128 Ltmp1-Ltmp0                    ##   Call between Ltmp0 and Ltmp1
	.uleb128 Ltmp2-Lfunc_begin0             ##     jumps to Ltmp2
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp1-Lfunc_begin0             ## >> Call Site 3 <<
	.uleb128 Lfunc_end0-Ltmp1               ##   Call between Ltmp1 and Lfunc_end0
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end0:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1EmRKi ## -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEEC1EmRKi
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1EmRKi
	.p2align	4, 0x90
__ZNSt3__16vectorIiNS_9allocatorIiEEEC1EmRKi: ## @_ZNSt3__16vectorIiNS_9allocatorIiEEEC1EmRKi
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEC2EmRKi
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEEC1EmRKS3_ ## -- Begin function _ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEEC1EmRKS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEEC1EmRKS3_
	.p2align	4, 0x90
__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEEC1EmRKS3_: ## @_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEEC1EmRKS3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEEC2EmRKS3_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev
__ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev: ## @_ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEED2Ev
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEEixEm
__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEEixEm: ## @_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEEixEm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	(%rsi,%rsi,2), %rax
	shlq	$3, %rax
	addq	(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm: ## @_ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	(,%rsi,4), %rax
	addq	(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEED1Ev
__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEED1Ev: ## @_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEED2Ev
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z14binary_search_RKNSt3__16vectorIdNS_9allocatorIdEEEEd ## -- Begin function _Z14binary_search_RKNSt3__16vectorIdNS_9allocatorIdEEEEd
	.p2align	4, 0x90
__Z14binary_search_RKNSt3__16vectorIdNS_9allocatorIdEEEEd: ## @_Z14binary_search_RKNSt3__16vectorIdNS_9allocatorIdEEEEd
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movsd	%xmm0, -40(%rbp)                ## 8-byte Spill
	movq	%rdi, %r14
	callq	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeEv
	movq	%rax, %r15
	decl	%r15d
	xorl	%r12d, %r12d
	testl	%r15d, %r15d
	jg	LBB14_1
	jmp	LBB14_5
	.p2align	4, 0x90
LBB14_3:                                ##   in Loop: Header=BB14_1 Depth=1
	movl	%ebx, %r15d
	cmpl	%r15d, %r12d
	jge	LBB14_5
LBB14_1:                                ## =>This Inner Loop Header: Depth=1
	leal	(%r12,%r15), %eax
	movl	%eax, %ebx
	shrl	$31, %ebx
	addl	%eax, %ebx
	sarl	%ebx
	movslq	%ebx, %rsi
	movq	%r14, %rdi
	callq	__ZNKSt3__16vectorIdNS_9allocatorIdEEEixEm
	movsd	(%rax), %xmm0                   ## xmm0 = mem[0],zero
	ucomisd	-40(%rbp), %xmm0                ## 8-byte Folded Reload
	jae	LBB14_3
## %bb.2:                               ##   in Loop: Header=BB14_1 Depth=1
	incl	%ebx
	movl	%ebx, %r12d
	cmpl	%r15d, %r12d
	jl	LBB14_1
LBB14_5:
	movl	%r12d, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeEv
__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeEv: ## @_ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	8(%rdi), %rax
	subq	(%rdi), %rax
	sarq	$3, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__16vectorIdNS_9allocatorIdEEEixEm
__ZNKSt3__16vectorIdNS_9allocatorIdEEEixEm: ## @_ZNKSt3__16vectorIdNS_9allocatorIdEEEixEm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	(,%rsi,8), %rax
	addq	(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z16cumulative_tableRKNSt3__16vectorIdNS_9allocatorIdEEEE ## -- Begin function _Z16cumulative_tableRKNSt3__16vectorIdNS_9allocatorIdEEEE
	.p2align	4, 0x90
__Z16cumulative_tableRKNSt3__16vectorIdNS_9allocatorIdEEEE: ## @_Z16cumulative_tableRKNSt3__16vectorIdNS_9allocatorIdEEEE
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %r14
	leaq	-64(%rbp), %r15
	movq	%r15, %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1ERKS3_
	movq	%r15, %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE5beginEv
	movq	%rax, %rbx
	movq	%r15, %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE3endEv
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__1L10accumulateINS_11__wrap_iterIPdEEdEET0_T_S5_S4_
	movsd	%xmm0, -40(%rbp)                ## 8-byte Spill
	movq	%r15, %rdi
	callq	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeEv
	testq	%rax, %rax
	je	LBB17_3
## %bb.1:
	xorl	%ebx, %ebx
	leaq	-64(%rbp), %r15
	.p2align	4, 0x90
LBB17_2:                                ## =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEixEm
	movsd	(%rax), %xmm0                   ## xmm0 = mem[0],zero
	divsd	-40(%rbp), %xmm0                ## 8-byte Folded Reload
	movsd	%xmm0, (%rax)
	incq	%rbx
	movq	%r15, %rdi
	callq	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeEv
	cmpq	%rbx, %rax
	ja	LBB17_2
LBB17_3:
Ltmp3:
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1Em
Ltmp4:
## %bb.4:
	leaq	-64(%rbp), %r15
	movq	%r15, %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE5beginEv
	movq	%rax, %r12
	movq	%r15, %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE3endEv
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE5beginEv
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	__ZNSt3__1L11partial_sumINS_11__wrap_iterIPdEES3_EET0_T_S5_S4_
	movq	%r15, %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEED1Ev
	movq	%r14, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB17_5:
Ltmp5:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEED1Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table17:
Lexception1:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Lfunc_begin1-Lfunc_begin1      ## >> Call Site 1 <<
	.uleb128 Ltmp3-Lfunc_begin1             ##   Call between Lfunc_begin1 and Ltmp3
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp3-Lfunc_begin1             ## >> Call Site 2 <<
	.uleb128 Ltmp4-Ltmp3                    ##   Call between Ltmp3 and Ltmp4
	.uleb128 Ltmp5-Lfunc_begin1             ##     jumps to Ltmp5
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp4-Lfunc_begin1             ## >> Call Site 3 <<
	.uleb128 Lfunc_end1-Ltmp4               ##   Call between Ltmp4 and Lfunc_end1
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end1:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1ERKS3_ ## -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEEC1ERKS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1ERKS3_
	.p2align	4, 0x90
__ZNSt3__16vectorIdNS_9allocatorIdEEEC1ERKS3_: ## @_ZNSt3__16vectorIdNS_9allocatorIdEEEC1ERKS3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEC2ERKS3_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L10accumulateINS_11__wrap_iterIPdEEdEET0_T_S5_S4_
__ZNSt3__1L10accumulateINS_11__wrap_iterIPdEEdEET0_T_S5_S4_: ## @_ZNSt3__1L10accumulateINS_11__wrap_iterIPdEEdEET0_T_S5_S4_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	-40(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	__ZNSt3__1neIPdEEbRKNS_11__wrap_iterIT_EES6_
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)                ## 8-byte Spill
	testb	%al, %al
	je	LBB19_3
## %bb.1:
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)                ## 8-byte Spill
	leaq	-40(%rbp), %rbx
	leaq	-32(%rbp), %r14
	.p2align	4, 0x90
LBB19_2:                                ## =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	__ZNKSt3__111__wrap_iterIPdEdeEv
	movsd	-24(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addsd	(%rax), %xmm0
	movsd	%xmm0, -24(%rbp)                ## 8-byte Spill
	movq	%rbx, %rdi
	callq	__ZNSt3__111__wrap_iterIPdEppEv
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__1neIPdEEbRKNS_11__wrap_iterIT_EES6_
	testb	%al, %al
	jne	LBB19_2
LBB19_3:
	movsd	-24(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE5beginEv
__ZNSt3__16vectorIdNS_9allocatorIdEEE5beginEv: ## @_ZNSt3__16vectorIdNS_9allocatorIdEEE5beginEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE11__make_iterEPd
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE3endEv
__ZNSt3__16vectorIdNS_9allocatorIdEEE3endEv: ## @_ZNSt3__16vectorIdNS_9allocatorIdEEE3endEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	8(%rdi), %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE11__make_iterEPd
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEEixEm
__ZNSt3__16vectorIdNS_9allocatorIdEEEixEm: ## @_ZNSt3__16vectorIdNS_9allocatorIdEEEixEm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	(,%rsi,8), %rax
	addq	(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1Em ## -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEEC1Em
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1Em
	.p2align	4, 0x90
__ZNSt3__16vectorIdNS_9allocatorIdEEEC1Em: ## @_ZNSt3__16vectorIdNS_9allocatorIdEEEC1Em
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEC2Em
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L11partial_sumINS_11__wrap_iterIPdEES3_EET0_T_S5_S4_
__ZNSt3__1L11partial_sumINS_11__wrap_iterIPdEES3_EET0_T_S5_S4_: ## @_ZNSt3__1L11partial_sumINS_11__wrap_iterIPdEES3_EET0_T_S5_S4_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -56(%rbp)
	leaq	-48(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	callq	__ZNSt3__1neIPdEEbRKNS_11__wrap_iterIT_EES6_
	testb	%al, %al
	je	LBB24_4
## %bb.1:
	leaq	-48(%rbp), %rbx
	movq	%rbx, %rdi
	callq	__ZNKSt3__111__wrap_iterIPdEdeEv
	movsd	(%rax), %xmm0                   ## xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)                ## 8-byte Spill
	leaq	-56(%rbp), %r14
	movq	%r14, %rdi
	callq	__ZNKSt3__111__wrap_iterIPdEdeEv
	movsd	-32(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
	movq	%rbx, %rdi
	callq	__ZNSt3__111__wrap_iterIPdEppEv
	movq	%r14, %rdi
	callq	__ZNSt3__111__wrap_iterIPdEppEv
	leaq	-40(%rbp), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt3__1neIPdEEbRKNS_11__wrap_iterIT_EES6_
	testb	%al, %al
	je	LBB24_4
## %bb.2:
	leaq	-48(%rbp), %rbx
	leaq	-56(%rbp), %r14
	leaq	-40(%rbp), %r15
	.p2align	4, 0x90
LBB24_3:                                ## =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	__ZNKSt3__111__wrap_iterIPdEdeEv
	movsd	-32(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addsd	(%rax), %xmm0
	movsd	%xmm0, -32(%rbp)                ## 8-byte Spill
	movq	%r14, %rdi
	callq	__ZNKSt3__111__wrap_iterIPdEdeEv
	movsd	-32(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
	movq	%rbx, %rdi
	callq	__ZNSt3__111__wrap_iterIPdEppEv
	movq	%r14, %rdi
	callq	__ZNSt3__111__wrap_iterIPdEppEv
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	__ZNSt3__1neIPdEEbRKNS_11__wrap_iterIT_EES6_
	testb	%al, %al
	jne	LBB24_3
LBB24_4:
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEED1Ev
__ZNSt3__16vectorIdNS_9allocatorIdEEED1Ev: ## @_ZNSt3__16vectorIdNS_9allocatorIdEEED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEED2Ev
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z6sampleRKNSt3__16vectorIdNS_9allocatorIdEEEE ## -- Begin function _Z6sampleRKNSt3__16vectorIdNS_9allocatorIdEEEE
	.p2align	4, 0x90
__Z6sampleRKNSt3__16vectorIdNS_9allocatorIdEEEE: ## @_Z6sampleRKNSt3__16vectorIdNS_9allocatorIdEEEE
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, %rsi
	leaq	-40(%rbp), %rdi
	callq	__Z16cumulative_tableRKNSt3__16vectorIdNS_9allocatorIdEEEE
Ltmp6:
	callq	__ZNSt3__125uniform_real_distributionIdEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEdRT_
Ltmp7:
## %bb.1:
	leaq	-40(%rbp), %r14
	movq	%r14, %rdi
	callq	__Z14binary_search_RKNSt3__16vectorIdNS_9allocatorIdEEEEd
	movl	%eax, %ebx
	movq	%r14, %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEED1Ev
	movl	%ebx, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB26_2:
Ltmp8:
	movq	%rax, %rbx
	leaq	-40(%rbp), %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEED1Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table26:
Lexception2:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2      ## >> Call Site 1 <<
	.uleb128 Ltmp6-Lfunc_begin2             ##   Call between Lfunc_begin2 and Ltmp6
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp6-Lfunc_begin2             ## >> Call Site 2 <<
	.uleb128 Ltmp7-Ltmp6                    ##   Call between Ltmp6 and Ltmp7
	.uleb128 Ltmp8-Lfunc_begin2             ##     jumps to Ltmp8
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp7-Lfunc_begin2             ## >> Call Site 3 <<
	.uleb128 Lfunc_end2-Ltmp7               ##   Call between Ltmp7 and Lfunc_end2
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end2:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__125uniform_real_distributionIdEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEdRT_
__ZNSt3__125uniform_real_distributionIdEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEdRT_: ## @_ZNSt3__125uniform_real_distributionIdEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEdRT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__125uniform_real_distributionIdEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEdRT_RKNS1_10param_typeE
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z15diagonal_updateRNSt3__16vectorIiNS_9allocatorIiEEEES4_RKNS0_IdNS1_IdEEEES8_S8_RKNS0_IS6_NS1_IS6_EEEES8_d ## -- Begin function _Z15diagonal_updateRNSt3__16vectorIiNS_9allocatorIiEEEES4_RKNS0_IdNS1_IdEEEES8_S8_RKNS0_IS6_NS1_IS6_EEEES8_d
	.p2align	4, 0x90
__Z15diagonal_updateRNSt3__16vectorIiNS_9allocatorIiEEEES4_RKNS0_IdNS1_IdEEEES8_S8_RKNS0_IS6_NS1_IS6_EEEES8_d: ## @_Z15diagonal_updateRNSt3__16vectorIiNS_9allocatorIiEEEES4_RKNS0_IdNS1_IdEEEES8_S8_RKNS0_IS6_NS1_IS6_EEEES8_d
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movsd	%xmm0, -48(%rbp)                ## 8-byte Spill
	movq	%r9, -128(%rbp)                 ## 8-byte Spill
	movq	%r8, -192(%rbp)                 ## 8-byte Spill
	movq	%rcx, -184(%rbp)                ## 8-byte Spill
	movq	%rdx, -176(%rbp)                ## 8-byte Spill
	movq	%rsi, %r14
	movq	%rdi, -104(%rbp)                ## 8-byte Spill
	callq	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv
	movq	%rax, %r13
	movl	%r13d, %edi
	callq	__ZL4sqrtIiENSt3__19enable_ifIXsr3std11is_integralIT_EE5valueEdE4typeES2_
	movsd	%xmm0, -72(%rbp)                ## 8-byte Spill
	movq	%r14, %rdi
	callq	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv
	movq	%rax, -160(%rbp)                ## 8-byte Spill
	movq	%r14, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE5beginEv
	movq	%rax, -80(%rbp)
	leaq	-136(%rbp), %rbx
	leaq	-80(%rbp), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt3__111__wrap_iterIPKiEC1IPiEERKNS0_IT_EEPNS_9enable_ifIXsr14is_convertibleIS6_S2_EE5valueEvE4typeE
	movq	%r14, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE3endEv
	movq	%rax, -80(%rbp)
	leaq	-80(%rbp), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt3__1neIPKiPiEEbRKNS_11__wrap_iterIT_EERKNS4_IT0_EE
	xorl	%r12d, %r12d
	testb	%al, %al
	je	LBB28_3
## %bb.1:
	xorl	%r12d, %r12d
	leaq	-136(%rbp), %rbx
	leaq	-80(%rbp), %r15
	.p2align	4, 0x90
LBB28_2:                                ## =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	__ZNKSt3__111__wrap_iterIPKiEdeEv
	xorl	%ecx, %ecx
	cmpl	$-1, (%rax)
	setne	%cl
	addl	%ecx, %r12d
	movq	%rbx, %rdi
	callq	__ZNSt3__111__wrap_iterIPKiEppEv
	movq	%r14, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE3endEv
	movq	%rax, -80(%rbp)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	__ZNSt3__1neIPKiPiEEbRKNS_11__wrap_iterIT_EERKNS4_IT0_EE
	testb	%al, %al
	jne	LBB28_2
LBB28_3:
	movq	%r14, -64(%rbp)                 ## 8-byte Spill
	testl	%r13d, %r13d
	movq	%r13, -120(%rbp)                ## 8-byte Spill
	jle	LBB28_8
## %bb.4:
	movl	%r13d, %r14d
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)                ## 8-byte Spill
	xorl	%r15d, %r15d
	.p2align	4, 0x90
LBB28_5:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB28_6 Depth 2
	movq	-128(%rbp), %rdi                ## 8-byte Reload
	movq	%r15, %rsi
	callq	__ZNKSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEixEm
	movq	%rax, %r13
	xorl	%ebx, %ebx
	movsd	-56(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	.p2align	4, 0x90
LBB28_6:                                ##   Parent Loop BB28_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movsd	%xmm0, -56(%rbp)                ## 8-byte Spill
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	__ZNKSt3__16vectorIdNS_9allocatorIdEEEixEm
	movsd	-56(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addsd	(%rax), %xmm0
	incq	%rbx
	cmpq	%rbx, %r14
	jne	LBB28_6
## %bb.7:                               ##   in Loop: Header=BB28_5 Depth=1
	movsd	%xmm0, -56(%rbp)                ## 8-byte Spill
	incq	%r15
	cmpq	%r14, %r15
	jne	LBB28_5
	jmp	LBB28_9
LBB28_8:
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)                ## 8-byte Spill
LBB28_9:
	movq	-160(%rbp), %rax                ## 8-byte Reload
	testl	%eax, %eax
	jle	LBB28_40
## %bb.10:
	cvttsd2si	-72(%rbp), %ecx         ## 8-byte Folded Reload
	movl	%ecx, -72(%rbp)                 ## 4-byte Spill
	movsd	-56(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0                ## 8-byte Folded Reload
	movq	-120(%rbp), %rcx                ## 8-byte Reload
	leal	(%rcx,%rcx), %ecx
	movl	%ecx, -120(%rbp)                ## 4-byte Spill
	leal	1(%rax), %ecx
	movl	%ecx, -140(%rbp)                ## 4-byte Spill
	movl	%eax, %ebx
	xorl	%r14d, %r14d
	movq	-64(%rbp), %r13                 ## 8-byte Reload
	movsd	%xmm0, -56(%rbp)                ## 8-byte Spill
	movq	%rbx, -96(%rbp)                 ## 8-byte Spill
	jmp	LBB28_14
	.p2align	4, 0x90
LBB28_11:                               ##   in Loop: Header=BB28_14 Depth=1
	movq	-64(%rbp), %r13                 ## 8-byte Reload
LBB28_12:                               ##   in Loop: Header=BB28_14 Depth=1
	movq	-96(%rbp), %rbx                 ## 8-byte Reload
LBB28_13:                               ##   in Loop: Header=BB28_14 Depth=1
	incq	%r14
	cmpq	%r14, %rbx
	je	LBB28_40
LBB28_14:                               ## =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	(%rax), %edi
	cmpl	$-1, %edi
	je	LBB28_19
## %bb.15:                              ##   in Loop: Header=BB28_14 Depth=1
	cmpl	-120(%rbp), %edi                ## 4-byte Folded Reload
	jge	LBB28_22
## %bb.16:                              ##   in Loop: Header=BB28_14 Depth=1
	movl	%edi, %eax
	andl	$1, %eax
	je	LBB28_22
## %bb.17:                              ##   in Loop: Header=BB28_14 Depth=1
	movl	%r12d, -48(%rbp)                ## 4-byte Spill
	movq	%rbx, %r12
	movq	%r13, %r15
	movl	-72(%rbp), %edx                 ## 4-byte Reload
	movl	%edx, %esi
	callq	__Z16operator_to_bondiii
	movq	%rax, -136(%rbp)
	leaq	-136(%rbp), %r13
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	__ZNSt3__15arrayIiLm2EEixEm
	movslq	(%rax), %rbx
	movl	$1, %esi
	movq	%r13, %rdi
	callq	__ZNSt3__15arrayIiLm2EEixEm
	cmpl	(%rax), %ebx
	jne	LBB28_41
## %bb.18:                              ##   in Loop: Header=BB28_14 Depth=1
	movq	-104(%rbp), %rdi                ## 8-byte Reload
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	negl	(%rax)
	movq	%r15, %r13
	movq	%r12, %rbx
	movl	-48(%rbp), %r12d                ## 4-byte Reload
	jmp	LBB28_13
	.p2align	4, 0x90
LBB28_19:                               ##   in Loop: Header=BB28_14 Depth=1
	movq	16(%rbp), %rdi
	callq	__Z6sampleRKNSt3__16vectorIdNS_9allocatorIdEEEE
	movl	%eax, %r15d
	movslq	%eax, %r13
	movq	-128(%rbp), %rdi                ## 8-byte Reload
	movq	%r13, %rsi
	callq	__ZNKSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEixEm
	movq	%rax, %rdi
	callq	__Z6sampleRKNSt3__16vectorIdNS_9allocatorIdEEEE
	movl	%eax, %ebx
	movq	-160(%rbp), %rax                ## 8-byte Reload
                                        ## kill: def $eax killed $eax killed $rax
	subl	%r12d, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movsd	-56(%rbp), %xmm1                ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)                ## 8-byte Spill
	callq	__ZNSt3__125uniform_real_distributionIdEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEdRT_
	movsd	-48(%rbp), %xmm1                ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	LBB28_11
## %bb.20:                              ##   in Loop: Header=BB28_14 Depth=1
	cmpl	%ebx, %r15d
	jne	LBB28_24
## %bb.21:                              ##   in Loop: Header=BB28_14 Depth=1
	addl	%r15d, %r15d
	jmp	LBB28_39
	.p2align	4, 0x90
LBB28_22:                               ##   in Loop: Header=BB28_14 Depth=1
	movl	-140(%rbp), %eax                ## 4-byte Reload
	subl	%r12d, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	divsd	-56(%rbp), %xmm0                ## 8-byte Folded Reload
	movsd	%xmm0, -48(%rbp)                ## 8-byte Spill
	callq	__ZNSt3__125uniform_real_distributionIdEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEdRT_
	movsd	-48(%rbp), %xmm1                ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	LBB28_13
## %bb.23:                              ##   in Loop: Header=BB28_14 Depth=1
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	$-1, (%rax)
	decl	%r12d
	jmp	LBB28_13
LBB28_24:                               ##   in Loop: Header=BB28_14 Depth=1
	movl	%r13d, %edi
	movl	%ebx, %esi
	movl	-72(%rbp), %ecx                 ## 4-byte Reload
	movl	%ecx, %edx
	callq	__Z7vec_miniiii
	movl	%ebx, -48(%rbp)                 ## 4-byte Spill
	movslq	%eax, %rbx
	movq	-184(%rbp), %rdi                ## 8-byte Reload
	movq	%rbx, %rsi
	callq	__ZNKSt3__16vectorIdNS_9allocatorIdEEEixEm
	movsd	(%rax), %xmm0                   ## xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)               ## 8-byte Spill
	movq	-192(%rbp), %rdi                ## 8-byte Reload
	movq	%rbx, %rsi
	callq	__ZNKSt3__16vectorIdNS_9allocatorIdEEEixEm
	movsd	(%rax), %xmm0                   ## xmm0 = mem[0],zero
	movsd	%xmm0, -88(%rbp)                ## 8-byte Spill
	movq	-176(%rbp), %rdi                ## 8-byte Reload
	movq	%rbx, %rsi
	callq	__ZNKSt3__16vectorIdNS_9allocatorIdEEEixEm
	movsd	(%rax), %xmm0                   ## xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)               ## 8-byte Spill
	movq	-104(%rbp), %rdi                ## 8-byte Reload
	movq	%r13, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	(%rax), %ebx
	movslq	-48(%rbp), %rsi                 ## 4-byte Folded Reload
	cmpl	$1, %ebx
	movq	%rsi, -152(%rbp)                ## 8-byte Spill
	je	LBB28_31
## %bb.25:                              ##   in Loop: Header=BB28_14 Depth=1
	cmpl	$-1, %ebx
	jne	LBB28_34
## %bb.26:                              ##   in Loop: Header=BB28_14 Depth=1
	movq	-104(%rbp), %rdi                ## 8-byte Reload
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	(%rax), %eax
	cmpl	$-1, %eax
	je	LBB28_29
## %bb.27:                              ##   in Loop: Header=BB28_14 Depth=1
	cmpl	$1, %eax
	jne	LBB28_30
## %bb.28:                              ##   in Loop: Header=BB28_14 Depth=1
	movsd	-88(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addsd	-112(%rbp), %xmm0               ## 8-byte Folded Reload
	jmp	LBB28_36
LBB28_29:                               ##   in Loop: Header=BB28_14 Depth=1
	movsd	-88(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	jmp	LBB28_36
LBB28_30:                               ##   in Loop: Header=BB28_14 Depth=1
	cmpl	$1, %ebx
	movq	-152(%rbp), %rsi                ## 8-byte Reload
	jne	LBB28_34
LBB28_31:                               ##   in Loop: Header=BB28_14 Depth=1
	movq	-104(%rbp), %rdi                ## 8-byte Reload
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	LBB28_35
## %bb.32:                              ##   in Loop: Header=BB28_14 Depth=1
	cmpl	$-1, %eax
	movl	-48(%rbp), %ebx                 ## 4-byte Reload
	xorpd	%xmm0, %xmm0
	jne	LBB28_37
## %bb.33:                              ##   in Loop: Header=BB28_14 Depth=1
	movsd	-88(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addsd	-112(%rbp), %xmm0               ## 8-byte Folded Reload
	jmp	LBB28_37
LBB28_34:                               ##   in Loop: Header=BB28_14 Depth=1
	movl	-48(%rbp), %ebx                 ## 4-byte Reload
	xorpd	%xmm0, %xmm0
	jmp	LBB28_37
LBB28_35:                               ##   in Loop: Header=BB28_14 Depth=1
	movsd	-112(%rbp), %xmm1               ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	addsd	%xmm1, %xmm1
	subsd	-168(%rbp), %xmm1               ## 8-byte Folded Reload
	movsd	-88(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
LBB28_36:                               ##   in Loop: Header=BB28_14 Depth=1
	movl	-48(%rbp), %ebx                 ## 4-byte Reload
LBB28_37:                               ##   in Loop: Header=BB28_14 Depth=1
	movsd	%xmm0, -48(%rbp)                ## 8-byte Spill
	movq	-128(%rbp), %rdi                ## 8-byte Reload
	movq	%r13, %rsi
	callq	__ZNKSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEixEm
	movq	%rax, %rdi
	movq	-152(%rbp), %rsi                ## 8-byte Reload
	callq	__ZNKSt3__16vectorIdNS_9allocatorIdEEEixEm
	movsd	-48(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	divsd	(%rax), %xmm0
	movsd	%xmm0, -48(%rbp)                ## 8-byte Spill
	callq	__ZNSt3__125uniform_real_distributionIdEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEdRT_
	movsd	-48(%rbp), %xmm1                ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	LBB28_11
## %bb.38:                              ##   in Loop: Header=BB28_14 Depth=1
	movl	%r15d, %edi
	movl	%ebx, %esi
	movl	-72(%rbp), %ecx                 ## 4-byte Reload
	movl	%ecx, %edx
	callq	__Z16bond_to_operatoriiii
	movl	%eax, %r15d
LBB28_39:                               ##   in Loop: Header=BB28_14 Depth=1
	movq	-64(%rbp), %r13                 ## 8-byte Reload
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	%r15d, (%rax)
	incl	%r12d
	jmp	LBB28_12
LBB28_40:
	movl	%r12d, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB28_41:
	movl	$16, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
Ltmp9:
	leaq	L_.str(%rip), %rsi
	movq	%rax, %rdi
	callq	__ZNSt13runtime_errorC1EPKc
Ltmp10:
## %bb.42:
	movq	__ZTISt13runtime_error@GOTPCREL(%rip), %rsi
	movq	__ZNSt13runtime_errorD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
LBB28_43:
Ltmp11:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	___cxa_free_exception
	movq	%r14, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table28:
Lexception3:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3      ## >> Call Site 1 <<
	.uleb128 Ltmp9-Lfunc_begin3             ##   Call between Lfunc_begin3 and Ltmp9
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp9-Lfunc_begin3             ## >> Call Site 2 <<
	.uleb128 Ltmp10-Ltmp9                   ##   Call between Ltmp9 and Ltmp10
	.uleb128 Ltmp11-Lfunc_begin3            ##     jumps to Ltmp11
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp10-Lfunc_begin3            ## >> Call Site 3 <<
	.uleb128 Lfunc_end3-Ltmp10              ##   Call between Ltmp10 and Lfunc_end3
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end3:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv
__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv: ## @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	8(%rdi), %rax
	subq	(%rdi), %rax
	sarq	$2, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZL4sqrtIiENSt3__19enable_ifIXsr3std11is_integralIT_EE5valueEdE4typeES2_
__ZL4sqrtIiENSt3__19enable_ifIXsr3std11is_integralIT_EE5valueEdE4typeES2_: ## @_ZL4sqrtIiENSt3__19enable_ifIXsr3std11is_integralIT_EE5valueEdE4typeES2_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	cvtsi2sd	%edi, %xmm0
	sqrtsd	%xmm0, %xmm0
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE5beginEv
__ZNSt3__16vectorIiNS_9allocatorIiEEE5beginEv: ## @_ZNSt3__16vectorIiNS_9allocatorIiEEE5beginEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE11__make_iterEPi
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__111__wrap_iterIPKiEC1IPiEERKNS0_IT_EEPNS_9enable_ifIXsr14is_convertibleIS6_S2_EE5valueEvE4typeE
__ZNSt3__111__wrap_iterIPKiEC1IPiEERKNS0_IT_EEPNS_9enable_ifIXsr14is_convertibleIS6_S2_EE5valueEvE4typeE: ## @_ZNSt3__111__wrap_iterIPKiEC1IPiEERKNS0_IT_EEPNS_9enable_ifIXsr14is_convertibleIS6_S2_EE5valueEvE4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__111__wrap_iterIPKiEC2IPiEERKNS0_IT_EEPNS_9enable_ifIXsr14is_convertibleIS6_S2_EE5valueEvE4typeE
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1neIPKiPiEEbRKNS_11__wrap_iterIT_EERKNS4_IT0_EE
__ZNSt3__1neIPKiPiEEbRKNS_11__wrap_iterIT_EERKNS4_IT0_EE: ## @_ZNSt3__1neIPKiPiEEbRKNS_11__wrap_iterIT_EERKNS4_IT0_EE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__1eqIPKiPiEEbRKNS_11__wrap_iterIT_EERKNS4_IT0_EE
	xorb	$1, %al
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE3endEv
__ZNSt3__16vectorIiNS_9allocatorIiEEE3endEv: ## @_ZNSt3__16vectorIiNS_9allocatorIiEEE3endEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	8(%rdi), %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE11__make_iterEPi
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__111__wrap_iterIPKiEdeEv
__ZNKSt3__111__wrap_iterIPKiEdeEv:      ## @_ZNKSt3__111__wrap_iterIPKiEdeEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__111__wrap_iterIPKiEppEv
__ZNSt3__111__wrap_iterIPKiEppEv:       ## @_ZNSt3__111__wrap_iterIPKiEppEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	addq	$4, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEixEm
__ZNKSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEixEm: ## @_ZNKSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEixEm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	(%rsi,%rsi,2), %rax
	shlq	$3, %rax
	addq	(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z11change_typeiRNSt3__16vectorIiNS_9allocatorIiEEEEi ## -- Begin function _Z11change_typeiRNSt3__16vectorIiNS_9allocatorIiEEEEi
	.p2align	4, 0x90
__Z11change_typeiRNSt3__16vectorIiNS_9allocatorIiEEEEi: ## @_Z11change_typeiRNSt3__16vectorIiNS_9allocatorIiEEEEi
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movl	%edx, %ebx
	movq	%rsi, %rax
                                        ## kill: def $edi killed $edi def $rdi
	leal	3(%rdi), %ecx
	testl	%edi, %edi
	cmovnsl	%edi, %ecx
	sarl	$2, %ecx
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	(%rax), %ecx
	addl	%ebx, %ebx
	testb	$1, %cl
	je	LBB38_2
## %bb.1:
	movl	$-1, %edx
	cmpl	%ebx, %ecx
	jl	LBB38_4
LBB38_2:
	cmpl	%ebx, %ecx
	jge	LBB38_5
## %bb.3:
	movl	%ecx, %esi
	movl	$1, %edx
	andl	$1, %esi
	jne	LBB38_5
LBB38_4:
	addl	%edx, %ecx
	movl	%ecx, (%rax)
LBB38_5:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z14cluster_updateRNSt3__16vectorIiNS_9allocatorIiEEEES4_RNS0_IdNS1_IdEEEES7_S7_ ## -- Begin function _Z14cluster_updateRNSt3__16vectorIiNS_9allocatorIiEEEES4_RNS0_IdNS1_IdEEEES7_S7_
	.p2align	4, 0x90
__Z14cluster_updateRNSt3__16vectorIiNS_9allocatorIiEEEES4_RNS0_IdNS1_IdEEEES7_S7_: ## @_Z14cluster_updateRNSt3__16vectorIiNS_9allocatorIiEEEES4_RNS0_IdNS1_IdEEEES7_S7_
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%r8, %r12
	movq	%rcx, %r14
	movq	%rdx, -48(%rbp)                 ## 8-byte Spill
	movq	%rsi, %r13
	movq	%rdi, %rbx
	leaq	-128(%rbp), %r15
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	__ZN10VertexlistC1ERNSt3__16vectorIiNS0_9allocatorIiEEEES5_
	leaq	-104(%rbp), %r8
Ltmp12:
	movq	%r12, 8(%rsp)
	movq	%r14, (%rsp)
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	movq	%r15, %rcx
	movq	-48(%rbp), %r9                  ## 8-byte Reload
	callq	__ZN10Vertexlist13clusterupdateERNSt3__16vectorIiNS0_9allocatorIiEEEES5_S5_S5_RNS1_IdNS2_IdEEEES8_S8_
Ltmp13:
## %bb.1:
	leaq	-128(%rbp), %rdi
	callq	__ZN10VertexlistD1Ev
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB39_2:
Ltmp14:
	movq	%rax, %rbx
	leaq	-128(%rbp), %rdi
	callq	__ZN10VertexlistD1Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table39:
Lexception4:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Lfunc_begin4-Lfunc_begin4      ## >> Call Site 1 <<
	.uleb128 Ltmp12-Lfunc_begin4            ##   Call between Lfunc_begin4 and Ltmp12
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp12-Lfunc_begin4            ## >> Call Site 2 <<
	.uleb128 Ltmp13-Ltmp12                  ##   Call between Ltmp12 and Ltmp13
	.uleb128 Ltmp14-Lfunc_begin4            ##     jumps to Ltmp14
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp13-Lfunc_begin4            ## >> Call Site 3 <<
	.uleb128 Lfunc_end4-Ltmp13              ##   Call between Ltmp13 and Lfunc_end4
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end4:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN10VertexlistC1ERNSt3__16vectorIiNS0_9allocatorIiEEEES5_ ## -- Begin function _ZN10VertexlistC1ERNSt3__16vectorIiNS0_9allocatorIiEEEES5_
	.weak_def_can_be_hidden	__ZN10VertexlistC1ERNSt3__16vectorIiNS0_9allocatorIiEEEES5_
	.p2align	4, 0x90
__ZN10VertexlistC1ERNSt3__16vectorIiNS0_9allocatorIiEEEES5_: ## @_ZN10VertexlistC1ERNSt3__16vectorIiNS0_9allocatorIiEEEES5_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZN10VertexlistC2ERNSt3__16vectorIiNS0_9allocatorIiEEEES5_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function _ZN10Vertexlist13clusterupdateERNSt3__16vectorIiNS0_9allocatorIiEEEES5_S5_S5_RNS1_IdNS2_IdEEEES8_S8_
LCPI41_0:
	.quad	0xbff0000000000000              ## double -1
LCPI41_1:
	.quad	0x3e45798ee2308c3a              ## double 1.0E-8
LCPI41_2:
	.quad	0x3fe0000000000000              ## double 0.5
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN10Vertexlist13clusterupdateERNSt3__16vectorIiNS0_9allocatorIiEEEES5_S5_S5_RNS1_IdNS2_IdEEEES8_S8_
	.weak_def_can_be_hidden	__ZN10Vertexlist13clusterupdateERNSt3__16vectorIiNS0_9allocatorIiEEEES5_S5_S5_RNS1_IdNS2_IdEEEES8_S8_
	.p2align	4, 0x90
__ZN10Vertexlist13clusterupdateERNSt3__16vectorIiNS0_9allocatorIiEEEES5_S5_S5_RNS1_IdNS2_IdEEEES8_S8_: ## @_ZN10Vertexlist13clusterupdateERNSt3__16vectorIiNS0_9allocatorIiEEEES5_S5_S5_RNS1_IdNS2_IdEEEES8_S8_
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$248, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%r9, -280(%rbp)                 ## 8-byte Spill
	movq	%r8, %r14
	movq	%rcx, -80(%rbp)                 ## 8-byte Spill
	movq	%rdx, %rbx
	movq	%rdi, %r15
	movq	%rsi, -96(%rbp)                 ## 8-byte Spill
	movq	%rsi, %rdi
	callq	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv
	movq	%rax, -104(%rbp)                ## 8-byte Spill
	movl	%eax, %edi
	callq	__ZL4sqrtIiENSt3__19enable_ifIXsr3std11is_integralIT_EE5valueEdE4typeES2_
	movsd	%xmm0, -152(%rbp)               ## 8-byte Spill
	movq	%rbx, -88(%rbp)                 ## 8-byte Spill
	movq	%rbx, %rdi
	callq	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv
	movslq	72(%r15), %rcx
	movq	%rax, -144(%rbp)                ## 8-byte Spill
	movslq	%eax, %r15
	imulq	%rcx, %r15
	movl	$0, -184(%rbp)
	leaq	-136(%rbp), %rdi
	leaq	-184(%rbp), %rdx
	movq	%r15, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1EmRKi
	movl	$-1, -256(%rbp)
Ltmp15:
	leaq	-184(%rbp), %rdi
	leaq	-256(%rbp), %rdx
	movq	%r15, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1EmRKi
Ltmp16:
## %bb.1:
	movq	%r14, -264(%rbp)                ## 8-byte Spill
	testl	%r15d, %r15d
	movq	%r15, -160(%rbp)                ## 8-byte Spill
	jle	LBB41_36
## %bb.2:
	movq	-104(%rbp), %rax                ## 8-byte Reload
	addl	%eax, %eax
	movl	%eax, -64(%rbp)                 ## 4-byte Spill
	xorl	%ebx, %ebx
	leaq	-136(%rbp), %r14
	xorl	%r12d, %r12d
	jmp	LBB41_5
	.p2align	4, 0x90
LBB41_3:                                ##   in Loop: Header=BB41_5 Depth=1
	movq	-160(%rbp), %r15                ## 8-byte Reload
	movl	-72(%rbp), %r12d                ## 4-byte Reload
	movq	-112(%rbp), %rbx                ## 8-byte Reload
	leaq	-136(%rbp), %r14
LBB41_4:                                ##   in Loop: Header=BB41_5 Depth=1
	addq	$4, %rbx
	cmpq	%r15, %rbx
	jge	LBB41_37
LBB41_5:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB41_9 Depth 2
                                        ##       Child Loop BB41_25 Depth 3
                                        ##       Child Loop BB41_19 Depth 3
	movq	-80(%rbp), %rdi                 ## 8-byte Reload
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	cmpl	$0, (%rax)
	js	LBB41_4
## %bb.6:                               ##   in Loop: Header=BB41_5 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	cmpl	$0, (%rax)
	jg	LBB41_4
## %bb.7:                               ##   in Loop: Header=BB41_5 Depth=1
	incl	%r12d
	movl	%r12d, -72(%rbp)                ## 4-byte Spill
	movl	$0, -48(%rbp)                   ## 4-byte Folded Spill
	movl	%ebx, %r15d
	movq	%rbx, -112(%rbp)                ## 8-byte Spill
	movl	%ebx, %r13d
	jmp	LBB41_9
	.p2align	4, 0x90
LBB41_8:                                ##   in Loop: Header=BB41_9 Depth=2
	xorl	%eax, %eax
	testb	%al, %al
	je	LBB41_16
LBB41_9:                                ##   Parent Loop BB41_5 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB41_25 Depth 3
                                        ##       Child Loop BB41_19 Depth 3
	movslq	%r15d, %r14
	leaq	-136(%rbp), %r12
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	-72(%rbp), %ecx                 ## 4-byte Reload
	movl	%ecx, (%rax)
	leal	3(%r14), %eax
	testl	%r14d, %r14d
	cmovnsl	%r15d, %eax
	sarl	$2, %eax
	movslq	%eax, %rsi
	movq	-88(%rbp), %rdi                 ## 8-byte Reload
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	-64(%rbp), %ecx                 ## 4-byte Reload
	cmpl	%ecx, (%rax)
	jl	LBB41_12
## %bb.10:                              ##   in Loop: Header=BB41_9 Depth=2
	movl	%r15d, %ebx
	xorl	$1, %ebx
	movslq	%ebx, %rsi
	movq	%r12, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	cmpl	$0, (%rax)
	jne	LBB41_12
## %bb.11:                              ##   in Loop: Header=BB41_9 Depth=2
	movl	-48(%rbp), %eax                 ## 4-byte Reload
	incl	%eax
	movl	%eax, -48(%rbp)                 ## 4-byte Spill
	movslq	%eax, %rsi
	leaq	-184(%rbp), %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	%ebx, (%rax)
	.p2align	4, 0x90
LBB41_12:                               ##   in Loop: Header=BB41_9 Depth=2
	movq	-80(%rbp), %rdi                 ## 8-byte Reload
	movq	%r14, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movslq	(%rax), %rbx
	leaq	-136(%rbp), %r14
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	leal	3(%rbx), %ecx
	testq	%rbx, %rbx
	movl	-72(%rbp), %edx                 ## 4-byte Reload
	movl	%edx, (%rax)
	cmovnsl	%ebx, %ecx
	sarl	$2, %ecx
	movslq	%ecx, %rsi
	movq	-88(%rbp), %rdi                 ## 8-byte Reload
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	-64(%rbp), %ecx                 ## 4-byte Reload
	cmpl	%ecx, (%rax)
	jl	LBB41_8
## %bb.13:                              ##   in Loop: Header=BB41_9 Depth=2
	movl	%ebx, %r15d
	xorl	$2, %r15d
	xorq	$1, %rbx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	cmpl	$0, (%rax)
	jne	LBB41_15
## %bb.14:                              ##   in Loop: Header=BB41_9 Depth=2
	movl	-48(%rbp), %eax                 ## 4-byte Reload
	incl	%eax
	movl	%eax, -48(%rbp)                 ## 4-byte Spill
	movslq	%eax, %rsi
	leaq	-184(%rbp), %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	%ebx, (%rax)
LBB41_15:                               ##   in Loop: Header=BB41_9 Depth=2
	cmpl	%r13d, %r15d
	setne	%al
	testb	%al, %al
	jne	LBB41_9
LBB41_16:                               ##   in Loop: Header=BB41_9 Depth=2
	leal	3(%r13), %eax
	testl	%r13d, %r13d
	cmovnsl	%r13d, %eax
	sarl	$2, %eax
	movslq	%eax, %rsi
	movq	-88(%rbp), %rdi                 ## 8-byte Reload
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	-64(%rbp), %ecx                 ## 4-byte Reload
	cmpl	%ecx, (%rax)
	jge	LBB41_22
LBB41_17:                               ##   in Loop: Header=BB41_9 Depth=2
	movb	$1, %r14b
	movl	-48(%rbp), %eax                 ## 4-byte Reload
	testl	%eax, %eax
	je	LBB41_34
## %bb.18:                              ##   in Loop: Header=BB41_9 Depth=2
	movslq	%eax, %rbx
	decl	%eax
	movl	%eax, %r12d
	.p2align	4, 0x90
LBB41_19:                               ##   Parent Loop BB41_5 Depth=1
                                        ##     Parent Loop BB41_9 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	leaq	-184(%rbp), %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	(%rax), %r15d
	movslq	%r15d, %rsi
	leaq	-136(%rbp), %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	cmpl	$0, (%rax)
	jle	LBB41_35
## %bb.20:                              ##   in Loop: Header=BB41_19 Depth=3
	decq	%rbx
	addl	$-1, %r12d
	jb	LBB41_19
## %bb.21:                              ##   in Loop: Header=BB41_9 Depth=2
	movl	$0, -48(%rbp)                   ## 4-byte Folded Spill
	movl	%r15d, %r13d
	testb	%r14b, %r14b
	je	LBB41_9
	jmp	LBB41_3
LBB41_22:                               ##   in Loop: Header=BB41_9 Depth=2
	movl	%r13d, %r15d
	xorl	$2, %r15d
	jmp	LBB41_25
	.p2align	4, 0x90
LBB41_23:                               ##   in Loop: Header=BB41_25 Depth=3
	xorl	%r14d, %r14d
LBB41_24:                               ##   in Loop: Header=BB41_25 Depth=3
	testb	%r14b, %r14b
	je	LBB41_17
LBB41_25:                               ##   Parent Loop BB41_5 Depth=1
                                        ##     Parent Loop BB41_9 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movslq	%r15d, %rbx
	leaq	-136(%rbp), %r14
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	-72(%rbp), %ecx                 ## 4-byte Reload
	movl	%ecx, (%rax)
	leal	3(%rbx), %eax
	testl	%ebx, %ebx
	cmovnsl	%r15d, %eax
	sarl	$2, %eax
	movslq	%eax, %rsi
	movq	-88(%rbp), %rdi                 ## 8-byte Reload
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	-64(%rbp), %ecx                 ## 4-byte Reload
	cmpl	%ecx, (%rax)
	jl	LBB41_29
## %bb.26:                              ##   in Loop: Header=BB41_25 Depth=3
	movq	%r14, %rdi
	movl	%r15d, %r14d
	xorl	$1, %r14d
	movslq	%r14d, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	cmpl	$0, (%rax)
	jne	LBB41_28
## %bb.27:                              ##   in Loop: Header=BB41_25 Depth=3
	movl	-48(%rbp), %eax                 ## 4-byte Reload
	incl	%eax
	movl	%eax, -48(%rbp)                 ## 4-byte Spill
	movslq	%eax, %rsi
	leaq	-184(%rbp), %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	%r14d, (%rax)
LBB41_28:                               ##   in Loop: Header=BB41_25 Depth=3
	leaq	-136(%rbp), %r14
LBB41_29:                               ##   in Loop: Header=BB41_25 Depth=3
	movq	-80(%rbp), %rdi                 ## 8-byte Reload
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movslq	(%rax), %rbx
	cmpl	%r13d, %ebx
	je	LBB41_23
## %bb.30:                              ##   in Loop: Header=BB41_25 Depth=3
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	-72(%rbp), %ecx                 ## 4-byte Reload
	movl	%ecx, (%rax)
	leal	3(%rbx), %eax
	testl	%ebx, %ebx
	cmovnsl	%ebx, %eax
	sarl	$2, %eax
	movslq	%eax, %rsi
	movq	-88(%rbp), %rdi                 ## 8-byte Reload
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	-64(%rbp), %ecx                 ## 4-byte Reload
	cmpl	%ecx, (%rax)
	jl	LBB41_23
## %bb.32:                              ##   in Loop: Header=BB41_25 Depth=3
	movl	%ebx, %r15d
	xorl	$2, %r15d
	xorq	$1, %rbx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movb	$1, %r14b
	cmpl	$0, (%rax)
	jne	LBB41_24
## %bb.33:                              ##   in Loop: Header=BB41_25 Depth=3
	movl	-48(%rbp), %eax                 ## 4-byte Reload
	incl	%eax
	movl	%eax, -48(%rbp)                 ## 4-byte Spill
	movslq	%eax, %rsi
	leaq	-184(%rbp), %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	%ebx, (%rax)
	jmp	LBB41_24
LBB41_34:                               ##   in Loop: Header=BB41_9 Depth=2
	movl	$0, -48(%rbp)                   ## 4-byte Folded Spill
	testb	%r14b, %r14b
	je	LBB41_9
	jmp	LBB41_3
LBB41_35:                               ##   in Loop: Header=BB41_9 Depth=2
	movl	%r12d, -48(%rbp)                ## 4-byte Spill
	movl	%r15d, %r13d
	xorl	%r14d, %r14d
	testb	%r14b, %r14b
	je	LBB41_9
	jmp	LBB41_3
LBB41_36:
	xorl	%r12d, %r12d
LBB41_37:
	movslq	%r12d, %rbx
	movl	$0, -232(%rbp)
Ltmp18:
	leaq	-256(%rbp), %rdi
	leaq	-232(%rbp), %rdx
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1EmRKi
Ltmp19:
## %bb.38:
	movabsq	$4607182418800017408, %rax      ## imm = 0x3FF0000000000000
	movq	%rax, -288(%rbp)
Ltmp21:
	leaq	-208(%rbp), %rdi
	leaq	-288(%rbp), %rdx
	movl	$2, %esi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1EmRKd
Ltmp22:
## %bb.39:
Ltmp24:
	movl	%r12d, -72(%rbp)                ## 4-byte Spill
	leaq	-232(%rbp), %rdi
	leaq	-208(%rbp), %rdx
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEC1EmRKS3_
Ltmp25:
## %bb.40:
	leaq	-208(%rbp), %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEED1Ev
	movq	-144(%rbp), %rcx                ## 8-byte Reload
	testl	%ecx, %ecx
	jle	LBB41_57
## %bb.41:
	cvttsd2si	-152(%rbp), %r12d       ## 8-byte Folded Reload
	movq	-104(%rbp), %rax                ## 8-byte Reload
	leal	(%rax,%rax), %r14d
	movl	%ecx, %r13d
	xorl	%r15d, %r15d
	movl	%r14d, -152(%rbp)               ## 4-byte Spill
	movq	%r13, -144(%rbp)                ## 8-byte Spill
	jmp	LBB41_46
LBB41_42:                               ##   in Loop: Header=BB41_46 Depth=1
	movq	16(%rbp), %rdi
	movq	-48(%rbp), %r12                 ## 8-byte Reload
	movq	%r12, %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEixEm
	movsd	-64(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addsd	%xmm0, %xmm0
	subsd	(%rax), %xmm0
	movsd	%xmm0, -64(%rbp)                ## 8-byte Spill
	movq	24(%rbp), %rdi
	movq	%r12, %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEixEm
	movsd	-64(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addsd	(%rax), %xmm0
	movsd	%xmm0, -64(%rbp)                ## 8-byte Spill
	movq	-112(%rbp), %r14                ## 8-byte Reload
	decq	%r14
	leaq	-232(%rbp), %rbx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEixEm
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEixEm
	movsd	-64(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	mulsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movq	24(%rbp), %rdi
	movq	%r12, %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEixEm
	movsd	(%rax), %xmm0                   ## xmm0 = mem[0],zero
LBB41_43:                               ##   in Loop: Header=BB41_46 Depth=1
	movsd	%xmm0, -64(%rbp)                ## 8-byte Spill
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEixEm
	movl	$1, %esi
	movq	%rax, %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEixEm
	movsd	-64(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	mulsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
LBB41_44:                               ##   in Loop: Header=BB41_46 Depth=1
	movl	%r13d, %r12d
	movl	-152(%rbp), %r14d               ## 4-byte Reload
	movq	-144(%rbp), %r13                ## 8-byte Reload
LBB41_45:                               ##   in Loop: Header=BB41_46 Depth=1
	incq	%r15
	cmpq	%r13, %r15
	je	LBB41_57
LBB41_46:                               ## =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rdi                 ## 8-byte Reload
	movq	%r15, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	(%rax), %ebx
	cmpl	$-1, %ebx
	je	LBB41_45
## %bb.47:                              ##   in Loop: Header=BB41_46 Depth=1
	cmpl	%r14d, %ebx
	jge	LBB41_50
## %bb.48:                              ##   in Loop: Header=BB41_46 Depth=1
	movl	%ebx, %edi
	movl	%r12d, %esi
	movl	%r12d, %edx
	callq	__Z16operator_to_bondiii
	movq	%rax, -208(%rbp)
	testb	$1, %bl
	je	LBB41_45
## %bb.49:                              ##   in Loop: Header=BB41_46 Depth=1
	leaq	-208(%rbp), %rdi
	xorl	%esi, %esi
	callq	__ZNSt3__15arrayIiLm2EEixEm
	movslq	(%rax), %rsi
	movq	-96(%rbp), %rdi                 ## 8-byte Reload
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	negl	(%rax)
	jmp	LBB41_45
	.p2align	4, 0x90
LBB41_50:                               ##   in Loop: Header=BB41_46 Depth=1
	movl	%ebx, %edi
	movl	%r12d, %esi
	movl	%r12d, %edx
	callq	__Z16operator_to_bondiii
	movq	%rax, -208(%rbp)
	leaq	-208(%rbp), %rbx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	__ZNSt3__15arrayIiLm2EEixEm
	movl	(%rax), %r14d
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	__ZNSt3__15arrayIiLm2EEixEm
	movl	(%rax), %ebx
Ltmp27:
	movl	%r14d, %edi
	movl	%ebx, %esi
	movl	%r12d, %edx
	movl	%r12d, %r13d
	movl	%r12d, %ecx
	callq	__Z7vec_miniiii
Ltmp28:
## %bb.51:                              ##   in Loop: Header=BB41_46 Depth=1
	movslq	%r14d, %r14
	movslq	%ebx, %r12
	movslq	%eax, %rsi
	movq	-280(%rbp), %rdi                ## 8-byte Reload
	movq	%rsi, -48(%rbp)                 ## 8-byte Spill
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEixEm
	movsd	(%rax), %xmm0                   ## xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)                ## 8-byte Spill
	leal	(,%r15,4), %esi
	leaq	-136(%rbp), %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movslq	(%rax), %rax
	movq	%rax, -112(%rbp)                ## 8-byte Spill
	movq	-96(%rbp), %rdi                 ## 8-byte Reload
	movq	%r14, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	(%rax), %ebx
	cmpl	$1, %ebx
	je	LBB41_55
## %bb.52:                              ##   in Loop: Header=BB41_46 Depth=1
	cmpl	$-1, %ebx
	jne	LBB41_44
## %bb.53:                              ##   in Loop: Header=BB41_46 Depth=1
	movq	-96(%rbp), %rdi                 ## 8-byte Reload
	movq	%r12, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	cmpl	$-1, (%rax)
	je	LBB41_42
## %bb.54:                              ##   in Loop: Header=BB41_46 Depth=1
	cmpl	$1, %ebx
	jne	LBB41_44
LBB41_55:                               ##   in Loop: Header=BB41_46 Depth=1
	movq	-96(%rbp), %rdi                 ## 8-byte Reload
	movq	%r12, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	cmpl	$1, (%rax)
	jne	LBB41_44
## %bb.56:                              ##   in Loop: Header=BB41_46 Depth=1
	movq	24(%rbp), %rdi
	movq	-48(%rbp), %r12                 ## 8-byte Reload
	movq	%r12, %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEixEm
	movsd	(%rax), %xmm0                   ## xmm0 = mem[0],zero
	movsd	%xmm0, -272(%rbp)               ## 8-byte Spill
	movq	-112(%rbp), %rax                ## 8-byte Reload
	decl	%eax
	movslq	%eax, %r14
	leaq	-232(%rbp), %rbx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEixEm
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEixEm
	movsd	-272(%rbp), %xmm0               ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	mulsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	movq	16(%rbp), %rdi
	movq	%r12, %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEixEm
	movsd	-64(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addsd	%xmm0, %xmm0
	subsd	(%rax), %xmm0
	movsd	%xmm0, -64(%rbp)                ## 8-byte Spill
	movq	24(%rbp), %rdi
	movq	%r12, %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEixEm
	movsd	-64(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addsd	(%rax), %xmm0
	jmp	LBB41_43
LBB41_57:
	movl	-72(%rbp), %eax                 ## 4-byte Reload
	testl	%eax, %eax
	jle	LBB41_65
## %bb.58:
	movl	%eax, %r12d
	xorl	%r14d, %r14d
	leaq	-232(%rbp), %r15
	leaq	-256(%rbp), %r13
	jmp	LBB41_60
	.p2align	4, 0x90
LBB41_59:                               ##   in Loop: Header=BB41_60 Depth=1
	incq	%r14
	cmpq	%r14, %r12
	je	LBB41_65
LBB41_60:                               ## =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEixEm
	movq	%rax, %rbx
	movl	$1, %esi
	movq	%rax, %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEixEm
	movsd	(%rax), %xmm2                   ## xmm2 = mem[0],zero
	xorpd	%xmm1, %xmm1
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, -64(%rbp)                ## 16-byte Spill
	ucomisd	%xmm1, %xmm2
	jne	LBB41_61
	jnp	LBB41_62
LBB41_61:                               ##   in Loop: Header=BB41_60 Depth=1
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movsd	%xmm2, -64(%rbp)                ## 8-byte Spill
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEixEm
	movsd	(%rax), %xmm0                   ## xmm0 = mem[0],zero
	divsd	-64(%rbp), %xmm0                ## 8-byte Folded Reload
	movapd	%xmm0, -64(%rbp)                ## 16-byte Spill
LBB41_62:                               ##   in Loop: Header=BB41_60 Depth=1
Ltmp30:
	callq	__ZNSt3__125uniform_real_distributionIdEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEdRT_
	movsd	%xmm0, -72(%rbp)                ## 8-byte Spill
Ltmp31:
## %bb.63:                              ##   in Loop: Header=BB41_60 Depth=1
	movapd	-64(%rbp), %xmm0                ## 16-byte Reload
	addsd	LCPI41_0(%rip), %xmm0
	callq	__ZL3absd
	cmpltsd	LCPI41_1(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movsd	LCPI41_2(%rip), %xmm2           ## xmm2 = mem[0],zero
	andpd	%xmm2, %xmm1
	andnpd	-64(%rbp), %xmm0                ## 16-byte Folded Reload
	orpd	%xmm1, %xmm0
	ucomisd	-72(%rbp), %xmm0                ## 8-byte Folded Reload
	jbe	LBB41_59
## %bb.64:                              ##   in Loop: Header=BB41_60 Depth=1
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	$1, (%rax)
	jmp	LBB41_59
LBB41_65:
	cmpl	$0, -160(%rbp)                  ## 4-byte Folded Reload
	jle	LBB41_77
## %bb.66:
	movq	-104(%rbp), %rax                ## 8-byte Reload
	leal	(%rax,%rax), %r13d
	xorl	%r14d, %r14d
	leaq	-256(%rbp), %r12
	jmp	LBB41_70
LBB41_67:                               ##   in Loop: Header=BB41_70 Depth=1
	movl	$-1, (%r15)
	leaq	1(%r14), %rsi
	movq	-80(%rbp), %rdi                 ## 8-byte Reload
LBB41_68:                               ##   in Loop: Header=BB41_70 Depth=1
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	$-1, (%rax)
LBB41_69:                               ##   in Loop: Header=BB41_70 Depth=1
	addq	$2, %r14
	cmpl	%r14d, -160(%rbp)               ## 4-byte Folded Reload
	jle	LBB41_77
LBB41_70:                               ## =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rdi                 ## 8-byte Reload
	movq	%r14, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	cmpl	$0, (%rax)
	js	LBB41_69
## %bb.71:                              ##   in Loop: Header=BB41_70 Depth=1
	movq	%rax, %r15
	movl	%r14d, %esi
	shrl	$2, %esi
	movq	-88(%rbp), %rdi                 ## 8-byte Reload
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	(%rax), %ebx
	leaq	-136(%rbp), %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movslq	(%rax), %rsi
	decq	%rsi
	movq	%r12, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	(%rax), %eax
	cmpl	%r13d, %ebx
	jge	LBB41_74
## %bb.72:                              ##   in Loop: Header=BB41_70 Depth=1
	cmpl	$1, %eax
	jne	LBB41_76
## %bb.73:                              ##   in Loop: Header=BB41_70 Depth=1
	movl	%r14d, %edi
	movq	-88(%rbp), %rsi                 ## 8-byte Reload
	movq	-104(%rbp), %rdx                ## 8-byte Reload
                                        ## kill: def $edx killed $edx killed $rdx
	callq	__Z11change_typeiRNSt3__16vectorIiNS_9allocatorIiEEEEi
	movq	-80(%rbp), %rdi                 ## 8-byte Reload
	movq	%r14, %rsi
	jmp	LBB41_68
	.p2align	4, 0x90
LBB41_74:                               ##   in Loop: Header=BB41_70 Depth=1
	cmpl	$1, %eax
	je	LBB41_67
## %bb.75:                              ##   in Loop: Header=BB41_70 Depth=1
	movl	$-2, (%r15)
	leaq	1(%r14), %rsi
	movq	-80(%rbp), %rdi                 ## 8-byte Reload
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	$-2, (%rax)
	jmp	LBB41_69
LBB41_76:                               ##   in Loop: Header=BB41_70 Depth=1
	movl	$-2, (%r15)
	jmp	LBB41_69
LBB41_77:
	movq	-104(%rbp), %rax                ## 8-byte Reload
	testl	%eax, %eax
	movq	-264(%rbp), %r15                ## 8-byte Reload
	jle	LBB41_85
## %bb.78:
	movl	%eax, %r14d
	xorl	%ebx, %ebx
	jmp	LBB41_81
	.p2align	4, 0x90
LBB41_79:                               ##   in Loop: Header=BB41_81 Depth=1
	movq	-96(%rbp), %rdi                 ## 8-byte Reload
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	negl	(%rax)
LBB41_80:                               ##   in Loop: Header=BB41_81 Depth=1
	incq	%rbx
	cmpq	%rbx, %r14
	je	LBB41_85
LBB41_81:                               ## =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movslq	(%rax), %rsi
	cmpq	$-1, %rsi
	je	LBB41_83
## %bb.82:                              ##   in Loop: Header=BB41_81 Depth=1
	movq	-80(%rbp), %rdi                 ## 8-byte Reload
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	cmpl	$-1, (%rax)
	jne	LBB41_80
	jmp	LBB41_79
	.p2align	4, 0x90
LBB41_83:                               ##   in Loop: Header=BB41_81 Depth=1
Ltmp33:
	callq	__ZNSt3__125uniform_real_distributionIdEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEdRT_
Ltmp34:
## %bb.84:                              ##   in Loop: Header=BB41_81 Depth=1
	movsd	LCPI41_2(%rip), %xmm1           ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	LBB41_79
	jmp	LBB41_80
LBB41_85:
	leaq	-232(%rbp), %rdi
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEED1Ev
	leaq	-256(%rbp), %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev
	leaq	-184(%rbp), %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev
	leaq	-136(%rbp), %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB41_86:
Ltmp26:
	movq	%rax, %rbx
	leaq	-208(%rbp), %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEED1Ev
	jmp	LBB41_94
LBB41_87:
Ltmp23:
	movq	%rax, %rbx
	jmp	LBB41_94
LBB41_88:
Ltmp20:
	movq	%rax, %rbx
	jmp	LBB41_95
LBB41_89:
Ltmp17:
	movq	%rax, %rbx
	jmp	LBB41_96
LBB41_90:
Ltmp29:
	jmp	LBB41_93
LBB41_91:
Ltmp35:
	jmp	LBB41_93
LBB41_92:
Ltmp32:
LBB41_93:
	movq	%rax, %rbx
	leaq	-232(%rbp), %rdi
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEED1Ev
LBB41_94:
	leaq	-256(%rbp), %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev
LBB41_95:
	leaq	-184(%rbp), %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev
LBB41_96:
	leaq	-136(%rbp), %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table41:
Lexception5:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Lfunc_begin5-Lfunc_begin5      ## >> Call Site 1 <<
	.uleb128 Ltmp15-Lfunc_begin5            ##   Call between Lfunc_begin5 and Ltmp15
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp15-Lfunc_begin5            ## >> Call Site 2 <<
	.uleb128 Ltmp16-Ltmp15                  ##   Call between Ltmp15 and Ltmp16
	.uleb128 Ltmp17-Lfunc_begin5            ##     jumps to Ltmp17
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp18-Lfunc_begin5            ## >> Call Site 3 <<
	.uleb128 Ltmp19-Ltmp18                  ##   Call between Ltmp18 and Ltmp19
	.uleb128 Ltmp20-Lfunc_begin5            ##     jumps to Ltmp20
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp21-Lfunc_begin5            ## >> Call Site 4 <<
	.uleb128 Ltmp22-Ltmp21                  ##   Call between Ltmp21 and Ltmp22
	.uleb128 Ltmp23-Lfunc_begin5            ##     jumps to Ltmp23
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp24-Lfunc_begin5            ## >> Call Site 5 <<
	.uleb128 Ltmp25-Ltmp24                  ##   Call between Ltmp24 and Ltmp25
	.uleb128 Ltmp26-Lfunc_begin5            ##     jumps to Ltmp26
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp27-Lfunc_begin5            ## >> Call Site 6 <<
	.uleb128 Ltmp28-Ltmp27                  ##   Call between Ltmp27 and Ltmp28
	.uleb128 Ltmp29-Lfunc_begin5            ##     jumps to Ltmp29
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp30-Lfunc_begin5            ## >> Call Site 7 <<
	.uleb128 Ltmp31-Ltmp30                  ##   Call between Ltmp30 and Ltmp31
	.uleb128 Ltmp32-Lfunc_begin5            ##     jumps to Ltmp32
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp33-Lfunc_begin5            ## >> Call Site 8 <<
	.uleb128 Ltmp34-Ltmp33                  ##   Call between Ltmp33 and Ltmp34
	.uleb128 Ltmp35-Lfunc_begin5            ##     jumps to Ltmp35
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp34-Lfunc_begin5            ## >> Call Site 9 <<
	.uleb128 Lfunc_end5-Ltmp34              ##   Call between Ltmp34 and Lfunc_end5
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end5:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN10VertexlistD1Ev            ## -- Begin function _ZN10VertexlistD1Ev
	.weak_def_can_be_hidden	__ZN10VertexlistD1Ev
	.p2align	4, 0x90
__ZN10VertexlistD1Ev:                   ## @_ZN10VertexlistD1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZN10VertexlistD2Ev
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z10thermalizeRNSt3__16vectorIiNS_9allocatorIiEEEES4_RNS0_IdNS1_IdEEEES7_S7_RNS0_IS6_NS1_IS6_EEEES7_di ## -- Begin function _Z10thermalizeRNSt3__16vectorIiNS_9allocatorIiEEEES4_RNS0_IdNS1_IdEEEES7_S7_RNS0_IS6_NS1_IS6_EEEES7_di
	.p2align	4, 0x90
__Z10thermalizeRNSt3__16vectorIiNS_9allocatorIiEEEES4_RNS0_IdNS1_IdEEEES7_S7_RNS0_IS6_NS1_IS6_EEEES7_di: ## @_Z10thermalizeRNSt3__16vectorIiNS_9allocatorIiEEEES4_RNS0_IdNS1_IdEEEES7_S7_RNS0_IS6_NS1_IS6_EEEES7_di
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movsd	%xmm0, -112(%rbp)               ## 8-byte Spill
	movq	%r9, -104(%rbp)                 ## 8-byte Spill
	movq	%r8, -96(%rbp)                  ## 8-byte Spill
	movq	%rcx, -88(%rbp)                 ## 8-byte Spill
	movq	%rdx, -48(%rbp)                 ## 8-byte Spill
	movq	%rsi, -80(%rbp)                 ## 8-byte Spill
	movq	%rdi, -72(%rbp)                 ## 8-byte Spill
	movl	32(%rbp), %eax
	testl	%eax, %eax
	jle	LBB43_5
## %bb.1:
	movq	-80(%rbp), %r12                 ## 8-byte Reload
	movq	-48(%rbp), %r15                 ## 8-byte Reload
	movq	-88(%rbp), %rbx                 ## 8-byte Reload
	movq	-96(%rbp), %r14                 ## 8-byte Reload
	movq	-104(%rbp), %r13                ## 8-byte Reload
	jmp	LBB43_2
	.p2align	4, 0x90
LBB43_4:                                ##   in Loop: Header=BB43_2 Depth=1
	movl	-56(%rbp), %eax                 ## 4-byte Reload
	decl	%eax
	je	LBB43_5
LBB43_2:                                ## =>This Inner Loop Header: Depth=1
	movl	%eax, -56(%rbp)                 ## 4-byte Spill
	movq	24(%rbp), %rax
	movq	%rax, (%rsp)
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	movq	%r14, %rcx
	movq	%r13, %r8
	movq	16(%rbp), %r9
	movsd	-112(%rbp), %xmm0               ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	callq	__Z15diagonal_updateRNSt3__16vectorIiNS_9allocatorIiEEEES4_RKNS0_IdNS1_IdEEEES8_S8_RKNS0_IS6_NS1_IS6_EEEES8_d
	movl	%eax, -52(%rbp)                 ## 4-byte Spill
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	movq	%r14, %rcx
	movq	%r13, %r8
	callq	__Z14cluster_updateRNSt3__16vectorIiNS_9allocatorIiEEEES4_RNS0_IdNS1_IdEEEES7_S7_
	movq	%r15, %rdi
	callq	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv
	movslq	-52(%rbp), %rcx                 ## 4-byte Folded Reload
	imulq	$1431655766, %rcx, %rdx         ## imm = 0x55555556
	movq	%rdx, %rsi
	shrq	$63, %rsi
	shrq	$32, %rdx
	addl	%esi, %edx
	addl	%edx, %ecx
	cmpl	%eax, %ecx
	jle	LBB43_4
## %bb.3:                               ##   in Loop: Header=BB43_2 Depth=1
	movslq	%ecx, %rsi
	movl	$-1, -60(%rbp)
	movq	-48(%rbp), %rdi                 ## 8-byte Reload
	leaq	-60(%rbp), %rdx
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE6resizeEmRKi
	jmp	LBB43_4
LBB43_5:
	movq	-72(%rbp), %r14                 ## 8-byte Reload
	movq	%r14, %rdi
	movq	-48(%rbp), %rsi                 ## 8-byte Reload
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1ERKS3_
	movq	%r14, %rax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE6resizeEmRKi ## -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE6resizeEmRKi
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEE6resizeEmRKi
	.p2align	4, 0x90
__ZNSt3__16vectorIiNS_9allocatorIiEEE6resizeEmRKi: ## @_ZNSt3__16vectorIiNS_9allocatorIiEEE6resizeEmRKi
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv
	cmpq	%rbx, %rax
	jae	LBB44_2
## %bb.1:
	subq	%rax, %rbx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE8__appendEmRKi
	jmp	LBB44_4
LBB44_2:
	jbe	LBB44_4
## %bb.3:
	shlq	$2, %rbx
	addq	(%r14), %rbx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE17__destruct_at_endEPi
LBB44_4:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1ERKS3_ ## -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEEC1ERKS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1ERKS3_
	.p2align	4, 0x90
__ZNSt3__16vectorIiNS_9allocatorIiEEEC1ERKS3_: ## @_ZNSt3__16vectorIiNS_9allocatorIiEEEC1ERKS3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEC2ERKS3_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z14get_staggeringii           ## -- Begin function _Z14get_staggeringii
	.p2align	4, 0x90
__Z14get_staggeringii:                  ## @_Z14get_staggeringii
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%edx, %r14d
	movl	%esi, %r15d
	movq	%rdi, %r12
	movl	%edx, %eax
	imull	%esi, %eax
	movslq	%eax, %rsi
	movl	$0, -44(%rbp)
	leaq	-44(%rbp), %rdx
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1EmRKi
	testl	%r15d, %r15d
	jle	LBB46_6
## %bb.1:
	xorl	%r13d, %r13d
	movq	%r12, -56(%rbp)                 ## 8-byte Spill
	jmp	LBB46_2
	.p2align	4, 0x90
LBB46_5:                                ##   in Loop: Header=BB46_2 Depth=1
	incl	%r13d
	cmpl	%r15d, %r13d
	je	LBB46_6
LBB46_2:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB46_4 Depth 2
	testl	%r14d, %r14d
	jle	LBB46_5
## %bb.3:                               ##   in Loop: Header=BB46_2 Depth=1
	xorl	%ebx, %ebx
	movq	%r13, -64(%rbp)                 ## 8-byte Spill
	.p2align	4, 0x90
LBB46_4:                                ##   Parent Loop BB46_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%r13d, %edi
	movl	%ebx, %esi
	movl	%r15d, %edx
	callq	__Z4siteiiii
	movl	%r14d, %r12d
	movl	%eax, %r14d
	leal	(%r13,%rbx), %edi
	callq	__ZL3powIiiENSt3__19_MetaBaseIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueEE13_EnableIfImplINS0_9__promoteIS2_S3_vEEE4typeES2_S3_
	movl	%r15d, %r13d
	cvttsd2si	%xmm0, %r15d
	movslq	%r14d, %rsi
	movl	%r12d, %r14d
	movq	-56(%rbp), %r12                 ## 8-byte Reload
	movq	%r12, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	%r15d, (%rax)
	movl	%r13d, %r15d
	movq	-64(%rbp), %r13                 ## 8-byte Reload
	incl	%ebx
	cmpl	%ebx, %r14d
	jne	LBB46_4
	jmp	LBB46_5
LBB46_6:
	movq	%r12, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function _ZL3powIiiENSt3__19_MetaBaseIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueEE13_EnableIfImplINS0_9__promoteIS2_S3_vEEE4typeES2_S3_
LCPI47_0:
	.quad	0xbff0000000000000              ## double -1
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90
__ZL3powIiiENSt3__19_MetaBaseIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueEE13_EnableIfImplINS0_9__promoteIS2_S3_vEEE4typeES2_S3_: ## @_ZL3powIiiENSt3__19_MetaBaseIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueEE13_EnableIfImplINS0_9__promoteIS2_S3_vEEE4typeES2_S3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	cvtsi2sd	%edi, %xmm1
	movsd	LCPI47_0(%rip), %xmm0           ## xmm0 = mem[0],zero
	popq	%rbp
	jmp	_pow                            ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function _Z23staggered_magnetizationRNSt3__16vectorIiNS_9allocatorIiEEEES4_
LCPI48_0:
	.quad	0x3fe0000000000000              ## double 0.5
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z23staggered_magnetizationRNSt3__16vectorIiNS_9allocatorIiEEEES4_
	.p2align	4, 0x90
__Z23staggered_magnetizationRNSt3__16vectorIiNS_9allocatorIiEEEES4_: ## @_Z23staggered_magnetizationRNSt3__16vectorIiNS_9allocatorIiEEEES4_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv
	testq	%rax, %rax
	je	LBB48_1
## %bb.3:
	movq	%rax, %r12
	xorps	%xmm0, %xmm0
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB48_4:                                ## =>This Inner Loop Header: Depth=1
	movsd	%xmm0, -40(%rbp)                ## 8-byte Spill
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	xorps	%xmm0, %xmm0
	cvtsi2sdl	(%rax), %xmm0
	mulsd	LCPI48_0(%rip), %xmm0
	movsd	%xmm0, -48(%rbp)                ## 8-byte Spill
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	xorps	%xmm0, %xmm0
	cvtsi2sdl	(%rax), %xmm0
	mulsd	-48(%rbp), %xmm0                ## 8-byte Folded Reload
	movsd	-40(%rbp), %xmm1                ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)                ## 8-byte Spill
	movsd	-40(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	incq	%rbx
	cmpq	%rbx, %r12
	jne	LBB48_4
	jmp	LBB48_2
LBB48_1:
	xorps	%xmm0, %xmm0
LBB48_2:
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function _Z6init_cRNSt3__16vectorIiNS_9allocatorIiEEEERNS0_IdNS1_IdEEEEd
LCPI49_0:
	.quad	0x3fe0000000000000              ## double 0.5
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z6init_cRNSt3__16vectorIiNS_9allocatorIiEEEERNS0_IdNS1_IdEEEEd
	.p2align	4, 0x90
__Z6init_cRNSt3__16vectorIiNS_9allocatorIiEEEERNS0_IdNS1_IdEEEEd: ## @_Z6init_cRNSt3__16vectorIiNS_9allocatorIiEEEERNS0_IdNS1_IdEEEEd
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movsd	%xmm0, -48(%rbp)                ## 8-byte Spill
	movq	%rsi, %r14
	callq	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv
	movq	%rax, %r15
	movl	%r15d, %edi
	callq	__ZL4sqrtIiENSt3__19enable_ifIXsr3std11is_integralIT_EE5valueEdE4typeES2_
	movsd	-48(%rbp), %xmm1                ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	mulsd	LCPI49_0(%rip), %xmm1
	movsd	%xmm1, -48(%rbp)                ## 8-byte Spill
	testl	%r15d, %r15d
	jle	LBB49_7
## %bb.1:
	cvttsd2si	%xmm0, %r12d
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r15d, %xmm0
	movsd	%xmm0, -56(%rbp)                ## 8-byte Spill
	xorl	%r13d, %r13d
	jmp	LBB49_2
	.p2align	4, 0x90
LBB49_6:                                ##   in Loop: Header=BB49_2 Depth=1
	incl	%r13d
	cmpl	%r15d, %r13d
	je	LBB49_7
LBB49_2:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB49_3 Depth 2
	xorl	%ebx, %ebx
	jmp	LBB49_3
	.p2align	4, 0x90
LBB49_5:                                ##   in Loop: Header=BB49_3 Depth=2
	incl	%ebx
	cmpl	%ebx, %r15d
	je	LBB49_6
LBB49_3:                                ##   Parent Loop BB49_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	%r13d, %edi
	movl	%ebx, %esi
	movl	%r12d, %edx
	movl	%r12d, %ecx
	callq	__Z7vec_miniiii
	cmpl	%ebx, %r13d
	je	LBB49_5
## %bb.4:                               ##   in Loop: Header=BB49_3 Depth=2
	movslq	%eax, %rsi
	movq	%r14, %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEixEm
	movsd	(%rax), %xmm0                   ## xmm0 = mem[0],zero
	divsd	-56(%rbp), %xmm0                ## 8-byte Folded Reload
	movsd	-48(%rbp), %xmm1                ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)                ## 8-byte Spill
	jmp	LBB49_5
LBB49_7:
	movsd	-48(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__StaticInit,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function __cxx_global_var_init
___cxx_global_var_init:                 ## @__cxx_global_var_init
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	leaq	_rd(%rip), %rbx
	movq	%rbx, %rdi
	callq	__ZNSt3__113random_deviceC1Ev
	movq	__ZNSt3__113random_deviceD1Ev@GOTPCREL(%rip), %rdi
	leaq	___dso_handle(%rip), %rdx
	movq	%rbx, %rsi
	callq	___cxa_atexit
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__113random_deviceC1Ev   ## -- Begin function _ZNSt3__113random_deviceC1Ev
	.weak_def_can_be_hidden	__ZNSt3__113random_deviceC1Ev
	.p2align	4, 0x90
__ZNSt3__113random_deviceC1Ev:          ## @_ZNSt3__113random_deviceC1Ev
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, %rbx
	leaq	-40(%rbp), %r14
	movq	%r14, %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc
Ltmp36:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__113random_deviceC1ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE
Ltmp37:
## %bb.1:
	leaq	-40(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB51_2:
Ltmp38:
	movq	%rax, %rbx
	leaq	-40(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table51:
Lexception6:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Lfunc_begin6-Lfunc_begin6      ## >> Call Site 1 <<
	.uleb128 Ltmp36-Lfunc_begin6            ##   Call between Lfunc_begin6 and Ltmp36
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp36-Lfunc_begin6            ## >> Call Site 2 <<
	.uleb128 Ltmp37-Ltmp36                  ##   Call between Ltmp36 and Ltmp37
	.uleb128 Ltmp38-Lfunc_begin6            ##     jumps to Ltmp38
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp37-Lfunc_begin6            ## >> Call Site 3 <<
	.uleb128 Lfunc_end6-Ltmp37              ##   Call between Ltmp37 and Lfunc_end6
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end6:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__StaticInit,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function __cxx_global_var_init.1
___cxx_global_var_init.1:               ## @__cxx_global_var_init.1
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	_rd(%rip), %rdi
	callq	__ZNSt3__113random_deviceclEv
	movl	%eax, %edi
	callq	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC1Ej
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC1Ej
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC1Ej: ## @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC1Ej
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC2Ej
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function __cxx_global_var_init.2
LCPI54_0:
	.quad	0x3ff0000000000000              ## double 1
	.section	__TEXT,__StaticInit,regular,pure_instructions
	.p2align	4, 0x90
___cxx_global_var_init.2:               ## @__cxx_global_var_init.2
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	_dis(%rip), %rdi
	movsd	LCPI54_0(%rip), %xmm1           ## xmm1 = mem[0],zero
	xorps	%xmm0, %xmm0
	callq	__ZNSt3__125uniform_real_distributionIdEC1Edd
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__125uniform_real_distributionIdEC1Edd ## -- Begin function _ZNSt3__125uniform_real_distributionIdEC1Edd
	.weak_def_can_be_hidden	__ZNSt3__125uniform_real_distributionIdEC1Edd
	.p2align	4, 0x90
__ZNSt3__125uniform_real_distributionIdEC1Edd: ## @_ZNSt3__125uniform_real_distributionIdEC1Edd
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__125uniform_real_distributionIdEC2Edd
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function main
LCPI56_0:
	.quad	0x3ff199999999999a              ## double 1.1000000000000001
LCPI56_1:
	.quad	0x3ff0000000000000              ## double 1
LCPI56_2:
	.quad	0x3ffe666666666666              ## double 1.8999999999999999
LCPI56_3:
	.quad	0x3fe0000000000000              ## double 0.5
LCPI56_4:
	.quad	0x3fb999999999999a              ## double 0.10000000000000001
LCPI56_5:
	.quad	0x4024000000000000              ## double 10
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$112, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	movq	%rax, -48(%rbp)
	leaq	-128(%rbp), %rdi
	movsd	LCPI56_0(%rip), %xmm0           ## xmm0 = mem[0],zero
	movsd	LCPI56_1(%rip), %xmm1           ## xmm1 = mem[0],zero
	movsd	LCPI56_2(%rip), %xmm4           ## xmm4 = mem[0],zero
	movsd	LCPI56_3(%rip), %xmm5           ## xmm5 = mem[0],zero
	movsd	LCPI56_4(%rip), %xmm6           ## xmm6 = mem[0],zero
	movaps	%xmm1, %xmm2
	movaps	%xmm1, %xmm3
	movl	$4, %esi
	movl	$4, %edx
	movl	$1000, %ecx                     ## imm = 0x3E8
	movl	$400, %r8d                      ## imm = 0x190
	callq	__ZN10SimulationC1Eddddddiidii
	callq	__ZNSt3__16chrono12steady_clock3nowEv
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	callq	__ZNSt3__16chronomiINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -24(%rbp)
	leaq	-56(%rbp), %rbx
	leaq	-24(%rbp), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1IxNS2_ILl1ELl1000000000EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE
	movq	%rbx, %rdi
	callq	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countEv
	movsd	%xmm0, -32(%rbp)                ## 8-byte Spill
Ltmp39:
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRNS_8ios_baseES5_E
Ltmp40:
## %bb.1:
	callq	__ZNSt3__1L12setprecisionEi
	movl	%eax, -24(%rbp)
	leaq	-24(%rbp), %rdi
	callq	__ZNSt3__1lsIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E
Ltmp41:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	movsd	-32(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp42:
## %bb.2:
Ltmp43:
	movq	%rax, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp44:
## %bb.3:
Ltmp46:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str.3(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp47:
## %bb.4:
Ltmp48:
	movq	%rax, %rdi
	movl	$4, %esi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp49:
## %bb.5:
Ltmp50:
	leaq	L_.str.4(%rip), %rsi
	movq	%rax, %rdi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp51:
## %bb.6:
	movq	%rax, %rbx
	leaq	-128(%rbp), %rdi
	xorl	%esi, %esi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEixEm
	movsd	(%rax), %xmm0                   ## xmm0 = mem[0],zero
Ltmp52:
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp53:
## %bb.7:
Ltmp54:
	leaq	L_.str.5(%rip), %rsi
	movq	%rax, %rdi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp55:
## %bb.8:
	movq	%rax, %rbx
	leaq	-128(%rbp), %rdi
	movl	$1, %esi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEixEm
	movsd	(%rax), %xmm0                   ## xmm0 = mem[0],zero
Ltmp56:
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp57:
## %bb.9:
Ltmp58:
	leaq	L_.str.6(%rip), %rsi
	movq	%rax, %rdi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp59:
## %bb.10:
Ltmp60:
	movsd	LCPI56_5(%rip), %xmm0           ## xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp61:
## %bb.11:
Ltmp62:
	movq	%rax, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp63:
## %bb.12:
Ltmp64:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str.3(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp65:
## %bb.13:
Ltmp66:
	movq	%rax, %rdi
	movl	$4, %esi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp67:
## %bb.14:
Ltmp68:
	leaq	L_.str.7(%rip), %rsi
	movq	%rax, %rdi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp69:
## %bb.15:
	movq	%rax, %rbx
	leaq	-104(%rbp), %r14
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEixEm
	movsd	(%rax), %xmm0                   ## xmm0 = mem[0],zero
Ltmp70:
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp71:
## %bb.16:
Ltmp72:
	leaq	L_.str.5(%rip), %rsi
	movq	%rax, %rdi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp73:
## %bb.17:
	movq	%rax, %rbx
	movl	$1, %esi
	movq	%r14, %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEixEm
	movsd	(%rax), %xmm0                   ## xmm0 = mem[0],zero
Ltmp74:
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp75:
## %bb.18:
Ltmp76:
	leaq	L_.str.6(%rip), %rsi
	movq	%rax, %rdi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp77:
## %bb.19:
Ltmp78:
	movsd	LCPI56_5(%rip), %xmm0           ## xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp79:
## %bb.20:
Ltmp80:
	movq	%rax, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp81:
## %bb.21:
Ltmp82:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str.3(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp83:
## %bb.22:
Ltmp84:
	movq	%rax, %rdi
	movl	$4, %esi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp85:
## %bb.23:
Ltmp86:
	leaq	L_.str.8(%rip), %rsi
	movq	%rax, %rdi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp87:
## %bb.24:
	movq	%rax, %rbx
	leaq	-80(%rbp), %r14
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEixEm
	movsd	(%rax), %xmm0                   ## xmm0 = mem[0],zero
Ltmp88:
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp89:
## %bb.25:
Ltmp90:
	leaq	L_.str.5(%rip), %rsi
	movq	%rax, %rdi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp91:
## %bb.26:
	movq	%rax, %rbx
	movl	$1, %esi
	movq	%r14, %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEixEm
	movsd	(%rax), %xmm0                   ## xmm0 = mem[0],zero
Ltmp92:
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp93:
## %bb.27:
Ltmp94:
	leaq	L_.str.6(%rip), %rsi
	movq	%rax, %rdi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp95:
## %bb.28:
Ltmp96:
	movsd	LCPI56_5(%rip), %xmm0           ## xmm0 = mem[0],zero
	movq	%rax, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp97:
## %bb.29:
Ltmp98:
	movq	%rax, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp99:
## %bb.30:
	leaq	-128(%rbp), %rdi
	callq	__ZN10SimulationD1Ev
	xorl	%eax, %eax
	addq	$112, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB56_32:
Ltmp45:
	jmp	LBB56_33
LBB56_31:
Ltmp100:
LBB56_33:
	movq	%rax, %rbx
	leaq	-128(%rbp), %rdi
	callq	__ZN10SimulationD1Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table56:
Lexception7:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end7-Lcst_begin7
Lcst_begin7:
	.uleb128 Lfunc_begin7-Lfunc_begin7      ## >> Call Site 1 <<
	.uleb128 Ltmp39-Lfunc_begin7            ##   Call between Lfunc_begin7 and Ltmp39
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp39-Lfunc_begin7            ## >> Call Site 2 <<
	.uleb128 Ltmp40-Ltmp39                  ##   Call between Ltmp39 and Ltmp40
	.uleb128 Ltmp100-Lfunc_begin7           ##     jumps to Ltmp100
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp41-Lfunc_begin7            ## >> Call Site 3 <<
	.uleb128 Ltmp44-Ltmp41                  ##   Call between Ltmp41 and Ltmp44
	.uleb128 Ltmp45-Lfunc_begin7            ##     jumps to Ltmp45
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp46-Lfunc_begin7            ## >> Call Site 4 <<
	.uleb128 Ltmp99-Ltmp46                  ##   Call between Ltmp46 and Ltmp99
	.uleb128 Ltmp100-Lfunc_begin7           ##     jumps to Ltmp100
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp99-Lfunc_begin7            ## >> Call Site 5 <<
	.uleb128 Lfunc_end7-Ltmp99              ##   Call between Ltmp99 and Lfunc_end7
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end7:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN10SimulationC1Eddddddiidii  ## -- Begin function _ZN10SimulationC1Eddddddiidii
	.weak_def_can_be_hidden	__ZN10SimulationC1Eddddddiidii
	.p2align	4, 0x90
__ZN10SimulationC1Eddddddiidii:         ## @_ZN10SimulationC1Eddddddiidii
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZN10SimulationC2Eddddddiidii
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16chronomiINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
__ZNSt3__16chronomiINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE: ## @_ZNSt3__16chronomiINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -24
	movq	%rsi, %rbx
	callq	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochEv
	movq	%rax, -24(%rbp)
	movq	%rbx, %rdi
	callq	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochEv
	movq	%rax, -16(%rbp)
	leaq	-24(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	__ZNSt3__16chronomiIxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1IxNS2_ILl1ELl1000000000EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE
__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1IxNS2_ILl1ELl1000000000EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE: ## @_ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1IxNS2_ILl1ELl1000000000EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2IxNS2_ILl1ELl1000000000EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countEv
__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countEv: ## @_ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movsd	(%rdi), %xmm0                   ## xmm0 = mem[0],zero
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1lsIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E
__ZNSt3__1lsIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E: ## @_ZNSt3__1lsIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	addq	-24(%rcx), %rax
	movslq	(%rdi), %rsi
	movq	%rax, %rdi
	callq	__ZNSt3__18ios_base9precisionEl
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRNS_8ios_baseES5_E
__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRNS_8ios_baseES5_E: ## @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRNS_8ios_baseES5_E
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	movq	(%rdi), %rax
	addq	-24(%rax), %rdi
	callq	__ZNSt3__15fixedERNS_8ios_baseE
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__15fixedERNS_8ios_baseE ## -- Begin function _ZNSt3__15fixedERNS_8ios_baseE
	.weak_def_can_be_hidden	__ZNSt3__15fixedERNS_8ios_baseE
	.p2align	4, 0x90
__ZNSt3__15fixedERNS_8ios_baseE:        ## @_ZNSt3__15fixedERNS_8ios_baseE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	callq	__ZNSt3__18ios_base4setfEjj
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L12setprecisionEi
__ZNSt3__1L12setprecisionEi:            ## @_ZNSt3__1L12setprecisionEi
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	-8(%rbp), %rdi
	callq	__ZNSt3__18__iom_t5C1Ei
	movl	-8(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E: ## @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_ ## -- Begin function _ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.weak_def_can_be_hidden	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.p2align	4, 0x90
__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_: ## @_ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movq	(%rdi), %rax
	movq	-24(%rax), %rdi
	addq	%rbx, %rdi
	movl	$10, %esi
	callq	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc
	movsbl	%al, %esi
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	movq	%rbx, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc ## -- Begin function _ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.weak_def_can_be_hidden	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.p2align	4, 0x90
__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc: ## @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%rsi, %rdi
	callq	__ZNSt3__111char_traitsIcE6lengthEPKc
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN10SimulationD1Ev            ## -- Begin function _ZN10SimulationD1Ev
	.weak_def_can_be_hidden	__ZN10SimulationD1Ev
	.p2align	4, 0x90
__ZN10SimulationD1Ev:                   ## @_ZN10SimulationD1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZN10SimulationD2Ev
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__111__wrap_iterIPKiEC2IPiEERKNS0_IT_EEPNS_9enable_ifIXsr14is_convertibleIS6_S2_EE5valueEvE4typeE
__ZNSt3__111__wrap_iterIPKiEC2IPiEERKNS0_IT_EEPNS_9enable_ifIXsr14is_convertibleIS6_S2_EE5valueEvE4typeE: ## @_ZNSt3__111__wrap_iterIPKiEC2IPiEERKNS0_IT_EEPNS_9enable_ifIXsr14is_convertibleIS6_S2_EE5valueEvE4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	callq	__ZNKSt3__111__wrap_iterIPiE4baseEv
	movq	%rax, (%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__111__wrap_iterIPiE4baseEv
__ZNKSt3__111__wrap_iterIPiE4baseEv:    ## @_ZNKSt3__111__wrap_iterIPiE4baseEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1eqIPKiPiEEbRKNS_11__wrap_iterIT_EERKNS4_IT0_EE
__ZNSt3__1eqIPKiPiEEbRKNS_11__wrap_iterIT_EERKNS4_IT0_EE: ## @_ZNSt3__1eqIPKiPiEEbRKNS_11__wrap_iterIT_EERKNS4_IT0_EE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	callq	__ZNKSt3__111__wrap_iterIPKiE4baseEv
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	__ZNKSt3__111__wrap_iterIPiE4baseEv
	cmpq	%rax, %rbx
	sete	%al
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__111__wrap_iterIPKiE4baseEv
__ZNKSt3__111__wrap_iterIPKiE4baseEv:   ## @_ZNKSt3__111__wrap_iterIPKiE4baseEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN10VertexlistC2ERNSt3__16vectorIiNS0_9allocatorIiEEEES5_ ## -- Begin function _ZN10VertexlistC2ERNSt3__16vectorIiNS0_9allocatorIiEEEES5_
	.weak_def_can_be_hidden	__ZN10VertexlistC2ERNSt3__16vectorIiNS0_9allocatorIiEEEES5_
	.p2align	4, 0x90
__ZN10VertexlistC2ERNSt3__16vectorIiNS0_9allocatorIiEEEES5_: ## @_ZN10VertexlistC2ERNSt3__16vectorIiNS0_9allocatorIiEEEES5_
Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception8
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$168, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1Ev
	leaq	24(%rbx), %rdi
	movq	%rdi, -80(%rbp)                 ## 8-byte Spill
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1Ev
	leaq	48(%rbx), %rdi
	movq	%rdi, -72(%rbp)                 ## 8-byte Spill
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1Ev
	movl	$4, 72(%rbx)
	movq	%r14, %rdi
	callq	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv
	movq	%rax, -88(%rbp)                 ## 8-byte Spill
	movl	%eax, %edi
	callq	__ZL4sqrtIiENSt3__19enable_ifIXsr3std11is_integralIT_EE5valueEdE4typeES2_
	movsd	%xmm0, -56(%rbp)                ## 8-byte Spill
	movq	%r15, -128(%rbp)                ## 8-byte Spill
	movq	%r15, %rdi
	callq	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv
	movq	%rax, -96(%rbp)                 ## 8-byte Spill
	leal	(,%rax,4), %r14d
	movslq	%r14d, %rsi
	movl	$0, -184(%rbp)
Ltmp101:
	leaq	-208(%rbp), %rdi
	leaq	-184(%rbp), %rdx
	movq	%rbx, -48(%rbp)                 ## 8-byte Spill
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1EmRKi
Ltmp102:
## %bb.1:
Ltmp104:
	movl	%r14d, -112(%rbp)               ## 4-byte Spill
	leaq	-208(%rbp), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEaSERKS3_
Ltmp105:
## %bb.2:
	movslq	-88(%rbp), %r14                 ## 4-byte Folded Reload
	movl	$-1, -160(%rbp)
Ltmp107:
	leaq	-184(%rbp), %rdi
	leaq	-160(%rbp), %rdx
	movq	%r14, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1EmRKi
Ltmp108:
## %bb.3:
	movl	$-1, -104(%rbp)
Ltmp110:
	leaq	-160(%rbp), %rdi
	leaq	-104(%rbp), %rdx
	movq	%r14, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1EmRKi
Ltmp111:
## %bb.4:
Ltmp113:
	leaq	-184(%rbp), %rsi
	movq	-80(%rbp), %rdi                 ## 8-byte Reload
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEaSERKS3_
Ltmp114:
## %bb.5:
Ltmp115:
	leaq	-160(%rbp), %rsi
	movq	-72(%rbp), %rdi                 ## 8-byte Reload
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEaSERKS3_
Ltmp116:
## %bb.6:
	cmpl	$0, -96(%rbp)                   ## 4-byte Folded Reload
	jle	LBB73_13
## %bb.7:
	cvttsd2si	-56(%rbp), %eax         ## 8-byte Folded Reload
	movl	%eax, -108(%rbp)                ## 4-byte Spill
	movq	-88(%rbp), %rax                 ## 8-byte Reload
	addl	%eax, %eax
	movl	%eax, -116(%rbp)                ## 4-byte Spill
	movl	-96(%rbp), %eax                 ## 4-byte Reload
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	xorl	%r14d, %r14d
	jmp	LBB73_8
	.p2align	4, 0x90
LBB73_42:                               ##   in Loop: Header=BB73_8 Depth=1
	movl	$-2, (%rax)
LBB73_43:                               ##   in Loop: Header=BB73_8 Depth=1
	incq	%r14
	cmpq	%r14, -56(%rbp)                 ## 8-byte Folded Reload
	je	LBB73_13
LBB73_8:                                ## =>This Inner Loop Header: Depth=1
	movslq	72(%rbx), %rax
	movslq	%r14d, %r15
	imulq	%rax, %r15
	movq	-128(%rbp), %rdi                ## 8-byte Reload
	movq	%r14, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	(%rax), %edi
	cmpl	$-1, %edi
	je	LBB73_9
## %bb.29:                              ##   in Loop: Header=BB73_8 Depth=1
	cmpl	-116(%rbp), %edi                ## 4-byte Folded Reload
	jge	LBB73_30
## %bb.37:                              ##   in Loop: Header=BB73_8 Depth=1
	movl	-108(%rbp), %edx                ## 4-byte Reload
	movl	%edx, %esi
	callq	__Z16operator_to_bondiii
	movq	%rax, -104(%rbp)
	leaq	-104(%rbp), %rdi
	xorl	%esi, %esi
	callq	__ZNSt3__15arrayIiLm2EEixEm
	movslq	(%rax), %r12
	movq	-72(%rbp), %rdi                 ## 8-byte Reload
	movq	%r12, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movslq	(%rax), %r13
	cmpq	$-1, %r13
	je	LBB73_38
## %bb.39:                              ##   in Loop: Header=BB73_8 Depth=1
	movq	-48(%rbp), %rbx                 ## 8-byte Reload
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	%r15d, (%rax)
	movslq	%r15d, %rsi
	movq	%rbx, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	%r13d, (%rax)
	jmp	LBB73_40
	.p2align	4, 0x90
LBB73_9:                                ##   in Loop: Header=BB73_8 Depth=1
Ltmp123:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE2atEm
Ltmp124:
## %bb.10:                              ##   in Loop: Header=BB73_8 Depth=1
	movl	$-2, (%rax)
	leal	1(%r15), %eax
	movslq	%eax, %rsi
Ltmp125:
	movq	%rbx, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE2atEm
Ltmp126:
## %bb.11:                              ##   in Loop: Header=BB73_8 Depth=1
	movl	$-2, (%rax)
	leal	2(%r15), %eax
	movslq	%eax, %rsi
Ltmp127:
	movq	%rbx, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE2atEm
Ltmp128:
## %bb.12:                              ##   in Loop: Header=BB73_8 Depth=1
	movl	$-2, (%rax)
	leal	3(%r15), %eax
	movslq	%eax, %rsi
Ltmp129:
	movq	%rbx, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE2atEm
Ltmp130:
	jmp	LBB73_42
	.p2align	4, 0x90
LBB73_30:                               ##   in Loop: Header=BB73_8 Depth=1
	movl	-108(%rbp), %edx                ## 4-byte Reload
	movl	%edx, %esi
	callq	__Z16operator_to_bondiii
	movq	%rax, -104(%rbp)
	leaq	-104(%rbp), %rbx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	__ZNSt3__15arrayIiLm2EEixEm
	movslq	(%rax), %r13
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	__ZNSt3__15arrayIiLm2EEixEm
	movslq	(%rax), %r12
	movq	-72(%rbp), %rbx                 ## 8-byte Reload
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movslq	(%rax), %rax
	movq	%rbx, %rdi
	movq	%rax, %rbx
	movq	%r12, -64(%rbp)                 ## 8-byte Spill
	movq	%r12, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	(%rax), %r12d
	cmpq	$-1, %rbx
	movq	%r13, -136(%rbp)                ## 8-byte Spill
	je	LBB73_31
## %bb.32:                              ##   in Loop: Header=BB73_8 Depth=1
	movq	-48(%rbp), %r13                 ## 8-byte Reload
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	%r15d, (%rax)
	movslq	%r15d, %rsi
	movq	%r13, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	%ebx, (%rax)
	jmp	LBB73_33
LBB73_38:                               ##   in Loop: Header=BB73_8 Depth=1
	movq	-80(%rbp), %rdi                 ## 8-byte Reload
	movq	%r12, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	%r15d, (%rax)
	movq	-48(%rbp), %rbx                 ## 8-byte Reload
LBB73_40:                               ##   in Loop: Header=BB73_8 Depth=1
	leal	2(%r15), %r13d
	movq	-72(%rbp), %rdi                 ## 8-byte Reload
	movq	%r12, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	%r13d, (%rax)
	leal	1(%r15), %eax
	movslq	%eax, %rsi
Ltmp118:
	movq	%rbx, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE2atEm
Ltmp119:
## %bb.41:                              ##   in Loop: Header=BB73_8 Depth=1
	movl	$-2, (%rax)
	leal	3(%r15), %eax
	movslq	%eax, %rsi
Ltmp120:
	movq	%rbx, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE2atEm
Ltmp121:
	jmp	LBB73_42
LBB73_31:                               ##   in Loop: Header=BB73_8 Depth=1
	movq	-80(%rbp), %rdi                 ## 8-byte Reload
	movq	%r13, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	%r15d, (%rax)
LBB73_33:                               ##   in Loop: Header=BB73_8 Depth=1
	leal	1(%r15), %ebx
	cmpl	$-1, %r12d
	je	LBB73_34
## %bb.35:                              ##   in Loop: Header=BB73_8 Depth=1
	movslq	%r12d, %rsi
	movq	-48(%rbp), %r13                 ## 8-byte Reload
	movq	%r13, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	%ebx, (%rax)
	movslq	%ebx, %rsi
	movq	%r13, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	%r12d, (%rax)
	jmp	LBB73_36
LBB73_34:                               ##   in Loop: Header=BB73_8 Depth=1
	movq	-80(%rbp), %rdi                 ## 8-byte Reload
	movq	-64(%rbp), %rsi                 ## 8-byte Reload
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	%ebx, (%rax)
LBB73_36:                               ##   in Loop: Header=BB73_8 Depth=1
	leal	2(%r15), %r12d
	movq	-72(%rbp), %rbx                 ## 8-byte Reload
	movq	%rbx, %rdi
	movq	-136(%rbp), %rsi                ## 8-byte Reload
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	%r12d, (%rax)
	addl	$3, %r15d
	movq	%rbx, %rdi
	movq	-64(%rbp), %rsi                 ## 8-byte Reload
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	%r15d, (%rax)
	movq	-48(%rbp), %rbx                 ## 8-byte Reload
	jmp	LBB73_43
LBB73_13:
	cmpl	$0, -88(%rbp)                   ## 4-byte Folded Reload
	jle	LBB73_18
## %bb.14:
	movl	-88(%rbp), %r12d                ## 4-byte Reload
	xorl	%ebx, %ebx
	movq	-48(%rbp), %r13                 ## 8-byte Reload
	jmp	LBB73_15
	.p2align	4, 0x90
LBB73_17:                               ##   in Loop: Header=BB73_15 Depth=1
	incq	%rbx
	cmpq	%rbx, %r12
	je	LBB73_18
LBB73_15:                               ## =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rdi                 ## 8-byte Reload
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movslq	(%rax), %r14
	cmpq	$-1, %r14
	je	LBB73_17
## %bb.16:                              ##   in Loop: Header=BB73_15 Depth=1
	movq	-72(%rbp), %rdi                 ## 8-byte Reload
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movslq	(%rax), %r15
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	%r14d, (%rax)
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	%r15d, (%rax)
	jmp	LBB73_17
LBB73_18:
	xorl	%r14d, %r14d
	movl	$0, %r13d
	movl	$0, %eax
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	movl	$0, %eax
	movq	%rax, -64(%rbp)                 ## 8-byte Spill
	cmpl	$0, -96(%rbp)                   ## 4-byte Folded Reload
	jle	LBB73_44
## %bb.19:
	movq	-88(%rbp), %rax                 ## 8-byte Reload
	leal	(%rax,%rax), %r15d
	movl	-96(%rbp), %r12d                ## 4-byte Reload
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	movq	%rax, -64(%rbp)                 ## 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	xorl	%r13d, %r13d
	jmp	LBB73_20
	.p2align	4, 0x90
LBB73_23:                               ##   in Loop: Header=BB73_20 Depth=1
	incl	%r13d
LBB73_57:                               ##   in Loop: Header=BB73_20 Depth=1
	incq	%rbx
	cmpq	%rbx, %r12
	je	LBB73_44
LBB73_20:                               ## =>This Inner Loop Header: Depth=1
	movq	-128(%rbp), %rdi                ## 8-byte Reload
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	(%rax), %ecx
	cmpl	$-1, %ecx
	je	LBB73_57
## %bb.21:                              ##   in Loop: Header=BB73_20 Depth=1
	xorl	%eax, %eax
	cmpl	%r15d, %ecx
	setge	%dl
	testb	$1, %cl
	je	LBB73_53
## %bb.22:                              ##   in Loop: Header=BB73_20 Depth=1
	testb	%dl, %dl
	je	LBB73_23
LBB73_53:                               ##   in Loop: Header=BB73_20 Depth=1
	cmpl	%r15d, %ecx
	jge	LBB73_56
## %bb.54:                              ##   in Loop: Header=BB73_20 Depth=1
	andl	$1, %ecx
	jne	LBB73_56
## %bb.55:                              ##   in Loop: Header=BB73_20 Depth=1
	movq	-56(%rbp), %rax                 ## 8-byte Reload
	incl	%eax
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	jmp	LBB73_57
LBB73_56:                               ##   in Loop: Header=BB73_20 Depth=1
	movb	%dl, %al
	movq	-64(%rbp), %rcx                 ## 8-byte Reload
	addl	%eax, %ecx
	movq	%rcx, -64(%rbp)                 ## 8-byte Spill
	jmp	LBB73_57
LBB73_44:
	cmpl	$0, -96(%rbp)                   ## 4-byte Folded Reload
	movq	-48(%rbp), %r12                 ## 8-byte Reload
	jle	LBB73_50
## %bb.45:
	movl	-112(%rbp), %eax                ## 4-byte Reload
	testl	%eax, %eax
	movl	$1, %r15d
	cmovgl	%eax, %r15d
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
	jmp	LBB73_46
	.p2align	4, 0x90
LBB73_48:                               ##   in Loop: Header=BB73_46 Depth=1
	incl	%r14d
LBB73_49:                               ##   in Loop: Header=BB73_46 Depth=1
	incq	%rbx
	cmpq	%rbx, %r15
	je	LBB73_50
LBB73_46:                               ## =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movslq	(%rax), %rsi
	cmpq	$-2, %rsi
	je	LBB73_49
## %bb.47:                              ##   in Loop: Header=BB73_46 Depth=1
	movq	%r12, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	(%rax), %eax
	cmpq	%rax, %rbx
	je	LBB73_48
## %bb.58:
Ltmp132:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str.9(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp133:
## %bb.59:
Ltmp134:
	movq	%rax, %rdi
	movl	%ebx, %esi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp135:
## %bb.60:
Ltmp136:
	leaq	L_.str.10(%rip), %rsi
	movq	%rax, %rdi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp137:
## %bb.61:
	movq	%rax, %r14
	movq	-48(%rbp), %r15                 ## 8-byte Reload
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movslq	(%rax), %rsi
	movq	%r15, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	(%rax), %esi
Ltmp138:
	movq	%r14, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp139:
## %bb.62:
Ltmp140:
	movq	%rax, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp141:
## %bb.63:
	movl	$16, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
Ltmp142:
	leaq	L_.str.11(%rip), %rsi
	movq	%rax, %rdi
	callq	__ZNSt16invalid_argumentC1EPKc
Ltmp143:
## %bb.64:
Ltmp145:
	movq	__ZTISt16invalid_argument@GOTPCREL(%rip), %rsi
	movq	__ZNSt16invalid_argumentD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
Ltmp146:
	jmp	LBB73_77
LBB73_50:
	movq	-64(%rbp), %rcx                 ## 8-byte Reload
	shll	$2, %ecx
	movq	-56(%rbp), %rax                 ## 8-byte Reload
	addl	%r13d, %eax
	leal	(%rcx,%rax,2), %eax
	cmpl	%eax, %r14d
	jne	LBB73_51
## %bb.70:
	leaq	-160(%rbp), %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev
	leaq	-184(%rbp), %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev
	leaq	-208(%rbp), %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB73_51:
	movl	$16, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
Ltmp148:
	leaq	L_.str.12(%rip), %rsi
	movq	%rax, %rdi
	callq	__ZNSt16invalid_argumentC1EPKc
Ltmp149:
## %bb.52:
Ltmp151:
	movq	__ZTISt16invalid_argument@GOTPCREL(%rip), %rsi
	movq	__ZNSt16invalid_argumentD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
Ltmp152:
	jmp	LBB73_77
LBB73_69:
Ltmp153:
	jmp	LBB73_72
LBB73_68:
Ltmp150:
	jmp	LBB73_67
LBB73_66:
Ltmp144:
LBB73_67:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	___cxa_free_exception
	jmp	LBB73_73
LBB73_65:
Ltmp147:
	jmp	LBB73_72
LBB73_27:
Ltmp112:
	movq	%rax, %r14
	jmp	LBB73_74
LBB73_26:
Ltmp109:
	movq	%rax, %r14
	jmp	LBB73_75
LBB73_25:
Ltmp106:
	movq	%rax, %r14
	jmp	LBB73_75
LBB73_24:
Ltmp103:
	movq	%rax, %r14
	jmp	LBB73_76
LBB73_71:
Ltmp117:
	jmp	LBB73_72
LBB73_78:
Ltmp122:
	jmp	LBB73_72
LBB73_28:
Ltmp131:
LBB73_72:
	movq	%rax, %r14
LBB73_73:
	leaq	-160(%rbp), %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev
LBB73_74:
	leaq	-184(%rbp), %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev
LBB73_75:
	leaq	-208(%rbp), %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev
LBB73_76:
	movq	-72(%rbp), %rdi                 ## 8-byte Reload
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev
	movq	-80(%rbp), %rdi                 ## 8-byte Reload
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev
	movq	-48(%rbp), %rdi                 ## 8-byte Reload
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev
	movq	%r14, %rdi
	callq	__Unwind_Resume
LBB73_77:
	ud2
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table73:
Lexception8:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end8-Lcst_begin8
Lcst_begin8:
	.uleb128 Ltmp101-Lfunc_begin8           ## >> Call Site 1 <<
	.uleb128 Ltmp102-Ltmp101                ##   Call between Ltmp101 and Ltmp102
	.uleb128 Ltmp103-Lfunc_begin8           ##     jumps to Ltmp103
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp104-Lfunc_begin8           ## >> Call Site 2 <<
	.uleb128 Ltmp105-Ltmp104                ##   Call between Ltmp104 and Ltmp105
	.uleb128 Ltmp106-Lfunc_begin8           ##     jumps to Ltmp106
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp107-Lfunc_begin8           ## >> Call Site 3 <<
	.uleb128 Ltmp108-Ltmp107                ##   Call between Ltmp107 and Ltmp108
	.uleb128 Ltmp109-Lfunc_begin8           ##     jumps to Ltmp109
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp110-Lfunc_begin8           ## >> Call Site 4 <<
	.uleb128 Ltmp111-Ltmp110                ##   Call between Ltmp110 and Ltmp111
	.uleb128 Ltmp112-Lfunc_begin8           ##     jumps to Ltmp112
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp113-Lfunc_begin8           ## >> Call Site 5 <<
	.uleb128 Ltmp116-Ltmp113                ##   Call between Ltmp113 and Ltmp116
	.uleb128 Ltmp117-Lfunc_begin8           ##     jumps to Ltmp117
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp123-Lfunc_begin8           ## >> Call Site 6 <<
	.uleb128 Ltmp130-Ltmp123                ##   Call between Ltmp123 and Ltmp130
	.uleb128 Ltmp131-Lfunc_begin8           ##     jumps to Ltmp131
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp118-Lfunc_begin8           ## >> Call Site 7 <<
	.uleb128 Ltmp121-Ltmp118                ##   Call between Ltmp118 and Ltmp121
	.uleb128 Ltmp122-Lfunc_begin8           ##     jumps to Ltmp122
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp132-Lfunc_begin8           ## >> Call Site 8 <<
	.uleb128 Ltmp141-Ltmp132                ##   Call between Ltmp132 and Ltmp141
	.uleb128 Ltmp147-Lfunc_begin8           ##     jumps to Ltmp147
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp141-Lfunc_begin8           ## >> Call Site 9 <<
	.uleb128 Ltmp142-Ltmp141                ##   Call between Ltmp141 and Ltmp142
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp142-Lfunc_begin8           ## >> Call Site 10 <<
	.uleb128 Ltmp143-Ltmp142                ##   Call between Ltmp142 and Ltmp143
	.uleb128 Ltmp144-Lfunc_begin8           ##     jumps to Ltmp144
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp145-Lfunc_begin8           ## >> Call Site 11 <<
	.uleb128 Ltmp146-Ltmp145                ##   Call between Ltmp145 and Ltmp146
	.uleb128 Ltmp147-Lfunc_begin8           ##     jumps to Ltmp147
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp146-Lfunc_begin8           ## >> Call Site 12 <<
	.uleb128 Ltmp148-Ltmp146                ##   Call between Ltmp146 and Ltmp148
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp148-Lfunc_begin8           ## >> Call Site 13 <<
	.uleb128 Ltmp149-Ltmp148                ##   Call between Ltmp148 and Ltmp149
	.uleb128 Ltmp150-Lfunc_begin8           ##     jumps to Ltmp150
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp151-Lfunc_begin8           ## >> Call Site 14 <<
	.uleb128 Ltmp152-Ltmp151                ##   Call between Ltmp151 and Ltmp152
	.uleb128 Ltmp153-Lfunc_begin8           ##     jumps to Ltmp153
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp152-Lfunc_begin8           ## >> Call Site 15 <<
	.uleb128 Lfunc_end8-Ltmp152             ##   Call between Ltmp152 and Lfunc_end8
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end8:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEEC1Ev
__ZNSt3__16vectorIiNS_9allocatorIiEEEC1Ev: ## @_ZNSt3__16vectorIiNS_9allocatorIiEEEC1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEC2Ev
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEEaSERKS3_
__ZNSt3__16vectorIiNS_9allocatorIiEEEaSERKS3_: ## @_ZNSt3__16vectorIiNS_9allocatorIiEEEaSERKS3_
	.cfi_startproc
## %bb.0:
	cmpq	%rsi, %rdi
	je	LBB75_2
## %bb.1:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE6assignIPiEENS_9enable_ifIXaasr27__is_cpp17_forward_iteratorIT_EE5valuesr16is_constructibleIiNS_15iterator_traitsIS7_E9referenceEEE5valueEvE4typeES7_S7_
	popq	%rbp
LBB75_2:
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE2atEm ## -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE2atEm
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEE2atEm
	.p2align	4, 0x90
__ZNSt3__16vectorIiNS_9allocatorIiEEE2atEm: ## @_ZNSt3__16vectorIiNS_9allocatorIiEEE2atEm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv
	cmpq	%rbx, %rax
	jbe	LBB76_2
## %bb.1:
	shlq	$2, %rbx
	addq	(%r14), %rbx
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB76_2:
	movq	%r14, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_out_of_rangeEv
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt16invalid_argumentC1EPKc
__ZNSt16invalid_argumentC1EPKc:         ## @_ZNSt16invalid_argumentC1EPKc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt16invalid_argumentC2EPKc
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEEC2Ev
__ZNSt3__16vectorIiNS_9allocatorIiEEEC2Ev: ## @_ZNSt3__16vectorIiNS_9allocatorIiEEEC2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__113__vector_baseIiNS_9allocatorIiEEEC2Ev
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__113__vector_baseIiNS_9allocatorIiEEEC2Ev
__ZNSt3__113__vector_baseIiNS_9allocatorIiEEEC2Ev: ## @_ZNSt3__113__vector_baseIiNS_9allocatorIiEEEC2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	16(%rdi), %rax
	movq	$0, 8(%rdi)
	movq	$0, (%rdi)
	movq	%rax, %rdi
	callq	__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC1IDnNS_18__default_init_tagEEEOT_OT0_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	___clang_call_terminate ## -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
	.p2align	4, 0x90
___clang_call_terminate:                ## @__clang_call_terminate
## %bb.0:
	pushq	%rax
	callq	___cxa_begin_catch
	callq	__ZSt9terminatev
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC1IDnNS_18__default_init_tagEEEOT_OT0_
__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC1IDnNS_18__default_init_tagEEEOT_OT0_: ## @_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC1IDnNS_18__default_init_tagEEEOT_OT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC2IDnNS_18__default_init_tagEEEOT_OT0_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC2IDnNS_18__default_init_tagEEEOT_OT0_
__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC2IDnNS_18__default_init_tagEEEOT_OT0_: ## @_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC2IDnNS_18__default_init_tagEEEOT_OT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__122__compressed_pair_elemIPiLi0ELb0EEC2IDnvEEOT_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__122__compressed_pair_elemIPiLi0ELb0EEC2IDnvEEOT_
__ZNSt3__122__compressed_pair_elemIPiLi0ELb0EEC2IDnvEEOT_: ## @_ZNSt3__122__compressed_pair_elemIPiLi0ELb0EEC2IDnvEEOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	$0, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE6assignIPiEENS_9enable_ifIXaasr27__is_cpp17_forward_iteratorIT_EE5valuesr16is_constructibleIiNS_15iterator_traitsIS7_E9referenceEEE5valueEvE4typeES7_S7_ ## -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE6assignIPiEENS_9enable_ifIXaasr27__is_cpp17_forward_iteratorIT_EE5valuesr16is_constructibleIiNS_15iterator_traitsIS7_E9referenceEEE5valueEvE4typeES7_S7_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEE6assignIPiEENS_9enable_ifIXaasr27__is_cpp17_forward_iteratorIT_EE5valuesr16is_constructibleIiNS_15iterator_traitsIS7_E9referenceEEE5valueEvE4typeES7_S7_
	.p2align	4, 0x90
__ZNSt3__16vectorIiNS_9allocatorIiEEE6assignIPiEENS_9enable_ifIXaasr27__is_cpp17_forward_iteratorIT_EE5valuesr16is_constructibleIiNS_15iterator_traitsIS7_E9referenceEEE5valueEvE4typeES7_S7_: ## @_ZNSt3__16vectorIiNS_9allocatorIiEEE6assignIPiEENS_9enable_ifIXaasr27__is_cpp17_forward_iteratorIT_EE5valuesr16is_constructibleIiNS_15iterator_traitsIS7_E9referenceEEE5valueEvE4typeES7_S7_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	__ZNSt3__1L8distanceIPiEENS_15iterator_traitsIT_E15difference_typeES3_S3_
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	__ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityEv
	cmpq	%rax, %r15
	jbe	LBB84_1
## %bb.7:
	movq	%rbx, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE13__vdeallocateEv
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	__ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendEm
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateEm
	movq	%rbx, %rdi
	movq	%r12, %rsi
	jmp	LBB84_8
LBB84_1:
	movq	%r14, -56(%rbp)
	movq	%rbx, %rdi
	callq	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv
	cmpq	%rax, %r15
	jbe	LBB84_2
## %bb.3:
	movq	%r12, -56(%rbp)
	leaq	-56(%rbp), %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__1L7advanceIPimEEvRT_T0_
	movb	$1, %al
	movl	%eax, -44(%rbp)                 ## 4-byte Spill
	jmp	LBB84_4
LBB84_2:
	movl	$0, -44(%rbp)                   ## 4-byte Folded Spill
LBB84_4:
	movq	-56(%rbp), %r13
	movq	(%rbx), %rdx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	__ZNSt3__1L4copyIPiS1_EET0_T_S3_S2_
	cmpb	$0, -44(%rbp)                   ## 1-byte Folded Reload
	je	LBB84_6
## %bb.5:
	movq	%rbx, %rdi
	callq	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv
	subq	%rax, %r15
	movq	%rbx, %rdi
	movq	%r13, %rsi
LBB84_8:
	movq	%r14, %rdx
	movq	%r15, %rcx
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endIPiEENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeES7_S7_m
	jmp	LBB84_9
LBB84_6:
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE17__destruct_at_endEPi
LBB84_9:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L8distanceIPiEENS_15iterator_traitsIT_E15difference_typeES3_S3_
__ZNSt3__1L8distanceIPiEENS_15iterator_traitsIT_E15difference_typeES3_S3_: ## @_ZNSt3__1L8distanceIPiEENS_15iterator_traitsIT_E15difference_typeES3_S3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__1L10__distanceIPiEENS_15iterator_traitsIT_E15difference_typeES3_S3_NS_26random_access_iterator_tagE
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityEv
__ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityEv: ## @_ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNKSt3__113__vector_baseIiNS_9allocatorIiEEE8capacityEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L7advanceIPimEEvRT_T0_
__ZNSt3__1L7advanceIPimEEvRT_T0_:       ## @_ZNSt3__1L7advanceIPimEEvRT_T0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__1L9__advanceIPiEEvRT_NS_15iterator_traitsIS2_E15difference_typeENS_26random_access_iterator_tagE
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L4copyIPiS1_EET0_T_S3_S2_
__ZNSt3__1L4copyIPiS1_EET0_T_S3_S2_:    ## @_ZNSt3__1L4copyIPiS1_EET0_T_S3_S2_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__1L6__copyIiiEENS_9enable_ifIXaasr7is_sameINS_12remove_constIT_E4typeET0_EE5valuesr28is_trivially_copy_assignableIS6_EE5valueEPS6_E4typeEPS3_SA_S7_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endIPiEENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeES7_S7_m ## -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endIPiEENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeES7_S7_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endIPiEENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeES7_S7_m
	.p2align	4, 0x90
__ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endIPiEENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeES7_S7_m: ## @_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endIPiEENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeES7_S7_m
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %rsi
	leaq	-48(%rbp), %r15
	movq	%r15, %rdi
	movq	%rcx, %rdx
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1ERS3_m
	leaq	-40(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__1L25__construct_range_forwardINS_9allocatorIiEEiiiivEEvRT_PT0_S6_RPT1_
	movq	%r15, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1Ev
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE17__destruct_at_endEPi
__ZNSt3__16vectorIiNS_9allocatorIiEEE17__destruct_at_endEPi: ## @_ZNSt3__16vectorIiNS_9allocatorIiEEE17__destruct_at_endEPi
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__113__vector_baseIiNS_9allocatorIiEEE17__destruct_at_endEPi
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE13__vdeallocateEv ## -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE13__vdeallocateEv
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEE13__vdeallocateEv
	.p2align	4, 0x90
__ZNSt3__16vectorIiNS_9allocatorIiEEE13__vdeallocateEv: ## @_ZNSt3__16vectorIiNS_9allocatorIiEEE13__vdeallocateEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	cmpq	$0, (%rdi)
	je	LBB91_2
## %bb.1:
	movq	%rdi, %rbx
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE5clearEv
	movq	(%rbx), %r14
	movq	%rbx, %rdi
	callq	__ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityEv
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateERS2_Pim
	movq	%rbx, %rdi
	callq	__ZNSt3__113__vector_baseIiNS_9allocatorIiEEE9__end_capEv
	movq	$0, (%rax)
	movq	$0, (%rbx)
	movq	$0, 8(%rbx)
LBB91_2:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateEm ## -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateEm
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateEm
	.p2align	4, 0x90
__ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateEm: ## @_ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateEm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	__ZNKSt3__16vectorIiNS_9allocatorIiEEE8max_sizeEv
	cmpq	%r14, %rax
	jb	LBB92_2
## %bb.1:
	movq	%r14, %rdi
	callq	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE8allocateERS2_m
	movq	%rax, 8(%rbx)
	movq	%rax, (%rbx)
	leaq	(%rax,%r14,4), %r14
	movq	%rbx, %rdi
	callq	__ZNSt3__113__vector_baseIiNS_9allocatorIiEEE9__end_capEv
	movq	%r14, (%rax)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB92_2:
	movq	%rbx, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendEm
__ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendEm: ## @_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendEm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, %r14
	movq	%rsi, -24(%rbp)
	callq	__ZNKSt3__16vectorIiNS_9allocatorIiEEE8max_sizeEv
	cmpq	%rax, -24(%rbp)
	ja	LBB93_4
## %bb.1:
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	__ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityEv
	movq	%rbx, %rcx
	shrq	%rcx
	cmpq	%rcx, %rax
	jae	LBB93_3
## %bb.2:
	addq	%rax, %rax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	__ZNSt3__1L3maxImEERKT_S3_S3_
	movq	(%rax), %rbx
LBB93_3:
	movq	%rbx, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB93_4:
	movq	%r14, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L10__distanceIPiEENS_15iterator_traitsIT_E15difference_typeES3_S3_NS_26random_access_iterator_tagE
__ZNSt3__1L10__distanceIPiEENS_15iterator_traitsIT_E15difference_typeES3_S3_NS_26random_access_iterator_tagE: ## @_ZNSt3__1L10__distanceIPiEENS_15iterator_traitsIT_E15difference_typeES3_S3_NS_26random_access_iterator_tagE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rsi, %rax
	subq	%rdi, %rax
	sarq	$2, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__113__vector_baseIiNS_9allocatorIiEEE8capacityEv
__ZNKSt3__113__vector_baseIiNS_9allocatorIiEEE8capacityEv: ## @_ZNKSt3__113__vector_baseIiNS_9allocatorIiEEE8capacityEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	callq	__ZNKSt3__113__vector_baseIiNS_9allocatorIiEEE9__end_capEv
	movq	(%rax), %rax
	subq	(%rbx), %rax
	sarq	$2, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__113__vector_baseIiNS_9allocatorIiEEE9__end_capEv
__ZNKSt3__113__vector_baseIiNS_9allocatorIiEEE9__end_capEv: ## @_ZNKSt3__113__vector_baseIiNS_9allocatorIiEEE9__end_capEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	addq	$16, %rdi
	callq	__ZNKSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstEv
__ZNKSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstEv: ## @_ZNKSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNKSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getEv
__ZNKSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getEv: ## @_ZNKSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L9__advanceIPiEEvRT_NS_15iterator_traitsIS2_E15difference_typeENS_26random_access_iterator_tagE
__ZNSt3__1L9__advanceIPiEEvRT_NS_15iterator_traitsIS2_E15difference_typeENS_26random_access_iterator_tagE: ## @_ZNSt3__1L9__advanceIPiEEvRT_NS_15iterator_traitsIS2_E15difference_typeENS_26random_access_iterator_tagE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	shlq	$2, %rsi
	addq	%rsi, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L6__copyIiiEENS_9enable_ifIXaasr7is_sameINS_12remove_constIT_E4typeET0_EE5valuesr28is_trivially_copy_assignableIS6_EE5valueEPS6_E4typeEPS3_SA_S7_
__ZNSt3__1L6__copyIiiEENS_9enable_ifIXaasr7is_sameINS_12remove_constIT_E4typeET0_EE5valuesr28is_trivially_copy_assignableIS6_EE5valueEPS6_E4typeEPS3_SA_S7_: ## @_ZNSt3__1L6__copyIiiEENS_9enable_ifIXaasr7is_sameINS_12remove_constIT_E4typeET0_EE5valuesr28is_trivially_copy_assignableIS6_EE5valueEPS6_E4typeEPS3_SA_S7_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdx, %r14
	movq	%rsi, %rbx
	subq	%rdi, %rbx
	je	LBB100_2
## %bb.1:
	movq	%rdi, %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	_memmove
LBB100_2:
	addq	%rbx, %r14
	movq	%r14, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1ERS3_m ## -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1ERS3_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1ERS3_m
	.p2align	4, 0x90
__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1ERS3_m: ## @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1ERS3_m
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC2ERS3_m
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L25__construct_range_forwardINS_9allocatorIiEEiiiivEEvRT_PT0_S6_RPT1_
__ZNSt3__1L25__construct_range_forwardINS_9allocatorIiEEiiiivEEvRT_PT0_S6_RPT1_: ## @_ZNSt3__1L25__construct_range_forwardINS_9allocatorIiEEiiiivEEvRT_PT0_S6_RPT1_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %rbx
	subq	%rdi, %rbx
	testq	%rbx, %rbx
	jle	LBB102_2
## %bb.1:
	movq	%rdx, %r14
	movq	%rdi, %rsi
	movq	(%rdx), %rdi
	movq	%rbx, %rdx
	callq	_memcpy
	addq	%rbx, (%r14)
LBB102_2:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__113__vector_baseIiNS_9allocatorIiEEE7__allocEv
__ZNSt3__113__vector_baseIiNS_9allocatorIiEEE7__allocEv: ## @_ZNSt3__113__vector_baseIiNS_9allocatorIiEEE7__allocEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	addq	$16, %rdi
	callq	__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE6secondEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1Ev ## -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1Ev
	.p2align	4, 0x90
__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1Ev: ## @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD2Ev
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC2ERS3_m ## -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC2ERS3_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC2ERS3_m
	.p2align	4, 0x90
__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC2ERS3_m: ## @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC2ERS3_m
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rsi, (%rdi)
	movq	8(%rsi), %rax
	movq	%rax, 8(%rdi)
	shlq	$2, %rdx
	addq	8(%rsi), %rdx
	movq	%rdx, 16(%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE6secondEv
__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE6secondEv: ## @_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE6secondEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getEv
__ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getEv: ## @_ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD2Ev ## -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD2Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD2Ev
	.p2align	4, 0x90
__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD2Ev: ## @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	movq	%rcx, 8(%rax)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__113__vector_baseIiNS_9allocatorIiEEE17__destruct_at_endEPi
__ZNSt3__113__vector_baseIiNS_9allocatorIiEEE17__destruct_at_endEPi: ## @_ZNSt3__113__vector_baseIiNS_9allocatorIiEEE17__destruct_at_endEPi
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rsi, 8(%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE5clearEv
__ZNSt3__16vectorIiNS_9allocatorIiEEE5clearEv: ## @_ZNSt3__16vectorIiNS_9allocatorIiEEE5clearEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__113__vector_baseIiNS_9allocatorIiEEE5clearEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateERS2_Pim
__ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateERS2_Pim: ## @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateERS2_Pim
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__19allocatorIiE10deallocateEPim
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__113__vector_baseIiNS_9allocatorIiEEE9__end_capEv
__ZNSt3__113__vector_baseIiNS_9allocatorIiEEE9__end_capEv: ## @_ZNSt3__113__vector_baseIiNS_9allocatorIiEEE9__end_capEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	addq	$16, %rdi
	callq	__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__113__vector_baseIiNS_9allocatorIiEEE5clearEv
__ZNSt3__113__vector_baseIiNS_9allocatorIiEEE5clearEv: ## @_ZNSt3__113__vector_baseIiNS_9allocatorIiEEE5clearEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rsi
	callq	__ZNSt3__113__vector_baseIiNS_9allocatorIiEEE17__destruct_at_endEPi
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__19allocatorIiE10deallocateEPim
__ZNSt3__19allocatorIiE10deallocateEPim: ## @_ZNSt3__19allocatorIiE10deallocateEPim
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__1L19__libcpp_deallocateEPvmm
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L19__libcpp_deallocateEPvmm
__ZNSt3__1L19__libcpp_deallocateEPvmm:  ## @_ZNSt3__1L19__libcpp_deallocateEPvmm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__1L27__do_deallocate_handle_sizeIJEEEvPvmDpT_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L27__do_deallocate_handle_sizeIJEEEvPvmDpT_
__ZNSt3__1L27__do_deallocate_handle_sizeIJEEEvPvmDpT_: ## @_ZNSt3__1L27__do_deallocate_handle_sizeIJEEEvPvmDpT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__1L24__libcpp_operator_deleteIJPvEEEvDpT_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L24__libcpp_operator_deleteIJPvEEEvDpT_
__ZNSt3__1L24__libcpp_operator_deleteIJPvEEEvDpT_: ## @_ZNSt3__1L24__libcpp_operator_deleteIJPvEEEvDpT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZdlPv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstEv
__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstEv: ## @_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getEv
__ZNSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getEv: ## @_ZNSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNKSt3__16vectorIiNS_9allocatorIiEEE8max_sizeEv ## -- Begin function _ZNKSt3__16vectorIiNS_9allocatorIiEEE8max_sizeEv
	.weak_def_can_be_hidden	__ZNKSt3__16vectorIiNS_9allocatorIiEEE8max_sizeEv
	.p2align	4, 0x90
__ZNKSt3__16vectorIiNS_9allocatorIiEEE8max_sizeEv: ## @_ZNKSt3__16vectorIiNS_9allocatorIiEEE8max_sizeEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$4611686018427387903, %rax      ## imm = 0x3FFFFFFFFFFFFFFF
	movq	%rax, -16(%rbp)
	movabsq	$9223372036854775807, %rax      ## imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, -8(%rbp)
	leaq	-16(%rbp), %rdi
	leaq	-8(%rbp), %rsi
	callq	__ZNSt3__1L3minImEERKT_S3_S3_
	movq	(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIiEEE8allocateERS2_m
__ZNSt3__116allocator_traitsINS_9allocatorIiEEE8allocateERS2_m: ## @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8allocateERS2_m
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__19allocatorIiE8allocateEm
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L3minImEERKT_S3_S3_
__ZNSt3__1L3minImEERKT_S3_S3_:          ## @_ZNSt3__1L3minImEERKT_S3_S3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__1L3minImNS_6__lessImmEEEERKT_S5_S5_T0_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L3minImNS_6__lessImmEEEERKT_S5_S5_T0_
__ZNSt3__1L3minImNS_6__lessImmEEEERKT_S5_S5_T0_: ## @_ZNSt3__1L3minImNS_6__lessImmEEEERKT_S5_S5_T0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	movq	%rbx, %rsi
	callq	__ZNKSt3__16__lessImmEclERKmS3_
	testb	%al, %al
	cmovneq	%r14, %rbx
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__16__lessImmEclERKmS3_
__ZNKSt3__16__lessImmEclERKmS3_:        ## @_ZNKSt3__16__lessImmEclERKmS3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	cmpq	(%rsi), %rax
	setb	%al
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__19allocatorIiE8allocateEm
__ZNSt3__19allocatorIiE8allocateEm:     ## @_ZNSt3__19allocatorIiE8allocateEm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	shrq	$62, %rax
	jne	LBB125_2
## %bb.1:
	shlq	$2, %rdi
	callq	__ZNSt3__1L17__libcpp_allocateEmm
	popq	%rbp
	retq
LBB125_2:
	callq	__ZNSt3__1L20__throw_length_errorEPKc
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L20__throw_length_errorEPKc
__ZNSt3__1L20__throw_length_errorEPKc:  ## @_ZNSt3__1L20__throw_length_errorEPKc
Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception9
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movl	$16, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
Ltmp154:
	movq	%rax, %rdi
	callq	__ZNSt12length_errorC1EPKc
Ltmp155:
## %bb.1:
	movq	__ZTISt12length_error@GOTPCREL(%rip), %rsi
	movq	__ZNSt12length_errorD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
LBB126_2:
Ltmp156:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	___cxa_free_exception
	movq	%r14, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end9:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table126:
Lexception9:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end9-Lcst_begin9
Lcst_begin9:
	.uleb128 Lfunc_begin9-Lfunc_begin9      ## >> Call Site 1 <<
	.uleb128 Ltmp154-Lfunc_begin9           ##   Call between Lfunc_begin9 and Ltmp154
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp154-Lfunc_begin9           ## >> Call Site 2 <<
	.uleb128 Ltmp155-Ltmp154                ##   Call between Ltmp154 and Ltmp155
	.uleb128 Ltmp156-Lfunc_begin9           ##     jumps to Ltmp156
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp155-Lfunc_begin9           ## >> Call Site 3 <<
	.uleb128 Lfunc_end9-Ltmp155             ##   Call between Ltmp155 and Lfunc_end9
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end9:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L17__libcpp_allocateEmm
__ZNSt3__1L17__libcpp_allocateEmm:      ## @_ZNSt3__1L17__libcpp_allocateEmm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__1L21__libcpp_operator_newIJmEEEPvDpT_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt12length_errorC1EPKc
__ZNSt12length_errorC1EPKc:             ## @_ZNSt12length_errorC1EPKc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt12length_errorC2EPKc
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt12length_errorC2EPKc
__ZNSt12length_errorC2EPKc:             ## @_ZNSt12length_errorC2EPKc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	leaq	L_.str.13(%rip), %rsi
	callq	__ZNSt11logic_errorC2EPKc
	movq	__ZTVSt12length_error@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L21__libcpp_operator_newIJmEEEPvDpT_
__ZNSt3__1L21__libcpp_operator_newIJmEEEPvDpT_: ## @_ZNSt3__1L21__libcpp_operator_newIJmEEEPvDpT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__Znwm
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L3maxImEERKT_S3_S3_
__ZNSt3__1L3maxImEERKT_S3_S3_:          ## @_ZNSt3__1L3maxImEERKT_S3_S3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__1L3maxImNS_6__lessImmEEEERKT_S5_S5_T0_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L3maxImNS_6__lessImmEEEERKT_S5_S5_T0_
__ZNSt3__1L3maxImNS_6__lessImmEEEERKT_S5_S5_T0_: ## @_ZNSt3__1L3maxImNS_6__lessImmEEEERKT_S5_S5_T0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	__ZNKSt3__16__lessImmEclERKmS3_
	testb	%al, %al
	cmovneq	%r14, %rbx
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt16invalid_argumentC2EPKc
__ZNSt16invalid_argumentC2EPKc:         ## @_ZNSt16invalid_argumentC2EPKc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	callq	__ZNSt11logic_errorC2EPKc
	movq	__ZTVSt16invalid_argument@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1EmRKd ## -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEEC1EmRKd
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1EmRKd
	.p2align	4, 0x90
__ZNSt3__16vectorIdNS_9allocatorIdEEEC1EmRKd: ## @_ZNSt3__16vectorIdNS_9allocatorIdEEEC1EmRKd
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEC2EmRKd
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEC1EmRKS3_ ## -- Begin function _ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEC1EmRKS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEC1EmRKS3_
	.p2align	4, 0x90
__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEC1EmRKS3_: ## @_ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEC1EmRKS3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEC2EmRKS3_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEixEm
__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEixEm: ## @_ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEixEm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	(%rsi,%rsi,2), %rax
	shlq	$3, %rax
	addq	(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4                               ## -- Begin function _ZL3absd
LCPI137_0:
	.quad	0x7fffffffffffffff              ## double NaN
	.quad	0x7fffffffffffffff              ## double NaN
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90
__ZL3absd:                              ## @_ZL3absd
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andps	LCPI137_0(%rip), %xmm0
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEED1Ev
__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEED1Ev: ## @_ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEED2Ev
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEEC2EmRKd ## -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEEC2EmRKd
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEEC2EmRKd
	.p2align	4, 0x90
__ZNSt3__16vectorIdNS_9allocatorIdEEEC2EmRKd: ## @_ZNSt3__16vectorIdNS_9allocatorIdEEEC2EmRKd
Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception10
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	callq	__ZNSt3__113__vector_baseIdNS_9allocatorIdEEEC2Ev
	testq	%rbx, %rbx
	je	LBB139_3
## %bb.1:
Ltmp157:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE11__vallocateEm
Ltmp158:
## %bb.2:
Ltmp159:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE18__construct_at_endEmRKd
Ltmp160:
LBB139_3:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB139_4:
Ltmp161:
	movq	%rax, %rbx
	movq	%r15, %rdi
	callq	__ZNSt3__113__vector_baseIdNS_9allocatorIdEEED2Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end10:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table139:
Lexception10:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end10-Lcst_begin10
Lcst_begin10:
	.uleb128 Ltmp157-Lfunc_begin10          ## >> Call Site 1 <<
	.uleb128 Ltmp160-Ltmp157                ##   Call between Ltmp157 and Ltmp160
	.uleb128 Ltmp161-Lfunc_begin10          ##     jumps to Ltmp161
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp160-Lfunc_begin10          ## >> Call Site 2 <<
	.uleb128 Lfunc_end10-Ltmp160            ##   Call between Ltmp160 and Lfunc_end10
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end10:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__113__vector_baseIdNS_9allocatorIdEEEC2Ev
__ZNSt3__113__vector_baseIdNS_9allocatorIdEEEC2Ev: ## @_ZNSt3__113__vector_baseIdNS_9allocatorIdEEEC2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	16(%rdi), %rax
	movq	$0, 8(%rdi)
	movq	$0, (%rdi)
	movq	%rax, %rdi
	callq	__ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC1IDnNS_18__default_init_tagEEEOT_OT0_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE11__vallocateEm ## -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE11__vallocateEm
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEE11__vallocateEm
	.p2align	4, 0x90
__ZNSt3__16vectorIdNS_9allocatorIdEEE11__vallocateEm: ## @_ZNSt3__16vectorIdNS_9allocatorIdEEE11__vallocateEm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	__ZNKSt3__16vectorIdNS_9allocatorIdEEE8max_sizeEv
	cmpq	%r14, %rax
	jb	LBB141_2
## %bb.1:
	movq	%r14, %rdi
	callq	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE8allocateERS2_m
	movq	%rax, 8(%rbx)
	movq	%rax, (%rbx)
	leaq	(%rax,%r14,8), %r14
	movq	%rbx, %rdi
	callq	__ZNSt3__113__vector_baseIdNS_9allocatorIdEEE9__end_capEv
	movq	%r14, (%rax)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB141_2:
	movq	%rbx, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE18__construct_at_endEmRKd
__ZNSt3__16vectorIdNS_9allocatorIdEEE18__construct_at_endEmRKd: ## @_ZNSt3__16vectorIdNS_9allocatorIdEEE18__construct_at_endEmRKd
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC1ERS3_m
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r15
	cmpq	%r15, %rbx
	je	LBB142_2
	.p2align	4, 0x90
LBB142_1:                               ## =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE9constructIdJRKdEvEEvRS2_PT_DpOT0_
	addq	$8, %rbx
	movq	%rbx, -40(%rbp)
	cmpq	%rbx, %r15
	jne	LBB142_1
LBB142_2:
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD1Ev
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__113__vector_baseIdNS_9allocatorIdEEED2Ev ## -- Begin function _ZNSt3__113__vector_baseIdNS_9allocatorIdEEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__113__vector_baseIdNS_9allocatorIdEEED2Ev
	.p2align	4, 0x90
__ZNSt3__113__vector_baseIdNS_9allocatorIdEEED2Ev: ## @_ZNSt3__113__vector_baseIdNS_9allocatorIdEEED2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	cmpq	$0, (%rdi)
	je	LBB143_2
## %bb.1:
	movq	%rdi, %rbx
	callq	__ZNSt3__113__vector_baseIdNS_9allocatorIdEEE5clearEv
	movq	(%rbx), %r14
	movq	%rbx, %rdi
	callq	__ZNKSt3__113__vector_baseIdNS_9allocatorIdEEE8capacityEv
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE10deallocateERS2_Pdm
LBB143_2:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC1IDnNS_18__default_init_tagEEEOT_OT0_
__ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC1IDnNS_18__default_init_tagEEEOT_OT0_: ## @_ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC1IDnNS_18__default_init_tagEEEOT_OT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC2IDnNS_18__default_init_tagEEEOT_OT0_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC2IDnNS_18__default_init_tagEEEOT_OT0_
__ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC2IDnNS_18__default_init_tagEEEOT_OT0_: ## @_ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC2IDnNS_18__default_init_tagEEEOT_OT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__122__compressed_pair_elemIPdLi0ELb0EEC2IDnvEEOT_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__122__compressed_pair_elemIPdLi0ELb0EEC2IDnvEEOT_
__ZNSt3__122__compressed_pair_elemIPdLi0ELb0EEC2IDnvEEOT_: ## @_ZNSt3__122__compressed_pair_elemIPdLi0ELb0EEC2IDnvEEOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	$0, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE8max_sizeEv ## -- Begin function _ZNKSt3__16vectorIdNS_9allocatorIdEEE8max_sizeEv
	.weak_def_can_be_hidden	__ZNKSt3__16vectorIdNS_9allocatorIdEEE8max_sizeEv
	.p2align	4, 0x90
__ZNKSt3__16vectorIdNS_9allocatorIdEEE8max_sizeEv: ## @_ZNKSt3__16vectorIdNS_9allocatorIdEEE8max_sizeEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$2305843009213693951, %rax      ## imm = 0x1FFFFFFFFFFFFFFF
	movq	%rax, -16(%rbp)
	movabsq	$9223372036854775807, %rax      ## imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, -8(%rbp)
	leaq	-16(%rbp), %rdi
	leaq	-8(%rbp), %rsi
	callq	__ZNSt3__1L3minImEERKT_S3_S3_
	movq	(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIdEEE8allocateERS2_m
__ZNSt3__116allocator_traitsINS_9allocatorIdEEE8allocateERS2_m: ## @_ZNSt3__116allocator_traitsINS_9allocatorIdEEE8allocateERS2_m
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__19allocatorIdE8allocateEm
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__113__vector_baseIdNS_9allocatorIdEEE7__allocEv
__ZNSt3__113__vector_baseIdNS_9allocatorIdEEE7__allocEv: ## @_ZNSt3__113__vector_baseIdNS_9allocatorIdEEE7__allocEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	addq	$16, %rdi
	callq	__ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEE6secondEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__113__vector_baseIdNS_9allocatorIdEEE9__end_capEv
__ZNSt3__113__vector_baseIdNS_9allocatorIdEEE9__end_capEv: ## @_ZNSt3__113__vector_baseIdNS_9allocatorIdEEE9__end_capEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	addq	$16, %rdi
	callq	__ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEE5firstEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__19allocatorIdE8allocateEm
__ZNSt3__19allocatorIdE8allocateEm:     ## @_ZNSt3__19allocatorIdE8allocateEm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	shrq	$61, %rax
	jne	LBB151_2
## %bb.1:
	shlq	$3, %rdi
	callq	__ZNSt3__1L17__libcpp_allocateEmm
	popq	%rbp
	retq
LBB151_2:
	callq	__ZNSt3__1L20__throw_length_errorEPKc
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEE6secondEv
__ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEE6secondEv: ## @_ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEE6secondEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EE5__getEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EE5__getEv
__ZNSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EE5__getEv: ## @_ZNSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EE5__getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEE5firstEv
__ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEE5firstEv: ## @_ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEE5firstEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__122__compressed_pair_elemIPdLi0ELb0EE5__getEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__122__compressed_pair_elemIPdLi0ELb0EE5__getEv
__ZNSt3__122__compressed_pair_elemIPdLi0ELb0EE5__getEv: ## @_ZNSt3__122__compressed_pair_elemIPdLi0ELb0EE5__getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__16vectorIdNS_9allocatorIdEEE8capacityEv
__ZNKSt3__16vectorIdNS_9allocatorIdEEE8capacityEv: ## @_ZNKSt3__16vectorIdNS_9allocatorIdEEE8capacityEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNKSt3__113__vector_baseIdNS_9allocatorIdEEE8capacityEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__113__vector_baseIdNS_9allocatorIdEEE8capacityEv
__ZNKSt3__113__vector_baseIdNS_9allocatorIdEEE8capacityEv: ## @_ZNKSt3__113__vector_baseIdNS_9allocatorIdEEE8capacityEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	callq	__ZNKSt3__113__vector_baseIdNS_9allocatorIdEEE9__end_capEv
	movq	(%rax), %rax
	subq	(%rbx), %rax
	sarq	$3, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__113__vector_baseIdNS_9allocatorIdEEE9__end_capEv
__ZNKSt3__113__vector_baseIdNS_9allocatorIdEEE9__end_capEv: ## @_ZNKSt3__113__vector_baseIdNS_9allocatorIdEEE9__end_capEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	addq	$16, %rdi
	callq	__ZNKSt3__117__compressed_pairIPdNS_9allocatorIdEEE5firstEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__117__compressed_pairIPdNS_9allocatorIdEEE5firstEv
__ZNKSt3__117__compressed_pairIPdNS_9allocatorIdEEE5firstEv: ## @_ZNKSt3__117__compressed_pairIPdNS_9allocatorIdEEE5firstEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNKSt3__122__compressed_pair_elemIPdLi0ELb0EE5__getEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__122__compressed_pair_elemIPdLi0ELb0EE5__getEv
__ZNKSt3__122__compressed_pair_elemIPdLi0ELb0EE5__getEv: ## @_ZNKSt3__122__compressed_pair_elemIPdLi0ELb0EE5__getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC1ERS3_m ## -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC1ERS3_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC1ERS3_m
	.p2align	4, 0x90
__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC1ERS3_m: ## @_ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC1ERS3_m
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC2ERS3_m
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIdEEE9constructIdJRKdEvEEvRS2_PT_DpOT0_
__ZNSt3__116allocator_traitsINS_9allocatorIdEEE9constructIdJRKdEvEEvRS2_PT_DpOT0_: ## @_ZNSt3__116allocator_traitsINS_9allocatorIdEEE9constructIdJRKdEvEEvRS2_PT_DpOT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__19allocatorIdE9constructIdJRKdEEEvPT_DpOT0_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD1Ev ## -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD1Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD1Ev
	.p2align	4, 0x90
__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD1Ev: ## @_ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD2Ev
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC2ERS3_m ## -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC2ERS3_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC2ERS3_m
	.p2align	4, 0x90
__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC2ERS3_m: ## @_ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC2ERS3_m
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rsi, (%rdi)
	movq	8(%rsi), %rax
	movq	%rax, 8(%rdi)
	shlq	$3, %rdx
	addq	8(%rsi), %rdx
	movq	%rdx, 16(%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__19allocatorIdE9constructIdJRKdEEEvPT_DpOT0_
__ZNSt3__19allocatorIdE9constructIdJRKdEEEvPT_DpOT0_: ## @_ZNSt3__19allocatorIdE9constructIdJRKdEEEvPT_DpOT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD2Ev ## -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD2Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD2Ev
	.p2align	4, 0x90
__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD2Ev: ## @_ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	movq	%rcx, 8(%rax)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__113__vector_baseIdNS_9allocatorIdEEE5clearEv
__ZNSt3__113__vector_baseIdNS_9allocatorIdEEE5clearEv: ## @_ZNSt3__113__vector_baseIdNS_9allocatorIdEEE5clearEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rsi
	callq	__ZNSt3__113__vector_baseIdNS_9allocatorIdEEE17__destruct_at_endEPd
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIdEEE10deallocateERS2_Pdm
__ZNSt3__116allocator_traitsINS_9allocatorIdEEE10deallocateERS2_Pdm: ## @_ZNSt3__116allocator_traitsINS_9allocatorIdEEE10deallocateERS2_Pdm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__19allocatorIdE10deallocateEPdm
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__113__vector_baseIdNS_9allocatorIdEEE17__destruct_at_endEPd
__ZNSt3__113__vector_baseIdNS_9allocatorIdEEE17__destruct_at_endEPd: ## @_ZNSt3__113__vector_baseIdNS_9allocatorIdEEE17__destruct_at_endEPd
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rsi, 8(%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__19allocatorIdE10deallocateEPdm
__ZNSt3__19allocatorIdE10deallocateEPdm: ## @_ZNSt3__19allocatorIdE10deallocateEPdm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__1L19__libcpp_deallocateEPvmm
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEC2EmRKS3_ ## -- Begin function _ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEC2EmRKS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEC2EmRKS3_
	.p2align	4, 0x90
__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEC2EmRKS3_: ## @_ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEC2EmRKS3_
Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception11
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	callq	__ZNSt3__113__vector_baseINS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEEC2Ev
	testq	%rbx, %rbx
	je	LBB171_3
## %bb.1:
Ltmp162:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE11__vallocateEm
Ltmp163:
## %bb.2:
Ltmp164:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE18__construct_at_endEmRKS3_
Ltmp165:
LBB171_3:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB171_4:
Ltmp166:
	movq	%rax, %rbx
	movq	%r15, %rdi
	callq	__ZNSt3__113__vector_baseINS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEED2Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end11:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table171:
Lexception11:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end11-Lcst_begin11
Lcst_begin11:
	.uleb128 Ltmp162-Lfunc_begin11          ## >> Call Site 1 <<
	.uleb128 Ltmp165-Ltmp162                ##   Call between Ltmp162 and Ltmp165
	.uleb128 Ltmp166-Lfunc_begin11          ##     jumps to Ltmp166
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp165-Lfunc_begin11          ## >> Call Site 2 <<
	.uleb128 Lfunc_end11-Ltmp165            ##   Call between Ltmp165 and Lfunc_end11
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end11:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__113__vector_baseINS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEEC2Ev
__ZNSt3__113__vector_baseINS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEEC2Ev: ## @_ZNSt3__113__vector_baseINS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEEC2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	16(%rdi), %rax
	movq	$0, 8(%rdi)
	movq	$0, (%rdi)
	movq	%rax, %rdi
	callq	__ZNSt3__117__compressed_pairIPNS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEEC1IDnNS_18__default_init_tagEEEOT_OT0_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE11__vallocateEm ## -- Begin function _ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE11__vallocateEm
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE11__vallocateEm
	.p2align	4, 0x90
__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE11__vallocateEm: ## @_ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE11__vallocateEm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	__ZNKSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE8max_sizeEv
	cmpq	%r14, %rax
	jb	LBB173_2
## %bb.1:
	movq	%r14, %rdi
	callq	__ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIdNS1_IdEEEEEEE8allocateERS5_m
	movq	%rax, 8(%rbx)
	movq	%rax, (%rbx)
	leaq	(%r14,%r14,2), %rcx
	leaq	(%rax,%rcx,8), %r14
	movq	%rbx, %rdi
	callq	__ZNSt3__113__vector_baseINS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEE9__end_capEv
	movq	%r14, (%rax)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB173_2:
	movq	%rbx, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE18__construct_at_endEmRKS3_
__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE18__construct_at_endEmRKS3_: ## @_ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE18__construct_at_endEmRKS3_
Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception12
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE21_ConstructTransactionC1ERS5_m
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r15
	cmpq	%r15, %rbx
	je	LBB174_3
	.p2align	4, 0x90
LBB174_1:                               ## =>This Inner Loop Header: Depth=1
Ltmp167:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIdNS1_IdEEEEEEE9constructIS4_JRKS4_EvEEvRS5_PT_DpOT0_
Ltmp168:
## %bb.2:                               ##   in Loop: Header=BB174_1 Depth=1
	addq	$24, %rbx
	movq	%rbx, -40(%rbp)
	cmpq	%rbx, %r15
	jne	LBB174_1
LBB174_3:
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE21_ConstructTransactionD1Ev
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB174_4:
Ltmp169:
	movq	%rax, %rbx
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE21_ConstructTransactionD1Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end12:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table174:
Lexception12:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end12-Lcst_begin12
Lcst_begin12:
	.uleb128 Lfunc_begin12-Lfunc_begin12    ## >> Call Site 1 <<
	.uleb128 Ltmp167-Lfunc_begin12          ##   Call between Lfunc_begin12 and Ltmp167
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp167-Lfunc_begin12          ## >> Call Site 2 <<
	.uleb128 Ltmp168-Ltmp167                ##   Call between Ltmp167 and Ltmp168
	.uleb128 Ltmp169-Lfunc_begin12          ##     jumps to Ltmp169
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp168-Lfunc_begin12          ## >> Call Site 3 <<
	.uleb128 Lfunc_end12-Ltmp168            ##   Call between Ltmp168 and Lfunc_end12
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end12:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__113__vector_baseINS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEED2Ev ## -- Begin function _ZNSt3__113__vector_baseINS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__113__vector_baseINS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEED2Ev
	.p2align	4, 0x90
__ZNSt3__113__vector_baseINS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEED2Ev: ## @_ZNSt3__113__vector_baseINS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEED2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	cmpq	$0, (%rdi)
	je	LBB175_2
## %bb.1:
	movq	%rdi, %rbx
	callq	__ZNSt3__113__vector_baseINS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEE5clearEv
	movq	(%rbx), %r14
	movq	%rbx, %rdi
	callq	__ZNKSt3__113__vector_baseINS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEE8capacityEv
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIdNS1_IdEEEEEEE10deallocateERS5_PS4_m
LBB175_2:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIPNS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEEC1IDnNS_18__default_init_tagEEEOT_OT0_
__ZNSt3__117__compressed_pairIPNS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEEC1IDnNS_18__default_init_tagEEEOT_OT0_: ## @_ZNSt3__117__compressed_pairIPNS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEEC1IDnNS_18__default_init_tagEEEOT_OT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__117__compressed_pairIPNS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEEC2IDnNS_18__default_init_tagEEEOT_OT0_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIPNS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEEC2IDnNS_18__default_init_tagEEEOT_OT0_
__ZNSt3__117__compressed_pairIPNS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEEC2IDnNS_18__default_init_tagEEEOT_OT0_: ## @_ZNSt3__117__compressed_pairIPNS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEEC2IDnNS_18__default_init_tagEEEOT_OT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__122__compressed_pair_elemIPNS_6vectorIdNS_9allocatorIdEEEELi0ELb0EEC2IDnvEEOT_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__122__compressed_pair_elemIPNS_6vectorIdNS_9allocatorIdEEEELi0ELb0EEC2IDnvEEOT_
__ZNSt3__122__compressed_pair_elemIPNS_6vectorIdNS_9allocatorIdEEEELi0ELb0EEC2IDnvEEOT_: ## @_ZNSt3__122__compressed_pair_elemIPNS_6vectorIdNS_9allocatorIdEEEELi0ELb0EEC2IDnvEEOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	$0, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNKSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE8max_sizeEv ## -- Begin function _ZNKSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE8max_sizeEv
	.weak_def_can_be_hidden	__ZNKSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE8max_sizeEv
	.p2align	4, 0x90
__ZNKSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE8max_sizeEv: ## @_ZNKSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE8max_sizeEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$768614336404564650, %rax       ## imm = 0xAAAAAAAAAAAAAAA
	movq	%rax, -16(%rbp)
	movabsq	$9223372036854775807, %rax      ## imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, -8(%rbp)
	leaq	-16(%rbp), %rdi
	leaq	-8(%rbp), %rsi
	callq	__ZNSt3__1L3minImEERKT_S3_S3_
	movq	(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIdNS1_IdEEEEEEE8allocateERS5_m
__ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIdNS1_IdEEEEEEE8allocateERS5_m: ## @_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIdNS1_IdEEEEEEE8allocateERS5_m
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__19allocatorINS_6vectorIdNS0_IdEEEEE8allocateEm
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__113__vector_baseINS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEE9__end_capEv
__ZNSt3__113__vector_baseINS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEE9__end_capEv: ## @_ZNSt3__113__vector_baseINS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEE9__end_capEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	addq	$16, %rdi
	callq	__ZNSt3__117__compressed_pairIPNS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEE5firstEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__19allocatorINS_6vectorIdNS0_IdEEEEE8allocateEm
__ZNSt3__19allocatorINS_6vectorIdNS0_IdEEEEE8allocateEm: ## @_ZNSt3__19allocatorINS_6vectorIdNS0_IdEEEEE8allocateEm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movabsq	$768614336404564651, %rax       ## imm = 0xAAAAAAAAAAAAAAB
	cmpq	%rax, %rdi
	jae	LBB182_2
## %bb.1:
	shlq	$3, %rdi
	leaq	(%rdi,%rdi,2), %rdi
	callq	__ZNSt3__1L17__libcpp_allocateEmm
	popq	%rbp
	retq
LBB182_2:
	callq	__ZNSt3__1L20__throw_length_errorEPKc
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIPNS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEE5firstEv
__ZNSt3__117__compressed_pairIPNS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEE5firstEv: ## @_ZNSt3__117__compressed_pairIPNS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEE5firstEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__122__compressed_pair_elemIPNS_6vectorIdNS_9allocatorIdEEEELi0ELb0EE5__getEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__122__compressed_pair_elemIPNS_6vectorIdNS_9allocatorIdEEEELi0ELb0EE5__getEv
__ZNSt3__122__compressed_pair_elemIPNS_6vectorIdNS_9allocatorIdEEEELi0ELb0EE5__getEv: ## @_ZNSt3__122__compressed_pair_elemIPNS_6vectorIdNS_9allocatorIdEEEELi0ELb0EE5__getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE8capacityEv
__ZNKSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE8capacityEv: ## @_ZNKSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE8capacityEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNKSt3__113__vector_baseINS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEE8capacityEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__113__vector_baseINS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEE8capacityEv
__ZNKSt3__113__vector_baseINS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEE8capacityEv: ## @_ZNKSt3__113__vector_baseINS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEE8capacityEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	callq	__ZNKSt3__113__vector_baseINS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEE9__end_capEv
	movq	(%rax), %rcx
	subq	(%rbx), %rcx
	sarq	$3, %rcx
	movabsq	$-6148914691236517205, %rax     ## imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rcx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__113__vector_baseINS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEE9__end_capEv
__ZNKSt3__113__vector_baseINS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEE9__end_capEv: ## @_ZNKSt3__113__vector_baseINS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEE9__end_capEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	addq	$16, %rdi
	callq	__ZNKSt3__117__compressed_pairIPNS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEE5firstEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__117__compressed_pairIPNS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEE5firstEv
__ZNKSt3__117__compressed_pairIPNS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEE5firstEv: ## @_ZNKSt3__117__compressed_pairIPNS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEE5firstEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNKSt3__122__compressed_pair_elemIPNS_6vectorIdNS_9allocatorIdEEEELi0ELb0EE5__getEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__122__compressed_pair_elemIPNS_6vectorIdNS_9allocatorIdEEEELi0ELb0EE5__getEv
__ZNKSt3__122__compressed_pair_elemIPNS_6vectorIdNS_9allocatorIdEEEELi0ELb0EE5__getEv: ## @_ZNKSt3__122__compressed_pair_elemIPNS_6vectorIdNS_9allocatorIdEEEELi0ELb0EE5__getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE21_ConstructTransactionC1ERS5_m ## -- Begin function _ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE21_ConstructTransactionC1ERS5_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE21_ConstructTransactionC1ERS5_m
	.p2align	4, 0x90
__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE21_ConstructTransactionC1ERS5_m: ## @_ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE21_ConstructTransactionC1ERS5_m
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE21_ConstructTransactionC2ERS5_m
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIdNS1_IdEEEEEEE9constructIS4_JRKS4_EvEEvRS5_PT_DpOT0_
__ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIdNS1_IdEEEEEEE9constructIS4_JRKS4_EvEEvRS5_PT_DpOT0_: ## @_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIdNS1_IdEEEEEEE9constructIS4_JRKS4_EvEEvRS5_PT_DpOT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__19allocatorINS_6vectorIdNS0_IdEEEEE9constructIS3_JRKS3_EEEvPT_DpOT0_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE21_ConstructTransactionD1Ev ## -- Begin function _ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE21_ConstructTransactionD1Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE21_ConstructTransactionD1Ev
	.p2align	4, 0x90
__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE21_ConstructTransactionD1Ev: ## @_ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE21_ConstructTransactionD1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE21_ConstructTransactionD2Ev
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE21_ConstructTransactionC2ERS5_m ## -- Begin function _ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE21_ConstructTransactionC2ERS5_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE21_ConstructTransactionC2ERS5_m
	.p2align	4, 0x90
__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE21_ConstructTransactionC2ERS5_m: ## @_ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE21_ConstructTransactionC2ERS5_m
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rsi, (%rdi)
	movq	8(%rsi), %rax
	movq	%rax, 8(%rdi)
	leaq	(%rdx,%rdx,2), %rax
	shlq	$3, %rax
	addq	8(%rsi), %rax
	movq	%rax, 16(%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__19allocatorINS_6vectorIdNS0_IdEEEEE9constructIS3_JRKS3_EEEvPT_DpOT0_
__ZNSt3__19allocatorINS_6vectorIdNS0_IdEEEEE9constructIS3_JRKS3_EEEvPT_DpOT0_: ## @_ZNSt3__19allocatorINS_6vectorIdNS0_IdEEEEE9constructIS3_JRKS3_EEEvPT_DpOT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1ERKS3_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE21_ConstructTransactionD2Ev ## -- Begin function _ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE21_ConstructTransactionD2Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE21_ConstructTransactionD2Ev
	.p2align	4, 0x90
__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE21_ConstructTransactionD2Ev: ## @_ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE21_ConstructTransactionD2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	movq	%rcx, 8(%rax)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__113__vector_baseINS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEE5clearEv
__ZNSt3__113__vector_baseINS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEE5clearEv: ## @_ZNSt3__113__vector_baseINS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEE5clearEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rsi
	callq	__ZNSt3__113__vector_baseINS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEE17__destruct_at_endEPS4_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIdNS1_IdEEEEEEE10deallocateERS5_PS4_m
__ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIdNS1_IdEEEEEEE10deallocateERS5_PS4_m: ## @_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIdNS1_IdEEEEEEE10deallocateERS5_PS4_m
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__19allocatorINS_6vectorIdNS0_IdEEEEE10deallocateEPS3_m
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__113__vector_baseINS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEE17__destruct_at_endEPS4_
__ZNSt3__113__vector_baseINS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEE17__destruct_at_endEPS4_: ## @_ZNSt3__113__vector_baseINS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEE17__destruct_at_endEPS4_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	8(%rdi), %rbx
	cmpq	%rsi, %rbx
	je	LBB198_2
	.p2align	4, 0x90
LBB198_1:                               ## =>This Inner Loop Header: Depth=1
	addq	$-24, %rbx
	movq	%rbx, %rdi
	callq	__ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIdNS1_IdEEEEEEE7destroyIS4_vEEvRS5_PT_
	cmpq	%rbx, %r15
	jne	LBB198_1
LBB198_2:
	movq	%r15, 8(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIdNS1_IdEEEEEEE7destroyIS4_vEEvRS5_PT_
__ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIdNS1_IdEEEEEEE7destroyIS4_vEEvRS5_PT_: ## @_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIdNS1_IdEEEEEEE7destroyIS4_vEEvRS5_PT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__19allocatorINS_6vectorIdNS0_IdEEEEE7destroyEPS3_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__19allocatorINS_6vectorIdNS0_IdEEEEE7destroyEPS3_
__ZNSt3__19allocatorINS_6vectorIdNS0_IdEEEEE7destroyEPS3_: ## @_ZNSt3__19allocatorINS_6vectorIdNS0_IdEEEEE7destroyEPS3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEED1Ev
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__19allocatorINS_6vectorIdNS0_IdEEEEE10deallocateEPS3_m
__ZNSt3__19allocatorINS_6vectorIdNS0_IdEEEEE10deallocateEPS3_m: ## @_ZNSt3__19allocatorINS_6vectorIdNS0_IdEEEEE10deallocateEPS3_m
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__1L19__libcpp_deallocateEPvmm
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEED2Ev
__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEED2Ev: ## @_ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEED2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__113__vector_baseINS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEED2Ev
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE4sizeEv
__ZNKSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE4sizeEv: ## @_ZNKSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE4sizeEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	8(%rdi), %rcx
	subq	(%rdi), %rcx
	sarq	$3, %rcx
	movabsq	$-6148914691236517205, %rax     ## imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rcx, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN10VertexlistD2Ev            ## -- Begin function _ZN10VertexlistD2Ev
	.weak_def_can_be_hidden	__ZN10VertexlistD2Ev
	.p2align	4, 0x90
__ZN10VertexlistD2Ev:                   ## @_ZN10VertexlistD2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	addq	$48, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev
	leaq	24(%rbx), %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev
	movq	%rbx, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc: ## @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1IDnEEPKc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc: ## @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2IDnEEPKc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, %rbx
	leaq	L_.str.14(%rip), %r14
	movq	%r14, %rdi
	callq	__ZNSt3__111char_traitsIcE6lengthEPKc
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__111char_traitsIcE6lengthEPKc ## -- Begin function _ZNSt3__111char_traitsIcE6lengthEPKc
	.weak_def_can_be_hidden	__ZNSt3__111char_traitsIcE6lengthEPKc
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE6lengthEPKc:  ## @_ZNSt3__111char_traitsIcE6lengthEPKc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	_strlen
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm: ## @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__set_short_sizeEm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rsi, %rbx
	addb	%bl, %bl
	callq	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	movb	%bl, (%rax)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv: ## @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	incq	%rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm: ## @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE11__recommendEm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	incq	%rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm
	leaq	-1(%rax), %rcx
	cmpq	$23, %rcx
	cmovneq	%rcx, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m
__ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m: ## @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8allocateERS2_m
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__19allocatorIcE8allocateEm
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc: ## @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__set_long_pointerEPc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rsi, %rbx
	callq	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	movq	%rbx, 16(%rax)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm: ## @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__set_long_capEm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rsi, %rbx
	orq	$1, %rbx
	callq	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	movq	%rbx, (%rax)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm: ## @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__set_long_sizeEm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rsi, %rbx
	callq	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	movq	%rbx, 8(%rax)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__111char_traitsIcE4copyEPcPKcm ## -- Begin function _ZNSt3__111char_traitsIcE4copyEPcPKcm
	.weak_def_can_be_hidden	__ZNSt3__111char_traitsIcE4copyEPcPKcm
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE4copyEPcPKcm: ## @_ZNSt3__111char_traitsIcE4copyEPcPKcm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	testq	%rdx, %rdx
	je	LBB215_2
## %bb.1:
	movq	%rbx, %rdi
	callq	_memcpy
LBB215_2:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__111char_traitsIcE6assignERcRKc ## -- Begin function _ZNSt3__111char_traitsIcE6assignERcRKc
	.weak_def_can_be_hidden	__ZNSt3__111char_traitsIcE6assignERcRKc
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE6assignERcRKc: ## @_ZNSt3__111char_traitsIcE6assignERcRKc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	(%rsi), %al
	movb	%al, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv: ## @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv: ## @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm: ## @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE10__align_itILm16EEEmm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	15(%rdi), %rax
	andq	$-16, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__19allocatorIcE8allocateEm
__ZNSt3__19allocatorIcE8allocateEm:     ## @_ZNSt3__19allocatorIcE8allocateEm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__1L17__libcpp_allocateEmm
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv: ## @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	movb	(%rax), %al
	andb	$1, %al
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateERS2_Pcm
__ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateERS2_Pcm: ## @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateERS2_Pcm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__19allocatorIcE10deallocateEPcm
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv: ## @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	movq	16(%rax), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv: ## @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv: ## @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__19allocatorIcE10deallocateEPcm
__ZNSt3__19allocatorIcE10deallocateEPcm: ## @_ZNSt3__19allocatorIcE10deallocateEPcm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__1L19__libcpp_deallocateEPvmm
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN10SimulationC2Eddddddiidii  ## -- Begin function _ZN10SimulationC2Eddddddiidii
	.weak_def_can_be_hidden	__ZN10SimulationC2Eddddddiidii
	.p2align	4, 0x90
__ZN10SimulationC2Eddddddiidii:         ## @_ZN10SimulationC2Eddddddiidii
Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception13
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$2168, %rsp                     ## imm = 0x878
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%r8d, -1768(%rbp)               ## 4-byte Spill
	movsd	%xmm6, -1776(%rbp)              ## 8-byte Spill
	movl	%edx, %r14d
	movl	%esi, %r15d
	movsd	%xmm5, -1920(%rbp)              ## 8-byte Spill
	movsd	%xmm4, -1912(%rbp)              ## 8-byte Spill
	movsd	%xmm3, -1904(%rbp)              ## 8-byte Spill
	movsd	%xmm2, -1896(%rbp)              ## 8-byte Spill
	movsd	%xmm1, -1888(%rbp)              ## 8-byte Spill
	movsd	%xmm0, -1880(%rbp)              ## 8-byte Spill
	movq	%rdi, %rbx
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1Ev
	leaq	24(%rbx), %rdi
	movq	%rdi, -1800(%rbp)               ## 8-byte Spill
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1Ev
	movq	%rbx, -1784(%rbp)               ## 8-byte Spill
	leaq	48(%rbx), %rdi
	movq	%rdi, -1792(%rbp)               ## 8-byte Spill
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1Ev
Ltmp170:
	leaq	-2104(%rbp), %rdi
	movsd	-1880(%rbp), %xmm0              ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movsd	-1888(%rbp), %xmm1              ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	movsd	-1896(%rbp), %xmm2              ## 8-byte Reload
                                        ## xmm2 = mem[0],zero
	movsd	-1904(%rbp), %xmm3              ## 8-byte Reload
                                        ## xmm3 = mem[0],zero
	movsd	-1912(%rbp), %xmm4              ## 8-byte Reload
                                        ## xmm4 = mem[0],zero
	movsd	-1920(%rbp), %xmm5              ## 8-byte Reload
                                        ## xmm5 = mem[0],zero
	movl	%r15d, %esi
	movl	%r14d, %edx
	movsd	-1776(%rbp), %xmm6              ## 8-byte Reload
                                        ## xmm6 = mem[0],zero
	callq	__ZN13ConfigurationC1Eddddddiid
Ltmp171:
## %bb.1:
Ltmp173:
	leaq	-1992(%rbp), %rdi
	leaq	-2104(%rbp), %rsi
	callq	__ZN13Configuration3V_iEv
Ltmp174:
## %bb.2:
Ltmp176:
	leaq	-1968(%rbp), %rdi
	leaq	-2104(%rbp), %rsi
	callq	__ZN13Configuration4db_iEv
Ltmp177:
## %bb.3:
Ltmp179:
	leaq	-1944(%rbp), %rdi
	leaq	-2104(%rbp), %rsi
	leaq	-1968(%rbp), %rdx
	leaq	-1992(%rbp), %rcx
	callq	__ZN13Configuration3C_iERKNSt3__16vectorIdNS0_9allocatorIdEEEES6_
Ltmp180:
## %bb.4:
	movsd	-2080(%rbp), %xmm0              ## xmm0 = mem[0],zero
	movl	-2104(%rbp), %r8d
	movl	-2100(%rbp), %r9d
Ltmp182:
	leaq	-2176(%rbp), %rbx
	leaq	-1968(%rbp), %rsi
	leaq	-1992(%rbp), %rdx
	leaq	-1944(%rbp), %rcx
	movq	%rbx, %rdi
	callq	__ZN11ProbabilityC1ERKNSt3__16vectorIdNS0_9allocatorIdEEEES6_S6_dii
Ltmp183:
## %bb.5:
	movl	-2104(%rbp), %esi
	movl	-2100(%rbp), %edx
Ltmp185:
	leaq	-2128(%rbp), %rdi
	callq	__Z14get_staggeringii
Ltmp186:
## %bb.6:
	leaq	-2040(%rbp), %r14
	movsd	-2080(%rbp), %xmm0              ## xmm0 = mem[0],zero
Ltmp188:
	leaq	-1944(%rbp), %rsi
	movq	%r14, %rdi
	callq	__Z6init_cRNSt3__16vectorIiNS_9allocatorIiEEEERNS0_IdNS1_IdEEEEd
Ltmp189:
## %bb.7:
Ltmp191:
	leaq	L_.str.15(%rip), %rsi
	leaq	-616(%rbp), %r15
	movq	%r15, %rdi
	callq	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj
Ltmp192:
## %bb.8:
Ltmp194:
	leaq	L_.str.16(%rip), %rsi
	leaq	-1184(%rbp), %r12
	movq	%r12, %rdi
	callq	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj
Ltmp195:
## %bb.9:
Ltmp197:
	leaq	L_.str.17(%rip), %rsi
	leaq	-1752(%rbp), %r13
	movq	%r13, %rdi
	callq	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj
Ltmp198:
## %bb.10:
	movq	-616(%rbp), %rax
	addq	-24(%rax), %r15
Ltmp200:
	movq	%r15, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearEj
Ltmp201:
## %bb.11:
	movq	-1184(%rbp), %rax
	addq	-24(%rax), %r12
Ltmp202:
	movq	%r12, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearEj
Ltmp203:
## %bb.12:
	movq	-1752(%rbp), %rax
	addq	-24(%rax), %r13
Ltmp204:
	movq	%r13, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearEj
Ltmp205:
## %bb.13:
Ltmp206:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str.18(%rip), %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp207:
## %bb.14:
Ltmp208:
	movq	%rax, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp209:
## %bb.15:
	leaq	-2016(%rbp), %r15
	leaq	-2152(%rbp), %rax
	movsd	-2096(%rbp), %xmm0              ## xmm0 = mem[0],zero
Ltmp211:
	movq	%rbx, 8(%rsp)
	movq	%rax, (%rsp)
	movl	$100000, 16(%rsp)               ## imm = 0x186A0
	leaq	-1872(%rbp), %rdi
	leaq	-1968(%rbp), %rcx
	leaq	-1992(%rbp), %r8
	leaq	-1944(%rbp), %r9
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	__Z10thermalizeRNSt3__16vectorIiNS_9allocatorIiEEEES4_RNS0_IdNS1_IdEEEES7_S7_RNS0_IS6_NS1_IS6_EEEES7_di
Ltmp212:
## %bb.16:
	leaq	-1872(%rbp), %rbx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEaSEOS3_
	movq	%rbx, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev
	movslq	-1768(%rbp), %rbx               ## 4-byte Folded Reload
	movq	$0, -1848(%rbp)
Ltmp214:
	leaq	-1872(%rbp), %rdi
	leaq	-1848(%rbp), %rdx
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1EmRKd
Ltmp215:
## %bb.17:
	movq	$0, -1824(%rbp)
Ltmp217:
	leaq	-1848(%rbp), %rdi
	leaq	-1824(%rbp), %rdx
	movq	%rbx, %rsi
	movq	-1800(%rbp), %r14               ## 8-byte Reload
	movq	-1792(%rbp), %r15               ## 8-byte Reload
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1EmRKd
Ltmp218:
## %bb.18:
	movq	$0, -1760(%rbp)
Ltmp220:
	leaq	-1824(%rbp), %rdi
	leaq	-1760(%rbp), %rdx
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1EmRKd
Ltmp221:
## %bb.19:
Ltmp223:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	leaq	L_.str.19(%rip), %rsi
	movq	-1784(%rbp), %rbx               ## 8-byte Reload
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp224:
## %bb.20:
Ltmp225:
	movq	%rax, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp226:
## %bb.21:
Ltmp227:
	leaq	-1872(%rbp), %rdi
	callq	__Z10getAverageIdEdRKNSt3__16vectorIT_NS0_9allocatorIS2_EEEE
Ltmp228:
## %bb.22:
	movsd	%xmm0, -1760(%rbp)
Ltmp229:
	leaq	-1760(%rbp), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE9push_backEOd
Ltmp230:
## %bb.23:
Ltmp232:
	leaq	-1872(%rbp), %rdi
	callq	__Z6getStdIdEdRKNSt3__16vectorIT_NS0_9allocatorIS2_EEEE
	movsd	%xmm0, -1776(%rbp)              ## 8-byte Spill
Ltmp233:
## %bb.24:
	movl	-1768(%rbp), %edi               ## 4-byte Reload
	callq	__ZL4sqrtIiENSt3__19enable_ifIXsr3std11is_integralIT_EE5valueEdE4typeES2_
	movsd	%xmm0, -1768(%rbp)              ## 8-byte Spill
	movsd	-1776(%rbp), %xmm1              ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -1760(%rbp)
Ltmp234:
	leaq	-1760(%rbp), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE9push_backEOd
Ltmp235:
## %bb.25:
Ltmp237:
	leaq	-1848(%rbp), %rdi
	callq	__Z10getAverageIdEdRKNSt3__16vectorIT_NS0_9allocatorIS2_EEEE
Ltmp238:
## %bb.26:
	movsd	%xmm0, -1760(%rbp)
Ltmp239:
	leaq	-1760(%rbp), %rsi
	movq	%r14, %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE9push_backEOd
Ltmp240:
## %bb.27:
Ltmp242:
	leaq	-1848(%rbp), %rdi
	callq	__Z6getStdIdEdRKNSt3__16vectorIT_NS0_9allocatorIS2_EEEE
Ltmp243:
## %bb.28:
	divsd	-1768(%rbp), %xmm0              ## 8-byte Folded Reload
	movsd	%xmm0, -1760(%rbp)
Ltmp244:
	leaq	-1760(%rbp), %rsi
	movq	%r14, %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE9push_backEOd
Ltmp245:
## %bb.29:
Ltmp247:
	leaq	-1824(%rbp), %rdi
	callq	__Z10getAverageIdEdRKNSt3__16vectorIT_NS0_9allocatorIS2_EEEE
Ltmp248:
## %bb.30:
	movsd	%xmm0, -1760(%rbp)
Ltmp249:
	leaq	-1760(%rbp), %rsi
	movq	%r15, %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE9push_backEOd
Ltmp250:
## %bb.31:
Ltmp252:
	leaq	-1824(%rbp), %rdi
	callq	__Z6getStdIdEdRKNSt3__16vectorIT_NS0_9allocatorIS2_EEEE
Ltmp253:
## %bb.32:
	divsd	-1768(%rbp), %xmm0              ## 8-byte Folded Reload
	movsd	%xmm0, -1760(%rbp)
Ltmp254:
	leaq	-1760(%rbp), %rsi
	movq	%r15, %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE9push_backEOd
Ltmp255:
## %bb.33:
Ltmp257:
	leaq	-616(%rbp), %rdi
	callq	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEE5closeEv
Ltmp258:
## %bb.34:
Ltmp259:
	leaq	-1184(%rbp), %rdi
	callq	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEE5closeEv
Ltmp260:
## %bb.35:
Ltmp261:
	leaq	-1752(%rbp), %rdi
	callq	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEE5closeEv
Ltmp262:
## %bb.36:
	leaq	-1824(%rbp), %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEED1Ev
	leaq	-1848(%rbp), %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEED1Ev
	leaq	-1872(%rbp), %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEED1Ev
	leaq	-1752(%rbp), %rdi
	callq	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	leaq	-1184(%rbp), %rdi
	callq	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	leaq	-616(%rbp), %rdi
	callq	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	leaq	-2128(%rbp), %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev
	leaq	-2176(%rbp), %rdi
	callq	__ZN11ProbabilityD1Ev
	leaq	-1944(%rbp), %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEED1Ev
	leaq	-1968(%rbp), %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEED1Ev
	leaq	-1992(%rbp), %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEED1Ev
	leaq	-2104(%rbp), %rdi
	callq	__ZN13ConfigurationD1Ev
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB227_38
## %bb.37:
	addq	$2168, %rsp                     ## imm = 0x878
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB227_38:
	callq	___stack_chk_fail
LBB227_39:
Ltmp222:
	movq	%rax, %r12
	jmp	LBB227_61
LBB227_40:
Ltmp219:
	movq	%rax, %r12
	jmp	LBB227_62
LBB227_41:
Ltmp216:
	jmp	LBB227_64
LBB227_42:
Ltmp213:
	jmp	LBB227_64
LBB227_43:
Ltmp199:
	movq	%rax, %r12
	jmp	LBB227_66
LBB227_44:
Ltmp196:
	movq	%rax, %r12
	jmp	LBB227_67
LBB227_45:
Ltmp193:
	movq	%rax, %r12
	jmp	LBB227_68
LBB227_46:
Ltmp190:
	movq	%rax, %r12
	jmp	LBB227_68
LBB227_47:
Ltmp187:
	movq	%rax, %r12
	jmp	LBB227_69
LBB227_48:
Ltmp184:
	movq	%rax, %r12
	jmp	LBB227_70
LBB227_49:
Ltmp181:
	movq	%rax, %r12
	jmp	LBB227_71
LBB227_50:
Ltmp178:
	movq	%rax, %r12
	jmp	LBB227_72
LBB227_51:
Ltmp175:
	movq	%rax, %r12
	jmp	LBB227_73
LBB227_52:
Ltmp172:
	movq	%rax, %r12
	jmp	LBB227_74
LBB227_53:
Ltmp256:
	jmp	LBB227_60
LBB227_54:
Ltmp251:
	jmp	LBB227_60
LBB227_55:
Ltmp246:
	jmp	LBB227_60
LBB227_56:
Ltmp241:
	jmp	LBB227_60
LBB227_57:
Ltmp236:
	jmp	LBB227_60
LBB227_58:
Ltmp231:
	jmp	LBB227_60
LBB227_59:
Ltmp263:
LBB227_60:
	movq	%rax, %r12
	leaq	-1824(%rbp), %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEED1Ev
LBB227_61:
	leaq	-1848(%rbp), %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEED1Ev
LBB227_62:
	leaq	-1872(%rbp), %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEED1Ev
	jmp	LBB227_65
LBB227_63:
Ltmp210:
LBB227_64:
	movq	%rax, %r12
LBB227_65:
	leaq	-1752(%rbp), %rdi
	callq	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
LBB227_66:
	leaq	-1184(%rbp), %rdi
	callq	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
LBB227_67:
	leaq	-616(%rbp), %rdi
	callq	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
LBB227_68:
	leaq	-2128(%rbp), %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev
LBB227_69:
	leaq	-2176(%rbp), %rdi
	callq	__ZN11ProbabilityD1Ev
LBB227_70:
	leaq	-1944(%rbp), %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEED1Ev
LBB227_71:
	leaq	-1968(%rbp), %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEED1Ev
LBB227_72:
	leaq	-1992(%rbp), %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEED1Ev
LBB227_73:
	leaq	-2104(%rbp), %rdi
	callq	__ZN13ConfigurationD1Ev
LBB227_74:
	movq	-1792(%rbp), %rdi               ## 8-byte Reload
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEED1Ev
	movq	-1800(%rbp), %rdi               ## 8-byte Reload
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEED1Ev
	movq	-1784(%rbp), %rdi               ## 8-byte Reload
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEED1Ev
	movq	%r12, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end13:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table227:
Lexception13:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end13-Lcst_begin13
Lcst_begin13:
	.uleb128 Ltmp170-Lfunc_begin13          ## >> Call Site 1 <<
	.uleb128 Ltmp171-Ltmp170                ##   Call between Ltmp170 and Ltmp171
	.uleb128 Ltmp172-Lfunc_begin13          ##     jumps to Ltmp172
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp173-Lfunc_begin13          ## >> Call Site 2 <<
	.uleb128 Ltmp174-Ltmp173                ##   Call between Ltmp173 and Ltmp174
	.uleb128 Ltmp175-Lfunc_begin13          ##     jumps to Ltmp175
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp176-Lfunc_begin13          ## >> Call Site 3 <<
	.uleb128 Ltmp177-Ltmp176                ##   Call between Ltmp176 and Ltmp177
	.uleb128 Ltmp178-Lfunc_begin13          ##     jumps to Ltmp178
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp179-Lfunc_begin13          ## >> Call Site 4 <<
	.uleb128 Ltmp180-Ltmp179                ##   Call between Ltmp179 and Ltmp180
	.uleb128 Ltmp181-Lfunc_begin13          ##     jumps to Ltmp181
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp182-Lfunc_begin13          ## >> Call Site 5 <<
	.uleb128 Ltmp183-Ltmp182                ##   Call between Ltmp182 and Ltmp183
	.uleb128 Ltmp184-Lfunc_begin13          ##     jumps to Ltmp184
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp185-Lfunc_begin13          ## >> Call Site 6 <<
	.uleb128 Ltmp186-Ltmp185                ##   Call between Ltmp185 and Ltmp186
	.uleb128 Ltmp187-Lfunc_begin13          ##     jumps to Ltmp187
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp188-Lfunc_begin13          ## >> Call Site 7 <<
	.uleb128 Ltmp189-Ltmp188                ##   Call between Ltmp188 and Ltmp189
	.uleb128 Ltmp190-Lfunc_begin13          ##     jumps to Ltmp190
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp191-Lfunc_begin13          ## >> Call Site 8 <<
	.uleb128 Ltmp192-Ltmp191                ##   Call between Ltmp191 and Ltmp192
	.uleb128 Ltmp193-Lfunc_begin13          ##     jumps to Ltmp193
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp194-Lfunc_begin13          ## >> Call Site 9 <<
	.uleb128 Ltmp195-Ltmp194                ##   Call between Ltmp194 and Ltmp195
	.uleb128 Ltmp196-Lfunc_begin13          ##     jumps to Ltmp196
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp197-Lfunc_begin13          ## >> Call Site 10 <<
	.uleb128 Ltmp198-Ltmp197                ##   Call between Ltmp197 and Ltmp198
	.uleb128 Ltmp199-Lfunc_begin13          ##     jumps to Ltmp199
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp200-Lfunc_begin13          ## >> Call Site 11 <<
	.uleb128 Ltmp209-Ltmp200                ##   Call between Ltmp200 and Ltmp209
	.uleb128 Ltmp210-Lfunc_begin13          ##     jumps to Ltmp210
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp211-Lfunc_begin13          ## >> Call Site 12 <<
	.uleb128 Ltmp212-Ltmp211                ##   Call between Ltmp211 and Ltmp212
	.uleb128 Ltmp213-Lfunc_begin13          ##     jumps to Ltmp213
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp214-Lfunc_begin13          ## >> Call Site 13 <<
	.uleb128 Ltmp215-Ltmp214                ##   Call between Ltmp214 and Ltmp215
	.uleb128 Ltmp216-Lfunc_begin13          ##     jumps to Ltmp216
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp217-Lfunc_begin13          ## >> Call Site 14 <<
	.uleb128 Ltmp218-Ltmp217                ##   Call between Ltmp217 and Ltmp218
	.uleb128 Ltmp219-Lfunc_begin13          ##     jumps to Ltmp219
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp220-Lfunc_begin13          ## >> Call Site 15 <<
	.uleb128 Ltmp221-Ltmp220                ##   Call between Ltmp220 and Ltmp221
	.uleb128 Ltmp222-Lfunc_begin13          ##     jumps to Ltmp222
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp223-Lfunc_begin13          ## >> Call Site 16 <<
	.uleb128 Ltmp226-Ltmp223                ##   Call between Ltmp223 and Ltmp226
	.uleb128 Ltmp263-Lfunc_begin13          ##     jumps to Ltmp263
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp227-Lfunc_begin13          ## >> Call Site 17 <<
	.uleb128 Ltmp230-Ltmp227                ##   Call between Ltmp227 and Ltmp230
	.uleb128 Ltmp231-Lfunc_begin13          ##     jumps to Ltmp231
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp232-Lfunc_begin13          ## >> Call Site 18 <<
	.uleb128 Ltmp235-Ltmp232                ##   Call between Ltmp232 and Ltmp235
	.uleb128 Ltmp236-Lfunc_begin13          ##     jumps to Ltmp236
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp237-Lfunc_begin13          ## >> Call Site 19 <<
	.uleb128 Ltmp240-Ltmp237                ##   Call between Ltmp237 and Ltmp240
	.uleb128 Ltmp241-Lfunc_begin13          ##     jumps to Ltmp241
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp242-Lfunc_begin13          ## >> Call Site 20 <<
	.uleb128 Ltmp245-Ltmp242                ##   Call between Ltmp242 and Ltmp245
	.uleb128 Ltmp246-Lfunc_begin13          ##     jumps to Ltmp246
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp247-Lfunc_begin13          ## >> Call Site 21 <<
	.uleb128 Ltmp250-Ltmp247                ##   Call between Ltmp247 and Ltmp250
	.uleb128 Ltmp251-Lfunc_begin13          ##     jumps to Ltmp251
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp252-Lfunc_begin13          ## >> Call Site 22 <<
	.uleb128 Ltmp255-Ltmp252                ##   Call between Ltmp252 and Ltmp255
	.uleb128 Ltmp256-Lfunc_begin13          ##     jumps to Ltmp256
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp257-Lfunc_begin13          ## >> Call Site 23 <<
	.uleb128 Ltmp262-Ltmp257                ##   Call between Ltmp257 and Ltmp262
	.uleb128 Ltmp263-Lfunc_begin13          ##     jumps to Ltmp263
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp262-Lfunc_begin13          ## >> Call Site 24 <<
	.uleb128 Lfunc_end13-Ltmp262            ##   Call between Ltmp262 and Lfunc_end13
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end13:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEEC1Ev
__ZNSt3__16vectorIdNS_9allocatorIdEEEC1Ev: ## @_ZNSt3__16vectorIdNS_9allocatorIdEEEC1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEC2Ev
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN13ConfigurationC1Eddddddiid ## -- Begin function _ZN13ConfigurationC1Eddddddiid
	.weak_def_can_be_hidden	__ZN13ConfigurationC1Eddddddiid
	.p2align	4, 0x90
__ZN13ConfigurationC1Eddddddiid:        ## @_ZN13ConfigurationC1Eddddddiid
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZN13ConfigurationC2Eddddddiid
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function _ZN13Configuration3V_iEv
LCPI230_0:
	.quad	0x3fe0000000000000              ## double 0.5
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN13Configuration3V_iEv
	.weak_def_can_be_hidden	__ZN13Configuration3V_iEv
	.p2align	4, 0x90
__ZN13Configuration3V_iEv:              ## @_ZN13Configuration3V_iEv
Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception14
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r15
	movl	(%rsi), %eax
	movl	4(%rsi), %r14d
	imull	%eax, %r14d
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	leal	1(%rcx), %eax
	addl	$2, %ecx
	imull	%eax, %ecx
	movl	%ecx, %eax
	shrl	$31, %eax
	addl	%ecx, %eax
	sarl	%eax
	movslq	%eax, %rsi
	movq	$0, -72(%rbp)
	leaq	-72(%rbp), %rdx
	movq	%rdi, -56(%rbp)                 ## 8-byte Spill
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1EmRKd
	testl	%r14d, %r14d
	jle	LBB230_9
## %bb.1:
	xorl	%eax, %eax
	jmp	LBB230_3
	.p2align	4, 0x90
LBB230_2:                               ##   in Loop: Header=BB230_3 Depth=1
	movl	-44(%rbp), %eax                 ## 4-byte Reload
	cmpl	%r14d, %eax
	je	LBB230_9
LBB230_3:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB230_5 Depth 2
	movl	%eax, %r12d
	leal	1(%r12), %eax
	movl	%eax, -44(%rbp)                 ## 4-byte Spill
	cmpl	%r14d, %eax
	jge	LBB230_2
## %bb.4:                               ##   in Loop: Header=BB230_3 Depth=1
	movl	-44(%rbp), %ebx                 ## 4-byte Reload
	.p2align	4, 0x90
LBB230_5:                               ##   Parent Loop BB230_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%r15), %edx
	movl	4(%r15), %ecx
Ltmp264:
	movl	%r12d, %edi
	movl	%ebx, %esi
	callq	__Z7vec_miniiii
Ltmp265:
## %bb.6:                               ##   in Loop: Header=BB230_5 Depth=2
	movl	%eax, %r13d
Ltmp266:
	movq	%r15, %rdi
	movl	%r12d, %esi
	movl	%ebx, %edx
	callq	__ZN13Configuration9potentialEii
Ltmp267:
## %bb.7:                               ##   in Loop: Header=BB230_5 Depth=2
	mulsd	LCPI230_0(%rip), %xmm0
	movsd	%xmm0, -64(%rbp)                ## 8-byte Spill
	movslq	%r13d, %rsi
	movq	-56(%rbp), %rdi                 ## 8-byte Reload
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEixEm
	movsd	-64(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
	incl	%ebx
	cmpl	%ebx, %r14d
	jne	LBB230_5
	jmp	LBB230_2
LBB230_9:
	movq	-56(%rbp), %rax                 ## 8-byte Reload
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB230_8:
Ltmp268:
	movq	%rax, %rbx
	movq	-56(%rbp), %rdi                 ## 8-byte Reload
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEED1Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end14:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table230:
Lexception14:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end14-Lcst_begin14
Lcst_begin14:
	.uleb128 Lfunc_begin14-Lfunc_begin14    ## >> Call Site 1 <<
	.uleb128 Ltmp264-Lfunc_begin14          ##   Call between Lfunc_begin14 and Ltmp264
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp264-Lfunc_begin14          ## >> Call Site 2 <<
	.uleb128 Ltmp267-Ltmp264                ##   Call between Ltmp264 and Ltmp267
	.uleb128 Ltmp268-Lfunc_begin14          ##     jumps to Ltmp268
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp267-Lfunc_begin14          ## >> Call Site 3 <<
	.uleb128 Lfunc_end14-Ltmp267            ##   Call between Ltmp267 and Lfunc_end14
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end14:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function _ZN13Configuration4db_iEv
LCPI231_0:
	.quad	0x3ff0000000000000              ## double 1
LCPI231_1:
	.quad	0x3fe0000000000000              ## double 0.5
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN13Configuration4db_iEv
	.weak_def_can_be_hidden	__ZN13Configuration4db_iEv
	.p2align	4, 0x90
__ZN13Configuration4db_iEv:             ## @_ZN13Configuration4db_iEv
Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception15
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r13
	movl	(%rsi), %eax
	movl	4(%rsi), %r14d
	imull	%eax, %r14d
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	leal	1(%rcx), %eax
	addl	$2, %ecx
	imull	%eax, %ecx
	movl	%ecx, %eax
	shrl	$31, %eax
	addl	%ecx, %eax
	sarl	%eax
	movslq	%eax, %rsi
	movq	$0, -80(%rbp)
	leaq	-80(%rbp), %rdx
	movq	%rdi, -64(%rbp)                 ## 8-byte Spill
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1EmRKd
	movl	(%r13), %edx
	movl	4(%r13), %eax
	movl	%edx, %edi
	shrl	$31, %edi
	addl	%edx, %edi
	sarl	%edi
	movl	%eax, %esi
	shrl	$31, %esi
	addl	%eax, %esi
	sarl	%esi
	callq	__Z4siteiiii
	testl	%r14d, %r14d
	jle	LBB231_1
## %bb.4:
	movl	%eax, %r15d
	xorl	%r12d, %r12d
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)                ## 8-byte Spill
	leaq	L_.str.22(%rip), %rbx
	jmp	LBB231_5
	.p2align	4, 0x90
LBB231_11:                              ##   in Loop: Header=BB231_5 Depth=1
	incl	%r12d
	cmpl	%r12d, %r14d
	je	LBB231_2
LBB231_5:                               ## =>This Inner Loop Header: Depth=1
	cmpl	%r12d, %r15d
	je	LBB231_11
## %bb.6:                               ##   in Loop: Header=BB231_5 Depth=1
	movl	(%r13), %edx
	movl	4(%r13), %ecx
	movl	%r15d, %edi
	movl	%r12d, %esi
	callq	__Z12distance_pbciiii
	movsd	48(%r13), %xmm1                 ## xmm1 = mem[0],zero
	movsd	%xmm0, -72(%rbp)                ## 8-byte Spill
	ucomisd	%xmm0, %xmm1
	jb	LBB231_11
## %bb.7:                               ##   in Loop: Header=BB231_5 Depth=1
Ltmp269:
	movq	__ZNSt3__14coutE@GOTPCREL(%rip), %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp270:
## %bb.8:                               ##   in Loop: Header=BB231_5 Depth=1
Ltmp271:
	movq	%rax, %rdi
	movsd	-72(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp272:
## %bb.9:                               ##   in Loop: Header=BB231_5 Depth=1
Ltmp273:
	movq	%rax, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp274:
## %bb.10:                              ##   in Loop: Header=BB231_5 Depth=1
	movsd	-56(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addsd	LCPI231_0(%rip), %xmm0
	movsd	%xmm0, -56(%rbp)                ## 8-byte Spill
	jmp	LBB231_11
LBB231_1:
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)                ## 8-byte Spill
LBB231_2:
	testl	%r14d, %r14d
	jle	LBB231_21
## %bb.3:
	xorl	%eax, %eax
	jmp	LBB231_13
	.p2align	4, 0x90
LBB231_12:                              ##   in Loop: Header=BB231_13 Depth=1
	movl	-44(%rbp), %eax                 ## 4-byte Reload
	cmpl	%r14d, %eax
	je	LBB231_21
LBB231_13:                              ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB231_15 Depth 2
	movl	%eax, %r15d
	leal	1(%r15), %eax
	movl	%eax, -44(%rbp)                 ## 4-byte Spill
	cmpl	%r14d, %eax
	jge	LBB231_12
## %bb.14:                              ##   in Loop: Header=BB231_13 Depth=1
	movl	-44(%rbp), %ebx                 ## 4-byte Reload
	jmp	LBB231_15
	.p2align	4, 0x90
LBB231_18:                              ##   in Loop: Header=BB231_15 Depth=2
	movsd	%xmm1, -72(%rbp)                ## 8-byte Spill
	movslq	%r12d, %rsi
	movq	-64(%rbp), %rdi                 ## 8-byte Reload
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEixEm
	movsd	-72(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
	incl	%ebx
	cmpl	%ebx, %r14d
	je	LBB231_12
LBB231_15:                              ##   Parent Loop BB231_13 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%r13), %edx
	movl	4(%r13), %ecx
Ltmp276:
	movl	%r15d, %edi
	movl	%ebx, %esi
	callq	__Z7vec_miniiii
Ltmp277:
## %bb.16:                              ##   in Loop: Header=BB231_15 Depth=2
	movl	%eax, %r12d
	movl	(%r13), %edx
	movl	4(%r13), %ecx
	movl	%r15d, %edi
	movl	%ebx, %esi
	callq	__Z12distance_pbciiii
	xorpd	%xmm1, %xmm1
	ucomisd	48(%r13), %xmm0
	ja	LBB231_18
## %bb.17:                              ##   in Loop: Header=BB231_15 Depth=2
	movsd	16(%r13), %xmm1                 ## xmm1 = mem[0],zero
	divsd	-56(%rbp), %xmm1                ## 8-byte Folded Reload
	mulsd	LCPI231_1(%rip), %xmm1
	jmp	LBB231_18
LBB231_21:
	movq	-64(%rbp), %rax                 ## 8-byte Reload
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB231_19:
Ltmp275:
	jmp	LBB231_20
LBB231_22:
Ltmp278:
LBB231_20:
	movq	%rax, %rbx
	movq	-64(%rbp), %rdi                 ## 8-byte Reload
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEED1Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end15:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table231:
Lexception15:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end15-Lcst_begin15
Lcst_begin15:
	.uleb128 Lfunc_begin15-Lfunc_begin15    ## >> Call Site 1 <<
	.uleb128 Ltmp269-Lfunc_begin15          ##   Call between Lfunc_begin15 and Ltmp269
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp269-Lfunc_begin15          ## >> Call Site 2 <<
	.uleb128 Ltmp274-Ltmp269                ##   Call between Ltmp269 and Ltmp274
	.uleb128 Ltmp275-Lfunc_begin15          ##     jumps to Ltmp275
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp276-Lfunc_begin15          ## >> Call Site 3 <<
	.uleb128 Ltmp277-Ltmp276                ##   Call between Ltmp276 and Ltmp277
	.uleb128 Ltmp278-Lfunc_begin15          ##     jumps to Ltmp278
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp277-Lfunc_begin15          ## >> Call Site 4 <<
	.uleb128 Lfunc_end15-Ltmp277            ##   Call between Ltmp277 and Lfunc_end15
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end15:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function _ZN13Configuration3C_iERKNSt3__16vectorIdNS0_9allocatorIdEEEES6_
LCPI232_0:
	.quad	0x3c9cd2b297d889bc              ## double 9.9999999999999997E-17
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN13Configuration3C_iERKNSt3__16vectorIdNS0_9allocatorIdEEEES6_
	.weak_def_can_be_hidden	__ZN13Configuration3C_iERKNSt3__16vectorIdNS0_9allocatorIdEEEES6_
	.p2align	4, 0x90
__ZN13Configuration3C_iERKNSt3__16vectorIdNS0_9allocatorIdEEEES6_: ## @_ZN13Configuration3C_iERKNSt3__16vectorIdNS0_9allocatorIdEEEES6_
Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception16
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rcx, -96(%rbp)                 ## 8-byte Spill
	movq	%rdx, -88(%rbp)                 ## 8-byte Spill
	movq	%rsi, %rbx
	movl	(%rsi), %eax
	movl	4(%rsi), %r14d
	imull	%eax, %r14d
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	leal	1(%rcx), %eax
	addl	$2, %ecx
	imull	%eax, %ecx
	movl	%ecx, %eax
	shrl	$31, %eax
	addl	%ecx, %eax
	sarl	%eax
	movslq	%eax, %rsi
	movq	$0, -64(%rbp)
	leaq	-64(%rbp), %rdx
	movq	%rdi, -72(%rbp)                 ## 8-byte Spill
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1EmRKd
	testl	%r14d, %r14d
	jle	LBB232_9
## %bb.1:
	xorl	%eax, %eax
	movq	%rbx, -80(%rbp)                 ## 8-byte Spill
	jmp	LBB232_3
	.p2align	4, 0x90
LBB232_2:                               ##   in Loop: Header=BB232_3 Depth=1
	movl	-44(%rbp), %eax                 ## 4-byte Reload
	cmpl	%r14d, %eax
	je	LBB232_9
LBB232_3:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB232_5 Depth 2
                                        ## kill: def $eax killed $eax def $rax
	movq	%rax, -104(%rbp)                ## 8-byte Spill
	incl	%eax
	movl	%eax, -44(%rbp)                 ## 4-byte Spill
	cmpl	%r14d, %eax
	jge	LBB232_2
## %bb.4:                               ##   in Loop: Header=BB232_3 Depth=1
	movl	-44(%rbp), %r15d                ## 4-byte Reload
	jmp	LBB232_5
	.p2align	4, 0x90
LBB232_8:                               ##   in Loop: Header=BB232_5 Depth=2
	incl	%r15d
	cmpl	%r15d, %r14d
	movq	-80(%rbp), %rbx                 ## 8-byte Reload
	je	LBB232_2
LBB232_5:                               ##   Parent Loop BB232_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	(%rbx), %edx
	movl	4(%rbx), %ecx
Ltmp279:
	movq	-104(%rbp), %rdi                ## 8-byte Reload
                                        ## kill: def $edi killed $edi killed $rdi
	movl	%r15d, %esi
	callq	__Z7vec_miniiii
Ltmp280:
## %bb.6:                               ##   in Loop: Header=BB232_5 Depth=2
	movslq	%eax, %r13
	movq	-96(%rbp), %rdi                 ## 8-byte Reload
	movq	%r13, %rsi
	callq	__ZNKSt3__16vectorIdNS_9allocatorIdEEEixEm
	movsd	(%rax), %xmm0                   ## xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)                ## 8-byte Spill
	movq	-88(%rbp), %rdi                 ## 8-byte Reload
	movq	%r13, %rsi
	callq	__ZNKSt3__16vectorIdNS_9allocatorIdEEEixEm
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -144(%rbp)
	movq	%rax, %xmm0
	addsd	%xmm0, %xmm0
	subsd	-56(%rbp), %xmm0                ## 8-byte Folded Reload
	movsd	%xmm0, -136(%rbp)
	leaq	-64(%rbp), %r12
	movq	%r12, %rdi
	leaq	-136(%rbp), %rsi
	callq	__ZNSt3__1L3minIdEERKT_S3_S3_
	leaq	-144(%rbp), %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__1L3minIdEERKT_S3_S3_
	movsd	(%rax), %xmm0                   ## xmm0 = mem[0],zero
	callq	__ZL3absd
	movsd	%xmm0, -120(%rbp)               ## 8-byte Spill
	movsd	56(%rbx), %xmm0                 ## xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)               ## 8-byte Spill
	movsd	-64(%rbp), %xmm0                ## xmm0 = mem[0],zero
	addsd	%xmm0, %xmm0
	subsd	-56(%rbp), %xmm0                ## 8-byte Folded Reload
	movsd	%xmm0, -128(%rbp)
	movq	%r12, %rdi
	leaq	-128(%rbp), %rsi
	callq	__ZNSt3__1L3minIdEERKT_S3_S3_
	movsd	(%rax), %xmm0                   ## xmm0 = mem[0],zero
	callq	__ZL3absd
	mulsd	-112(%rbp), %xmm0               ## 8-byte Folded Reload
	addsd	-120(%rbp), %xmm0               ## 8-byte Folded Reload
	movsd	%xmm0, -56(%rbp)                ## 8-byte Spill
	movq	-72(%rbp), %rbx                 ## 8-byte Reload
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEixEm
	movsd	-56(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEixEm
	movsd	LCPI232_0(%rip), %xmm0          ## xmm0 = mem[0],zero
	ucomisd	(%rax), %xmm0
	jbe	LBB232_8
## %bb.7:                               ##   in Loop: Header=BB232_5 Depth=2
	movq	$0, (%rax)
	jmp	LBB232_8
LBB232_9:
	movq	-72(%rbp), %rax                 ## 8-byte Reload
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB232_10:
Ltmp281:
	movq	%rax, %rbx
	movq	-72(%rbp), %rdi                 ## 8-byte Reload
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEED1Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end16:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table232:
Lexception16:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end16-Lcst_begin16
Lcst_begin16:
	.uleb128 Lfunc_begin16-Lfunc_begin16    ## >> Call Site 1 <<
	.uleb128 Ltmp279-Lfunc_begin16          ##   Call between Lfunc_begin16 and Ltmp279
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp279-Lfunc_begin16          ## >> Call Site 2 <<
	.uleb128 Ltmp280-Ltmp279                ##   Call between Ltmp279 and Ltmp280
	.uleb128 Ltmp281-Lfunc_begin16          ##     jumps to Ltmp281
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp280-Lfunc_begin16          ## >> Call Site 3 <<
	.uleb128 Lfunc_end16-Ltmp280            ##   Call between Ltmp280 and Lfunc_end16
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end16:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN11ProbabilityC1ERKNSt3__16vectorIdNS0_9allocatorIdEEEES6_S6_dii ## -- Begin function _ZN11ProbabilityC1ERKNSt3__16vectorIdNS0_9allocatorIdEEEES6_S6_dii
	.weak_def_can_be_hidden	__ZN11ProbabilityC1ERKNSt3__16vectorIdNS0_9allocatorIdEEEES6_S6_dii
	.p2align	4, 0x90
__ZN11ProbabilityC1ERKNSt3__16vectorIdNS0_9allocatorIdEEEES6_S6_dii: ## @_ZN11ProbabilityC1ERKNSt3__16vectorIdNS0_9allocatorIdEEEES6_S6_dii
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZN11ProbabilityC2ERKNSt3__16vectorIdNS0_9allocatorIdEEEES6_S6_dii
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj
__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj: ## @_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj
Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception17
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r12
	movq	%rdi, %r13
	addq	$416, %rdi                      ## imm = 0x1A0
	movq	%rdi, -48(%rbp)                 ## 8-byte Spill
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2Ev
	movq	__ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rbx
	leaq	24(%rbx), %r14
	movq	%r14, (%r13)
	addq	$64, %rbx
	movq	%rbx, 416(%r13)
	leaq	8(%r13), %r15
Ltmp282:
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE
Ltmp283:
## %bb.1:
	movq	%r14, (%r13)
	movq	%rbx, 416(%r13)
Ltmp285:
	movq	%r15, %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC1Ev
Ltmp286:
## %bb.2:
Ltmp288:
	movq	%r15, %rdi
	movq	%r12, %rsi
	movl	$16, %edx
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj
Ltmp289:
## %bb.3:
	testq	%rax, %rax
	jne	LBB234_5
## %bb.4:
	movq	(%r13), %rax
	movq	-24(%rax), %rdi
	addq	%r13, %rdi
Ltmp290:
	movl	$4, %esi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj
Ltmp291:
LBB234_5:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB234_8:
Ltmp287:
	movq	%rax, %r12
	jmp	LBB234_9
LBB234_6:
Ltmp284:
	movq	%rax, %r12
	jmp	LBB234_10
LBB234_7:
Ltmp292:
	movq	%rax, %r12
	movq	%r15, %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
LBB234_9:
	movq	__ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rsi
	addq	$8, %rsi
	movq	%r13, %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
LBB234_10:
	movq	-48(%rbp), %rdi                 ## 8-byte Reload
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	movq	%r12, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end17:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table234:
Lexception17:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end17-Lcst_begin17
Lcst_begin17:
	.uleb128 Ltmp282-Lfunc_begin17          ## >> Call Site 1 <<
	.uleb128 Ltmp283-Ltmp282                ##   Call between Ltmp282 and Ltmp283
	.uleb128 Ltmp284-Lfunc_begin17          ##     jumps to Ltmp284
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp285-Lfunc_begin17          ## >> Call Site 2 <<
	.uleb128 Ltmp286-Ltmp285                ##   Call between Ltmp285 and Ltmp286
	.uleb128 Ltmp287-Lfunc_begin17          ##     jumps to Ltmp287
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp288-Lfunc_begin17          ## >> Call Site 3 <<
	.uleb128 Ltmp291-Ltmp288                ##   Call between Ltmp288 and Ltmp291
	.uleb128 Ltmp292-Lfunc_begin17          ##     jumps to Ltmp292
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp291-Lfunc_begin17          ## >> Call Site 4 <<
	.uleb128 Lfunc_end17-Ltmp291            ##   Call between Ltmp291 and Lfunc_end17
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end17:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearEj
__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearEj: ## @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE5clearEj
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%esi, %esi
	callq	__ZNSt3__18ios_base5clearEj
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEEaSEOS3_
__ZNSt3__16vectorIiNS_9allocatorIiEEEaSEOS3_: ## @_ZNSt3__16vectorIiNS_9allocatorIiEEEaSEOS3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE13__move_assignERS3_NS_17integral_constantIbLb1EEE
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE9push_backEOd
__ZNSt3__16vectorIdNS_9allocatorIdEEE9push_backEOd: ## @_ZNSt3__16vectorIdNS_9allocatorIdEEE9push_backEOd
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	8(%rdi), %r15
	callq	__ZNSt3__113__vector_baseIdNS_9allocatorIdEEE9__end_capEv
	cmpq	(%rax), %r15
	jae	LBB237_2
## %bb.1:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE22__construct_one_at_endIJdEEEvDpOT_
	jmp	LBB237_3
LBB237_2:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE21__push_back_slow_pathIdEEvOT_
LBB237_3:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4                               ## -- Begin function _Z10getAverageIdEdRKNSt3__16vectorIT_NS0_9allocatorIS2_EEEE
LCPI238_0:
	.long	1127219200                      ## 0x43300000
	.long	1160773632                      ## 0x45300000
	.long	0                               ## 0x0
	.long	0                               ## 0x0
LCPI238_1:
	.quad	0x4330000000000000              ## double 4503599627370496
	.quad	0x4530000000000000              ## double 1.9342813113834067E+25
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z10getAverageIdEdRKNSt3__16vectorIT_NS0_9allocatorIS2_EEEE
	.weak_def_can_be_hidden	__Z10getAverageIdEdRKNSt3__16vectorIT_NS0_9allocatorIS2_EEEE
	.p2align	4, 0x90
__Z10getAverageIdEdRKNSt3__16vectorIT_NS0_9allocatorIS2_EEEE: ## @_Z10getAverageIdEdRKNSt3__16vectorIT_NS0_9allocatorIS2_EEEE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, %rbx
	callq	__ZNKSt3__16vectorIdNS_9allocatorIdEEE5emptyEv
	xorpd	%xmm0, %xmm0
	testb	%al, %al
	jne	LBB238_2
## %bb.1:
	movq	%rbx, %rdi
	callq	__ZNKSt3__16vectorIdNS_9allocatorIdEEE5beginEv
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	__ZNKSt3__16vectorIdNS_9allocatorIdEEE3endEv
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__1L10accumulateINS_11__wrap_iterIPKdEEdEET0_T_S6_S5_
	movsd	%xmm0, -24(%rbp)                ## 8-byte Spill
	movq	%rbx, %rdi
	callq	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeEv
	movq	%rax, %xmm0
	punpckldq	LCPI238_0(%rip), %xmm0  ## xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	LCPI238_1(%rip), %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1                    ## xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movsd	-24(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
LBB238_2:
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4                               ## -- Begin function _Z6getStdIdEdRKNSt3__16vectorIT_NS0_9allocatorIS2_EEEE
LCPI239_0:
	.long	1127219200                      ## 0x43300000
	.long	1160773632                      ## 0x45300000
	.long	0                               ## 0x0
	.long	0                               ## 0x0
LCPI239_1:
	.quad	0x4330000000000000              ## double 4503599627370496
	.quad	0x4530000000000000              ## double 1.9342813113834067E+25
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z6getStdIdEdRKNSt3__16vectorIT_NS0_9allocatorIS2_EEEE
	.weak_def_can_be_hidden	__Z6getStdIdEdRKNSt3__16vectorIT_NS0_9allocatorIS2_EEEE
	.p2align	4, 0x90
__Z6getStdIdEdRKNSt3__16vectorIT_NS0_9allocatorIS2_EEEE: ## @_Z6getStdIdEdRKNSt3__16vectorIT_NS0_9allocatorIS2_EEEE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	callq	__ZNKSt3__16vectorIdNS_9allocatorIdEEE5beginEv
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	__ZNKSt3__16vectorIdNS_9allocatorIdEEE3endEv
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__1L10accumulateINS_11__wrap_iterIPKdEEdEET0_T_S6_S5_
	movsd	%xmm0, -40(%rbp)                ## 8-byte Spill
	movq	%rbx, %rdi
	callq	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeEv
	movq	%rax, %xmm0
	punpckldq	LCPI239_0(%rip), %xmm0  ## xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	LCPI239_1(%rip), %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1                    ## xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)                ## 8-byte Spill
	leaq	-64(%rbp), %r14
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1Em
	movq	%rbx, %rdi
	callq	__ZNKSt3__16vectorIdNS_9allocatorIdEEE5beginEv
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	__ZNKSt3__16vectorIdNS_9allocatorIdEEE3endEv
	movq	%rax, %r12
	movq	%r14, %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE5beginEv
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	movsd	-40(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	callq	__ZNSt3__1L9transformINS_11__wrap_iterIPKdEENS1_IPdEEZ6getStdIdEdRKNS_6vectorIT_NS_9allocatorIS9_EEEEEUldE_EET0_S9_S9_SG_T1_
	movq	%r14, %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE5beginEv
	movq	%rax, %r15
	movq	%r14, %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE3endEv
	movq	%rax, %r12
	movq	%r14, %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE5beginEv
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	__ZNSt3__1L13inner_productINS_11__wrap_iterIPdEES3_dEET1_T_S5_T0_S4_
	movsd	%xmm0, -40(%rbp)                ## 8-byte Spill
	movq	%rbx, %rdi
	callq	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeEv
	movq	%rax, %xmm0
	punpckldq	LCPI239_0(%rip), %xmm0  ## xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	LCPI239_1(%rip), %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1                    ## xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	sqrtsd	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)                ## 8-byte Spill
	movq	%r14, %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEED1Ev
	movsd	-40(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEE5closeEv
__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEE5closeEv: ## @_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEE5closeEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	addq	$8, %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5closeEv
	testq	%rax, %rax
	jne	LBB240_2
## %bb.1:
	movq	(%rbx), %rax
	addq	-24(%rax), %rbx
	movq	%rbx, %rdi
	movl	$4, %esi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj
LBB240_2:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev ## -- Begin function _ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.p2align	4, 0x90
__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev: ## @_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movq	__ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rsi
	callq	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED2Ev
	addq	$416, %rbx                      ## imm = 0x1A0
	movq	%rbx, %rdi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN11ProbabilityD1Ev           ## -- Begin function _ZN11ProbabilityD1Ev
	.weak_def_can_be_hidden	__ZN11ProbabilityD1Ev
	.p2align	4, 0x90
__ZN11ProbabilityD1Ev:                  ## @_ZN11ProbabilityD1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZN11ProbabilityD2Ev
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN13ConfigurationD1Ev         ## -- Begin function _ZN13ConfigurationD1Ev
	.weak_def_can_be_hidden	__ZN13ConfigurationD1Ev
	.p2align	4, 0x90
__ZN13ConfigurationD1Ev:                ## @_ZN13ConfigurationD1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZN13ConfigurationD2Ev
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEEC2Ev
__ZNSt3__16vectorIdNS_9allocatorIdEEEC2Ev: ## @_ZNSt3__16vectorIdNS_9allocatorIdEEEC2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__113__vector_baseIdNS_9allocatorIdEEEC2Ev
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN13ConfigurationC2Eddddddiid ## -- Begin function _ZN13ConfigurationC2Eddddddiid
	.weak_def_can_be_hidden	__ZN13ConfigurationC2Eddddddiid
	.p2align	4, 0x90
__ZN13ConfigurationC2Eddddddiid:        ## @_ZN13ConfigurationC2Eddddddiid
Lfunc_begin18:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception18
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movsd	%xmm6, -128(%rbp)               ## 8-byte Spill
	movl	%edx, %ebx
	movl	%esi, %r12d
	movsd	%xmm5, -120(%rbp)               ## 8-byte Spill
	movsd	%xmm4, -112(%rbp)               ## 8-byte Spill
	movsd	%xmm3, -104(%rbp)               ## 8-byte Spill
	movsd	%xmm2, -96(%rbp)                ## 8-byte Spill
	movsd	%xmm1, -88(%rbp)                ## 8-byte Spill
	movsd	%xmm0, -80(%rbp)                ## 8-byte Spill
	movq	%rdi, %r13
	leaq	64(%rdi), %r14
	movq	%r14, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1Ev
	leaq	88(%r13), %r15
	movq	%r15, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1Ev
	movsd	-80(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movsd	%xmm0, 16(%r13)
	movsd	-88(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movsd	%xmm0, 24(%r13)
	movsd	-96(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movsd	%xmm0, 32(%r13)
	movsd	-104(%rbp), %xmm0               ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movsd	%xmm0, 40(%r13)
	movsd	-112(%rbp), %xmm0               ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movsd	%xmm0, 48(%r13)
	movsd	-120(%rbp), %xmm0               ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movsd	%xmm0, 56(%r13)
	movl	%r12d, (%r13)
	movl	%ebx, 4(%r13)
	movsd	-128(%rbp), %xmm0               ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movsd	%xmm0, 8(%r13)
	imull	%r12d, %ebx
	leaq	-72(%rbp), %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1Ev
	movl	$0, -44(%rbp)
	testl	%ebx, %ebx
	jle	LBB245_4
## %bb.1:
	leaq	-72(%rbp), %r12
	leaq	-44(%rbp), %r13
	.p2align	4, 0x90
LBB245_2:                               ## =>This Inner Loop Header: Depth=1
Ltmp293:
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backERKi
Ltmp294:
## %bb.3:                               ##   in Loop: Header=BB245_2 Depth=1
	movl	-44(%rbp), %eax
	incl	%eax
	movl	%eax, -44(%rbp)
	cmpl	%ebx, %eax
	jl	LBB245_2
LBB245_4:
	leaq	-72(%rbp), %r12
	movq	%r12, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE5beginEv
	movq	%rax, %rbx
	movq	%r12, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE3endEv
Ltmp296:
	leaq	_rng(%rip), %rdx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__17shuffleINS_11__wrap_iterIPiEERNS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEvT_S7_OT0_
Ltmp297:
## %bb.5:
	leaq	-72(%rbp), %rdi
	callq	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv
	testq	%rax, %rax
	je	LBB245_9
## %bb.6:
	xorl	%ebx, %ebx
	leaq	-72(%rbp), %r12
	leaq	-44(%rbp), %r13
	.p2align	4, 0x90
LBB245_7:                               ## =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEixEm
	movl	(%rax), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	andl	$2147483646, %ecx               ## imm = 0x7FFFFFFE
	subl	%ecx, %eax
	leal	-1(%rax,%rax), %eax
	movl	%eax, -44(%rbp)
Ltmp299:
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backEOi
Ltmp300:
## %bb.8:                               ##   in Loop: Header=BB245_7 Depth=1
	incq	%rbx
	movq	%r12, %rdi
	callq	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv
	cmpq	%rbx, %rax
	ja	LBB245_7
LBB245_9:
	movl	$20, %ebx
	leaq	-44(%rbp), %r12
	.p2align	4, 0x90
LBB245_10:                              ## =>This Inner Loop Header: Depth=1
	movl	$-1, -44(%rbp)
Ltmp302:
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backEOi
Ltmp303:
## %bb.11:                              ##   in Loop: Header=BB245_10 Depth=1
	decl	%ebx
	jne	LBB245_10
## %bb.12:
	leaq	-72(%rbp), %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB245_14:
Ltmp298:
	jmp	LBB245_17
LBB245_15:
Ltmp301:
	jmp	LBB245_17
LBB245_13:
Ltmp295:
	jmp	LBB245_17
LBB245_16:
Ltmp304:
LBB245_17:
	movq	%rax, %rbx
	leaq	-72(%rbp), %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev
	movq	%r15, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev
	movq	%r14, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end18:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table245:
Lexception18:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end18-Lcst_begin18
Lcst_begin18:
	.uleb128 Ltmp293-Lfunc_begin18          ## >> Call Site 1 <<
	.uleb128 Ltmp294-Ltmp293                ##   Call between Ltmp293 and Ltmp294
	.uleb128 Ltmp295-Lfunc_begin18          ##     jumps to Ltmp295
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp296-Lfunc_begin18          ## >> Call Site 2 <<
	.uleb128 Ltmp297-Ltmp296                ##   Call between Ltmp296 and Ltmp297
	.uleb128 Ltmp298-Lfunc_begin18          ##     jumps to Ltmp298
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp299-Lfunc_begin18          ## >> Call Site 3 <<
	.uleb128 Ltmp300-Ltmp299                ##   Call between Ltmp299 and Ltmp300
	.uleb128 Ltmp301-Lfunc_begin18          ##     jumps to Ltmp301
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp302-Lfunc_begin18          ## >> Call Site 4 <<
	.uleb128 Ltmp303-Ltmp302                ##   Call between Ltmp302 and Ltmp303
	.uleb128 Ltmp304-Lfunc_begin18          ##     jumps to Ltmp304
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp303-Lfunc_begin18          ## >> Call Site 5 <<
	.uleb128 Lfunc_end18-Ltmp303            ##   Call between Ltmp303 and Lfunc_end18
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end18:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backERKi
__ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backERKi: ## @_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backERKi
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	8(%rdi), %r15
	callq	__ZNSt3__113__vector_baseIiNS_9allocatorIiEEE9__end_capEv
	cmpq	(%rax), %r15
	je	LBB246_2
## %bb.1:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE22__construct_one_at_endIJRKiEEEvDpOT_
	jmp	LBB246_3
LBB246_2:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE21__push_back_slow_pathIRKiEEvOT_
LBB246_3:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__17shuffleINS_11__wrap_iterIPiEERNS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEvT_S7_OT0_ ## -- Begin function _ZNSt3__17shuffleINS_11__wrap_iterIPiEERNS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEvT_S7_OT0_
	.weak_def_can_be_hidden	__ZNSt3__17shuffleINS_11__wrap_iterIPiEERNS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEvT_S7_OT0_
	.p2align	4, 0x90
__ZNSt3__17shuffleINS_11__wrap_iterIPiEERNS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEvT_S7_OT0_: ## @_ZNSt3__17shuffleINS_11__wrap_iterIPiEERNS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEvT_S7_OT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, -64(%rbp)                 ## 8-byte Spill
	movq	%rdi, -56(%rbp)
	movq	%rsi, -48(%rbp)
	leaq	-48(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	callq	__ZNSt3__1miIPiS1_EEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_11__wrap_iterIT_EERKNS3_IT0_EE
	cmpq	$2, %rax
	jl	LBB247_6
## %bb.1:
	movq	%rax, %rbx
	leaq	-96(%rbp), %rdi
	callq	__ZNSt3__124uniform_int_distributionIlEC1Ev
	leaq	-48(%rbp), %r15
	movq	%r15, %rdi
	callq	__ZNSt3__111__wrap_iterIPiEmmEv
	leaq	-56(%rbp), %rdi
	movq	%r15, %rsi
	callq	__ZNSt3__1ltIPiS1_EEbRKNS_11__wrap_iterIT_EERKNS2_IT0_EE
	testb	%al, %al
	je	LBB247_6
## %bb.2:
	decq	%rbx
	leaq	-80(%rbp), %r15
	leaq	-56(%rbp), %r13
	jmp	LBB247_3
	.p2align	4, 0x90
LBB247_5:                               ##   in Loop: Header=BB247_3 Depth=1
	movq	%r13, %rdi
	callq	__ZNSt3__111__wrap_iterIPiEppEv
	movq	%r13, %rdi
	leaq	-48(%rbp), %rsi
	callq	__ZNSt3__1ltIPiS1_EEbRKNS_11__wrap_iterIT_EERKNS2_IT0_EE
	decq	%rbx
	testb	%al, %al
	je	LBB247_6
LBB247_3:                               ## =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	__ZNSt3__124uniform_int_distributionIlE10param_typeC1Ell
	leaq	-96(%rbp), %rdi
	movq	-64(%rbp), %rsi                 ## 8-byte Reload
	movq	%r15, %rdx
	callq	__ZNSt3__124uniform_int_distributionIlEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEElRT_RKNS1_10param_typeE
	testq	%rax, %rax
	je	LBB247_5
## %bb.4:                               ##   in Loop: Header=BB247_3 Depth=1
	movq	%rax, %r12
	movq	%r13, %rdi
	callq	__ZNKSt3__111__wrap_iterIPiEdeEv
	movq	%rax, %r14
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	__ZNKSt3__111__wrap_iterIPiEplEl
	movq	%rax, -80(%rbp)
	movq	%r15, %rdi
	callq	__ZNKSt3__111__wrap_iterIPiEdeEv
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__1L4swapIiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_
	jmp	LBB247_5
LBB247_6:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backEOi
__ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backEOi: ## @_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backEOi
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	8(%rdi), %r15
	callq	__ZNSt3__113__vector_baseIiNS_9allocatorIiEEE9__end_capEv
	cmpq	(%rax), %r15
	jae	LBB248_2
## %bb.1:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE22__construct_one_at_endIJiEEEvDpOT_
	jmp	LBB248_3
LBB248_2:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE21__push_back_slow_pathIiEEvOT_
LBB248_3:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE22__construct_one_at_endIJRKiEEEvDpOT_
__ZNSt3__16vectorIiNS_9allocatorIiEEE22__construct_one_at_endIJRKiEEEvDpOT_: ## @_ZNSt3__16vectorIiNS_9allocatorIiEEE22__construct_one_at_endIJRKiEEEvDpOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %rbx
	movq	%rdi, %rsi
	leaq	-40(%rbp), %r14
	movl	$1, %edx
	movq	%r14, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1ERS3_m
	movq	-32(%rbp), %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructIiJRKiEvEEvRS2_PT_DpOT0_
	addq	$4, -32(%rbp)
	movq	%r14, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1Ev
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE21__push_back_slow_pathIRKiEEvOT_
__ZNSt3__16vectorIiNS_9allocatorIiEEE21__push_back_slow_pathIRKiEEvOT_: ## @_ZNSt3__16vectorIiNS_9allocatorIiEEE21__push_back_slow_pathIRKiEEvOT_
Lfunc_begin19:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception19
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	__ZNSt3__113__vector_baseIiNS_9allocatorIiEEE7__allocEv
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv
	leaq	1(%rax), %rsi
	movq	%rbx, %rdi
	callq	__ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendEm
	movq	%rax, %r12
	movq	%rbx, %rdi
	callq	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv
	leaq	-80(%rbp), %r13
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	movq	%r15, %rcx
	callq	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC1EmmS3_
	movq	-64(%rbp), %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructIiJRKiEvEEvRS2_PT_DpOT0_
	addq	$4, -64(%rbp)
Ltmp305:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE26__swap_out_circular_bufferERNS_14__split_bufferIiRS2_EE
Ltmp306:
## %bb.1:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB250_2:
Ltmp307:
	movq	%rax, %rbx
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end19:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table250:
Lexception19:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end19-Lcst_begin19
Lcst_begin19:
	.uleb128 Lfunc_begin19-Lfunc_begin19    ## >> Call Site 1 <<
	.uleb128 Ltmp305-Lfunc_begin19          ##   Call between Lfunc_begin19 and Ltmp305
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp305-Lfunc_begin19          ## >> Call Site 2 <<
	.uleb128 Ltmp306-Ltmp305                ##   Call between Ltmp305 and Ltmp306
	.uleb128 Ltmp307-Lfunc_begin19          ##     jumps to Ltmp307
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp306-Lfunc_begin19          ## >> Call Site 3 <<
	.uleb128 Lfunc_end19-Ltmp306            ##   Call between Ltmp306 and Lfunc_end19
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end19:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructIiJRKiEvEEvRS2_PT_DpOT0_
__ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructIiJRKiEvEEvRS2_PT_DpOT0_: ## @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructIiJRKiEvEEvRS2_PT_DpOT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__19allocatorIiE9constructIiJRKiEEEvPT_DpOT0_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__19allocatorIiE9constructIiJRKiEEEvPT_DpOT0_
__ZNSt3__19allocatorIiE9constructIiJRKiEEEvPT_DpOT0_: ## @_ZNSt3__19allocatorIiE9constructIiJRKiEEEvPT_DpOT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	(%rsi), %eax
	movl	%eax, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC1EmmS3_ ## -- Begin function _ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC1EmmS3_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC1EmmS3_
	.p2align	4, 0x90
__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC1EmmS3_: ## @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC1EmmS3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC2EmmS3_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE26__swap_out_circular_bufferERNS_14__split_bufferIiRS2_EE ## -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE26__swap_out_circular_bufferERNS_14__split_bufferIiRS2_EE
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEE26__swap_out_circular_bufferERNS_14__split_bufferIiRS2_EE
	.p2align	4, 0x90
__ZNSt3__16vectorIiNS_9allocatorIiEEE26__swap_out_circular_bufferERNS_14__split_bufferIiRS2_EE: ## @_ZNSt3__16vectorIiNS_9allocatorIiEEE26__swap_out_circular_bufferERNS_14__split_bufferIiRS2_EE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	8(%rdi), %r15
	movq	(%rdi), %rdi
	movq	8(%rbx), %rsi
	leaq	8(%r14), %r12
	movq	%r12, %rdx
	callq	__ZNSt3__1L46__construct_backward_with_exception_guaranteesINS_9allocatorIiEEivEEvRT_PT0_S6_RS6_
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	__ZNSt3__1L4swapIPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	leaq	16(%r14), %rsi
	movq	%r15, %rdi
	callq	__ZNSt3__1L4swapIPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	movq	%rbx, %rdi
	callq	__ZNSt3__113__vector_baseIiNS_9allocatorIiEEE9__end_capEv
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE9__end_capEv
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__1L4swapIPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	movq	8(%r14), %rax
	movq	%rax, (%r14)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev ## -- Begin function _ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev
	.p2align	4, 0x90
__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev: ## @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED2Ev
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC2EmmS3_ ## -- Begin function _ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC2EmmS3_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC2EmmS3_
	.p2align	4, 0x90
__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC2EmmS3_: ## @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC2EmmS3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	addq	$24, %rdi
	movq	%rcx, %rsi
	callq	__ZNSt3__117__compressed_pairIPiRNS_9allocatorIiEEEC1IDnS4_EEOT_OT0_
	testq	%r14, %r14
	je	LBB256_1
## %bb.2:
	movq	%r14, %rdi
	callq	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE8allocateERS2_m
	jmp	LBB256_3
LBB256_1:
	xorl	%eax, %eax
LBB256_3:
	movq	%rax, (%rbx)
	leaq	(%rax,%r15,4), %rcx
	movq	%rcx, 16(%rbx)
	movq	%rcx, 8(%rbx)
	leaq	(%rax,%r14,4), %r14
	movq	%rbx, %rdi
	callq	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE9__end_capEv
	movq	%r14, (%rax)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIPiRNS_9allocatorIiEEEC1IDnS4_EEOT_OT0_
__ZNSt3__117__compressed_pairIPiRNS_9allocatorIiEEEC1IDnS4_EEOT_OT0_: ## @_ZNSt3__117__compressed_pairIPiRNS_9allocatorIiEEEC1IDnS4_EEOT_OT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__117__compressed_pairIPiRNS_9allocatorIiEEEC2IDnS4_EEOT_OT0_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE9__end_capEv
__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE9__end_capEv: ## @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE9__end_capEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	addq	$24, %rdi
	callq	__ZNSt3__117__compressed_pairIPiRNS_9allocatorIiEEE5firstEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIPiRNS_9allocatorIiEEEC2IDnS4_EEOT_OT0_
__ZNSt3__117__compressed_pairIPiRNS_9allocatorIiEEEC2IDnS4_EEOT_OT0_: ## @_ZNSt3__117__compressed_pairIPiRNS_9allocatorIiEEEC2IDnS4_EEOT_OT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	__ZNSt3__122__compressed_pair_elemIPiLi0ELb0EEC2IDnvEEOT_
	addq	$8, %rbx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIiEELi1ELb0EEC2IS3_vEEOT_
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__122__compressed_pair_elemIRNS_9allocatorIiEELi1ELb0EEC2IS3_vEEOT_
__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIiEELi1ELb0EEC2IS3_vEEOT_: ## @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIiEELi1ELb0EEC2IS3_vEEOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rsi, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIPiRNS_9allocatorIiEEE5firstEv
__ZNSt3__117__compressed_pairIPiRNS_9allocatorIiEEE5firstEv: ## @_ZNSt3__117__compressed_pairIPiRNS_9allocatorIiEEE5firstEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L46__construct_backward_with_exception_guaranteesINS_9allocatorIiEEivEEvRT_PT0_S6_RS6_
__ZNSt3__1L46__construct_backward_with_exception_guaranteesINS_9allocatorIiEEivEEvRT_PT0_S6_RS6_: ## @_ZNSt3__1L46__construct_backward_with_exception_guaranteesINS_9allocatorIiEEivEEvRT_PT0_S6_RS6_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rsi, %rax
	movq	%rdi, %rsi
	subq	%rdi, %rax
	movq	(%rdx), %rdi
	subq	%rax, %rdi
	movq	%rdi, (%rdx)
	testq	%rax, %rax
	jle	LBB262_2
## %bb.1:
	movq	%rax, %rdx
	callq	_memcpy
LBB262_2:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L4swapIPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
__ZNSt3__1L4swapIPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_: ## @_ZNSt3__1L4swapIPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	movq	(%rsi), %rcx
	movq	%rcx, (%rdi)
	movq	%rax, (%rsi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED2Ev ## -- Begin function _ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED2Ev
	.p2align	4, 0x90
__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED2Ev: ## @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, %rbx
	callq	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearEv
	movq	(%rbx), %r14
	testq	%r14, %r14
	je	LBB264_2
## %bb.1:
	movq	%rbx, %rdi
	callq	__ZNKSt3__114__split_bufferIiRNS_9allocatorIiEEE8capacityEv
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateERS2_Pim
LBB264_2:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearEv
__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearEv: ## @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	8(%rdi), %rsi
	callq	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE17__destruct_at_endEPi
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__114__split_bufferIiRNS_9allocatorIiEEE8capacityEv
__ZNKSt3__114__split_bufferIiRNS_9allocatorIiEEE8capacityEv: ## @_ZNKSt3__114__split_bufferIiRNS_9allocatorIiEEE8capacityEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	callq	__ZNKSt3__114__split_bufferIiRNS_9allocatorIiEEE9__end_capEv
	movq	(%rax), %rax
	subq	(%rbx), %rax
	sarq	$2, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE17__destruct_at_endEPi
__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE17__destruct_at_endEPi: ## @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE17__destruct_at_endEPi
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE17__destruct_at_endEPiNS_17integral_constantIbLb0EEE
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE17__destruct_at_endEPiNS_17integral_constantIbLb0EEE
__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE17__destruct_at_endEPiNS_17integral_constantIbLb0EEE: ## @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE17__destruct_at_endEPiNS_17integral_constantIbLb0EEE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	16(%rdi), %rax
	movq	%rax, %rcx
	subq	%rsi, %rcx
	je	LBB268_2
## %bb.1:
	addq	$-4, %rcx
	shrq	$2, %rcx
	notq	%rcx
	leaq	(%rax,%rcx,4), %rax
	movq	%rax, 16(%rdi)
LBB268_2:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__114__split_bufferIiRNS_9allocatorIiEEE9__end_capEv
__ZNKSt3__114__split_bufferIiRNS_9allocatorIiEEE9__end_capEv: ## @_ZNKSt3__114__split_bufferIiRNS_9allocatorIiEEE9__end_capEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	addq	$24, %rdi
	callq	__ZNKSt3__117__compressed_pairIPiRNS_9allocatorIiEEE5firstEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__117__compressed_pairIPiRNS_9allocatorIiEEE5firstEv
__ZNKSt3__117__compressed_pairIPiRNS_9allocatorIiEEE5firstEv: ## @_ZNKSt3__117__compressed_pairIPiRNS_9allocatorIiEEE5firstEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNKSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1miIPiS1_EEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_11__wrap_iterIT_EERKNS3_IT0_EE
__ZNSt3__1miIPiS1_EEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_11__wrap_iterIT_EERKNS3_IT0_EE: ## @_ZNSt3__1miIPiS1_EEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_11__wrap_iterIT_EERKNS3_IT0_EE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	callq	__ZNKSt3__111__wrap_iterIPiE4baseEv
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	__ZNKSt3__111__wrap_iterIPiE4baseEv
	subq	%rax, %rbx
	sarq	$2, %rbx
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__124uniform_int_distributionIlEC1Ev ## -- Begin function _ZNSt3__124uniform_int_distributionIlEC1Ev
	.weak_def_can_be_hidden	__ZNSt3__124uniform_int_distributionIlEC1Ev
	.p2align	4, 0x90
__ZNSt3__124uniform_int_distributionIlEC1Ev: ## @_ZNSt3__124uniform_int_distributionIlEC1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movabsq	$9223372036854775807, %rdx      ## imm = 0x7FFFFFFFFFFFFFFF
	xorl	%esi, %esi
	callq	__ZNSt3__124uniform_int_distributionIlEC1Ell
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__111__wrap_iterIPiEmmEv
__ZNSt3__111__wrap_iterIPiEmmEv:        ## @_ZNSt3__111__wrap_iterIPiEmmEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	addq	$-4, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1ltIPiS1_EEbRKNS_11__wrap_iterIT_EERKNS2_IT0_EE
__ZNSt3__1ltIPiS1_EEbRKNS_11__wrap_iterIT_EERKNS2_IT0_EE: ## @_ZNSt3__1ltIPiS1_EEbRKNS_11__wrap_iterIT_EERKNS2_IT0_EE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	callq	__ZNKSt3__111__wrap_iterIPiE4baseEv
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	__ZNKSt3__111__wrap_iterIPiE4baseEv
	cmpq	%rax, %rbx
	setb	%al
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__124uniform_int_distributionIlEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEElRT_RKNS1_10param_typeE ## -- Begin function _ZNSt3__124uniform_int_distributionIlEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEElRT_RKNS1_10param_typeE
	.weak_def_can_be_hidden	__ZNSt3__124uniform_int_distributionIlEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEElRT_RKNS1_10param_typeE
	.p2align	4, 0x90
__ZNSt3__124uniform_int_distributionIlEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEElRT_RKNS1_10param_typeE: ## @_ZNSt3__124uniform_int_distributionIlEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEElRT_RKNS1_10param_typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdx, %rdi
	callq	__ZNKSt3__124uniform_int_distributionIlE10param_type1bEv
	movq	%rax, %r13
	movq	%r14, %rdi
	callq	__ZNKSt3__124uniform_int_distributionIlE10param_type1aEv
	subq	%rax, %r13
	je	LBB275_1
## %bb.2:
	incq	%r13
	je	LBB275_3
## %bb.4:
	movq	%r13, %rdi
	callq	__ZNSt3__1L12__libcpp_clzEy
	cltq
	leal	1(%rax), %ecx
	movq	%r13, %rdx
                                        ## kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rdx
	cmpq	$1, %rdx
	sbbq	%rdx, %rdx
	subq	%rax, %rdx
	addq	$64, %rdx
	leaq	-104(%rbp), %r12
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEyEC1ERS2_m
	.p2align	4, 0x90
LBB275_5:                               ## =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	callq	__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEyEclEv
	cmpq	%r13, %rax
	jae	LBB275_5
## %bb.6:
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	__ZNKSt3__124uniform_int_distributionIlE10param_type1aEv
	addq	%rbx, %rax
	jmp	LBB275_7
LBB275_1:
	movq	%r14, %rdi
	callq	__ZNKSt3__124uniform_int_distributionIlE10param_type1aEv
	jmp	LBB275_7
LBB275_3:
	leaq	-104(%rbp), %rbx
	movl	$64, %edx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEyEC1ERS2_m
	movq	%rbx, %rdi
	callq	__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEyEclEv
LBB275_7:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__124uniform_int_distributionIlE10param_typeC1Ell ## -- Begin function _ZNSt3__124uniform_int_distributionIlE10param_typeC1Ell
	.weak_def_can_be_hidden	__ZNSt3__124uniform_int_distributionIlE10param_typeC1Ell
	.p2align	4, 0x90
__ZNSt3__124uniform_int_distributionIlE10param_typeC1Ell: ## @_ZNSt3__124uniform_int_distributionIlE10param_typeC1Ell
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__124uniform_int_distributionIlE10param_typeC2Ell
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L4swapIiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_
__ZNSt3__1L4swapIiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_: ## @_ZNSt3__1L4swapIiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	(%rdi), %eax
	movl	(%rsi), %ecx
	movl	%ecx, (%rdi)
	movl	%eax, (%rsi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__111__wrap_iterIPiEdeEv
__ZNKSt3__111__wrap_iterIPiEdeEv:       ## @_ZNKSt3__111__wrap_iterIPiEdeEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__111__wrap_iterIPiEplEl
__ZNKSt3__111__wrap_iterIPiEplEl:       ## @_ZNKSt3__111__wrap_iterIPiEplEl
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	(%rdi), %rax
	movq	%rax, -8(%rbp)
	leaq	-8(%rbp), %rdi
	callq	__ZNSt3__111__wrap_iterIPiEpLEl
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__111__wrap_iterIPiEppEv
__ZNSt3__111__wrap_iterIPiEppEv:        ## @_ZNSt3__111__wrap_iterIPiEppEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	addq	$4, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__124uniform_int_distributionIlEC1Ell ## -- Begin function _ZNSt3__124uniform_int_distributionIlEC1Ell
	.weak_def_can_be_hidden	__ZNSt3__124uniform_int_distributionIlEC1Ell
	.p2align	4, 0x90
__ZNSt3__124uniform_int_distributionIlEC1Ell: ## @_ZNSt3__124uniform_int_distributionIlEC1Ell
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__124uniform_int_distributionIlEC2Ell
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__124uniform_int_distributionIlEC2Ell ## -- Begin function _ZNSt3__124uniform_int_distributionIlEC2Ell
	.weak_def_can_be_hidden	__ZNSt3__124uniform_int_distributionIlEC2Ell
	.p2align	4, 0x90
__ZNSt3__124uniform_int_distributionIlEC2Ell: ## @_ZNSt3__124uniform_int_distributionIlEC2Ell
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__124uniform_int_distributionIlE10param_typeC1Ell
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNKSt3__124uniform_int_distributionIlE10param_type1bEv ## -- Begin function _ZNKSt3__124uniform_int_distributionIlE10param_type1bEv
	.weak_def_can_be_hidden	__ZNKSt3__124uniform_int_distributionIlE10param_type1bEv
	.p2align	4, 0x90
__ZNKSt3__124uniform_int_distributionIlE10param_type1bEv: ## @_ZNKSt3__124uniform_int_distributionIlE10param_type1bEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	8(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNKSt3__124uniform_int_distributionIlE10param_type1aEv ## -- Begin function _ZNKSt3__124uniform_int_distributionIlE10param_type1aEv
	.weak_def_can_be_hidden	__ZNKSt3__124uniform_int_distributionIlE10param_type1aEv
	.p2align	4, 0x90
__ZNKSt3__124uniform_int_distributionIlE10param_type1aEv: ## @_ZNKSt3__124uniform_int_distributionIlE10param_type1aEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEyEC1ERS2_m ## -- Begin function _ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEyEC1ERS2_m
	.weak_def_can_be_hidden	__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEyEC1ERS2_m
	.p2align	4, 0x90
__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEyEC1ERS2_m: ## @_ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEyEC1ERS2_m
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEyEC2ERS2_m
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEyEclEv ## -- Begin function _ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEyEclEv
	.weak_def_can_be_hidden	__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEyEclEv
	.p2align	4, 0x90
__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEyEclEv: ## @_ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEyEclEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEyE6__evalENS_17integral_constantIbLb1EEE
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L12__libcpp_clzEy
__ZNSt3__1L12__libcpp_clzEy:            ## @_ZNSt3__1L12__libcpp_clzEy
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	bsrq	%rdi, %rax
	xorl	$63, %eax
                                        ## kill: def $eax killed $eax killed $rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEyEC2ERS2_m ## -- Begin function _ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEyEC2ERS2_m
	.weak_def_can_be_hidden	__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEyEC2ERS2_m
	.p2align	4, 0x90
__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEyEC2ERS2_m: ## @_ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEyEC2ERS2_m
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdx, %r8
	movabsq	$4294967296, %r9                ## imm = 0x100000000
	movq	%rsi, (%rdi)
	movq	%rdx, %rsi
	shrq	$5, %rsi
	movl	%r8d, %eax
	andl	$31, %eax
	cmpq	$1, %rax
	sbbq	$-1, %rsi
	movq	%rdx, 8(%rdi)
	movq	%rsi, 24(%rdi)
	xorl	%r10d, %r10d
	movq	%rdx, %rax
	xorl	%edx, %edx
	divq	%rsi
	movq	%rax, %rcx
	movq	%r9, %rax
	shrq	%cl, %rax
	movq	%rcx, 16(%rdi)
	shlq	%cl, %rax
	cmpq	$64, %rcx
	cmovaeq	%r10, %rax
	movq	%rax, 40(%rdi)
	movq	%r9, %rcx
	subq	%rax, %rcx
	xorl	%edx, %edx
	divq	%rsi
	cmpq	%rax, %rcx
	jbe	LBB288_2
## %bb.1:
	incq	%rsi
	movq	%rsi, 24(%rdi)
	xorl	%r11d, %r11d
	movq	%r8, %rax
	xorl	%edx, %edx
	divq	%rsi
	movq	%rax, %rcx
	movq	%r9, %rax
	shrq	%cl, %rax
	movq	%rcx, 16(%rdi)
	shlq	%cl, %rax
	cmpq	$64, %rcx
	cmovaeq	%r11, %rax
	movq	%rax, 40(%rdi)
LBB288_2:
	movq	16(%rdi), %r11
	movq	24(%rdi), %rsi
	movq	%r8, %rax
	xorl	%edx, %edx
	divq	%rsi
	subq	%rdx, %rsi
	leal	1(%r11), %ecx
	shrq	%cl, %r9
	movq	%rsi, 32(%rdi)
                                        ## kill: def $cl killed $cl killed $ecx
	shlq	%cl, %r9
	cmpq	$63, %r11
	cmovaeq	%r10, %r9
	movl	%r11d, %ecx
	negb	%cl
	movl	$-1, %eax
	shrl	%cl, %eax
	movq	%r9, 48(%rdi)
	testq	%r11, %r11
	cmovel	%r10d, %eax
	movl	$-1, %edx
	movl	%eax, 56(%rdi)
	movb	$31, %cl
	subb	%r11b, %cl
	movl	$-1, %eax
	shrl	%cl, %eax
	cmpq	$31, %r11
	cmovael	%edx, %eax
	movl	%eax, 60(%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEyE6__evalENS_17integral_constantIbLb1EEE ## -- Begin function _ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEyE6__evalENS_17integral_constantIbLb1EEE
	.weak_def_can_be_hidden	__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEyE6__evalENS_17integral_constantIbLb1EEE
	.p2align	4, 0x90
__ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEyE6__evalENS_17integral_constantIbLb1EEE: ## @_ZNSt3__125__independent_bits_engineINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEyE6__evalENS_17integral_constantIbLb1EEE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %r14
	movq	32(%rdi), %r15
	testq	%r15, %r15
	je	LBB289_1
## %bb.7:
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	.p2align	4, 0x90
LBB289_8:                               ## =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	callq	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	movl	%eax, %ebx
	movl	%eax, %eax
	cmpq	%rax, 40(%r14)
	jbe	LBB289_8
## %bb.9:                               ##   in Loop: Header=BB289_8 Depth=1
	movq	16(%r14), %rcx
	shlq	%cl, %r13
	cmpq	$64, %rcx
	movl	$0, %eax
	cmovbq	%r13, %rax
	andl	56(%r14), %ebx
	movq	32(%r14), %r15
	addq	%rax, %rbx
	incq	%r12
	movq	%rbx, %r13
	cmpq	%r15, %r12
	jb	LBB289_8
## %bb.2:
	cmpq	24(%r14), %r15
	jb	LBB289_3
	jmp	LBB289_6
LBB289_1:
	xorl	%ebx, %ebx
	cmpq	24(%r14), %r15
	jae	LBB289_6
LBB289_3:
	xorl	%r12d, %r12d
	.p2align	4, 0x90
LBB289_4:                               ## =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	callq	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
                                        ## kill: def $eax killed $eax def $rax
	movl	%eax, %ecx
	cmpq	%rcx, 48(%r14)
	jbe	LBB289_4
## %bb.5:                               ##   in Loop: Header=BB289_4 Depth=1
	movq	16(%r14), %rdx
	leal	1(%rdx), %ecx
                                        ## kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rbx
	cmpq	$63, %rdx
	cmovaeq	%r12, %rbx
	andl	60(%r14), %eax
	addq	%rax, %rbx
	incq	%r15
	cmpq	24(%r14), %r15
	jb	LBB289_4
LBB289_6:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv ## -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	.weak_def_can_be_hidden	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	.p2align	4, 0x90
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv: ## @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %r14
	movq	2496(%rdi), %r15
	leaq	1(%r15), %rax
	shrq	$4, %rax
	movabsq	$945986875574848801, %rcx       ## imm = 0xD20D20D20D20D21
	mulq	%rcx
	shrq	%rdx
	imulq	$624, %rdx, %rax                ## imm = 0x270
	negq	%rax
	leaq	1(%r15,%rax), %r12
	movl	$-2147483648, %eax              ## imm = 0x80000000
	andl	(%rdi,%r15,4), %eax
	movl	(%rdi,%r12,4), %ebx
	movl	%ebx, %edi
	andl	$2147483647, %edi               ## imm = 0x7FFFFFFF
	orl	%eax, %edi
	leaq	397(%r15), %rax
	shrq	$4, %rax
	mulq	%rcx
	shrq	%rdx
	imulq	$624, %rdx, %rax                ## imm = 0x270
	negq	%rax
	leaq	397(%r15,%rax), %rax
	movl	(%r14,%rax,4), %r13d
	callq	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftILm1EEENS_9enable_ifIXltT_L_ZNS1_3_DtEEEjE4typeEj
	xorl	%r13d, %eax
	andl	$1, %ebx
	imull	$-1727483681, %ebx, %ebx        ## imm = 0x9908B0DF
	xorl	%eax, %ebx
	movl	%ebx, (%r14,%r15,4)
	movl	%ebx, %edi
	callq	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftILm11EEENS_9enable_ifIXltT_L_ZNS1_3_DtEEEjE4typeEj
	movl	%eax, %r15d
	xorl	%ebx, %r15d
	movq	%r12, 2496(%r14)
	movl	%r15d, %edi
	callq	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftILm7EEENS_9enable_ifIXltT_Lm32EEjE4typeEj
	movl	%eax, %r14d
	andl	$-1658038656, %r14d             ## imm = 0x9D2C5680
	xorl	%r15d, %r14d
	movl	%r14d, %edi
	callq	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftILm15EEENS_9enable_ifIXltT_Lm32EEjE4typeEj
	movl	%eax, %ebx
	andl	$-272236544, %ebx               ## imm = 0xEFC60000
	xorl	%r14d, %ebx
	movl	%ebx, %edi
	callq	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftILm18EEENS_9enable_ifIXltT_L_ZNS1_3_DtEEEjE4typeEj
	xorl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftILm1EEENS_9enable_ifIXltT_L_ZNS1_3_DtEEEjE4typeEj
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftILm1EEENS_9enable_ifIXltT_L_ZNS1_3_DtEEEjE4typeEj: ## @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftILm1EEENS_9enable_ifIXltT_L_ZNS1_3_DtEEEjE4typeEj
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, %eax
	shrl	%eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftILm11EEENS_9enable_ifIXltT_L_ZNS1_3_DtEEEjE4typeEj
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftILm11EEENS_9enable_ifIXltT_L_ZNS1_3_DtEEEjE4typeEj: ## @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftILm11EEENS_9enable_ifIXltT_L_ZNS1_3_DtEEEjE4typeEj
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, %eax
	shrl	$11, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftILm7EEENS_9enable_ifIXltT_Lm32EEjE4typeEj
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftILm7EEENS_9enable_ifIXltT_Lm32EEjE4typeEj: ## @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftILm7EEENS_9enable_ifIXltT_Lm32EEjE4typeEj
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, %eax
	shll	$7, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftILm15EEENS_9enable_ifIXltT_Lm32EEjE4typeEj
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftILm15EEENS_9enable_ifIXltT_Lm32EEjE4typeEj: ## @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__lshiftILm15EEENS_9enable_ifIXltT_Lm32EEjE4typeEj
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, %eax
	shll	$15, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftILm18EEENS_9enable_ifIXltT_L_ZNS1_3_DtEEEjE4typeEj
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftILm18EEENS_9enable_ifIXltT_L_ZNS1_3_DtEEEjE4typeEj: ## @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftILm18EEENS_9enable_ifIXltT_L_ZNS1_3_DtEEEjE4typeEj
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, %eax
	shrl	$18, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__124uniform_int_distributionIlE10param_typeC2Ell ## -- Begin function _ZNSt3__124uniform_int_distributionIlE10param_typeC2Ell
	.weak_def_can_be_hidden	__ZNSt3__124uniform_int_distributionIlE10param_typeC2Ell
	.p2align	4, 0x90
__ZNSt3__124uniform_int_distributionIlE10param_typeC2Ell: ## @_ZNSt3__124uniform_int_distributionIlE10param_typeC2Ell
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__111__wrap_iterIPiEpLEl
__ZNSt3__111__wrap_iterIPiEpLEl:        ## @_ZNSt3__111__wrap_iterIPiEpLEl
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	shlq	$2, %rsi
	addq	%rsi, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE22__construct_one_at_endIJiEEEvDpOT_
__ZNSt3__16vectorIiNS_9allocatorIiEEE22__construct_one_at_endIJiEEEvDpOT_: ## @_ZNSt3__16vectorIiNS_9allocatorIiEEE22__construct_one_at_endIJiEEEvDpOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %rbx
	movq	%rdi, %rsi
	leaq	-40(%rbp), %r14
	movl	$1, %edx
	movq	%r14, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1ERS3_m
	movq	-32(%rbp), %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructIiJiEvEEvRS2_PT_DpOT0_
	addq	$4, -32(%rbp)
	movq	%r14, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1Ev
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE21__push_back_slow_pathIiEEvOT_
__ZNSt3__16vectorIiNS_9allocatorIiEEE21__push_back_slow_pathIiEEvOT_: ## @_ZNSt3__16vectorIiNS_9allocatorIiEEE21__push_back_slow_pathIiEEvOT_
Lfunc_begin20:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception20
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	__ZNSt3__113__vector_baseIiNS_9allocatorIiEEE7__allocEv
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv
	leaq	1(%rax), %rsi
	movq	%rbx, %rdi
	callq	__ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendEm
	movq	%rax, %r12
	movq	%rbx, %rdi
	callq	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv
	leaq	-80(%rbp), %r13
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	movq	%r15, %rcx
	callq	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC1EmmS3_
	movq	-64(%rbp), %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructIiJiEvEEvRS2_PT_DpOT0_
	addq	$4, -64(%rbp)
Ltmp308:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE26__swap_out_circular_bufferERNS_14__split_bufferIiRS2_EE
Ltmp309:
## %bb.1:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB299_2:
Ltmp310:
	movq	%rax, %rbx
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end20:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table299:
Lexception20:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end20-Lcst_begin20
Lcst_begin20:
	.uleb128 Lfunc_begin20-Lfunc_begin20    ## >> Call Site 1 <<
	.uleb128 Ltmp308-Lfunc_begin20          ##   Call between Lfunc_begin20 and Ltmp308
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp308-Lfunc_begin20          ## >> Call Site 2 <<
	.uleb128 Ltmp309-Ltmp308                ##   Call between Ltmp308 and Ltmp309
	.uleb128 Ltmp310-Lfunc_begin20          ##     jumps to Ltmp310
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp309-Lfunc_begin20          ## >> Call Site 3 <<
	.uleb128 Lfunc_end20-Ltmp309            ##   Call between Ltmp309 and Lfunc_end20
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end20:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructIiJiEvEEvRS2_PT_DpOT0_
__ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructIiJiEvEEvRS2_PT_DpOT0_: ## @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructIiJiEvEEvRS2_PT_DpOT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__19allocatorIiE9constructIiJiEEEvPT_DpOT0_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__19allocatorIiE9constructIiJiEEEvPT_DpOT0_
__ZNSt3__19allocatorIiE9constructIiJiEEEvPT_DpOT0_: ## @_ZNSt3__19allocatorIiE9constructIiJiEEEvPT_DpOT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	(%rsi), %eax
	movl	%eax, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN13Configuration9potentialEii ## -- Begin function _ZN13Configuration9potentialEii
	.weak_def_can_be_hidden	__ZN13Configuration9potentialEii
	.p2align	4, 0x90
__ZN13Configuration9potentialEii:       ## @_ZN13Configuration9potentialEii
Lfunc_begin21:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception21
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, %rbx
	movl	(%rdi), %eax
	movl	4(%rdi), %ecx
	movl	%esi, %edi
	movl	%edx, %esi
	movl	%eax, %edx
	callq	__Z12distance_pbciiii
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	LBB302_4
	jnp	LBB302_1
LBB302_4:
	ucomisd	48(%rbx), %xmm0
	ja	LBB302_6
## %bb.5:
	divsd	40(%rbx), %xmm0
	movsd	32(%rbx), %xmm1                 ## xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	callq	__ZL3powIdiENSt3__19_MetaBaseIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueEE13_EnableIfImplINS0_9__promoteIS2_S3_vEEE4typeES2_S3_
	movapd	%xmm0, %xmm1
LBB302_6:
	movapd	%xmm1, %xmm0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB302_1:
	movl	$16, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
Ltmp311:
	leaq	L_.str.21(%rip), %rsi
	movq	%rax, %rdi
	callq	__ZNSt16invalid_argumentC1EPKc
Ltmp312:
## %bb.2:
	movq	__ZTISt16invalid_argument@GOTPCREL(%rip), %rsi
	movq	__ZNSt16invalid_argumentD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
LBB302_3:
Ltmp313:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	___cxa_free_exception
	movq	%r14, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end21:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table302:
Lexception21:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end21-Lcst_begin21
Lcst_begin21:
	.uleb128 Lfunc_begin21-Lfunc_begin21    ## >> Call Site 1 <<
	.uleb128 Ltmp311-Lfunc_begin21          ##   Call between Lfunc_begin21 and Ltmp311
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp311-Lfunc_begin21          ## >> Call Site 2 <<
	.uleb128 Ltmp312-Ltmp311                ##   Call between Ltmp311 and Ltmp312
	.uleb128 Ltmp313-Lfunc_begin21          ##     jumps to Ltmp313
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp312-Lfunc_begin21          ## >> Call Site 3 <<
	.uleb128 Lfunc_end21-Ltmp312            ##   Call between Ltmp312 and Lfunc_end21
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end21:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function _ZL3powIdiENSt3__19_MetaBaseIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueEE13_EnableIfImplINS0_9__promoteIS2_S3_vEEE4typeES2_S3_
LCPI303_0:
	.quad	0x4018000000000000              ## double 6
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90
__ZL3powIdiENSt3__19_MetaBaseIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueEE13_EnableIfImplINS0_9__promoteIS2_S3_vEEE4typeES2_S3_: ## @_ZL3powIdiENSt3__19_MetaBaseIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueEE13_EnableIfImplINS0_9__promoteIS2_S3_vEEE4typeES2_S3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movsd	LCPI303_0(%rip), %xmm1          ## xmm1 = mem[0],zero
	popq	%rbp
	jmp	_pow                            ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L3minIdEERKT_S3_S3_
__ZNSt3__1L3minIdEERKT_S3_S3_:          ## @_ZNSt3__1L3minIdEERKT_S3_S3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__1L3minIdNS_6__lessIddEEEERKT_S5_S5_T0_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L3minIdNS_6__lessIddEEEERKT_S5_S5_T0_
__ZNSt3__1L3minIdNS_6__lessIddEEEERKT_S5_S5_T0_: ## @_ZNSt3__1L3minIdNS_6__lessIddEEEERKT_S5_S5_T0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	movq	%rbx, %rsi
	callq	__ZNKSt3__16__lessIddEclERKdS3_
	testb	%al, %al
	cmovneq	%r14, %rbx
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__16__lessIddEclERKdS3_
__ZNKSt3__16__lessIddEclERKdS3_:        ## @_ZNKSt3__16__lessIddEclERKdS3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movsd	(%rsi), %xmm0                   ## xmm0 = mem[0],zero
	ucomisd	(%rdi), %xmm0
	seta	%al
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function _ZN11ProbabilityC2ERKNSt3__16vectorIdNS0_9allocatorIdEEEES6_S6_dii
LCPI307_0:
	.quad	0x3fe0000000000000              ## double 0.5
LCPI307_1:
	.quad	0x3ff0000000000000              ## double 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN11ProbabilityC2ERKNSt3__16vectorIdNS0_9allocatorIdEEEES6_S6_dii
	.weak_def_can_be_hidden	__ZN11ProbabilityC2ERKNSt3__16vectorIdNS0_9allocatorIdEEEES6_S6_dii
	.p2align	4, 0x90
__ZN11ProbabilityC2ERKNSt3__16vectorIdNS0_9allocatorIdEEEES6_S6_dii: ## @_ZN11ProbabilityC2ERKNSt3__16vectorIdNS0_9allocatorIdEEEES6_S6_dii
Lfunc_begin22:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception22
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%r9d, %ebx
	movl	%r8d, %r14d
	movsd	%xmm0, -80(%rbp)                ## 8-byte Spill
	movq	%rcx, -176(%rbp)                ## 8-byte Spill
	movq	%rdx, -168(%rbp)                ## 8-byte Spill
	movq	%rsi, -160(%rbp)                ## 8-byte Spill
	movq	%rdi, %r15
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1Ev
	leaq	24(%r15), %r12
	movq	%r12, %rdi
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEC1Ev
	movl	%ebx, -88(%rbp)                 ## 4-byte Spill
	movl	%r14d, -84(%rbp)                ## 4-byte Spill
	imull	%r14d, %ebx
	movl	%ebx, -44(%rbp)                 ## 4-byte Spill
	movslq	%ebx, %rbx
	movq	$0, -56(%rbp)
Ltmp314:
	leaq	-112(%rbp), %rdi
	leaq	-56(%rbp), %rdx
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1EmRKd
Ltmp315:
## %bb.1:
Ltmp317:
	movq	%r12, -64(%rbp)                 ## 8-byte Spill
	movq	%r15, -72(%rbp)                 ## 8-byte Spill
	leaq	-224(%rbp), %rdi
	leaq	-112(%rbp), %rdx
	movq	%rbx, -136(%rbp)                ## 8-byte Spill
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEC1EmRKS3_
Ltmp318:
## %bb.2:
	leaq	-112(%rbp), %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEED1Ev
	cmpl	$0, -44(%rbp)                   ## 4-byte Folded Reload
	jle	LBB307_11
## %bb.3:
	movsd	-80(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	mulsd	LCPI307_0(%rip), %xmm0
	movsd	%xmm0, -80(%rbp)                ## 8-byte Spill
	movl	-44(%rbp), %eax                 ## 4-byte Reload
	movq	%rax, -144(%rbp)                ## 8-byte Spill
	negq	%rax
	movq	%rax, -152(%rbp)                ## 8-byte Spill
	xorl	%r14d, %r14d
	jmp	LBB307_5
	.p2align	4, 0x90
LBB307_4:                               ##   in Loop: Header=BB307_5 Depth=1
	incq	%r14
	cmpq	-144(%rbp), %r14                ## 8-byte Folded Reload
	je	LBB307_11
LBB307_5:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB307_8 Depth 2
	movq	-152(%rbp), %rax                ## 8-byte Reload
	addq	%r14, %rax
	movq	%rax, -184(%rbp)                ## 8-byte Spill
	xorl	%r15d, %r15d
	jmp	LBB307_8
	.p2align	4, 0x90
LBB307_6:                               ##   in Loop: Header=BB307_8 Depth=2
	movslq	%eax, %r13
	movq	-168(%rbp), %rdi                ## 8-byte Reload
	movq	%r13, %rsi
	callq	__ZNKSt3__16vectorIdNS_9allocatorIdEEEixEm
	movsd	(%rax), %xmm0                   ## xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)               ## 8-byte Spill
	movq	-160(%rbp), %rdi                ## 8-byte Reload
	movq	%r13, %rsi
	callq	__ZNKSt3__16vectorIdNS_9allocatorIdEEEixEm
	movsd	(%rax), %xmm0                   ## xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)               ## 8-byte Spill
	movq	-176(%rbp), %rdi                ## 8-byte Reload
	movq	%r13, %rsi
	callq	__ZNKSt3__16vectorIdNS_9allocatorIdEEEixEm
	movsd	(%rax), %xmm0                   ## xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	movsd	-192(%rbp), %xmm2               ## 8-byte Reload
                                        ## xmm2 = mem[0],zero
	movapd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
	movsd	%xmm1, -128(%rbp)
	addsd	%xmm2, %xmm2
	subsd	-200(%rbp), %xmm2               ## 8-byte Folded Reload
	addsd	%xmm0, %xmm2
	movsd	%xmm2, -120(%rbp)
	leaq	-128(%rbp), %rdi
	leaq	-120(%rbp), %rsi
	callq	__ZNSt3__1L3maxIdEERKT_S3_S3_
	leaq	-56(%rbp), %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__1L3maxIdEERKT_S3_S3_
	leaq	-112(%rbp), %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__1L3maxIdEERKT_S3_S3_
	movq	(%rax), %rbx
	leaq	-224(%rbp), %r13
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEixEm
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEixEm
	movq	%rbx, (%rax)
	leaq	-128(%rbp), %rdi
	leaq	-120(%rbp), %rsi
	callq	__ZNSt3__1L3maxIdEERKT_S3_S3_
	leaq	-56(%rbp), %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__1L3maxIdEERKT_S3_S3_
	leaq	-112(%rbp), %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__1L3maxIdEERKT_S3_S3_
	movq	(%rax), %rbx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEixEm
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEixEm
	movq	%rbx, (%rax)
LBB307_7:                               ##   in Loop: Header=BB307_8 Depth=2
	incq	%r15
	movq	-184(%rbp), %rax                ## 8-byte Reload
	addq	%r15, %rax
	je	LBB307_4
LBB307_8:                               ##   Parent Loop BB307_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	leaq	(%r14,%r15), %r12
Ltmp320:
	movl	%r14d, %edi
	movl	%r12d, %esi
	movl	-84(%rbp), %edx                 ## 4-byte Reload
	movl	-88(%rbp), %ecx                 ## 4-byte Reload
	callq	__Z7vec_miniiii
Ltmp321:
## %bb.9:                               ##   in Loop: Header=BB307_8 Depth=2
	testq	%r15, %r15
	jne	LBB307_6
## %bb.10:                              ##   in Loop: Header=BB307_8 Depth=2
	leaq	-224(%rbp), %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEixEm
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEixEm
	movsd	-80(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
	jmp	LBB307_7
LBB307_11:
Ltmp323:
	leaq	-224(%rbp), %rsi
	movq	-64(%rbp), %r12                 ## 8-byte Reload
	movq	%r12, %rdi
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEaSERKS5_
Ltmp324:
## %bb.12:
	xorps	%xmm0, %xmm0
	cvtsi2sdl	-44(%rbp), %xmm0        ## 4-byte Folded Reload
	movsd	LCPI307_1(%rip), %xmm1          ## xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rbp)
Ltmp326:
	leaq	-112(%rbp), %rdi
	leaq	-56(%rbp), %rdx
	movq	-136(%rbp), %rsi                ## 8-byte Reload
	movq	-72(%rbp), %rbx                 ## 8-byte Reload
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1EmRKd
Ltmp327:
## %bb.13:
Ltmp329:
	leaq	-112(%rbp), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEaSERKS3_
Ltmp330:
## %bb.14:
	leaq	-112(%rbp), %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEED1Ev
	leaq	-224(%rbp), %rdi
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEED1Ev
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB307_15:
Ltmp331:
	movq	%rax, %r14
	leaq	-112(%rbp), %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEED1Ev
	jmp	LBB307_22
LBB307_16:
Ltmp328:
	jmp	LBB307_21
LBB307_17:
Ltmp325:
	movq	%rax, %r14
	jmp	LBB307_23
LBB307_18:
Ltmp319:
	movq	%rax, %r14
	leaq	-112(%rbp), %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEED1Ev
	movq	-72(%rbp), %r15                 ## 8-byte Reload
	movq	-64(%rbp), %r12                 ## 8-byte Reload
	jmp	LBB307_24
LBB307_19:
Ltmp316:
	movq	%rax, %r14
	jmp	LBB307_24
LBB307_20:
Ltmp322:
LBB307_21:
	movq	%rax, %r14
LBB307_22:
	movq	-64(%rbp), %r12                 ## 8-byte Reload
LBB307_23:
	leaq	-224(%rbp), %rdi
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEED1Ev
	movq	-72(%rbp), %r15                 ## 8-byte Reload
LBB307_24:
	movq	%r12, %rdi
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEED1Ev
	movq	%r15, %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEED1Ev
	movq	%r14, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end22:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table307:
Lexception22:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end22-Lcst_begin22
Lcst_begin22:
	.uleb128 Ltmp314-Lfunc_begin22          ## >> Call Site 1 <<
	.uleb128 Ltmp315-Ltmp314                ##   Call between Ltmp314 and Ltmp315
	.uleb128 Ltmp316-Lfunc_begin22          ##     jumps to Ltmp316
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp317-Lfunc_begin22          ## >> Call Site 2 <<
	.uleb128 Ltmp318-Ltmp317                ##   Call between Ltmp317 and Ltmp318
	.uleb128 Ltmp319-Lfunc_begin22          ##     jumps to Ltmp319
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp320-Lfunc_begin22          ## >> Call Site 3 <<
	.uleb128 Ltmp321-Ltmp320                ##   Call between Ltmp320 and Ltmp321
	.uleb128 Ltmp322-Lfunc_begin22          ##     jumps to Ltmp322
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp323-Lfunc_begin22          ## >> Call Site 4 <<
	.uleb128 Ltmp324-Ltmp323                ##   Call between Ltmp323 and Ltmp324
	.uleb128 Ltmp325-Lfunc_begin22          ##     jumps to Ltmp325
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp326-Lfunc_begin22          ## >> Call Site 5 <<
	.uleb128 Ltmp327-Ltmp326                ##   Call between Ltmp326 and Ltmp327
	.uleb128 Ltmp328-Lfunc_begin22          ##     jumps to Ltmp328
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp329-Lfunc_begin22          ## >> Call Site 6 <<
	.uleb128 Ltmp330-Ltmp329                ##   Call between Ltmp329 and Ltmp330
	.uleb128 Ltmp331-Lfunc_begin22          ##     jumps to Ltmp331
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp330-Lfunc_begin22          ## >> Call Site 7 <<
	.uleb128 Lfunc_end22-Ltmp330            ##   Call between Ltmp330 and Lfunc_end22
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end22:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEC1Ev
__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEC1Ev: ## @_ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEC1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEC2Ev
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L3maxIdEERKT_S3_S3_
__ZNSt3__1L3maxIdEERKT_S3_S3_:          ## @_ZNSt3__1L3maxIdEERKT_S3_S3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__1L3maxIdNS_6__lessIddEEEERKT_S5_S5_T0_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEaSERKS5_
__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEaSERKS5_: ## @_ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEaSERKS5_
	.cfi_startproc
## %bb.0:
	cmpq	%rsi, %rdi
	je	LBB310_2
## %bb.1:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, %rsi
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE6assignIPS3_EENS_9enable_ifIXaasr27__is_cpp17_forward_iteratorIT_EE5valuesr16is_constructibleIS3_NS_15iterator_traitsIS9_E9referenceEEE5valueEvE4typeES9_S9_
	popq	%rbp
LBB310_2:
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEEaSERKS3_
__ZNSt3__16vectorIdNS_9allocatorIdEEEaSERKS3_: ## @_ZNSt3__16vectorIdNS_9allocatorIdEEEaSERKS3_
	.cfi_startproc
## %bb.0:
	cmpq	%rsi, %rdi
	je	LBB311_2
## %bb.1:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE6assignIPdEENS_9enable_ifIXaasr27__is_cpp17_forward_iteratorIT_EE5valuesr16is_constructibleIdNS_15iterator_traitsIS7_E9referenceEEE5valueEvE4typeES7_S7_
	popq	%rbp
LBB311_2:
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEC2Ev
__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEC2Ev: ## @_ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEEC2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__113__vector_baseINS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEEC2Ev
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L3maxIdNS_6__lessIddEEEERKT_S5_S5_T0_
__ZNSt3__1L3maxIdNS_6__lessIddEEEERKT_S5_S5_T0_: ## @_ZNSt3__1L3maxIdNS_6__lessIddEEEERKT_S5_S5_T0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	__ZNKSt3__16__lessIddEclERKdS3_
	testb	%al, %al
	cmovneq	%r14, %rbx
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE6assignIPS3_EENS_9enable_ifIXaasr27__is_cpp17_forward_iteratorIT_EE5valuesr16is_constructibleIS3_NS_15iterator_traitsIS9_E9referenceEEE5valueEvE4typeES9_S9_ ## -- Begin function _ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE6assignIPS3_EENS_9enable_ifIXaasr27__is_cpp17_forward_iteratorIT_EE5valuesr16is_constructibleIS3_NS_15iterator_traitsIS9_E9referenceEEE5valueEvE4typeES9_S9_
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE6assignIPS3_EENS_9enable_ifIXaasr27__is_cpp17_forward_iteratorIT_EE5valuesr16is_constructibleIS3_NS_15iterator_traitsIS9_E9referenceEEE5valueEvE4typeES9_S9_
	.p2align	4, 0x90
__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE6assignIPS3_EENS_9enable_ifIXaasr27__is_cpp17_forward_iteratorIT_EE5valuesr16is_constructibleIS3_NS_15iterator_traitsIS9_E9referenceEEE5valueEvE4typeES9_S9_: ## @_ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE6assignIPS3_EENS_9enable_ifIXaasr27__is_cpp17_forward_iteratorIT_EE5valuesr16is_constructibleIS3_NS_15iterator_traitsIS9_E9referenceEEE5valueEvE4typeES9_S9_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	__ZNSt3__1L8distanceIPNS_6vectorIdNS_9allocatorIdEEEEEENS_15iterator_traitsIT_E15difference_typeES7_S7_
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	__ZNKSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE8capacityEv
	cmpq	%rax, %r15
	jbe	LBB314_1
## %bb.7:
	movq	%rbx, %rdi
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE13__vdeallocateEv
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	__ZNKSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE11__recommendEm
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE11__vallocateEm
	movq	%rbx, %rdi
	movq	%r12, %rsi
	jmp	LBB314_8
LBB314_1:
	movq	%r14, -56(%rbp)
	movq	%rbx, %rdi
	callq	__ZNKSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE4sizeEv
	cmpq	%rax, %r15
	jbe	LBB314_2
## %bb.3:
	movq	%r12, -56(%rbp)
	leaq	-56(%rbp), %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__1L7advanceIPNS_6vectorIdNS_9allocatorIdEEEEmEEvRT_T0_
	movb	$1, %al
	movl	%eax, -44(%rbp)                 ## 4-byte Spill
	jmp	LBB314_4
LBB314_2:
	movl	$0, -44(%rbp)                   ## 4-byte Folded Spill
LBB314_4:
	movq	-56(%rbp), %r13
	movq	(%rbx), %rdx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	__ZNSt3__1L4copyIPNS_6vectorIdNS_9allocatorIdEEEES5_EET0_T_S7_S6_
	cmpb	$0, -44(%rbp)                   ## 1-byte Folded Reload
	je	LBB314_6
## %bb.5:
	movq	%rbx, %rdi
	callq	__ZNKSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE4sizeEv
	subq	%rax, %r15
	movq	%rbx, %rdi
	movq	%r13, %rsi
LBB314_8:
	movq	%r14, %rdx
	movq	%r15, %rcx
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE18__construct_at_endIPS3_EENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeES9_S9_m
	jmp	LBB314_9
LBB314_6:
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE17__destruct_at_endEPS3_
LBB314_9:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L8distanceIPNS_6vectorIdNS_9allocatorIdEEEEEENS_15iterator_traitsIT_E15difference_typeES7_S7_
__ZNSt3__1L8distanceIPNS_6vectorIdNS_9allocatorIdEEEEEENS_15iterator_traitsIT_E15difference_typeES7_S7_: ## @_ZNSt3__1L8distanceIPNS_6vectorIdNS_9allocatorIdEEEEEENS_15iterator_traitsIT_E15difference_typeES7_S7_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__1L10__distanceIPNS_6vectorIdNS_9allocatorIdEEEEEENS_15iterator_traitsIT_E15difference_typeES7_S7_NS_26random_access_iterator_tagE
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L7advanceIPNS_6vectorIdNS_9allocatorIdEEEEmEEvRT_T0_
__ZNSt3__1L7advanceIPNS_6vectorIdNS_9allocatorIdEEEEmEEvRT_T0_: ## @_ZNSt3__1L7advanceIPNS_6vectorIdNS_9allocatorIdEEEEmEEvRT_T0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__1L9__advanceIPNS_6vectorIdNS_9allocatorIdEEEEEEvRT_NS_15iterator_traitsIS6_E15difference_typeENS_26random_access_iterator_tagE
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L4copyIPNS_6vectorIdNS_9allocatorIdEEEES5_EET0_T_S7_S6_
__ZNSt3__1L4copyIPNS_6vectorIdNS_9allocatorIdEEEES5_EET0_T_S7_S6_: ## @_ZNSt3__1L4copyIPNS_6vectorIdNS_9allocatorIdEEEES5_EET0_T_S7_S6_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__1L6__copyIPNS_6vectorIdNS_9allocatorIdEEEES5_EET0_T_S7_S6_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE18__construct_at_endIPS3_EENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeES9_S9_m ## -- Begin function _ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE18__construct_at_endIPS3_EENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeES9_S9_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE18__construct_at_endIPS3_EENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeES9_S9_m
	.p2align	4, 0x90
__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE18__construct_at_endIPS3_EENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeES9_S9_m: ## @_ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE18__construct_at_endIPS3_EENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeES9_S9_m
Lfunc_begin23:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception23
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %rsi
	leaq	-40(%rbp), %rdi
	movq	%rcx, %rdx
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE21_ConstructTransactionC1ERS5_m
	leaq	-32(%rbp), %rdx
Ltmp332:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__1L25__construct_range_forwardINS_9allocatorINS_6vectorIdNS1_IdEEEEEEPS4_S6_EEvRT_T0_S9_RT1_
Ltmp333:
## %bb.1:
	leaq	-40(%rbp), %rdi
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE21_ConstructTransactionD1Ev
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB318_2:
Ltmp334:
	movq	%rax, %rbx
	leaq	-40(%rbp), %rdi
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE21_ConstructTransactionD1Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end23:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table318:
Lexception23:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end23-Lcst_begin23
Lcst_begin23:
	.uleb128 Lfunc_begin23-Lfunc_begin23    ## >> Call Site 1 <<
	.uleb128 Ltmp332-Lfunc_begin23          ##   Call between Lfunc_begin23 and Ltmp332
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp332-Lfunc_begin23          ## >> Call Site 2 <<
	.uleb128 Ltmp333-Ltmp332                ##   Call between Ltmp332 and Ltmp333
	.uleb128 Ltmp334-Lfunc_begin23          ##     jumps to Ltmp334
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp333-Lfunc_begin23          ## >> Call Site 3 <<
	.uleb128 Lfunc_end23-Ltmp333            ##   Call between Ltmp333 and Lfunc_end23
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end23:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE17__destruct_at_endEPS3_
__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE17__destruct_at_endEPS3_: ## @_ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE17__destruct_at_endEPS3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__113__vector_baseINS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEE17__destruct_at_endEPS4_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE13__vdeallocateEv ## -- Begin function _ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE13__vdeallocateEv
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE13__vdeallocateEv
	.p2align	4, 0x90
__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE13__vdeallocateEv: ## @_ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE13__vdeallocateEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	cmpq	$0, (%rdi)
	je	LBB320_2
## %bb.1:
	movq	%rdi, %rbx
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE5clearEv
	movq	(%rbx), %r14
	movq	%rbx, %rdi
	callq	__ZNKSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE8capacityEv
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIdNS1_IdEEEEEEE10deallocateERS5_PS4_m
	movq	%rbx, %rdi
	callq	__ZNSt3__113__vector_baseINS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEE9__end_capEv
	movq	$0, (%rax)
	movq	$0, (%rbx)
	movq	$0, 8(%rbx)
LBB320_2:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE11__recommendEm
__ZNKSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE11__recommendEm: ## @_ZNKSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE11__recommendEm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, %r14
	movq	%rsi, -24(%rbp)
	callq	__ZNKSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE8max_sizeEv
	cmpq	%rax, -24(%rbp)
	ja	LBB321_4
## %bb.1:
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	__ZNKSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE8capacityEv
	movq	%rbx, %rcx
	shrq	%rcx
	cmpq	%rcx, %rax
	jae	LBB321_3
## %bb.2:
	addq	%rax, %rax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	__ZNSt3__1L3maxImEERKT_S3_S3_
	movq	(%rax), %rbx
LBB321_3:
	movq	%rbx, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB321_4:
	movq	%r14, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L10__distanceIPNS_6vectorIdNS_9allocatorIdEEEEEENS_15iterator_traitsIT_E15difference_typeES7_S7_NS_26random_access_iterator_tagE
__ZNSt3__1L10__distanceIPNS_6vectorIdNS_9allocatorIdEEEEEENS_15iterator_traitsIT_E15difference_typeES7_S7_NS_26random_access_iterator_tagE: ## @_ZNSt3__1L10__distanceIPNS_6vectorIdNS_9allocatorIdEEEEEENS_15iterator_traitsIT_E15difference_typeES7_S7_NS_26random_access_iterator_tagE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	%rdi, %rsi
	sarq	$3, %rsi
	movabsq	$-6148914691236517205, %rax     ## imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rsi, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L9__advanceIPNS_6vectorIdNS_9allocatorIdEEEEEEvRT_NS_15iterator_traitsIS6_E15difference_typeENS_26random_access_iterator_tagE
__ZNSt3__1L9__advanceIPNS_6vectorIdNS_9allocatorIdEEEEEEvRT_NS_15iterator_traitsIS6_E15difference_typeENS_26random_access_iterator_tagE: ## @_ZNSt3__1L9__advanceIPNS_6vectorIdNS_9allocatorIdEEEEEEvRT_NS_15iterator_traitsIS6_E15difference_typeENS_26random_access_iterator_tagE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	(%rsi,%rsi,2), %rax
	shlq	$3, %rax
	addq	%rax, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L6__copyIPNS_6vectorIdNS_9allocatorIdEEEES5_EET0_T_S7_S6_
__ZNSt3__1L6__copyIPNS_6vectorIdNS_9allocatorIdEEEES5_EET0_T_S7_S6_: ## @_ZNSt3__1L6__copyIPNS_6vectorIdNS_9allocatorIdEEEES5_EET0_T_S7_S6_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__1L16__copy_constexprIPNS_6vectorIdNS_9allocatorIdEEEES5_EET0_T_S7_S6_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L16__copy_constexprIPNS_6vectorIdNS_9allocatorIdEEEES5_EET0_T_S7_S6_
__ZNSt3__1L16__copy_constexprIPNS_6vectorIdNS_9allocatorIdEEEES5_EET0_T_S7_S6_: ## @_ZNSt3__1L16__copy_constexprIPNS_6vectorIdNS_9allocatorIdEEEES5_EET0_T_S7_S6_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r15
	cmpq	%rsi, %rdi
	je	LBB325_3
## %bb.1:
	movq	%rsi, %r14
	movq	%rdi, %rbx
	.p2align	4, 0x90
LBB325_2:                               ## =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEaSERKS3_
	addq	$24, %rbx
	addq	$24, %r15
	cmpq	%rbx, %r14
	jne	LBB325_2
LBB325_3:
	movq	%r15, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L25__construct_range_forwardINS_9allocatorINS_6vectorIdNS1_IdEEEEEEPS4_S6_EEvRT_T0_S9_RT1_
__ZNSt3__1L25__construct_range_forwardINS_9allocatorINS_6vectorIdNS1_IdEEEEEEPS4_S6_EEvRT_T0_S9_RT1_: ## @_ZNSt3__1L25__construct_range_forwardINS_9allocatorINS_6vectorIdNS1_IdEEEEEEPS4_S6_EEvRT_T0_S9_RT1_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	cmpq	%rsi, %rdi
	je	LBB326_3
## %bb.1:
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	.p2align	4, 0x90
LBB326_2:                               ## =>This Inner Loop Header: Depth=1
	movq	(%r15), %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIdNS1_IdEEEEEEE9constructIS4_JRS4_EvEEvRS5_PT_DpOT0_
	addq	$24, %rbx
	addq	$24, (%r15)
	cmpq	%rbx, %r14
	jne	LBB326_2
LBB326_3:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIdNS1_IdEEEEEEE9constructIS4_JRS4_EvEEvRS5_PT_DpOT0_
__ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIdNS1_IdEEEEEEE9constructIS4_JRS4_EvEEvRS5_PT_DpOT0_: ## @_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIdNS1_IdEEEEEEE9constructIS4_JRS4_EvEEvRS5_PT_DpOT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__19allocatorINS_6vectorIdNS0_IdEEEEE9constructIS3_JRS3_EEEvPT_DpOT0_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__19allocatorINS_6vectorIdNS0_IdEEEEE9constructIS3_JRS3_EEEvPT_DpOT0_
__ZNSt3__19allocatorINS_6vectorIdNS0_IdEEEEE9constructIS3_JRS3_EEEvPT_DpOT0_: ## @_ZNSt3__19allocatorINS_6vectorIdNS0_IdEEEEE9constructIS3_JRS3_EEEvPT_DpOT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1ERKS3_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE5clearEv
__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE5clearEv: ## @_ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEE5clearEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__113__vector_baseINS_6vectorIdNS_9allocatorIdEEEENS2_IS4_EEE5clearEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE6assignIPdEENS_9enable_ifIXaasr27__is_cpp17_forward_iteratorIT_EE5valuesr16is_constructibleIdNS_15iterator_traitsIS7_E9referenceEEE5valueEvE4typeES7_S7_ ## -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE6assignIPdEENS_9enable_ifIXaasr27__is_cpp17_forward_iteratorIT_EE5valuesr16is_constructibleIdNS_15iterator_traitsIS7_E9referenceEEE5valueEvE4typeES7_S7_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEE6assignIPdEENS_9enable_ifIXaasr27__is_cpp17_forward_iteratorIT_EE5valuesr16is_constructibleIdNS_15iterator_traitsIS7_E9referenceEEE5valueEvE4typeES7_S7_
	.p2align	4, 0x90
__ZNSt3__16vectorIdNS_9allocatorIdEEE6assignIPdEENS_9enable_ifIXaasr27__is_cpp17_forward_iteratorIT_EE5valuesr16is_constructibleIdNS_15iterator_traitsIS7_E9referenceEEE5valueEvE4typeES7_S7_: ## @_ZNSt3__16vectorIdNS_9allocatorIdEEE6assignIPdEENS_9enable_ifIXaasr27__is_cpp17_forward_iteratorIT_EE5valuesr16is_constructibleIdNS_15iterator_traitsIS7_E9referenceEEE5valueEvE4typeES7_S7_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	__ZNSt3__1L8distanceIPdEENS_15iterator_traitsIT_E15difference_typeES3_S3_
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	__ZNKSt3__16vectorIdNS_9allocatorIdEEE8capacityEv
	cmpq	%rax, %r15
	jbe	LBB330_1
## %bb.7:
	movq	%rbx, %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE13__vdeallocateEv
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	__ZNKSt3__16vectorIdNS_9allocatorIdEEE11__recommendEm
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE11__vallocateEm
	movq	%rbx, %rdi
	movq	%r12, %rsi
	jmp	LBB330_8
LBB330_1:
	movq	%r14, -56(%rbp)
	movq	%rbx, %rdi
	callq	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeEv
	cmpq	%rax, %r15
	jbe	LBB330_2
## %bb.3:
	movq	%r12, -56(%rbp)
	leaq	-56(%rbp), %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__1L7advanceIPdmEEvRT_T0_
	movb	$1, %al
	movl	%eax, -44(%rbp)                 ## 4-byte Spill
	jmp	LBB330_4
LBB330_2:
	movl	$0, -44(%rbp)                   ## 4-byte Folded Spill
LBB330_4:
	movq	-56(%rbp), %r13
	movq	(%rbx), %rdx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	__ZNSt3__1L4copyIPdS1_EET0_T_S3_S2_
	cmpb	$0, -44(%rbp)                   ## 1-byte Folded Reload
	je	LBB330_6
## %bb.5:
	movq	%rbx, %rdi
	callq	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeEv
	subq	%rax, %r15
	movq	%rbx, %rdi
	movq	%r13, %rsi
LBB330_8:
	movq	%r14, %rdx
	movq	%r15, %rcx
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE18__construct_at_endIPdEENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeES7_S7_m
	jmp	LBB330_9
LBB330_6:
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE17__destruct_at_endEPd
LBB330_9:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L8distanceIPdEENS_15iterator_traitsIT_E15difference_typeES3_S3_
__ZNSt3__1L8distanceIPdEENS_15iterator_traitsIT_E15difference_typeES3_S3_: ## @_ZNSt3__1L8distanceIPdEENS_15iterator_traitsIT_E15difference_typeES3_S3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__1L10__distanceIPdEENS_15iterator_traitsIT_E15difference_typeES3_S3_NS_26random_access_iterator_tagE
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L7advanceIPdmEEvRT_T0_
__ZNSt3__1L7advanceIPdmEEvRT_T0_:       ## @_ZNSt3__1L7advanceIPdmEEvRT_T0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__1L9__advanceIPdEEvRT_NS_15iterator_traitsIS2_E15difference_typeENS_26random_access_iterator_tagE
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L4copyIPdS1_EET0_T_S3_S2_
__ZNSt3__1L4copyIPdS1_EET0_T_S3_S2_:    ## @_ZNSt3__1L4copyIPdS1_EET0_T_S3_S2_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__1L6__copyIddEENS_9enable_ifIXaasr7is_sameINS_12remove_constIT_E4typeET0_EE5valuesr28is_trivially_copy_assignableIS6_EE5valueEPS6_E4typeEPS3_SA_S7_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE18__construct_at_endIPdEENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeES7_S7_m ## -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE18__construct_at_endIPdEENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeES7_S7_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEE18__construct_at_endIPdEENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeES7_S7_m
	.p2align	4, 0x90
__ZNSt3__16vectorIdNS_9allocatorIdEEE18__construct_at_endIPdEENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeES7_S7_m: ## @_ZNSt3__16vectorIdNS_9allocatorIdEEE18__construct_at_endIPdEENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeES7_S7_m
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %rsi
	leaq	-48(%rbp), %r15
	movq	%r15, %rdi
	movq	%rcx, %rdx
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC1ERS3_m
	leaq	-40(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__1L25__construct_range_forwardINS_9allocatorIdEEddddvEEvRT_PT0_S6_RPT1_
	movq	%r15, %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD1Ev
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE17__destruct_at_endEPd
__ZNSt3__16vectorIdNS_9allocatorIdEEE17__destruct_at_endEPd: ## @_ZNSt3__16vectorIdNS_9allocatorIdEEE17__destruct_at_endEPd
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__113__vector_baseIdNS_9allocatorIdEEE17__destruct_at_endEPd
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE13__vdeallocateEv ## -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE13__vdeallocateEv
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEE13__vdeallocateEv
	.p2align	4, 0x90
__ZNSt3__16vectorIdNS_9allocatorIdEEE13__vdeallocateEv: ## @_ZNSt3__16vectorIdNS_9allocatorIdEEE13__vdeallocateEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	cmpq	$0, (%rdi)
	je	LBB336_2
## %bb.1:
	movq	%rdi, %rbx
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE5clearEv
	movq	(%rbx), %r14
	movq	%rbx, %rdi
	callq	__ZNKSt3__16vectorIdNS_9allocatorIdEEE8capacityEv
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE10deallocateERS2_Pdm
	movq	%rbx, %rdi
	callq	__ZNSt3__113__vector_baseIdNS_9allocatorIdEEE9__end_capEv
	movq	$0, (%rax)
	movq	$0, (%rbx)
	movq	$0, 8(%rbx)
LBB336_2:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__16vectorIdNS_9allocatorIdEEE11__recommendEm
__ZNKSt3__16vectorIdNS_9allocatorIdEEE11__recommendEm: ## @_ZNKSt3__16vectorIdNS_9allocatorIdEEE11__recommendEm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, %r14
	movq	%rsi, -24(%rbp)
	callq	__ZNKSt3__16vectorIdNS_9allocatorIdEEE8max_sizeEv
	cmpq	%rax, -24(%rbp)
	ja	LBB337_4
## %bb.1:
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	__ZNKSt3__16vectorIdNS_9allocatorIdEEE8capacityEv
	movq	%rbx, %rcx
	shrq	%rcx
	cmpq	%rcx, %rax
	jae	LBB337_3
## %bb.2:
	addq	%rax, %rax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	__ZNSt3__1L3maxImEERKT_S3_S3_
	movq	(%rax), %rbx
LBB337_3:
	movq	%rbx, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB337_4:
	movq	%r14, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L10__distanceIPdEENS_15iterator_traitsIT_E15difference_typeES3_S3_NS_26random_access_iterator_tagE
__ZNSt3__1L10__distanceIPdEENS_15iterator_traitsIT_E15difference_typeES3_S3_NS_26random_access_iterator_tagE: ## @_ZNSt3__1L10__distanceIPdEENS_15iterator_traitsIT_E15difference_typeES3_S3_NS_26random_access_iterator_tagE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rsi, %rax
	subq	%rdi, %rax
	sarq	$3, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L9__advanceIPdEEvRT_NS_15iterator_traitsIS2_E15difference_typeENS_26random_access_iterator_tagE
__ZNSt3__1L9__advanceIPdEEvRT_NS_15iterator_traitsIS2_E15difference_typeENS_26random_access_iterator_tagE: ## @_ZNSt3__1L9__advanceIPdEEvRT_NS_15iterator_traitsIS2_E15difference_typeENS_26random_access_iterator_tagE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	shlq	$3, %rsi
	addq	%rsi, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L6__copyIddEENS_9enable_ifIXaasr7is_sameINS_12remove_constIT_E4typeET0_EE5valuesr28is_trivially_copy_assignableIS6_EE5valueEPS6_E4typeEPS3_SA_S7_
__ZNSt3__1L6__copyIddEENS_9enable_ifIXaasr7is_sameINS_12remove_constIT_E4typeET0_EE5valuesr28is_trivially_copy_assignableIS6_EE5valueEPS6_E4typeEPS3_SA_S7_: ## @_ZNSt3__1L6__copyIddEENS_9enable_ifIXaasr7is_sameINS_12remove_constIT_E4typeET0_EE5valuesr28is_trivially_copy_assignableIS6_EE5valueEPS6_E4typeEPS3_SA_S7_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdx, %r14
	movq	%rsi, %rbx
	subq	%rdi, %rbx
	je	LBB340_2
## %bb.1:
	movq	%rdi, %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	_memmove
LBB340_2:
	addq	%rbx, %r14
	movq	%r14, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L25__construct_range_forwardINS_9allocatorIdEEddddvEEvRT_PT0_S6_RPT1_
__ZNSt3__1L25__construct_range_forwardINS_9allocatorIdEEddddvEEvRT_PT0_S6_RPT1_: ## @_ZNSt3__1L25__construct_range_forwardINS_9allocatorIdEEddddvEEvRT_PT0_S6_RPT1_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %rbx
	subq	%rdi, %rbx
	testq	%rbx, %rbx
	jle	LBB341_2
## %bb.1:
	movq	%rdx, %r14
	movq	%rdi, %rsi
	movq	(%rdx), %rdi
	movq	%rbx, %rdx
	callq	_memcpy
	addq	%rbx, (%r14)
LBB341_2:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE5clearEv
__ZNSt3__16vectorIdNS_9allocatorIdEEE5clearEv: ## @_ZNSt3__16vectorIdNS_9allocatorIdEEE5clearEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__113__vector_baseIdNS_9allocatorIdEEE5clearEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2Ev
__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2Ev: ## @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	callq	__ZNSt3__18ios_baseC2Ev
	movq	__ZTVNSt3__19basic_iosIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE
__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE: ## @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2EPNS_15basic_streambufIcS2_EE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	__ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE@GOTPCREL(%rip), %rax
	leaq	24(%rax), %rcx
	movq	%rcx, (%rdi)
	addq	$64, %rax
	movq	%rax, 416(%rdi)
	addq	$416, %rdi                      ## imm = 0x1A0
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initEPNS_15basic_streambufIcS2_EE
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC1Ev ## -- Begin function _ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC1Ev
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC1Ev
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC1Ev: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj ## -- Begin function _ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	cmpq	$0, 120(%rdi)
	je	LBB346_1
LBB346_6:
	xorl	%ebx, %ebx
LBB346_7:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB346_1:
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	%edx, %edi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE15__make_mdstringEj
	testq	%rax, %rax
	je	LBB346_6
## %bb.2:
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	_fopen
	movq	%rax, 120(%rbx)
	testq	%rax, %rax
	je	LBB346_6
## %bb.3:
	movl	%r14d, 392(%rbx)
	testb	$2, %r14b
	je	LBB346_7
## %bb.4:
	movq	%rax, %rdi
	xorl	%esi, %esi
	movl	$2, %edx
	callq	_fseek
	testl	%eax, %eax
	je	LBB346_7
## %bb.5:
	movq	120(%rbx), %rdi
	callq	_fclose
	movq	$0, 120(%rbx)
	jmp	LBB346_6
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj
__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj: ## @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__18ios_base8setstateEj
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev ## -- Begin function _ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev ## -- Begin function _ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev
	.weak_def_can_be_hidden	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev
	.p2align	4, 0x90
__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev: ## @_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	callq	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	movq	%rbx, %rdi
	callq	__ZdlPv
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev ## -- Begin function _ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.weak_def_can_be_hidden	__ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.p2align	4, 0x90
__ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev: ## @_ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	addq	-24(%rax), %rdi
	popq	%rbp
	jmp	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.globl	__ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev ## -- Begin function _ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev
	.weak_def_can_be_hidden	__ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev
	.p2align	4, 0x90
__ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev: ## @_ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	addq	-24(%rax), %rdi
	popq	%rbp
	jmp	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__18ios_baseC2Ev
__ZNSt3__18ios_baseC2Ev:                ## @_ZNSt3__18ios_baseC2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	__ZTVNSt3__18ios_baseE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initEPNS_15basic_streambufIcS2_EE
__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initEPNS_15basic_streambufIcS2_EE: ## @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initEPNS_15basic_streambufIcS2_EE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	callq	__ZNSt3__18ios_base4initEPv
	movq	$0, 136(%rbx)
	callq	__ZNSt3__111char_traitsIcE3eofEv
	movl	%eax, 144(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__111char_traitsIcE3eofEv ## -- Begin function _ZNSt3__111char_traitsIcE3eofEv
	.weak_def_can_be_hidden	__ZNSt3__111char_traitsIcE3eofEv
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE3eofEv:       ## @_ZNSt3__111char_traitsIcE3eofEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$-1, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev ## -- Begin function _ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC2Ev
Lfunc_begin24:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception24
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %rbx
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
	movq	__ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rbx)
	leaq	96(%rbx), %rdi
	movq	$0, 64(%rbx)
	movq	$0, 72(%rbx)
	movq	$0, 80(%rbx)
	movl	$307, %esi                      ## imm = 0x133
	callq	___bzero
	leaq	-32(%rbp), %r14
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE6getlocEv
	movq	%r14, %rdi
	callq	__ZNSt3__1L9has_facetINS_7codecvtIcc11__mbstate_tEEEEbRKNS_6localeE
	movl	%eax, %r15d
	movq	%r14, %rdi
	callq	__ZNSt3__16localeD1Ev
	testb	%r15b, %r15b
	je	LBB355_3
## %bb.1:
	leaq	-32(%rbp), %r14
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE6getlocEv
Ltmp335:
	movq	%r14, %rdi
	callq	__ZNSt3__1L9use_facetINS_7codecvtIcc11__mbstate_tEEEERKT_RKNS_6localeE
Ltmp336:
## %bb.2:
	movq	%rax, 128(%rbx)
	leaq	-32(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movq	128(%rbx), %rdi
	callq	__ZNKSt3__17codecvtIcc11__mbstate_tE13always_noconvEv
	movb	%al, 402(%rbx)
LBB355_3:
	movq	(%rbx), %rax
Ltmp338:
	movl	$4096, %edx                     ## imm = 0x1000
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	*24(%rax)
Ltmp339:
## %bb.4:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB355_7:
Ltmp337:
	movq	%rax, %r14
	leaq	-32(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	jmp	LBB355_6
LBB355_5:
Ltmp340:
	movq	%rax, %r14
LBB355_6:
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	%r14, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end24:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table355:
Lexception24:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end24-Lcst_begin24
Lcst_begin24:
	.uleb128 Lfunc_begin24-Lfunc_begin24    ## >> Call Site 1 <<
	.uleb128 Ltmp335-Lfunc_begin24          ##   Call between Lfunc_begin24 and Ltmp335
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp335-Lfunc_begin24          ## >> Call Site 2 <<
	.uleb128 Ltmp336-Ltmp335                ##   Call between Ltmp335 and Ltmp336
	.uleb128 Ltmp337-Lfunc_begin24          ##     jumps to Ltmp337
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp338-Lfunc_begin24          ## >> Call Site 3 <<
	.uleb128 Ltmp339-Ltmp338                ##   Call between Ltmp338 and Ltmp339
	.uleb128 Ltmp340-Lfunc_begin24          ##     jumps to Ltmp340
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp339-Lfunc_begin24          ## >> Call Site 4 <<
	.uleb128 Lfunc_end24-Ltmp339            ##   Call between Ltmp339 and Lfunc_end24
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end24:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L9has_facetINS_7codecvtIcc11__mbstate_tEEEEbRKNS_6localeE
__ZNSt3__1L9has_facetINS_7codecvtIcc11__mbstate_tEEEEbRKNS_6localeE: ## @_ZNSt3__1L9has_facetINS_7codecvtIcc11__mbstate_tEEEEbRKNS_6localeE
Lfunc_begin25:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception25
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
Ltmp341:
	movq	__ZNSt3__17codecvtIcc11__mbstate_tE2idE@GOTPCREL(%rip), %rsi
	callq	__ZNKSt3__16locale9has_facetERNS0_2idE
Ltmp342:
## %bb.1:
	popq	%rbp
	retq
LBB356_2:
Ltmp343:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end25:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table356:
Lexception25:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	155                             ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end25-Lcst_begin25
Lcst_begin25:
	.uleb128 Ltmp341-Lfunc_begin25          ## >> Call Site 1 <<
	.uleb128 Ltmp342-Ltmp341                ##   Call between Ltmp341 and Ltmp342
	.uleb128 Ltmp343-Lfunc_begin25          ##     jumps to Ltmp343
	.byte	1                               ##   On action: 1
Lcst_end25:
	.byte	1                               ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                               ##   No further actions
	.p2align	2
                                        ## >> Catch TypeInfos <<
	.long	0                               ## TypeInfo 1
Lttbase0:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE6getlocEv
__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE6getlocEv: ## @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE6getlocEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	addq	$8, %rsi
	callq	__ZNSt3__16localeC1ERKS0_
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L9use_facetINS_7codecvtIcc11__mbstate_tEEEERKT_RKNS_6localeE
__ZNSt3__1L9use_facetINS_7codecvtIcc11__mbstate_tEEEERKT_RKNS_6localeE: ## @_ZNSt3__1L9use_facetINS_7codecvtIcc11__mbstate_tEEEERKT_RKNS_6localeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	__ZNSt3__17codecvtIcc11__mbstate_tE2idE@GOTPCREL(%rip), %rsi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__17codecvtIcc11__mbstate_tE13always_noconvEv
__ZNKSt3__17codecvtIcc11__mbstate_tE13always_noconvEv: ## @_ZNKSt3__17codecvtIcc11__mbstate_tE13always_noconvEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	callq	*56(%rax)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED0Ev ## -- Begin function _ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED0Ev
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED0Ev
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED0Ev: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED0Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	movq	%rbx, %rdi
	callq	__ZdlPv
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE ## -- Begin function _ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	(%rdi), %rax
	callq	*48(%rax)
	movq	%r14, %rdi
	callq	__ZNSt3__1L9use_facetINS_7codecvtIcc11__mbstate_tEEEERKT_RKNS_6localeE
	movq	%rax, 128(%rbx)
	movb	402(%rbx), %r14b
	movq	%rax, %rdi
	callq	__ZNKSt3__17codecvtIcc11__mbstate_tE13always_noconvEv
	movb	%al, 402(%rbx)
	cmpb	%al, %r14b
	je	LBB361_10
## %bb.1:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_
	cmpb	$0, 402(%rbx)
	movb	400(%rbx), %al
	je	LBB361_6
## %bb.2:
	testb	%al, %al
	je	LBB361_5
## %bb.3:
	movq	64(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB361_5
## %bb.4:
	callq	__ZdaPv
LBB361_5:
	movb	401(%rbx), %al
	movb	%al, 400(%rbx)
	movq	104(%rbx), %rax
	movq	112(%rbx), %rcx
	movq	%rcx, 96(%rbx)
	movq	%rax, 64(%rbx)
	movb	$0, 401(%rbx)
	movq	$0, 112(%rbx)
	movq	$0, 104(%rbx)
	jmp	LBB361_10
LBB361_6:
	testb	%al, %al
	je	LBB361_7
LBB361_9:
	movq	96(%rbx), %rdi
	movq	%rdi, 112(%rbx)
	callq	__Znam
	movq	%rax, 104(%rbx)
	movb	$1, 401(%rbx)
	jmp	LBB361_10
LBB361_7:
	leaq	88(%rbx), %rax
	cmpq	%rax, 64(%rbx)
	je	LBB361_9
## %bb.8:
	movq	64(%rbx), %rax
	movq	96(%rbx), %rdi
	movq	%rdi, 112(%rbx)
	movq	%rax, 104(%rbx)
	movb	$0, 401(%rbx)
	callq	__Znam
	movq	%rax, 64(%rbx)
	movb	$1, 400(%rbx)
LBB361_10:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl ## -- Begin function _ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	%rdx, -24(%rbp)
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_
	cmpb	$0, 400(%rbx)
	je	LBB362_3
## %bb.1:
	movq	64(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB362_3
## %bb.2:
	callq	__ZdaPv
LBB362_3:
	cmpb	$0, 401(%rbx)
	je	LBB362_6
## %bb.4:
	movq	104(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB362_6
## %bb.5:
	callq	__ZdaPv
LBB362_6:
	movq	-24(%rbp), %rdi
	movq	%rdi, 96(%rbx)
	cmpq	$9, %rdi
	jb	LBB362_11
## %bb.7:
	testq	%r14, %r14
	je	LBB362_10
## %bb.8:
	cmpb	$0, 402(%rbx)
	je	LBB362_10
## %bb.9:
	movq	%r14, 64(%rbx)
	jmp	LBB362_12
LBB362_11:
	leaq	88(%rbx), %rax
	movq	%rax, 64(%rbx)
	movq	$8, 96(%rbx)
LBB362_12:
	xorl	%eax, %eax
	jmp	LBB362_13
LBB362_10:
	callq	__Znam
	movq	%rax, 64(%rbx)
	movb	$1, %al
LBB362_13:
	movb	%al, 400(%rbx)
	cmpb	$0, 402(%rbx)
	je	LBB362_14
## %bb.18:
	movb	$0, 401(%rbx)
	movq	$0, 104(%rbx)
	movq	$0, 112(%rbx)
	jmp	LBB362_19
LBB362_14:
	movq	$8, -32(%rbp)
	leaq	-24(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	__ZNSt3__1L3maxIlEERKT_S3_S3_
	movq	(%rax), %rdi
	movq	%rdi, 112(%rbx)
	testq	%r14, %r14
	je	LBB362_17
## %bb.15:
	cmpq	$8, %rdi
	jb	LBB362_17
## %bb.16:
	movq	%r14, 104(%rbx)
	movb	$0, 401(%rbx)
	jmp	LBB362_19
LBB362_17:
	callq	__Znam
	movq	%rax, 104(%rbx)
	movb	$1, 401(%rbx)
LBB362_19:
	movq	%rbx, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj ## -- Begin function _ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$280, %rsp                      ## imm = 0x118
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %r14
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	128(%rsi), %rdi
	testq	%rdi, %rdi
	je	LBB363_11
## %bb.1:
	movl	%ecx, %r15d
	movq	%rdx, %r12
	movq	%rsi, %rbx
	callq	__ZNKSt3__17codecvtIcc11__mbstate_tE8encodingEv
	cmpq	$0, 120(%rbx)
	je	LBB363_5
## %bb.2:
	movl	%eax, %r13d
	testq	%r12, %r12
	je	LBB363_4
## %bb.3:
	testl	%r13d, %r13d
	jle	LBB363_5
LBB363_4:
	movq	(%rbx), %rax
	movq	%rbx, %rdi
	callq	*48(%rax)
	testl	%eax, %eax
	jne	LBB363_5
## %bb.6:
	cmpl	$3, %r15d
	jae	LBB363_5
## %bb.7:
	movq	120(%rbx), %rdi
	movslq	%r13d, %rax
	imulq	%rax, %r12
	xorl	%esi, %esi
	testl	%eax, %eax
	cmovgq	%r12, %rsi
	movl	%r15d, %edx
	callq	_fseeko
	testl	%eax, %eax
	je	LBB363_8
LBB363_5:
	movq	%r14, %rdi
	movq	$-1, %rsi
	callq	__ZNSt3__14fposI11__mbstate_tEC1Ex
LBB363_9:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB363_12
## %bb.10:
	movq	%r14, %rax
	addq	$280, %rsp                      ## imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB363_8:
	movq	120(%rbx), %rdi
	callq	_ftello
	leaq	-184(%rbp), %r15
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__14fposI11__mbstate_tEC1Ex
	addq	$136, %rbx
	movl	$16, %ecx
	movq	%rsp, %rdi
	movq	%rbx, %rsi
	rep;movsq (%rsi), %es:(%rdi)
	movq	%r15, %rdi
	callq	__ZNSt3__14fposI11__mbstate_tE5stateES1_
	movl	$136, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	_memcpy
	jmp	LBB363_9
LBB363_12:
	callq	___stack_chk_fail
LBB363_11:
	callq	__ZNSt3__1L16__throw_bad_castEv
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj ## -- Begin function _ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$144, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %r14
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	cmpq	$0, 120(%rsi)
	je	LBB364_2
## %bb.1:
	movq	%rsi, %rbx
	movq	(%rsi), %rax
	movq	%rsi, %rdi
	callq	*48(%rax)
	testl	%eax, %eax
	jne	LBB364_2
## %bb.3:
	leaq	16(%rbp), %r15
	movq	120(%rbx), %r12
	movq	%r15, %rdi
	callq	__ZNKSt3__14fposI11__mbstate_tEcvxEv
	movq	%r12, %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	_fseeko
	testl	%eax, %eax
	je	LBB364_4
LBB364_2:
	movq	%r14, %rdi
	movq	$-1, %rsi
	callq	__ZNSt3__14fposI11__mbstate_tEC1Ex
LBB364_5:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-40(%rbp), %rax
	jne	LBB364_7
## %bb.6:
	movq	%r14, %rax
	addq	$144, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB364_4:
	leaq	-168(%rbp), %r12
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	__ZNKSt3__14fposI11__mbstate_tE5stateEv
	addq	$136, %rbx
	movl	$16, %ecx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	rep;movsq (%rsi), %es:(%rdi)
	movl	$136, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	_memcpy
	jmp	LBB364_5
LBB364_7:
	callq	___stack_chk_fail
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv ## -- Begin function _ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	xorl	%r13d, %r13d
	cmpq	$0, 120(%rdi)
	je	LBB365_24
## %bb.1:
	movq	%rdi, %r15
	movq	128(%rdi), %rax
	testq	%rax, %rax
	je	LBB365_27
## %bb.2:
	movl	396(%r15), %ecx
	testb	$16, %cl
	jne	LBB365_6
## %bb.3:
	testb	$8, %cl
	je	LBB365_23
## %bb.4:
	leaq	264(%r15), %rsi
	leaq	-176(%rbp), %rdi
	movl	$16, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	cmpb	$0, 402(%r15)
	je	LBB365_13
## %bb.5:
	movq	%r15, %rdi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv
	movq	%rax, %r14
	movq	%r15, %rdi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv
	subq	%rax, %r14
	jmp	LBB365_17
LBB365_6:
	movq	%r15, %rdi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv
	movq	%rax, %rbx
	movq	%r15, %rdi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv
	cmpq	%rax, %rbx
	je	LBB365_8
## %bb.7:
	callq	__ZNSt3__111char_traitsIcE3eofEv
	movq	(%r15), %rcx
	movq	%r15, %rdi
	movl	%eax, %esi
	callq	*104(%rcx)
	movl	%eax, %ebx
	callq	__ZNSt3__111char_traitsIcE3eofEv
	movl	$-1, %r13d
	cmpl	%eax, %ebx
	je	LBB365_24
LBB365_8:
	leaq	136(%r15), %r14
	movl	$-1, %r13d
	.p2align	4, 0x90
LBB365_9:                               ## =>This Inner Loop Header: Depth=1
	movq	64(%r15), %rdx
	movq	128(%r15), %rdi
	movq	96(%r15), %rcx
	addq	%rdx, %rcx
	movq	%r14, %rsi
	leaq	-176(%rbp), %r8
	callq	__ZNKSt3__17codecvtIcc11__mbstate_tE7unshiftERS1_PcS4_RS4_
	movl	%eax, %ebx
	movq	-176(%rbp), %r12
	movq	64(%r15), %rdi
	movq	120(%r15), %rcx
	subq	%rdi, %r12
	movl	$1, %esi
	movq	%r12, %rdx
	callq	_fwrite
	cmpq	%r12, %rax
	jne	LBB365_24
## %bb.10:                              ##   in Loop: Header=BB365_9 Depth=1
	cmpl	$1, %ebx
	je	LBB365_9
## %bb.11:
	cmpl	$2, %ebx
	je	LBB365_24
## %bb.12:
	movq	120(%r15), %rdi
	callq	_fflush
	testl	%eax, %eax
	jne	LBB365_24
	jmp	LBB365_23
LBB365_13:
	movq	%rax, %rdi
	callq	__ZNKSt3__17codecvtIcc11__mbstate_tE8encodingEv
	movq	80(%r15), %r14
	subq	72(%r15), %r14
	testl	%eax, %eax
	jle	LBB365_15
## %bb.14:
	movslq	%eax, %r12
	movq	%r15, %rdi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv
	movq	%rax, %rbx
	movq	%r15, %rdi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv
	subq	%rax, %rbx
	imulq	%r12, %rbx
	addq	%rbx, %r14
LBB365_17:
	xorl	%ebx, %ebx
LBB365_18:
	movq	120(%r15), %rdi
	negq	%r14
	movq	%r14, %rsi
	movl	$1, %edx
	callq	_fseeko
	testl	%eax, %eax
	je	LBB365_20
## %bb.19:
	movl	$-1, %r13d
	jmp	LBB365_24
LBB365_20:
	testb	%bl, %bl
	je	LBB365_22
## %bb.21:
	leaq	136(%r15), %rdi
	leaq	-176(%rbp), %rsi
	movl	$16, %ecx
	rep;movsq (%rsi), %es:(%rdi)
LBB365_22:
	movq	64(%r15), %rax
	movq	%rax, 80(%r15)
	movq	%rax, 72(%r15)
	movq	%r15, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_
	movl	$0, 396(%r15)
LBB365_23:
	xorl	%r13d, %r13d
LBB365_24:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-48(%rbp), %rax
	jne	LBB365_26
## %bb.25:
	movl	%r13d, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB365_15:
	movq	%r15, %rdi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv
	movq	%rax, %rbx
	movq	%r15, %rdi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv
	cmpq	%rax, %rbx
	je	LBB365_17
## %bb.16:
	movq	128(%r15), %r12
	movq	64(%r15), %r13
	movq	72(%r15), %rax
	movq	%rax, -184(%rbp)                ## 8-byte Spill
	movq	%r15, %rdi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv
	subq	%rax, %rbx
	leaq	-176(%rbp), %rsi
	movq	%r12, %rdi
	movq	%r13, %rdx
	movq	-184(%rbp), %rcx                ## 8-byte Reload
	movq	%rbx, %r8
	callq	__ZNKSt3__17codecvtIcc11__mbstate_tE6lengthERS1_PKcS5_m
	cltq
	addq	72(%r15), %r14
	subq	%rax, %r14
	subq	64(%r15), %r14
	movb	$1, %bl
	jmp	LBB365_18
LBB365_26:
	callq	___stack_chk_fail
LBB365_27:
	callq	__ZNSt3__1L16__throw_bad_castEv
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv ## -- Begin function _ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	cmpq	$0, 120(%rdi)
	je	LBB366_1
## %bb.2:
	movq	%rdi, %r12
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE11__read_modeEv
	movl	%eax, %ebx
	movq	%r12, %rdi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv
	testq	%rax, %rax
	je	LBB366_3
## %bb.4:
	testb	%bl, %bl
	je	LBB366_6
LBB366_5:
	xorl	%r15d, %r15d
	jmp	LBB366_7
LBB366_1:
	callq	__ZNSt3__111char_traitsIcE3eofEv
	movl	%eax, %r14d
	jmp	LBB366_27
LBB366_3:
	leaq	-40(%rbp), %rcx
	leaq	-41(%rbp), %rsi
	movq	%r12, %rdi
	movq	%rcx, %rdx
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_
	testb	%bl, %bl
	jne	LBB366_5
LBB366_6:
	movq	%r12, %rdi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv
	movq	%rax, %rbx
	movq	%r12, %rdi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv
	subq	%rax, %rbx
	movq	%rbx, %rax
	shrq	$63, %rax
	addq	%rbx, %rax
	sarq	%rax
	movq	%rax, -56(%rbp)
	movq	$4, -64(%rbp)
	leaq	-56(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	callq	__ZNSt3__1L3minImEERKT_S3_S3_
	movq	(%rax), %r15
LBB366_7:
	callq	__ZNSt3__111char_traitsIcE3eofEv
	movl	%eax, %r14d
	movq	%r12, %rdi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv
	movq	%rax, %r13
	movq	%r12, %rdi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv
	cmpq	%rax, %r13
	je	LBB366_8
## %bb.23:
	movsbl	(%r13), %edi
	jmp	LBB366_24
LBB366_8:
	movq	%rax, %rbx
	movq	%r12, %rdi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv
	subq	%r15, %rbx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	_memmove
	cmpb	$0, 402(%r12)
	je	LBB366_11
## %bb.9:
	movq	%r12, %rdi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv
	movq	%rax, %rbx
	movq	%r12, %rdi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv
	subq	%r15, %rbx
	subq	%rax, %rbx
	leaq	(%rax,%r15), %rdi
	movq	120(%r12), %rcx
	movl	$1, %esi
	movq	%rbx, %rdx
	callq	_fread
	testq	%rax, %rax
	je	LBB366_25
## %bb.10:
	movq	%rax, %rbx
	movq	%r12, %rdi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv
	addq	%rax, %r15
	addq	%r15, %rbx
LBB366_21:
	movq	%r12, %rdi
	movq	%rax, %rsi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	jmp	LBB366_22
LBB366_11:
	movq	72(%r12), %rsi
	movq	80(%r12), %rdx
	subq	%rsi, %rdx
	je	LBB366_13
## %bb.12:
	movq	64(%r12), %rdi
	callq	_memmove
LBB366_13:
	movq	64(%r12), %rax
	movq	80(%r12), %r13
	subq	72(%r12), %r13
	addq	%rax, %r13
	movq	%r13, 72(%r12)
	leaq	88(%r12), %rcx
	cmpq	%rcx, %rax
	je	LBB366_14
## %bb.15:
	movq	96(%r12), %rcx
	jmp	LBB366_16
LBB366_14:
	movl	$8, %ecx
LBB366_16:
	addq	%rcx, %rax
	movq	%rax, 80(%r12)
	movq	112(%r12), %rax
	subq	%r15, %rax
	movq	%rax, -56(%rbp)
	movq	80(%r12), %rax
	subq	72(%r12), %rax
	movq	%rax, -64(%rbp)
	leaq	-56(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	callq	__ZNSt3__1L3minImEERKT_S3_S3_
	movq	(%rax), %rdx
	leaq	136(%r12), %rbx
	leaq	264(%r12), %rdi
	movl	$16, %ecx
	movq	%rbx, %rsi
	rep;movsq (%rsi), %es:(%rdi)
	movq	120(%r12), %rcx
	movl	$1, %esi
	movq	%r13, %rdi
	callq	_fread
	testq	%rax, %rax
	je	LBB366_25
## %bb.17:
	movq	%rbx, -88(%rbp)                 ## 8-byte Spill
	movq	128(%r12), %rbx
	testq	%rbx, %rbx
	je	LBB366_28
## %bb.18:
	movq	%rax, %r13
	leaq	72(%r12), %rax
	movq	%rax, -80(%rbp)                 ## 8-byte Spill
	addq	72(%r12), %r13
	movq	%r13, 80(%r12)
	movq	64(%r12), %rax
	movq	%rax, -72(%rbp)                 ## 8-byte Spill
	movq	%r12, %rdi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv
	leaq	(%rax,%r15), %r9
	addq	112(%r12), %rax
	movq	%rbx, %rdi
	movq	-88(%rbp), %rsi                 ## 8-byte Reload
	movq	-72(%rbp), %rdx                 ## 8-byte Reload
	movq	%r13, %rcx
	movq	-80(%rbp), %r8                  ## 8-byte Reload
	leaq	-56(%rbp), %rbx
	pushq	%rbx
	pushq	%rax
	callq	__ZNKSt3__17codecvtIcc11__mbstate_tE2inERS1_PKcS5_RS5_PcS7_RS7_
	addq	$16, %rsp
	cmpl	$3, %eax
	jne	LBB366_20
## %bb.19:
	movq	64(%r12), %rdx
	movq	80(%r12), %rcx
	movq	%r12, %rdi
	movq	%rdx, %rsi
LBB366_22:
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_
	movq	%r12, %rdi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv
	movsbl	(%rax), %edi
LBB366_24:
	callq	__ZNSt3__111char_traitsIcE11to_int_typeEc
	movl	%eax, %r14d
LBB366_25:
	movq	%r12, %rdi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv
	leaq	-41(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB366_27
## %bb.26:
	movq	%r12, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_
LBB366_27:
	movl	%r14d, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB366_20:
	movq	-56(%rbp), %rbx
	movq	%r12, %rdi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv
	addq	%rax, %r15
	cmpq	%r15, %rbx
	jne	LBB366_21
	jmp	LBB366_25
LBB366_28:
	callq	__ZNSt3__1L16__throw_bad_castEv
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi ## -- Begin function _ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	cmpq	$0, 120(%rdi)
	je	LBB367_7
## %bb.1:
	movl	%esi, %r14d
	movq	%rdi, %r15
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv
	movq	%rax, %rbx
	movq	%r15, %rdi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv
	cmpq	%rax, %rbx
	jae	LBB367_7
## %bb.2:
	callq	__ZNSt3__111char_traitsIcE3eofEv
	movl	%r14d, %edi
	movl	%eax, %esi
	callq	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	testb	%al, %al
	je	LBB367_4
## %bb.3:
	movq	%r15, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5gbumpEi
	movl	%r14d, %edi
	callq	__ZNSt3__111char_traitsIcE7not_eofEi
	jmp	LBB367_8
LBB367_4:
	testb	$16, 392(%r15)
	jne	LBB367_6
## %bb.5:
	movl	%r14d, %edi
	callq	__ZNSt3__111char_traitsIcE12to_char_typeEi
	movl	%eax, %ebx
	movq	%r15, %rdi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv
	movsbl	-1(%rax), %esi
	movsbl	%bl, %edi
	callq	__ZNSt3__111char_traitsIcE2eqEcc
	testb	%al, %al
	je	LBB367_7
LBB367_6:
	movq	%r15, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5gbumpEi
	movl	%r14d, %edi
	callq	__ZNSt3__111char_traitsIcE12to_char_typeEi
	movl	%eax, %ebx
	movq	%r15, %rdi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv
	movb	%bl, (%rax)
	jmp	LBB367_9
LBB367_7:
	callq	__ZNSt3__111char_traitsIcE3eofEv
LBB367_8:
	movl	%eax, %r14d
LBB367_9:
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi ## -- Begin function _ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	cmpq	$0, 120(%rdi)
	je	LBB368_9
## %bb.1:
	movl	%esi, %r14d
	movq	%rdi, %r13
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE12__write_modeEv
	movq	%r13, %rdi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv
	movq	%rax, %r12
	movq	%r13, %rdi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrEv
	movq	%rax, -80(%rbp)                 ## 8-byte Spill
	callq	__ZNSt3__111char_traitsIcE3eofEv
	movl	%r14d, %edi
	movl	%eax, %esi
	callq	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	testb	%al, %al
	jne	LBB368_5
## %bb.2:
	movq	%r13, %rdi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv
	testq	%rax, %rax
	jne	LBB368_4
## %bb.3:
	leaq	-40(%rbp), %rdx
	leaq	-41(%rbp), %rsi
	movq	%r13, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_
LBB368_4:
	movl	%r14d, %edi
	callq	__ZNSt3__111char_traitsIcE12to_char_typeEi
	movl	%eax, %ebx
	movq	%r13, %rdi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv
	movb	%bl, (%rax)
	movq	%r13, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpEi
LBB368_5:
	movq	%r13, %rdi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv
	movq	%rax, %r15
	movq	%r13, %rdi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv
	subq	%rax, %r15
	je	LBB368_32
## %bb.6:
	cmpb	$0, 402(%r13)
	je	LBB368_10
## %bb.7:
	movq	120(%r13), %rcx
	movl	$1, %esi
	movq	%rax, %rdi
	movq	%r15, %rdx
	callq	_fwrite
	cmpq	%r15, %rax
	jne	LBB368_28
## %bb.8:
	movb	$1, %bl
                                        ## implicit-def: $r15d
	testb	%bl, %bl
	je	LBB368_34
	jmp	LBB368_31
LBB368_9:
	callq	__ZNSt3__111char_traitsIcE3eofEv
	jmp	LBB368_33
LBB368_10:
	movq	%r12, -72(%rbp)                 ## 8-byte Spill
	movl	%r14d, -48(%rbp)                ## 4-byte Spill
	movq	64(%r13), %rax
	movq	%rax, -64(%rbp)
	leaq	136(%r13), %rax
	movq	%rax, -88(%rbp)                 ## 8-byte Spill
                                        ## implicit-def: $r15d
	jmp	LBB368_11
	.p2align	4, 0x90
LBB368_24:                              ##   in Loop: Header=BB368_11 Depth=1
	xorl	%ebx, %ebx
	callq	__ZNSt3__111char_traitsIcE3eofEv
	movl	%eax, %r15d
	testb	%bl, %bl
	je	LBB368_34
LBB368_25:                              ##   in Loop: Header=BB368_11 Depth=1
	cmpl	$1, %r12d
	jne	LBB368_30
LBB368_11:                              ## =>This Inner Loop Header: Depth=1
	movq	128(%r13), %rbx
	testq	%rbx, %rbx
	je	LBB368_35
## %bb.12:                              ##   in Loop: Header=BB368_11 Depth=1
	movq	%r13, %rdi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv
	movq	%rax, %r14
	movq	%r13, %rdi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv
	movq	64(%r13), %r9
	movq	96(%r13), %r10
	addq	%r9, %r10
	movq	%rbx, %rdi
	movq	-88(%rbp), %rsi                 ## 8-byte Reload
	movq	%r14, %rdx
	movq	%rax, %rcx
	leaq	-56(%rbp), %r8
	leaq	-64(%rbp), %rax
	pushq	%rax
	pushq	%r10
	callq	__ZNKSt3__17codecvtIcc11__mbstate_tE3outERS1_PKcS5_RS5_PcS7_RS7_
	addq	$16, %rsp
	movl	%eax, %r12d
	movq	-56(%rbp), %rbx
	movq	%r13, %rdi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv
	cmpq	%rax, %rbx
	je	LBB368_24
## %bb.13:                              ##   in Loop: Header=BB368_11 Depth=1
	cmpl	$3, %r12d
	jne	LBB368_18
## %bb.14:                              ##   in Loop: Header=BB368_11 Depth=1
	movq	%rax, %r14
	movq	%r13, %rdi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv
	movq	%rax, %rbx
	subq	%r14, %rbx
	movq	120(%r13), %rcx
	movl	$1, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	_fwrite
	movb	$1, %r14b
	cmpq	%rbx, %rax
	je	LBB368_16
## %bb.15:                              ##   in Loop: Header=BB368_11 Depth=1
	xorl	%r14d, %r14d
	callq	__ZNSt3__111char_traitsIcE3eofEv
	movl	%eax, %r15d
LBB368_16:                              ##   in Loop: Header=BB368_11 Depth=1
	testb	%r14b, %r14b
	je	LBB368_17
LBB368_23:                              ##   in Loop: Header=BB368_11 Depth=1
	movb	$1, %bl
	testb	%bl, %bl
	jne	LBB368_25
	jmp	LBB368_34
	.p2align	4, 0x90
LBB368_18:                              ##   in Loop: Header=BB368_11 Depth=1
	cmpl	$1, %r12d
	ja	LBB368_24
## %bb.19:                              ##   in Loop: Header=BB368_11 Depth=1
	movq	-64(%rbp), %rbx
	movq	64(%r13), %rdi
	movq	120(%r13), %rcx
	subq	%rdi, %rbx
	movl	$1, %esi
	movq	%rbx, %rdx
	callq	_fwrite
	cmpq	%rbx, %rax
	jne	LBB368_26
## %bb.20:                              ##   in Loop: Header=BB368_11 Depth=1
	movb	$1, %r14b
	cmpl	$1, %r12d
	jne	LBB368_22
## %bb.21:                              ##   in Loop: Header=BB368_11 Depth=1
	movq	-56(%rbp), %rbx
	movq	%r13, %rdi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_
	movq	%r13, %rdi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrEv
	movq	%rax, %rbx
	movq	%r13, %rdi
	callq	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv
	subq	%rax, %rbx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpEl
LBB368_22:                              ##   in Loop: Header=BB368_11 Depth=1
	testb	%r14b, %r14b
	jne	LBB368_23
LBB368_17:                              ##   in Loop: Header=BB368_11 Depth=1
	xorl	%ebx, %ebx
	testb	%bl, %bl
	jne	LBB368_25
	jmp	LBB368_34
LBB368_26:                              ##   in Loop: Header=BB368_11 Depth=1
	xorl	%r14d, %r14d
	callq	__ZNSt3__111char_traitsIcE3eofEv
	movl	%eax, %r15d
	testb	%r14b, %r14b
	je	LBB368_17
	jmp	LBB368_23
LBB368_28:
	xorl	%ebx, %ebx
	callq	__ZNSt3__111char_traitsIcE3eofEv
	movl	%eax, %r15d
	testb	%bl, %bl
	je	LBB368_34
	jmp	LBB368_31
LBB368_30:
	movl	-48(%rbp), %r14d                ## 4-byte Reload
	movq	-72(%rbp), %r12                 ## 8-byte Reload
LBB368_31:
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	-80(%rbp), %rdx                 ## 8-byte Reload
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_
LBB368_32:
	movl	%r14d, %edi
	callq	__ZNSt3__111char_traitsIcE7not_eofEi
LBB368_33:
	movl	%eax, %r15d
LBB368_34:
	movl	%r15d, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB368_35:
	callq	__ZNSt3__1L16__throw_bad_castEv
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_
__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_: ## @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rsi, 16(%rdi)
	movq	%rdx, 24(%rdi)
	movq	%rcx, 32(%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_
__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_: ## @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rsi, 48(%rdi)
	movq	%rsi, 40(%rdi)
	movq	%rdx, 56(%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L3maxIlEERKT_S3_S3_
__ZNSt3__1L3maxIlEERKT_S3_S3_:          ## @_ZNSt3__1L3maxIlEERKT_S3_S3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__1L3maxIlNS_6__lessIllEEEERKT_S5_S5_T0_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L3maxIlNS_6__lessIllEEEERKT_S5_S5_T0_
__ZNSt3__1L3maxIlNS_6__lessIllEEEERKT_S5_S5_T0_: ## @_ZNSt3__1L3maxIlNS_6__lessIllEEEERKT_S5_S5_T0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	__ZNKSt3__16__lessIllEclERKlS3_
	testb	%al, %al
	cmovneq	%r14, %rbx
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__16__lessIllEclERKlS3_
__ZNKSt3__16__lessIllEclERKlS3_:        ## @_ZNKSt3__16__lessIllEclERKlS3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	cmpq	(%rsi), %rax
	setl	%al
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L16__throw_bad_castEv
__ZNSt3__1L16__throw_bad_castEv:        ## @_ZNSt3__1L16__throw_bad_castEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movl	$8, %edi
	callq	___cxa_allocate_exception
	movq	%rax, %rbx
	movq	%rax, %rdi
	callq	__ZNSt8bad_castC1Ev
	movq	__ZTISt8bad_cast@GOTPCREL(%rip), %rsi
	movq	__ZNSt8bad_castD1Ev@GOTPCREL(%rip), %rdx
	movq	%rbx, %rdi
	callq	___cxa_throw
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__17codecvtIcc11__mbstate_tE8encodingEv
__ZNKSt3__17codecvtIcc11__mbstate_tE8encodingEv: ## @_ZNKSt3__17codecvtIcc11__mbstate_tE8encodingEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	callq	*48(%rax)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__14fposI11__mbstate_tEC1Ex
__ZNSt3__14fposI11__mbstate_tEC1Ex:     ## @_ZNSt3__14fposI11__mbstate_tEC1Ex
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__14fposI11__mbstate_tEC2Ex
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__14fposI11__mbstate_tE5stateES1_
__ZNSt3__14fposI11__mbstate_tE5stateES1_: ## @_ZNSt3__14fposI11__mbstate_tE5stateES1_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	16(%rbp), %rsi
	movl	$16, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__14fposI11__mbstate_tEC2Ex
__ZNSt3__14fposI11__mbstate_tEC2Ex:     ## @_ZNSt3__14fposI11__mbstate_tEC2Ex
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	$0, 120(%rdi)
	movq	$0, 112(%rdi)
	movq	$0, 104(%rdi)
	movq	$0, 96(%rdi)
	movq	$0, 88(%rdi)
	movq	$0, 80(%rdi)
	movq	$0, 72(%rdi)
	movq	$0, 64(%rdi)
	movq	$0, 56(%rdi)
	movq	$0, 48(%rdi)
	movq	$0, 40(%rdi)
	movq	$0, 32(%rdi)
	movq	$0, 24(%rdi)
	movq	$0, 16(%rdi)
	movq	$0, 8(%rdi)
	movq	$0, (%rdi)
	movq	%rsi, 128(%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__14fposI11__mbstate_tEcvxEv
__ZNKSt3__14fposI11__mbstate_tEcvxEv:   ## @_ZNKSt3__14fposI11__mbstate_tEcvxEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	128(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__14fposI11__mbstate_tE5stateEv
__ZNKSt3__14fposI11__mbstate_tE5stateEv: ## @_ZNKSt3__14fposI11__mbstate_tE5stateEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	movl	$16, %ecx
	rep;movsq (%rsi), %es:(%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv
__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv: ## @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	48(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv
__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv: ## @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	40(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__17codecvtIcc11__mbstate_tE7unshiftERS1_PcS4_RS4_
__ZNKSt3__17codecvtIcc11__mbstate_tE7unshiftERS1_PcS4_RS4_: ## @_ZNKSt3__17codecvtIcc11__mbstate_tE7unshiftERS1_PcS4_RS4_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	callq	*40(%rax)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv
__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv: ## @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	32(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv
__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv: ## @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4gptrEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	24(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__17codecvtIcc11__mbstate_tE6lengthERS1_PKcS5_m
__ZNKSt3__17codecvtIcc11__mbstate_tE6lengthERS1_PKcS5_m: ## @_ZNKSt3__17codecvtIcc11__mbstate_tE6lengthERS1_PKcS5_m
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	callq	*64(%rax)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv
__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv: ## @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	16(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE11__read_modeEv ## -- Begin function _ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE11__read_modeEv
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE11__read_modeEv
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE11__read_modeEv: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE11__read_modeEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	testb	$8, 396(%rdi)
	jne	LBB388_1
## %bb.2:
	movq	%rdi, %rbx
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_
	cmpb	$0, 402(%rbx)
	je	LBB388_4
## %bb.3:
	movq	64(%rbx), %rsi
	movq	96(%rbx), %rcx
	jmp	LBB388_5
LBB388_1:
	xorl	%eax, %eax
	jmp	LBB388_6
LBB388_4:
	movq	104(%rbx), %rsi
	movq	112(%rbx), %rcx
LBB388_5:
	addq	%rsi, %rcx
	movq	%rbx, %rdi
	movq	%rcx, %rdx
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_
	movl	$8, 396(%rbx)
	movb	$1, %al
LBB388_6:
                                        ## kill: def $al killed $al killed $eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__111char_traitsIcE11to_int_typeEc ## -- Begin function _ZNSt3__111char_traitsIcE11to_int_typeEc
	.weak_def_can_be_hidden	__ZNSt3__111char_traitsIcE11to_int_typeEc
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE11to_int_typeEc: ## @_ZNSt3__111char_traitsIcE11to_int_typeEc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movzbl	%dil, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__17codecvtIcc11__mbstate_tE2inERS1_PKcS5_RS5_PcS7_RS7_
__ZNKSt3__17codecvtIcc11__mbstate_tE2inERS1_PKcS5_RS5_PcS7_RS7_: ## @_ZNKSt3__17codecvtIcc11__mbstate_tE2inERS1_PKcS5_RS5_PcS7_RS7_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	pushq	24(%rbp)
	pushq	16(%rbp)
	callq	*32(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__111char_traitsIcE11eq_int_typeEii ## -- Begin function _ZNSt3__111char_traitsIcE11eq_int_typeEii
	.weak_def_can_be_hidden	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE11eq_int_typeEii: ## @_ZNSt3__111char_traitsIcE11eq_int_typeEii
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	cmpl	%esi, %edi
	sete	%al
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5gbumpEi
__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5gbumpEi: ## @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5gbumpEi
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	decq	24(%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__111char_traitsIcE7not_eofEi ## -- Begin function _ZNSt3__111char_traitsIcE7not_eofEi
	.weak_def_can_be_hidden	__ZNSt3__111char_traitsIcE7not_eofEi
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE7not_eofEi:   ## @_ZNSt3__111char_traitsIcE7not_eofEi
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movl	%edi, %ebx
	callq	__ZNSt3__111char_traitsIcE3eofEv
	movl	%ebx, %edi
	movl	%eax, %esi
	callq	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	testb	%al, %al
	je	LBB393_2
## %bb.1:
	callq	__ZNSt3__111char_traitsIcE3eofEv
	movl	%eax, %ebx
	notl	%ebx
LBB393_2:
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__111char_traitsIcE2eqEcc ## -- Begin function _ZNSt3__111char_traitsIcE2eqEcc
	.weak_def_can_be_hidden	__ZNSt3__111char_traitsIcE2eqEcc
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE2eqEcc:       ## @_ZNSt3__111char_traitsIcE2eqEcc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	cmpb	%sil, %dil
	sete	%al
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__111char_traitsIcE12to_char_typeEi ## -- Begin function _ZNSt3__111char_traitsIcE12to_char_typeEi
	.weak_def_can_be_hidden	__ZNSt3__111char_traitsIcE12to_char_typeEi
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE12to_char_typeEi: ## @_ZNSt3__111char_traitsIcE12to_char_typeEi
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movsbl	%dil, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE12__write_modeEv ## -- Begin function _ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE12__write_modeEv
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE12__write_modeEv
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE12__write_modeEv: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE12__write_modeEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	testb	$16, 396(%rdi)
	jne	LBB396_8
## %bb.1:
	movq	%rdi, %rbx
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setgEPcS4_S4_
	movq	96(%rbx), %rax
	cmpq	$9, %rax
	jb	LBB396_6
## %bb.2:
	cmpb	$0, 402(%rbx)
	je	LBB396_5
## %bb.3:
	movq	64(%rbx), %rsi
	jmp	LBB396_4
LBB396_6:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	jmp	LBB396_7
LBB396_5:
	movq	104(%rbx), %rsi
	movq	112(%rbx), %rax
LBB396_4:
	leaq	-1(%rax,%rsi), %rdx
	movq	%rbx, %rdi
LBB396_7:
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE4setpEPcS4_
	movl	$16, 396(%rbx)
LBB396_8:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrEv
__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrEv: ## @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5epptrEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	56(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpEi
__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpEi: ## @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbumpEi
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	incq	48(%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__17codecvtIcc11__mbstate_tE3outERS1_PKcS5_RS5_PcS7_RS7_
__ZNKSt3__17codecvtIcc11__mbstate_tE3outERS1_PKcS5_RS5_PcS7_RS7_: ## @_ZNKSt3__17codecvtIcc11__mbstate_tE3outERS1_PKcS5_RS5_PcS7_RS7_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	pushq	24(%rbp)
	pushq	16(%rbp)
	callq	*24(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpEl
__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpEl: ## @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE7__pbumpEl
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	addq	%rsi, 48(%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE15__make_mdstringEj
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE15__make_mdstringEj: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE15__make_mdstringEj
	.cfi_startproc
## %bb.0:
                                        ## kill: def $edi killed $edi def $rdi
	andl	$-3, %edi
	decl	%edi
	cmpl	$59, %edi
	ja	LBB401_13
## %bb.1:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	L_.str.23(%rip), %rax
	leaq	LJTI401_0(%rip), %rcx
	movslq	(%rcx,%rdi,4), %rdx
	addq	%rcx, %rdx
	popq	%rbp
	jmpq	*%rdx
LBB401_2:
	leaq	L_.str.24(%rip), %rax
	retq
LBB401_8:
	leaq	L_.str.30(%rip), %rax
	retq
LBB401_6:
	leaq	L_.str.28(%rip), %rax
	retq
LBB401_12:
	leaq	L_.str.34(%rip), %rax
	retq
LBB401_7:
	leaq	L_.str.29(%rip), %rax
	retq
LBB401_13:
	xorl	%eax, %eax
LBB401_14:
	retq
LBB401_3:
	leaq	L_.str.25(%rip), %rax
	retq
LBB401_9:
	leaq	L_.str.31(%rip), %rax
	retq
LBB401_4:
	leaq	L_.str.26(%rip), %rax
	retq
LBB401_10:
	leaq	L_.str.32(%rip), %rax
	retq
LBB401_5:
	leaq	L_.str.27(%rip), %rax
	retq
LBB401_11:
	leaq	L_.str.33(%rip), %rax
	retq
	.cfi_endproc
	.p2align	2, 0x90
	.data_region jt32
.set L401_0_set_2, LBB401_2-LJTI401_0
.set L401_0_set_13, LBB401_13-LJTI401_0
.set L401_0_set_8, LBB401_8-LJTI401_0
.set L401_0_set_3, LBB401_3-LJTI401_0
.set L401_0_set_6, LBB401_6-LJTI401_0
.set L401_0_set_9, LBB401_9-LJTI401_0
.set L401_0_set_12, LBB401_12-LJTI401_0
.set L401_0_set_14, LBB401_14-LJTI401_0
.set L401_0_set_7, LBB401_7-LJTI401_0
.set L401_0_set_4, LBB401_4-LJTI401_0
.set L401_0_set_10, LBB401_10-LJTI401_0
.set L401_0_set_5, LBB401_5-LJTI401_0
.set L401_0_set_11, LBB401_11-LJTI401_0
LJTI401_0:
	.long	L401_0_set_2
	.long	L401_0_set_13
	.long	L401_0_set_13
	.long	L401_0_set_13
	.long	L401_0_set_8
	.long	L401_0_set_13
	.long	L401_0_set_13
	.long	L401_0_set_3
	.long	L401_0_set_6
	.long	L401_0_set_13
	.long	L401_0_set_13
	.long	L401_0_set_9
	.long	L401_0_set_12
	.long	L401_0_set_13
	.long	L401_0_set_13
	.long	L401_0_set_14
	.long	L401_0_set_2
	.long	L401_0_set_13
	.long	L401_0_set_13
	.long	L401_0_set_7
	.long	L401_0_set_8
	.long	L401_0_set_13
	.long	L401_0_set_13
	.long	L401_0_set_4
	.long	L401_0_set_6
	.long	L401_0_set_13
	.long	L401_0_set_13
	.long	L401_0_set_10
	.long	L401_0_set_12
	.long	L401_0_set_13
	.long	L401_0_set_13
	.long	L401_0_set_13
	.long	L401_0_set_13
	.long	L401_0_set_13
	.long	L401_0_set_13
	.long	L401_0_set_13
	.long	L401_0_set_13
	.long	L401_0_set_13
	.long	L401_0_set_13
	.long	L401_0_set_13
	.long	L401_0_set_13
	.long	L401_0_set_13
	.long	L401_0_set_13
	.long	L401_0_set_13
	.long	L401_0_set_13
	.long	L401_0_set_13
	.long	L401_0_set_13
	.long	L401_0_set_14
	.long	L401_0_set_13
	.long	L401_0_set_13
	.long	L401_0_set_13
	.long	L401_0_set_7
	.long	L401_0_set_13
	.long	L401_0_set_13
	.long	L401_0_set_13
	.long	L401_0_set_5
	.long	L401_0_set_13
	.long	L401_0_set_13
	.long	L401_0_set_13
	.long	L401_0_set_11
	.end_data_region
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__18ios_base8setstateEj
__ZNSt3__18ios_base8setstateEj:         ## @_ZNSt3__18ios_base8setstateEj
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	orl	32(%rdi), %esi
	callq	__ZNSt3__18ios_base5clearEj
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev ## -- Begin function _ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED2Ev
Lfunc_begin26:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception26
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, %rbx
	movq	__ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE@GOTPCREL(%rip), %rax
	addq	$16, %rax
	movq	%rax, (%rdi)
Ltmp344:
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5closeEv
Ltmp345:
LBB403_2:
	cmpb	$0, 400(%rbx)
	je	LBB403_5
## %bb.3:
	movq	64(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB403_5
## %bb.4:
	callq	__ZdaPv
LBB403_5:
	cmpb	$0, 401(%rbx)
	je	LBB403_8
## %bb.6:
	movq	104(%rbx), %rdi
	testq	%rdi, %rdi
	je	LBB403_8
## %bb.7:
	callq	__ZdaPv
LBB403_8:
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB403_1:
Ltmp346:
	movq	%rax, %rdi
	callq	___cxa_begin_catch
Ltmp347:
	callq	___cxa_end_catch
Ltmp348:
	jmp	LBB403_2
LBB403_9:
Ltmp349:
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	movq	%r14, %rdi
	callq	___clang_call_terminate
Lfunc_end26:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table403:
Lexception26:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	155                             ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end26-Lcst_begin26
Lcst_begin26:
	.uleb128 Ltmp344-Lfunc_begin26          ## >> Call Site 1 <<
	.uleb128 Ltmp345-Ltmp344                ##   Call between Ltmp344 and Ltmp345
	.uleb128 Ltmp346-Lfunc_begin26          ##     jumps to Ltmp346
	.byte	1                               ##   On action: 1
	.uleb128 Ltmp345-Lfunc_begin26          ## >> Call Site 2 <<
	.uleb128 Ltmp347-Ltmp345                ##   Call between Ltmp345 and Ltmp347
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp347-Lfunc_begin26          ## >> Call Site 3 <<
	.uleb128 Ltmp348-Ltmp347                ##   Call between Ltmp347 and Ltmp348
	.uleb128 Ltmp349-Lfunc_begin26          ##     jumps to Ltmp349
	.byte	1                               ##   On action: 1
Lcst_end26:
	.byte	1                               ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                               ##   No further actions
	.p2align	2
                                        ## >> Catch TypeInfos <<
	.long	0                               ## TypeInfo 1
Lttbase1:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5closeEv ## -- Begin function _ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5closeEv
	.weak_def_can_be_hidden	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5closeEv
	.p2align	4, 0x90
__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5closeEv: ## @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5closeEv
Lfunc_begin27:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception27
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	120(%rdi), %rsi
	testq	%rsi, %rsi
	je	LBB404_1
## %bb.2:
	movq	%rdi, %r15
	movq	_fclose@GOTPCREL(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	-56(%rbp), %rdi
	leaq	-40(%rbp), %rdx
	callq	__ZNSt3__110unique_ptrI7__sFILEPFiPS1_EEC1ILb1EvEES2_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS4_EEXT_EE20__good_rval_ref_typeE
	movq	(%r15), %rax
Ltmp350:
	movq	%r15, %rdi
	callq	*48(%rax)
Ltmp351:
## %bb.3:
	movl	%eax, %r14d
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__110unique_ptrI7__sFILEPFiPS1_EE7releaseEv
	movq	%rax, %rdi
	callq	_fclose
	movl	%eax, %r12d
	movq	$0, 120(%r15)
	movq	(%r15), %rax
Ltmp352:
	movq	%r15, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	*24(%rax)
Ltmp353:
## %bb.4:
	xorl	%ebx, %ebx
	orl	%r14d, %r12d
	cmoveq	%r15, %rbx
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__110unique_ptrI7__sFILEPFiPS1_EED1Ev
	jmp	LBB404_5
LBB404_1:
	xorl	%ebx, %ebx
LBB404_5:
	movq	%rbx, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB404_6:
Ltmp354:
	movq	%rax, %rbx
	leaq	-56(%rbp), %rdi
	callq	__ZNSt3__110unique_ptrI7__sFILEPFiPS1_EED1Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end27:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table404:
Lexception27:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end27-Lcst_begin27
Lcst_begin27:
	.uleb128 Ltmp350-Lfunc_begin27          ## >> Call Site 1 <<
	.uleb128 Ltmp353-Ltmp350                ##   Call between Ltmp350 and Ltmp353
	.uleb128 Ltmp354-Lfunc_begin27          ##     jumps to Ltmp354
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp353-Lfunc_begin27          ## >> Call Site 2 <<
	.uleb128 Lfunc_end27-Ltmp353            ##   Call between Ltmp353 and Lfunc_end27
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end27:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__110unique_ptrI7__sFILEPFiPS1_EEC1ILb1EvEES2_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS4_EEXT_EE20__good_rval_ref_typeE
__ZNSt3__110unique_ptrI7__sFILEPFiPS1_EEC1ILb1EvEES2_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS4_EEXT_EE20__good_rval_ref_typeE: ## @_ZNSt3__110unique_ptrI7__sFILEPFiPS1_EEC1ILb1EvEES2_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS4_EEXT_EE20__good_rval_ref_typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__110unique_ptrI7__sFILEPFiPS1_EEC2ILb1EvEES2_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS4_EEXT_EE20__good_rval_ref_typeE
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__110unique_ptrI7__sFILEPFiPS1_EE7releaseEv
__ZNSt3__110unique_ptrI7__sFILEPFiPS1_EE7releaseEv: ## @_ZNSt3__110unique_ptrI7__sFILEPFiPS1_EE7releaseEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__117__compressed_pairIP7__sFILEPFiS2_EE5firstEv
	movq	(%rax), %rcx
	movq	$0, (%rax)
	movq	%rcx, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__110unique_ptrI7__sFILEPFiPS1_EED1Ev
__ZNSt3__110unique_ptrI7__sFILEPFiPS1_EED1Ev: ## @_ZNSt3__110unique_ptrI7__sFILEPFiPS1_EED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__110unique_ptrI7__sFILEPFiPS1_EED2Ev
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__110unique_ptrI7__sFILEPFiPS1_EEC2ILb1EvEES2_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS4_EEXT_EE20__good_rval_ref_typeE
__ZNSt3__110unique_ptrI7__sFILEPFiPS1_EEC2ILb1EvEES2_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS4_EEXT_EE20__good_rval_ref_typeE: ## @_ZNSt3__110unique_ptrI7__sFILEPFiPS1_EEC2ILb1EvEES2_NS_16__dependent_typeINS_27__unique_ptr_deleter_sfinaeIS4_EEXT_EE20__good_rval_ref_typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rsi, -8(%rbp)
	leaq	-8(%rbp), %rsi
	callq	__ZNSt3__117__compressed_pairIP7__sFILEPFiS2_EEC1IRS2_S4_EEOT_OT0_
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIP7__sFILEPFiS2_EEC1IRS2_S4_EEOT_OT0_
__ZNSt3__117__compressed_pairIP7__sFILEPFiS2_EEC1IRS2_S4_EEOT_OT0_: ## @_ZNSt3__117__compressed_pairIP7__sFILEPFiS2_EEC1IRS2_S4_EEOT_OT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__117__compressed_pairIP7__sFILEPFiS2_EEC2IRS2_S4_EEOT_OT0_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIP7__sFILEPFiS2_EEC2IRS2_S4_EEOT_OT0_
__ZNSt3__117__compressed_pairIP7__sFILEPFiS2_EEC2IRS2_S4_EEOT_OT0_: ## @_ZNSt3__117__compressed_pairIP7__sFILEPFiS2_EEC2IRS2_S4_EEOT_OT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdx, %r14
	movq	%rdi, %rbx
	callq	__ZNSt3__122__compressed_pair_elemIP7__sFILELi0ELb0EEC2IRS2_vEEOT_
	addq	$8, %rbx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__122__compressed_pair_elemIPFiP7__sFILEELi1ELb0EEC2IS4_vEEOT_
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__122__compressed_pair_elemIP7__sFILELi0ELb0EEC2IRS2_vEEOT_
__ZNSt3__122__compressed_pair_elemIP7__sFILELi0ELb0EEC2IRS2_vEEOT_: ## @_ZNSt3__122__compressed_pair_elemIP7__sFILELi0ELb0EEC2IRS2_vEEOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__122__compressed_pair_elemIPFiP7__sFILEELi1ELb0EEC2IS4_vEEOT_
__ZNSt3__122__compressed_pair_elemIPFiP7__sFILEELi1ELb0EEC2IS4_vEEOT_: ## @_ZNSt3__122__compressed_pair_elemIPFiP7__sFILEELi1ELb0EEC2IS4_vEEOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIP7__sFILEPFiS2_EE5firstEv
__ZNSt3__117__compressed_pairIP7__sFILEPFiS2_EE5firstEv: ## @_ZNSt3__117__compressed_pairIP7__sFILEPFiS2_EE5firstEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__122__compressed_pair_elemIP7__sFILELi0ELb0EE5__getEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__122__compressed_pair_elemIP7__sFILELi0ELb0EE5__getEv
__ZNSt3__122__compressed_pair_elemIP7__sFILELi0ELb0EE5__getEv: ## @_ZNSt3__122__compressed_pair_elemIP7__sFILELi0ELb0EE5__getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__110unique_ptrI7__sFILEPFiPS1_EED2Ev
__ZNSt3__110unique_ptrI7__sFILEPFiPS1_EED2Ev: ## @_ZNSt3__110unique_ptrI7__sFILEPFiPS1_EED2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__110unique_ptrI7__sFILEPFiPS1_EE5resetES2_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__110unique_ptrI7__sFILEPFiPS1_EE5resetES2_
__ZNSt3__110unique_ptrI7__sFILEPFiPS1_EE5resetES2_: ## @_ZNSt3__110unique_ptrI7__sFILEPFiPS1_EE5resetES2_
Lfunc_begin28:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception28
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, %r14
	callq	__ZNSt3__117__compressed_pairIP7__sFILEPFiS2_EE5firstEv
	movq	(%rax), %rbx
	movq	$0, (%rax)
	testq	%rbx, %rbx
	je	LBB416_2
## %bb.1:
	movq	%r14, %rdi
	callq	__ZNSt3__117__compressed_pairIP7__sFILEPFiS2_EE6secondEv
Ltmp355:
	movq	%rbx, %rdi
	callq	*(%rax)
Ltmp356:
LBB416_2:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB416_3:
Ltmp357:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end28:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table416:
Lexception28:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	155                             ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase2-Lttbaseref2
Lttbaseref2:
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end28-Lcst_begin28
Lcst_begin28:
	.uleb128 Ltmp355-Lfunc_begin28          ## >> Call Site 1 <<
	.uleb128 Ltmp356-Ltmp355                ##   Call between Ltmp355 and Ltmp356
	.uleb128 Ltmp357-Lfunc_begin28          ##     jumps to Ltmp357
	.byte	1                               ##   On action: 1
Lcst_end28:
	.byte	1                               ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                               ##   No further actions
	.p2align	2
                                        ## >> Catch TypeInfos <<
	.long	0                               ## TypeInfo 1
Lttbase2:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIP7__sFILEPFiS2_EE6secondEv
__ZNSt3__117__compressed_pairIP7__sFILEPFiS2_EE6secondEv: ## @_ZNSt3__117__compressed_pairIP7__sFILEPFiS2_EE6secondEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	addq	$8, %rdi
	callq	__ZNSt3__122__compressed_pair_elemIPFiP7__sFILEELi1ELb0EE5__getEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__122__compressed_pair_elemIPFiP7__sFILEELi1ELb0EE5__getEv
__ZNSt3__122__compressed_pair_elemIPFiP7__sFILEELi1ELb0EE5__getEv: ## @_ZNSt3__122__compressed_pair_elemIPFiP7__sFILEELi1ELb0EE5__getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE13__move_assignERS3_NS_17integral_constantIbLb1EEE ## -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE13__move_assignERS3_NS_17integral_constantIbLb1EEE
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEE13__move_assignERS3_NS_17integral_constantIbLb1EEE
	.p2align	4, 0x90
__ZNSt3__16vectorIiNS_9allocatorIiEEE13__move_assignERS3_NS_17integral_constantIbLb1EEE: ## @_ZNSt3__16vectorIiNS_9allocatorIiEEE13__move_assignERS3_NS_17integral_constantIbLb1EEE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE13__vdeallocateEv
	movq	(%rbx), %rax
	movq	%rax, (%r14)
	movq	8(%rbx), %rax
	movq	%rax, 8(%r14)
	movq	%rbx, %rdi
	callq	__ZNSt3__113__vector_baseIiNS_9allocatorIiEEE9__end_capEv
	movq	%rax, %r15
	movq	(%rax), %r12
	movq	%r14, %rdi
	callq	__ZNSt3__113__vector_baseIiNS_9allocatorIiEEE9__end_capEv
	movq	%r12, (%rax)
	movq	$0, (%r15)
	movq	$0, 8(%rbx)
	movq	$0, (%rbx)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE22__construct_one_at_endIJdEEEvDpOT_
__ZNSt3__16vectorIdNS_9allocatorIdEEE22__construct_one_at_endIJdEEEvDpOT_: ## @_ZNSt3__16vectorIdNS_9allocatorIdEEE22__construct_one_at_endIJdEEEvDpOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %rbx
	movq	%rdi, %rsi
	leaq	-40(%rbp), %r14
	movl	$1, %edx
	movq	%r14, %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC1ERS3_m
	movq	-32(%rbp), %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE9constructIdJdEvEEvRS2_PT_DpOT0_
	addq	$8, -32(%rbp)
	movq	%r14, %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD1Ev
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE21__push_back_slow_pathIdEEvOT_
__ZNSt3__16vectorIdNS_9allocatorIdEEE21__push_back_slow_pathIdEEvOT_: ## @_ZNSt3__16vectorIdNS_9allocatorIdEEE21__push_back_slow_pathIdEEvOT_
Lfunc_begin29:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception29
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	__ZNSt3__113__vector_baseIdNS_9allocatorIdEEE7__allocEv
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeEv
	leaq	1(%rax), %rsi
	movq	%rbx, %rdi
	callq	__ZNKSt3__16vectorIdNS_9allocatorIdEEE11__recommendEm
	movq	%rax, %r12
	movq	%rbx, %rdi
	callq	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeEv
	leaq	-80(%rbp), %r13
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	movq	%r15, %rcx
	callq	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC1EmmS3_
	movq	-64(%rbp), %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE9constructIdJdEvEEvRS2_PT_DpOT0_
	addq	$8, -64(%rbp)
Ltmp358:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE26__swap_out_circular_bufferERNS_14__split_bufferIdRS2_EE
Ltmp359:
## %bb.1:
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED1Ev
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB421_2:
Ltmp360:
	movq	%rax, %rbx
	leaq	-80(%rbp), %rdi
	callq	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED1Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end29:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table421:
Lexception29:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end29-Lcst_begin29
Lcst_begin29:
	.uleb128 Lfunc_begin29-Lfunc_begin29    ## >> Call Site 1 <<
	.uleb128 Ltmp358-Lfunc_begin29          ##   Call between Lfunc_begin29 and Ltmp358
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp358-Lfunc_begin29          ## >> Call Site 2 <<
	.uleb128 Ltmp359-Ltmp358                ##   Call between Ltmp358 and Ltmp359
	.uleb128 Ltmp360-Lfunc_begin29          ##     jumps to Ltmp360
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp359-Lfunc_begin29          ## >> Call Site 3 <<
	.uleb128 Lfunc_end29-Ltmp359            ##   Call between Ltmp359 and Lfunc_end29
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end29:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIdEEE9constructIdJdEvEEvRS2_PT_DpOT0_
__ZNSt3__116allocator_traitsINS_9allocatorIdEEE9constructIdJdEvEEvRS2_PT_DpOT0_: ## @_ZNSt3__116allocator_traitsINS_9allocatorIdEEE9constructIdJdEvEEvRS2_PT_DpOT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__19allocatorIdE9constructIdJdEEEvPT_DpOT0_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__19allocatorIdE9constructIdJdEEEvPT_DpOT0_
__ZNSt3__19allocatorIdE9constructIdJdEEEvPT_DpOT0_: ## @_ZNSt3__19allocatorIdE9constructIdJdEEEvPT_DpOT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC1EmmS3_ ## -- Begin function _ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC1EmmS3_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC1EmmS3_
	.p2align	4, 0x90
__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC1EmmS3_: ## @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC1EmmS3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC2EmmS3_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE26__swap_out_circular_bufferERNS_14__split_bufferIdRS2_EE ## -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE26__swap_out_circular_bufferERNS_14__split_bufferIdRS2_EE
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEE26__swap_out_circular_bufferERNS_14__split_bufferIdRS2_EE
	.p2align	4, 0x90
__ZNSt3__16vectorIdNS_9allocatorIdEEE26__swap_out_circular_bufferERNS_14__split_bufferIdRS2_EE: ## @_ZNSt3__16vectorIdNS_9allocatorIdEEE26__swap_out_circular_bufferERNS_14__split_bufferIdRS2_EE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	8(%rdi), %r15
	movq	(%rdi), %rdi
	movq	8(%rbx), %rsi
	leaq	8(%r14), %r12
	movq	%r12, %rdx
	callq	__ZNSt3__1L46__construct_backward_with_exception_guaranteesINS_9allocatorIdEEdvEEvRT_PT0_S6_RS6_
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	__ZNSt3__1L4swapIPdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	leaq	16(%r14), %rsi
	movq	%r15, %rdi
	callq	__ZNSt3__1L4swapIPdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	movq	%rbx, %rdi
	callq	__ZNSt3__113__vector_baseIdNS_9allocatorIdEEE9__end_capEv
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE9__end_capEv
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__1L4swapIPdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	movq	8(%r14), %rax
	movq	%rax, (%r14)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED1Ev ## -- Begin function _ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED1Ev
	.p2align	4, 0x90
__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED1Ev: ## @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED2Ev
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC2EmmS3_ ## -- Begin function _ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC2EmmS3_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC2EmmS3_
	.p2align	4, 0x90
__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC2EmmS3_: ## @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC2EmmS3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	addq	$24, %rdi
	movq	%rcx, %rsi
	callq	__ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEEC1IDnS4_EEOT_OT0_
	testq	%r14, %r14
	je	LBB427_1
## %bb.2:
	movq	%r14, %rdi
	callq	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE8allocateERS2_m
	jmp	LBB427_3
LBB427_1:
	xorl	%eax, %eax
LBB427_3:
	movq	%rax, (%rbx)
	leaq	(%rax,%r15,8), %rcx
	movq	%rcx, 16(%rbx)
	movq	%rcx, 8(%rbx)
	leaq	(%rax,%r14,8), %r14
	movq	%rbx, %rdi
	callq	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE9__end_capEv
	movq	%r14, (%rax)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEEC1IDnS4_EEOT_OT0_
__ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEEC1IDnS4_EEOT_OT0_: ## @_ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEEC1IDnS4_EEOT_OT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEEC2IDnS4_EEOT_OT0_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE9__end_capEv
__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE9__end_capEv: ## @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE9__end_capEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	addq	$24, %rdi
	callq	__ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEE5firstEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEEC2IDnS4_EEOT_OT0_
__ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEEC2IDnS4_EEOT_OT0_: ## @_ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEEC2IDnS4_EEOT_OT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	__ZNSt3__122__compressed_pair_elemIPdLi0ELb0EEC2IDnvEEOT_
	addq	$8, %rbx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIdEELi1ELb0EEC2IS3_vEEOT_
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__122__compressed_pair_elemIRNS_9allocatorIdEELi1ELb0EEC2IS3_vEEOT_
__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIdEELi1ELb0EEC2IS3_vEEOT_: ## @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIdEELi1ELb0EEC2IS3_vEEOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rsi, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEE5firstEv
__ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEE5firstEv: ## @_ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEE5firstEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__122__compressed_pair_elemIPdLi0ELb0EE5__getEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L46__construct_backward_with_exception_guaranteesINS_9allocatorIdEEdvEEvRT_PT0_S6_RS6_
__ZNSt3__1L46__construct_backward_with_exception_guaranteesINS_9allocatorIdEEdvEEvRT_PT0_S6_RS6_: ## @_ZNSt3__1L46__construct_backward_with_exception_guaranteesINS_9allocatorIdEEdvEEvRT_PT0_S6_RS6_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rsi, %rax
	movq	%rdi, %rsi
	subq	%rdi, %rax
	movq	(%rdx), %rdi
	subq	%rax, %rdi
	movq	%rdi, (%rdx)
	testq	%rax, %rax
	jle	LBB433_2
## %bb.1:
	movq	%rax, %rdx
	callq	_memcpy
LBB433_2:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L4swapIPdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
__ZNSt3__1L4swapIPdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_: ## @_ZNSt3__1L4swapIPdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	movq	(%rsi), %rcx
	movq	%rcx, (%rdi)
	movq	%rax, (%rsi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED2Ev ## -- Begin function _ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED2Ev
	.p2align	4, 0x90
__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED2Ev: ## @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, %rbx
	callq	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE5clearEv
	movq	(%rbx), %r14
	testq	%r14, %r14
	je	LBB435_2
## %bb.1:
	movq	%rbx, %rdi
	callq	__ZNKSt3__114__split_bufferIdRNS_9allocatorIdEEE8capacityEv
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE10deallocateERS2_Pdm
LBB435_2:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE5clearEv
__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE5clearEv: ## @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE5clearEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	8(%rdi), %rsi
	callq	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endEPd
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__114__split_bufferIdRNS_9allocatorIdEEE8capacityEv
__ZNKSt3__114__split_bufferIdRNS_9allocatorIdEEE8capacityEv: ## @_ZNKSt3__114__split_bufferIdRNS_9allocatorIdEEE8capacityEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	callq	__ZNKSt3__114__split_bufferIdRNS_9allocatorIdEEE9__end_capEv
	movq	(%rax), %rax
	subq	(%rbx), %rax
	sarq	$3, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endEPd
__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endEPd: ## @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endEPd
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endEPdNS_17integral_constantIbLb0EEE
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endEPdNS_17integral_constantIbLb0EEE
__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endEPdNS_17integral_constantIbLb0EEE: ## @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endEPdNS_17integral_constantIbLb0EEE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	16(%rdi), %rax
	movq	%rax, %rcx
	subq	%rsi, %rcx
	je	LBB439_2
## %bb.1:
	addq	$-8, %rcx
	shrq	$3, %rcx
	notq	%rcx
	leaq	(%rax,%rcx,8), %rax
	movq	%rax, 16(%rdi)
LBB439_2:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__114__split_bufferIdRNS_9allocatorIdEEE9__end_capEv
__ZNKSt3__114__split_bufferIdRNS_9allocatorIdEEE9__end_capEv: ## @_ZNKSt3__114__split_bufferIdRNS_9allocatorIdEEE9__end_capEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	addq	$24, %rdi
	callq	__ZNKSt3__117__compressed_pairIPdRNS_9allocatorIdEEE5firstEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__117__compressed_pairIPdRNS_9allocatorIdEEE5firstEv
__ZNKSt3__117__compressed_pairIPdRNS_9allocatorIdEEE5firstEv: ## @_ZNKSt3__117__compressed_pairIPdRNS_9allocatorIdEEE5firstEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNKSt3__122__compressed_pair_elemIPdLi0ELb0EE5__getEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__16vectorIdNS_9allocatorIdEEE5emptyEv
__ZNKSt3__16vectorIdNS_9allocatorIdEEE5emptyEv: ## @_ZNKSt3__16vectorIdNS_9allocatorIdEEE5emptyEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	cmpq	8(%rdi), %rax
	sete	%al
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L10accumulateINS_11__wrap_iterIPKdEEdEET0_T_S6_S5_
__ZNSt3__1L10accumulateINS_11__wrap_iterIPKdEEdEET0_T_S6_S5_: ## @_ZNSt3__1L10accumulateINS_11__wrap_iterIPKdEEdEET0_T_S6_S5_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	-40(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	callq	__ZNSt3__1neIPKdEEbRKNS_11__wrap_iterIT_EES7_
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)                ## 8-byte Spill
	testb	%al, %al
	je	LBB443_3
## %bb.1:
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)                ## 8-byte Spill
	leaq	-40(%rbp), %rbx
	leaq	-32(%rbp), %r14
	.p2align	4, 0x90
LBB443_2:                               ## =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	__ZNKSt3__111__wrap_iterIPKdEdeEv
	movsd	-24(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addsd	(%rax), %xmm0
	movsd	%xmm0, -24(%rbp)                ## 8-byte Spill
	movq	%rbx, %rdi
	callq	__ZNSt3__111__wrap_iterIPKdEppEv
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__1neIPKdEEbRKNS_11__wrap_iterIT_EES7_
	testb	%al, %al
	jne	LBB443_2
LBB443_3:
	movsd	-24(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__16vectorIdNS_9allocatorIdEEE5beginEv
__ZNKSt3__16vectorIdNS_9allocatorIdEEE5beginEv: ## @_ZNKSt3__16vectorIdNS_9allocatorIdEEE5beginEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rdi
	callq	__ZNKSt3__16vectorIdNS_9allocatorIdEEE11__make_iterEPKd
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__16vectorIdNS_9allocatorIdEEE3endEv
__ZNKSt3__16vectorIdNS_9allocatorIdEEE3endEv: ## @_ZNKSt3__16vectorIdNS_9allocatorIdEEE3endEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	8(%rdi), %rdi
	callq	__ZNKSt3__16vectorIdNS_9allocatorIdEEE11__make_iterEPKd
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1neIPKdEEbRKNS_11__wrap_iterIT_EES7_
__ZNSt3__1neIPKdEEbRKNS_11__wrap_iterIT_EES7_: ## @_ZNSt3__1neIPKdEEbRKNS_11__wrap_iterIT_EES7_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__1eqIPKdS2_EEbRKNS_11__wrap_iterIT_EERKNS3_IT0_EE
	xorb	$1, %al
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__111__wrap_iterIPKdEdeEv
__ZNKSt3__111__wrap_iterIPKdEdeEv:      ## @_ZNKSt3__111__wrap_iterIPKdEdeEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__111__wrap_iterIPKdEppEv
__ZNSt3__111__wrap_iterIPKdEppEv:       ## @_ZNSt3__111__wrap_iterIPKdEppEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	addq	$8, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1eqIPKdS2_EEbRKNS_11__wrap_iterIT_EERKNS3_IT0_EE
__ZNSt3__1eqIPKdS2_EEbRKNS_11__wrap_iterIT_EERKNS3_IT0_EE: ## @_ZNSt3__1eqIPKdS2_EEbRKNS_11__wrap_iterIT_EERKNS3_IT0_EE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	callq	__ZNKSt3__111__wrap_iterIPKdE4baseEv
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	__ZNKSt3__111__wrap_iterIPKdE4baseEv
	cmpq	%rax, %rbx
	sete	%al
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__111__wrap_iterIPKdE4baseEv
__ZNKSt3__111__wrap_iterIPKdE4baseEv:   ## @_ZNKSt3__111__wrap_iterIPKdE4baseEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__16vectorIdNS_9allocatorIdEEE11__make_iterEPKd
__ZNKSt3__16vectorIdNS_9allocatorIdEEE11__make_iterEPKd: ## @_ZNKSt3__16vectorIdNS_9allocatorIdEEE11__make_iterEPKd
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, %rsi
	leaq	-8(%rbp), %rdi
	callq	__ZNSt3__111__wrap_iterIPKdEC1ES2_
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__111__wrap_iterIPKdEC1ES2_
__ZNSt3__111__wrap_iterIPKdEC1ES2_:     ## @_ZNSt3__111__wrap_iterIPKdEC1ES2_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__111__wrap_iterIPKdEC2ES2_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__111__wrap_iterIPKdEC2ES2_
__ZNSt3__111__wrap_iterIPKdEC2ES2_:     ## @_ZNSt3__111__wrap_iterIPKdEC2ES2_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rsi, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L9transformINS_11__wrap_iterIPKdEENS1_IPdEEZ6getStdIdEdRKNS_6vectorIT_NS_9allocatorIS9_EEEEEUldE_EET0_S9_S9_SG_T1_
__ZNSt3__1L9transformINS_11__wrap_iterIPKdEENS1_IPdEEZ6getStdIdEdRKNS_6vectorIT_NS_9allocatorIS9_EEEEEUldE_EET0_S9_S9_SG_T1_: ## @_ZNSt3__1L9transformINS_11__wrap_iterIPKdEENS1_IPdEEZ6getStdIdEdRKNS_6vectorIT_NS_9allocatorIS9_EEEEEUldE_EET0_S9_S9_SG_T1_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -72(%rbp)
	movsd	%xmm0, -64(%rbp)
	leaq	-48(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	callq	__ZNSt3__1neIPKdEEbRKNS_11__wrap_iterIT_EES7_
	testb	%al, %al
	je	LBB454_3
## %bb.1:
	leaq	-48(%rbp), %rbx
	leaq	-64(%rbp), %r14
	leaq	-72(%rbp), %r15
	leaq	-40(%rbp), %r12
	.p2align	4, 0x90
LBB454_2:                               ## =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	__ZNKSt3__111__wrap_iterIPKdEdeEv
	movsd	(%rax), %xmm0                   ## xmm0 = mem[0],zero
	movq	%r14, %rdi
	callq	__ZZ6getStdIdEdRKNSt3__16vectorIT_NS0_9allocatorIS2_EEEEENKUldE_clEd
	movsd	%xmm0, -56(%rbp)                ## 8-byte Spill
	movq	%r15, %rdi
	callq	__ZNKSt3__111__wrap_iterIPdEdeEv
	movsd	-56(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
	movq	%rbx, %rdi
	callq	__ZNSt3__111__wrap_iterIPKdEppEv
	movq	%r15, %rdi
	callq	__ZNSt3__111__wrap_iterIPdEppEv
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	__ZNSt3__1neIPKdEEbRKNS_11__wrap_iterIT_EES7_
	testb	%al, %al
	jne	LBB454_2
LBB454_3:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L13inner_productINS_11__wrap_iterIPdEES3_dEET1_T_S5_T0_S4_
__ZNSt3__1L13inner_productINS_11__wrap_iterIPdEES3_dEET1_T_S5_T0_S4_: ## @_ZNSt3__1L13inner_productINS_11__wrap_iterIPdEES3_dEET1_T_S5_T0_S4_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -64(%rbp)
	leaq	-48(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	callq	__ZNSt3__1neIPdEEbRKNS_11__wrap_iterIT_EES6_
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)                ## 8-byte Spill
	testb	%al, %al
	je	LBB455_3
## %bb.1:
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)                ## 8-byte Spill
	leaq	-48(%rbp), %rbx
	leaq	-64(%rbp), %r14
	leaq	-40(%rbp), %r15
	.p2align	4, 0x90
LBB455_2:                               ## =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	__ZNKSt3__111__wrap_iterIPdEdeEv
	movsd	(%rax), %xmm0                   ## xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)                ## 8-byte Spill
	movq	%r14, %rdi
	callq	__ZNKSt3__111__wrap_iterIPdEdeEv
	movsd	-56(%rbp), %xmm1                ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	mulsd	(%rax), %xmm1
	movsd	-32(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)                ## 8-byte Spill
	movq	%rbx, %rdi
	callq	__ZNSt3__111__wrap_iterIPdEppEv
	movq	%r14, %rdi
	callq	__ZNSt3__111__wrap_iterIPdEppEv
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	__ZNSt3__1neIPdEEbRKNS_11__wrap_iterIT_EES6_
	testb	%al, %al
	jne	LBB455_2
LBB455_3:
	movsd	-32(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZZ6getStdIdEdRKNSt3__16vectorIT_NS0_9allocatorIS2_EEEEENKUldE_clEd ## -- Begin function _ZZ6getStdIdEdRKNSt3__16vectorIT_NS0_9allocatorIS2_EEEEENKUldE_clEd
	.weak_def_can_be_hidden	__ZZ6getStdIdEdRKNSt3__16vectorIT_NS0_9allocatorIS2_EEEEENKUldE_clEd
	.p2align	4, 0x90
__ZZ6getStdIdEdRKNSt3__16vectorIT_NS0_9allocatorIS2_EEEEENKUldE_clEd: ## @_ZZ6getStdIdEdRKNSt3__16vectorIT_NS0_9allocatorIS2_EEEEENKUldE_clEd
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subsd	(%rdi), %xmm0
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__111__wrap_iterIPdEdeEv
__ZNKSt3__111__wrap_iterIPdEdeEv:       ## @_ZNKSt3__111__wrap_iterIPdEdeEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__111__wrap_iterIPdEppEv
__ZNSt3__111__wrap_iterIPdEppEv:        ## @_ZNSt3__111__wrap_iterIPdEppEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	addq	$8, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1neIPdEEbRKNS_11__wrap_iterIT_EES6_
__ZNSt3__1neIPdEEbRKNS_11__wrap_iterIT_EES6_: ## @_ZNSt3__1neIPdEEbRKNS_11__wrap_iterIT_EES6_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__1eqIPdS1_EEbRKNS_11__wrap_iterIT_EERKNS2_IT0_EE
	xorb	$1, %al
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1eqIPdS1_EEbRKNS_11__wrap_iterIT_EERKNS2_IT0_EE
__ZNSt3__1eqIPdS1_EEbRKNS_11__wrap_iterIT_EERKNS2_IT0_EE: ## @_ZNSt3__1eqIPdS1_EEbRKNS_11__wrap_iterIT_EERKNS2_IT0_EE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	callq	__ZNKSt3__111__wrap_iterIPdE4baseEv
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	__ZNKSt3__111__wrap_iterIPdE4baseEv
	cmpq	%rax, %rbx
	sete	%al
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__111__wrap_iterIPdE4baseEv
__ZNKSt3__111__wrap_iterIPdE4baseEv:    ## @_ZNKSt3__111__wrap_iterIPdE4baseEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED2Ev ## -- Begin function _ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED2Ev
	.p2align	4, 0x90
__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED2Ev: ## @_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	movq	24(%rsi), %rcx
	movq	-24(%rax), %rax
	movq	%rcx, (%rdi,%rax)
	addq	$8, %rdi
	callq	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	addq	$8, %rbx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN11ProbabilityD2Ev           ## -- Begin function _ZN11ProbabilityD2Ev
	.weak_def_can_be_hidden	__ZN11ProbabilityD2Ev
	.p2align	4, 0x90
__ZN11ProbabilityD2Ev:                  ## @_ZN11ProbabilityD2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	addq	$24, %rdi
	callq	__ZNSt3__16vectorINS0_IdNS_9allocatorIdEEEENS1_IS3_EEED1Ev
	movq	%rbx, %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEED1Ev
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN13ConfigurationD2Ev         ## -- Begin function _ZN13ConfigurationD2Ev
	.weak_def_can_be_hidden	__ZN13ConfigurationD2Ev
	.p2align	4, 0x90
__ZN13ConfigurationD2Ev:                ## @_ZN13ConfigurationD2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	addq	$88, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev
	addq	$64, %rbx
	movq	%rbx, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16chronomiIxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
__ZNSt3__16chronomiIxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_: ## @_ZNSt3__16chronomiIxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	(%rdi), %rax
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdi
	callq	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countEv
	movq	%rax, %rbx
	movq	(%r14), %rax
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rdi
	callq	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countEv
	subq	%rax, %rbx
	movq	%rbx, -40(%rbp)
	leaq	-48(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	callq	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	movq	-48(%rbp), %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochEv
__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochEv: ## @_ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countEv
__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countEv: ## @_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE: ## @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE: ## @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2IxEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_xEE5valueooL_ZNS_17integral_constantIbLb0EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2IxNS2_ILl1ELl1000000000EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE
__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2IxNS2_ILl1ELl1000000000EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE: ## @_ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2IxNS2_ILl1ELl1000000000EEEEERKNS1_IT_T0_EEPNS_9enable_ifIXaasr13__no_overflowIS8_S3_EE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEaaeqsr13__no_overflowIS8_S3_E4typeE3denLi1Entsr23treat_as_floating_pointIS7_EE5valueEvE4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	callq	__ZNSt3__16chronoL13duration_castINS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEEEENS_9enable_ifIXsr13__is_durationIT_EE5valueES8_E4typeERKNS2_IT0_T1_EE
	movsd	%xmm0, -16(%rbp)
	leaq	-16(%rbp), %rdi
	callq	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEE5countEv
	movsd	%xmm0, (%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16chronoL13duration_castINS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEEEENS_9enable_ifIXsr13__is_durationIT_EE5valueES8_E4typeERKNS2_IT0_T1_EE
__ZNSt3__16chronoL13duration_castINS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEEEENS_9enable_ifIXsr13__is_durationIT_EE5valueES8_E4typeERKNS2_IT0_T1_EE: ## @_ZNSt3__16chronoL13duration_castINS0_8durationIdNS_5ratioILl1ELl1EEEEExNS3_ILl1ELl1000000000EEEEENS_9enable_ifIXsr13__is_durationIT_EE5valueES8_E4typeERKNS2_IT0_T1_EE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclERKS5_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function _ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclERKS5_
LCPI472_0:
	.quad	0x41cdcd6500000000              ## double 1.0E+9
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90
__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclERKS5_: ## @_ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1EEEEES4_Lb1ELb0EEclERKS5_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	callq	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countEv
	cvtsi2sd	%rax, %xmm0
	divsd	LCPI472_0(%rip), %xmm0
	movsd	%xmm0, -8(%rbp)
	leaq	-16(%rbp), %rdi
	leaq	-8(%rbp), %rsi
	callq	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1IdEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_dEE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	movsd	-16(%rbp), %xmm0                ## xmm0 = mem[0],zero
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1IdEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_dEE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1IdEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_dEE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE: ## @_ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC1IdEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_dEE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2IdEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_dEE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2IdEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_dEE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2IdEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_dEE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE: ## @_ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1EEEEC2IdEERKT_PNS_9enable_ifIXaasr14is_convertibleIS6_dEE5valueooL_ZNS_17integral_constantIbLb1EE5valueEEntsr23treat_as_floating_pointIS6_EE5valueEvE4typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__18ios_base4setfEjj
__ZNSt3__18ios_base4setfEjj:            ## @_ZNSt3__18ios_base4setfEjj
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	callq	__ZNSt3__18ios_base6unsetfEj
	orb	$4, 8(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__18ios_base6unsetfEj
__ZNSt3__18ios_base6unsetfEj:           ## @_ZNSt3__18ios_base6unsetfEj
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andl	$-261, 8(%rdi)                  ## imm = 0xFEFB
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__18__iom_t5C1Ei
__ZNSt3__18__iom_t5C1Ei:                ## @_ZNSt3__18__iom_t5C1Ei
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__18__iom_t5C2Ei
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__18__iom_t5C2Ei
__ZNSt3__18__iom_t5C2Ei:                ## @_ZNSt3__18__iom_t5C2Ei
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$15, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZN10SimulationD2Ev            ## -- Begin function _ZN10SimulationD2Ev
	.weak_def_can_be_hidden	__ZN10SimulationD2Ev
	.p2align	4, 0x90
__ZN10SimulationD2Ev:                   ## @_ZN10SimulationD2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	addq	$48, %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEED1Ev
	leaq	24(%rbx), %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEED1Ev
	movq	%rbx, %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEED1Ev
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC2EmRKi ## -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEEC2EmRKi
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEEC2EmRKi
	.p2align	4, 0x90
__ZNSt3__16vectorIiNS_9allocatorIiEEEC2EmRKi: ## @_ZNSt3__16vectorIiNS_9allocatorIiEEEC2EmRKi
Lfunc_begin30:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception30
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	callq	__ZNSt3__113__vector_baseIiNS_9allocatorIiEEEC2Ev
	testq	%rbx, %rbx
	je	LBB480_3
## %bb.1:
Ltmp361:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateEm
Ltmp362:
## %bb.2:
Ltmp363:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEmRKi
Ltmp364:
LBB480_3:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB480_4:
Ltmp365:
	movq	%rax, %rbx
	movq	%r15, %rdi
	callq	__ZNSt3__113__vector_baseIiNS_9allocatorIiEEED2Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end30:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table480:
Lexception30:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end30-Lcst_begin30
Lcst_begin30:
	.uleb128 Ltmp361-Lfunc_begin30          ## >> Call Site 1 <<
	.uleb128 Ltmp364-Ltmp361                ##   Call between Ltmp361 and Ltmp364
	.uleb128 Ltmp365-Lfunc_begin30          ##     jumps to Ltmp365
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp364-Lfunc_begin30          ## >> Call Site 2 <<
	.uleb128 Lfunc_end30-Ltmp364            ##   Call between Ltmp364 and Lfunc_end30
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end30:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEmRKi
__ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEmRKi: ## @_ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEmRKi
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1ERS3_m
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r15
	cmpq	%r15, %rbx
	je	LBB481_2
	.p2align	4, 0x90
LBB481_1:                               ## =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructIiJRKiEvEEvRS2_PT_DpOT0_
	addq	$4, %rbx
	movq	%rbx, -40(%rbp)
	cmpq	%rbx, %r15
	jne	LBB481_1
LBB481_2:
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1Ev
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__113__vector_baseIiNS_9allocatorIiEEED2Ev ## -- Begin function _ZNSt3__113__vector_baseIiNS_9allocatorIiEEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__113__vector_baseIiNS_9allocatorIiEEED2Ev
	.p2align	4, 0x90
__ZNSt3__113__vector_baseIiNS_9allocatorIiEEED2Ev: ## @_ZNSt3__113__vector_baseIiNS_9allocatorIiEEED2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	cmpq	$0, (%rdi)
	je	LBB482_2
## %bb.1:
	movq	%rdi, %rbx
	callq	__ZNSt3__113__vector_baseIiNS_9allocatorIiEEE5clearEv
	movq	(%rbx), %r14
	movq	%rbx, %rdi
	callq	__ZNKSt3__113__vector_baseIiNS_9allocatorIiEEE8capacityEv
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateERS2_Pim
LBB482_2:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEED2Ev
__ZNSt3__16vectorIiNS_9allocatorIiEEED2Ev: ## @_ZNSt3__16vectorIiNS_9allocatorIiEEED2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__113__vector_baseIiNS_9allocatorIiEEED2Ev
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEEC2EmRKS3_ ## -- Begin function _ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEEC2EmRKS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEEC2EmRKS3_
	.p2align	4, 0x90
__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEEC2EmRKS3_: ## @_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEEC2EmRKS3_
Lfunc_begin31:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception31
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	callq	__ZNSt3__113__vector_baseINS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEEC2Ev
	testq	%rbx, %rbx
	je	LBB484_3
## %bb.1:
Ltmp366:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE11__vallocateEm
Ltmp367:
## %bb.2:
Ltmp368:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE18__construct_at_endEmRKS3_
Ltmp369:
LBB484_3:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB484_4:
Ltmp370:
	movq	%rax, %rbx
	movq	%r15, %rdi
	callq	__ZNSt3__113__vector_baseINS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEED2Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end31:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table484:
Lexception31:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end31-Lcst_begin31
Lcst_begin31:
	.uleb128 Ltmp366-Lfunc_begin31          ## >> Call Site 1 <<
	.uleb128 Ltmp369-Ltmp366                ##   Call between Ltmp366 and Ltmp369
	.uleb128 Ltmp370-Lfunc_begin31          ##     jumps to Ltmp370
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp369-Lfunc_begin31          ## >> Call Site 2 <<
	.uleb128 Lfunc_end31-Ltmp369            ##   Call between Ltmp369 and Lfunc_end31
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end31:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__113__vector_baseINS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEEC2Ev
__ZNSt3__113__vector_baseINS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEEC2Ev: ## @_ZNSt3__113__vector_baseINS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEEC2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	16(%rdi), %rax
	movq	$0, 8(%rdi)
	movq	$0, (%rdi)
	movq	%rax, %rdi
	callq	__ZNSt3__117__compressed_pairIPNS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEEC1IDnNS_18__default_init_tagEEEOT_OT0_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE11__vallocateEm ## -- Begin function _ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE11__vallocateEm
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE11__vallocateEm
	.p2align	4, 0x90
__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE11__vallocateEm: ## @_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE11__vallocateEm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	__ZNKSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE8max_sizeEv
	cmpq	%r14, %rax
	jb	LBB486_2
## %bb.1:
	movq	%r14, %rdi
	callq	__ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIiNS1_IiEEEEEEE8allocateERS5_m
	movq	%rax, 8(%rbx)
	movq	%rax, (%rbx)
	leaq	(%r14,%r14,2), %rcx
	leaq	(%rax,%rcx,8), %r14
	movq	%rbx, %rdi
	callq	__ZNSt3__113__vector_baseINS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEE9__end_capEv
	movq	%r14, (%rax)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB486_2:
	movq	%rbx, %rdi
	callq	__ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE18__construct_at_endEmRKS3_
__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE18__construct_at_endEmRKS3_: ## @_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE18__construct_at_endEmRKS3_
Lfunc_begin32:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception32
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21_ConstructTransactionC1ERS5_m
	movq	-40(%rbp), %rbx
	movq	-32(%rbp), %r15
	cmpq	%r15, %rbx
	je	LBB487_3
	.p2align	4, 0x90
LBB487_1:                               ## =>This Inner Loop Header: Depth=1
Ltmp371:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIiNS1_IiEEEEEEE9constructIS4_JRKS4_EvEEvRS5_PT_DpOT0_
Ltmp372:
## %bb.2:                               ##   in Loop: Header=BB487_1 Depth=1
	addq	$24, %rbx
	movq	%rbx, -40(%rbp)
	cmpq	%rbx, %r15
	jne	LBB487_1
LBB487_3:
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21_ConstructTransactionD1Ev
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB487_4:
Ltmp373:
	movq	%rax, %rbx
	leaq	-48(%rbp), %rdi
	callq	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21_ConstructTransactionD1Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end32:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table487:
Lexception32:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end32-Lcst_begin32
Lcst_begin32:
	.uleb128 Lfunc_begin32-Lfunc_begin32    ## >> Call Site 1 <<
	.uleb128 Ltmp371-Lfunc_begin32          ##   Call between Lfunc_begin32 and Ltmp371
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp371-Lfunc_begin32          ## >> Call Site 2 <<
	.uleb128 Ltmp372-Ltmp371                ##   Call between Ltmp371 and Ltmp372
	.uleb128 Ltmp373-Lfunc_begin32          ##     jumps to Ltmp373
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp372-Lfunc_begin32          ## >> Call Site 3 <<
	.uleb128 Lfunc_end32-Ltmp372            ##   Call between Ltmp372 and Lfunc_end32
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end32:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__113__vector_baseINS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEED2Ev ## -- Begin function _ZNSt3__113__vector_baseINS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__113__vector_baseINS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEED2Ev
	.p2align	4, 0x90
__ZNSt3__113__vector_baseINS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEED2Ev: ## @_ZNSt3__113__vector_baseINS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEED2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	cmpq	$0, (%rdi)
	je	LBB488_2
## %bb.1:
	movq	%rdi, %rbx
	callq	__ZNSt3__113__vector_baseINS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEE5clearEv
	movq	(%rbx), %r14
	movq	%rbx, %rdi
	callq	__ZNKSt3__113__vector_baseINS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEE8capacityEv
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIiNS1_IiEEEEEEE10deallocateERS5_PS4_m
LBB488_2:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIPNS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEEC1IDnNS_18__default_init_tagEEEOT_OT0_
__ZNSt3__117__compressed_pairIPNS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEEC1IDnNS_18__default_init_tagEEEOT_OT0_: ## @_ZNSt3__117__compressed_pairIPNS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEEC1IDnNS_18__default_init_tagEEEOT_OT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__117__compressed_pairIPNS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEEC2IDnNS_18__default_init_tagEEEOT_OT0_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIPNS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEEC2IDnNS_18__default_init_tagEEEOT_OT0_
__ZNSt3__117__compressed_pairIPNS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEEC2IDnNS_18__default_init_tagEEEOT_OT0_: ## @_ZNSt3__117__compressed_pairIPNS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEEC2IDnNS_18__default_init_tagEEEOT_OT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__122__compressed_pair_elemIPNS_6vectorIiNS_9allocatorIiEEEELi0ELb0EEC2IDnvEEOT_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__122__compressed_pair_elemIPNS_6vectorIiNS_9allocatorIiEEEELi0ELb0EEC2IDnvEEOT_
__ZNSt3__122__compressed_pair_elemIPNS_6vectorIiNS_9allocatorIiEEEELi0ELb0EEC2IDnvEEOT_: ## @_ZNSt3__122__compressed_pair_elemIPNS_6vectorIiNS_9allocatorIiEEEELi0ELb0EEC2IDnvEEOT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	$0, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNKSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE8max_sizeEv ## -- Begin function _ZNKSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE8max_sizeEv
	.weak_def_can_be_hidden	__ZNKSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE8max_sizeEv
	.p2align	4, 0x90
__ZNKSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE8max_sizeEv: ## @_ZNKSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE8max_sizeEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$768614336404564650, %rax       ## imm = 0xAAAAAAAAAAAAAAA
	movq	%rax, -16(%rbp)
	movabsq	$9223372036854775807, %rax      ## imm = 0x7FFFFFFFFFFFFFFF
	movq	%rax, -8(%rbp)
	leaq	-16(%rbp), %rdi
	leaq	-8(%rbp), %rsi
	callq	__ZNSt3__1L3minImEERKT_S3_S3_
	movq	(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIiNS1_IiEEEEEEE8allocateERS5_m
__ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIiNS1_IiEEEEEEE8allocateERS5_m: ## @_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIiNS1_IiEEEEEEE8allocateERS5_m
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__19allocatorINS_6vectorIiNS0_IiEEEEE8allocateEm
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__113__vector_baseINS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEE9__end_capEv
__ZNSt3__113__vector_baseINS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEE9__end_capEv: ## @_ZNSt3__113__vector_baseINS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEE9__end_capEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	addq	$16, %rdi
	callq	__ZNSt3__117__compressed_pairIPNS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEE5firstEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__19allocatorINS_6vectorIiNS0_IiEEEEE8allocateEm
__ZNSt3__19allocatorINS_6vectorIiNS0_IiEEEEE8allocateEm: ## @_ZNSt3__19allocatorINS_6vectorIiNS0_IiEEEEE8allocateEm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movabsq	$768614336404564651, %rax       ## imm = 0xAAAAAAAAAAAAAAB
	cmpq	%rax, %rdi
	jae	LBB495_2
## %bb.1:
	shlq	$3, %rdi
	leaq	(%rdi,%rdi,2), %rdi
	callq	__ZNSt3__1L17__libcpp_allocateEmm
	popq	%rbp
	retq
LBB495_2:
	callq	__ZNSt3__1L20__throw_length_errorEPKc
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIPNS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEE5firstEv
__ZNSt3__117__compressed_pairIPNS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEE5firstEv: ## @_ZNSt3__117__compressed_pairIPNS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEE5firstEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__122__compressed_pair_elemIPNS_6vectorIiNS_9allocatorIiEEEELi0ELb0EE5__getEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__122__compressed_pair_elemIPNS_6vectorIiNS_9allocatorIiEEEELi0ELb0EE5__getEv
__ZNSt3__122__compressed_pair_elemIPNS_6vectorIiNS_9allocatorIiEEEELi0ELb0EE5__getEv: ## @_ZNSt3__122__compressed_pair_elemIPNS_6vectorIiNS_9allocatorIiEEEELi0ELb0EE5__getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__113__vector_baseINS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEE8capacityEv
__ZNKSt3__113__vector_baseINS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEE8capacityEv: ## @_ZNKSt3__113__vector_baseINS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEE8capacityEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	callq	__ZNKSt3__113__vector_baseINS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEE9__end_capEv
	movq	(%rax), %rcx
	subq	(%rbx), %rcx
	sarq	$3, %rcx
	movabsq	$-6148914691236517205, %rax     ## imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rcx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__113__vector_baseINS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEE9__end_capEv
__ZNKSt3__113__vector_baseINS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEE9__end_capEv: ## @_ZNKSt3__113__vector_baseINS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEE9__end_capEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	addq	$16, %rdi
	callq	__ZNKSt3__117__compressed_pairIPNS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEE5firstEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__117__compressed_pairIPNS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEE5firstEv
__ZNKSt3__117__compressed_pairIPNS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEE5firstEv: ## @_ZNKSt3__117__compressed_pairIPNS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEE5firstEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNKSt3__122__compressed_pair_elemIPNS_6vectorIiNS_9allocatorIiEEEELi0ELb0EE5__getEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__122__compressed_pair_elemIPNS_6vectorIiNS_9allocatorIiEEEELi0ELb0EE5__getEv
__ZNKSt3__122__compressed_pair_elemIPNS_6vectorIiNS_9allocatorIiEEEELi0ELb0EE5__getEv: ## @_ZNKSt3__122__compressed_pair_elemIPNS_6vectorIiNS_9allocatorIiEEEELi0ELb0EE5__getEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21_ConstructTransactionC1ERS5_m ## -- Begin function _ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21_ConstructTransactionC1ERS5_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21_ConstructTransactionC1ERS5_m
	.p2align	4, 0x90
__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21_ConstructTransactionC1ERS5_m: ## @_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21_ConstructTransactionC1ERS5_m
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21_ConstructTransactionC2ERS5_m
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIiNS1_IiEEEEEEE9constructIS4_JRKS4_EvEEvRS5_PT_DpOT0_
__ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIiNS1_IiEEEEEEE9constructIS4_JRKS4_EvEEvRS5_PT_DpOT0_: ## @_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIiNS1_IiEEEEEEE9constructIS4_JRKS4_EvEEvRS5_PT_DpOT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__19allocatorINS_6vectorIiNS0_IiEEEEE9constructIS3_JRKS3_EEEvPT_DpOT0_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21_ConstructTransactionD1Ev ## -- Begin function _ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21_ConstructTransactionD1Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21_ConstructTransactionD1Ev
	.p2align	4, 0x90
__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21_ConstructTransactionD1Ev: ## @_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21_ConstructTransactionD1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21_ConstructTransactionD2Ev
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21_ConstructTransactionC2ERS5_m ## -- Begin function _ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21_ConstructTransactionC2ERS5_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21_ConstructTransactionC2ERS5_m
	.p2align	4, 0x90
__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21_ConstructTransactionC2ERS5_m: ## @_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21_ConstructTransactionC2ERS5_m
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rsi, (%rdi)
	movq	8(%rsi), %rax
	movq	%rax, 8(%rdi)
	leaq	(%rdx,%rdx,2), %rax
	shlq	$3, %rax
	addq	8(%rsi), %rax
	movq	%rax, 16(%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__19allocatorINS_6vectorIiNS0_IiEEEEE9constructIS3_JRKS3_EEEvPT_DpOT0_
__ZNSt3__19allocatorINS_6vectorIiNS0_IiEEEEE9constructIS3_JRKS3_EEEvPT_DpOT0_: ## @_ZNSt3__19allocatorINS_6vectorIiNS0_IiEEEEE9constructIS3_JRKS3_EEEvPT_DpOT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEEC1ERKS3_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21_ConstructTransactionD2Ev ## -- Begin function _ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21_ConstructTransactionD2Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21_ConstructTransactionD2Ev
	.p2align	4, 0x90
__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21_ConstructTransactionD2Ev: ## @_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEE21_ConstructTransactionD2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	movq	%rcx, 8(%rax)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__113__vector_baseINS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEE5clearEv
__ZNSt3__113__vector_baseINS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEE5clearEv: ## @_ZNSt3__113__vector_baseINS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEE5clearEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rsi
	callq	__ZNSt3__113__vector_baseINS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEE17__destruct_at_endEPS4_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIiNS1_IiEEEEEEE10deallocateERS5_PS4_m
__ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIiNS1_IiEEEEEEE10deallocateERS5_PS4_m: ## @_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIiNS1_IiEEEEEEE10deallocateERS5_PS4_m
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__19allocatorINS_6vectorIiNS0_IiEEEEE10deallocateEPS3_m
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__113__vector_baseINS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEE17__destruct_at_endEPS4_
__ZNSt3__113__vector_baseINS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEE17__destruct_at_endEPS4_: ## @_ZNSt3__113__vector_baseINS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEE17__destruct_at_endEPS4_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	8(%rdi), %rbx
	cmpq	%rsi, %rbx
	je	LBB510_2
	.p2align	4, 0x90
LBB510_1:                               ## =>This Inner Loop Header: Depth=1
	addq	$-24, %rbx
	movq	%rbx, %rdi
	callq	__ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIiNS1_IiEEEEEEE7destroyIS4_vEEvRS5_PT_
	cmpq	%rbx, %r15
	jne	LBB510_1
LBB510_2:
	movq	%r15, 8(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIiNS1_IiEEEEEEE7destroyIS4_vEEvRS5_PT_
__ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIiNS1_IiEEEEEEE7destroyIS4_vEEvRS5_PT_: ## @_ZNSt3__116allocator_traitsINS_9allocatorINS_6vectorIiNS1_IiEEEEEEE7destroyIS4_vEEvRS5_PT_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__19allocatorINS_6vectorIiNS0_IiEEEEE7destroyEPS3_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__19allocatorINS_6vectorIiNS0_IiEEEEE7destroyEPS3_
__ZNSt3__19allocatorINS_6vectorIiNS0_IiEEEEE7destroyEPS3_: ## @_ZNSt3__19allocatorINS_6vectorIiNS0_IiEEEEE7destroyEPS3_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEED1Ev
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__19allocatorINS_6vectorIiNS0_IiEEEEE10deallocateEPS3_m
__ZNSt3__19allocatorINS_6vectorIiNS0_IiEEEEE10deallocateEPS3_m: ## @_ZNSt3__19allocatorINS_6vectorIiNS0_IiEEEEE10deallocateEPS3_m
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__1L19__libcpp_deallocateEPvmm
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEED2Ev
__ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEED2Ev: ## @_ZNSt3__16vectorINS0_IiNS_9allocatorIiEEEENS1_IS3_EEED2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__113__vector_baseINS_6vectorIiNS_9allocatorIiEEEENS2_IS4_EEED2Ev
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE11__make_iterEPi
__ZNSt3__16vectorIiNS_9allocatorIiEEE11__make_iterEPi: ## @_ZNSt3__16vectorIiNS_9allocatorIiEEE11__make_iterEPi
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, %rsi
	leaq	-8(%rbp), %rdi
	callq	__ZNSt3__111__wrap_iterIPiEC1ES1_
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__111__wrap_iterIPiEC1ES1_
__ZNSt3__111__wrap_iterIPiEC1ES1_:      ## @_ZNSt3__111__wrap_iterIPiEC1ES1_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__111__wrap_iterIPiEC2ES1_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__111__wrap_iterIPiEC2ES1_
__ZNSt3__111__wrap_iterIPiEC2ES1_:      ## @_ZNSt3__111__wrap_iterIPiEC2ES1_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rsi, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEED2Ev
__ZNSt3__16vectorIdNS_9allocatorIdEEED2Ev: ## @_ZNSt3__16vectorIdNS_9allocatorIdEEED2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__113__vector_baseIdNS_9allocatorIdEEED2Ev
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ## -- Begin function _ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	4, 0x90
__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ## @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin33:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception33
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r12
	movq	%rsi, %r15
	movq	%rdi, %r14
Ltmp374:
	leaq	-72(%rbp), %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp375:
## %bb.1:
	leaq	-72(%rbp), %rdi
	callq	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv
	testb	%al, %al
	je	LBB519_6
## %bb.2:
	leaq	-48(%rbp), %rdi
	movq	%r14, %rsi
	callq	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE
	movq	(%r14), %rax
	movq	-24(%rax), %rbx
	addq	%r14, %rbx
	movq	%rbx, %rdi
	callq	__ZNKSt3__18ios_base5flagsEv
	movl	%eax, %r13d
Ltmp377:
	movq	%rbx, %rdi
	callq	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv
Ltmp378:
## %bb.3:
	addq	%r15, %r12
	andl	$176, %r13d
	cmpl	$32, %r13d
	movq	%r15, %rdx
	cmoveq	%r12, %rdx
	movq	-48(%rbp), %rdi
Ltmp379:
	movsbl	%al, %r9d
	movq	%r15, %rsi
	movq	%r12, %rcx
	movq	%rbx, %r8
	callq	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp380:
## %bb.4:
	movq	%rax, -56(%rbp)
	leaq	-56(%rbp), %rdi
	callq	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv
	testb	%al, %al
	je	LBB519_6
## %bb.5:
	movq	(%r14), %rax
	movq	-24(%rax), %rdi
	addq	%r14, %rdi
Ltmp382:
	movl	$5, %esi
	callq	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj
Ltmp383:
LBB519_6:
	leaq	-72(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB519_13:
	movq	%r14, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB519_9:
Ltmp384:
	jmp	LBB519_10
LBB519_8:
Ltmp381:
LBB519_10:
	movq	%rax, %rbx
	leaq	-72(%rbp), %rdi
	callq	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	jmp	LBB519_11
LBB519_7:
Ltmp376:
	movq	%rax, %rbx
LBB519_11:
	movq	%rbx, %rdi
	callq	___cxa_begin_catch
	movq	(%r14), %rax
	movq	-24(%rax), %rdi
	addq	%r14, %rdi
Ltmp385:
	callq	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp386:
## %bb.12:
	callq	___cxa_end_catch
	jmp	LBB519_13
LBB519_14:
Ltmp387:
	movq	%rax, %rbx
Ltmp388:
	callq	___cxa_end_catch
Ltmp389:
## %bb.15:
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
LBB519_16:
Ltmp390:
	movq	%rax, %rdi
	callq	___clang_call_terminate
Lfunc_end33:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table519:
Lexception33:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	155                             ## @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase3-Lttbaseref3
Lttbaseref3:
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end33-Lcst_begin33
Lcst_begin33:
	.uleb128 Ltmp374-Lfunc_begin33          ## >> Call Site 1 <<
	.uleb128 Ltmp375-Ltmp374                ##   Call between Ltmp374 and Ltmp375
	.uleb128 Ltmp376-Lfunc_begin33          ##     jumps to Ltmp376
	.byte	1                               ##   On action: 1
	.uleb128 Ltmp377-Lfunc_begin33          ## >> Call Site 2 <<
	.uleb128 Ltmp380-Ltmp377                ##   Call between Ltmp377 and Ltmp380
	.uleb128 Ltmp381-Lfunc_begin33          ##     jumps to Ltmp381
	.byte	1                               ##   On action: 1
	.uleb128 Ltmp382-Lfunc_begin33          ## >> Call Site 3 <<
	.uleb128 Ltmp383-Ltmp382                ##   Call between Ltmp382 and Ltmp383
	.uleb128 Ltmp384-Lfunc_begin33          ##     jumps to Ltmp384
	.byte	1                               ##   On action: 1
	.uleb128 Ltmp383-Lfunc_begin33          ## >> Call Site 4 <<
	.uleb128 Ltmp385-Ltmp383                ##   Call between Ltmp383 and Ltmp385
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp385-Lfunc_begin33          ## >> Call Site 5 <<
	.uleb128 Ltmp386-Ltmp385                ##   Call between Ltmp385 and Ltmp386
	.uleb128 Ltmp387-Lfunc_begin33          ##     jumps to Ltmp387
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp386-Lfunc_begin33          ## >> Call Site 6 <<
	.uleb128 Ltmp388-Ltmp386                ##   Call between Ltmp386 and Ltmp388
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp388-Lfunc_begin33          ## >> Call Site 7 <<
	.uleb128 Ltmp389-Ltmp388                ##   Call between Ltmp388 and Ltmp389
	.uleb128 Ltmp390-Lfunc_begin33          ##     jumps to Ltmp390
	.byte	1                               ##   On action: 1
	.uleb128 Ltmp389-Lfunc_begin33          ## >> Call Site 8 <<
	.uleb128 Lfunc_end33-Ltmp389            ##   Call between Ltmp389 and Lfunc_end33
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end33:
	.byte	1                               ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                               ##   No further actions
	.p2align	2
                                        ## >> Catch TypeInfos <<
	.long	0                               ## TypeInfo 1
Lttbase3:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv
__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv: ## @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	(%rdi), %al
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.private_extern	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ## -- Begin function _ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_def_can_be_hidden	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	4, 0x90
__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ## @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin34:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception34
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	testq	%rdi, %rdi
	je	LBB521_11
## %bb.1:
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %r13
	movl	%r9d, -44(%rbp)                 ## 4-byte Spill
	movq	%rcx, -72(%rbp)                 ## 8-byte Spill
	movq	%rcx, %rbx
	subq	%rsi, %rbx
	movq	%r8, -56(%rbp)                  ## 8-byte Spill
	movq	%r8, %rdi
	callq	__ZNKSt3__18ios_base5widthEv
	xorl	%r15d, %r15d
	subq	%rbx, %rax
	cmovgq	%rax, %r15
	movq	%r14, -64(%rbp)                 ## 8-byte Spill
	subq	%r12, %r14
	testq	%r14, %r14
	jle	LBB521_3
## %bb.2:
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl
	cmpq	%r14, %rax
	jne	LBB521_11
LBB521_3:
	testq	%r15, %r15
	jle	LBB521_6
## %bb.4:
	movsbl	-44(%rbp), %edx                 ## 1-byte Folded Reload
	leaq	-96(%rbp), %r14
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc
	movq	%r14, %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv
Ltmp391:
	movq	%r13, %rdi
	movq	%rax, %rsi
	movq	%r15, %rdx
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl
Ltmp392:
## %bb.5:
	movq	%rax, %r14
	leaq	-96(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	xorl	%eax, %eax
	cmpq	%r15, %r14
	cmovneq	%rax, %r13
	jne	LBB521_12
LBB521_6:
	movq	-72(%rbp), %rbx                 ## 8-byte Reload
	movq	-64(%rbp), %rsi                 ## 8-byte Reload
	subq	%rsi, %rbx
	testq	%rbx, %rbx
	jle	LBB521_8
## %bb.7:
	movq	%r13, %rdi
	movq	%rbx, %rdx
	callq	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl
	cmpq	%rbx, %rax
	jne	LBB521_11
LBB521_8:
	movq	-56(%rbp), %rdi                 ## 8-byte Reload
	callq	__ZNSt3__18ios_base5widthEl
	movq	%r13, %rax
	jmp	LBB521_12
LBB521_11:
	xorl	%eax, %eax
LBB521_12:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB521_13:
Ltmp393:
	movq	%rax, %rbx
	leaq	-96(%rbp), %rdi
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end34:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table521:
Lexception34:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end34-Lcst_begin34
Lcst_begin34:
	.uleb128 Lfunc_begin34-Lfunc_begin34    ## >> Call Site 1 <<
	.uleb128 Ltmp391-Lfunc_begin34          ##   Call between Lfunc_begin34 and Ltmp391
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp391-Lfunc_begin34          ## >> Call Site 2 <<
	.uleb128 Ltmp392-Ltmp391                ##   Call between Ltmp391 and Ltmp392
	.uleb128 Ltmp393-Lfunc_begin34          ##     jumps to Ltmp393
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp392-Lfunc_begin34          ## >> Call Site 3 <<
	.uleb128 Lfunc_end34-Ltmp392            ##   Call between Ltmp392 and Lfunc_end34
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end34:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE: ## @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__18ios_base5flagsEv
__ZNKSt3__18ios_base5flagsEv:           ## @_ZNKSt3__18ios_base5flagsEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	8(%rdi), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv: ## @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	callq	__ZNSt3__111char_traitsIcE3eofEv
	movl	144(%rbx), %esi
	movl	%eax, %edi
	callq	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	testb	%al, %al
	je	LBB524_2
## %bb.1:
	movq	%rbx, %rdi
	movl	$32, %esi
	callq	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc
	movsbl	%al, %eax
	movl	%eax, 144(%rbx)
LBB524_2:
	movsbl	144(%rbx), %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv
__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv: ## @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	cmpq	$0, (%rdi)
	sete	%al
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__18ios_base5widthEv
__ZNKSt3__18ios_base5widthEv:           ## @_ZNKSt3__18ios_base5widthEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	24(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl
__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl: ## @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	callq	*96(%rax)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc: ## @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv: ## @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__18ios_base5widthEl
__ZNSt3__18ios_base5widthEl:            ## @_ZNSt3__18ios_base5widthEl
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	$0, 24(%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc: ## @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__111char_traitsIcE6assignEPcmc ## -- Begin function _ZNSt3__111char_traitsIcE6assignEPcmc
	.weak_def_can_be_hidden	__ZNSt3__111char_traitsIcE6assignEPcmc
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE6assignEPcmc: ## @_ZNSt3__111char_traitsIcE6assignEPcmc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rdi, %r14
	testq	%rsi, %rsi
	je	LBB532_2
## %bb.1:
	movq	%rsi, %rbx
	movsbl	%dl, %edi
	callq	__ZNSt3__111char_traitsIcE11to_int_typeEc
	movq	%r14, %rdi
	movl	%eax, %esi
	movq	%rbx, %rdx
	callq	_memset
LBB532_2:
	movq	%r14, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv: ## @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	callq	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv
	movq	%rbx, %rdi
	testb	%al, %al
	je	LBB533_2
## %bb.1:
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv
	jmp	LBB533_3
LBB533_2:
	callq	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv
LBB533_3:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE: ## @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	movq	(%rsi), %rax
	addq	-24(%rax), %rsi
	movq	%rsi, %rdi
	callq	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv
	movq	%rax, (%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv: ## @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNKSt3__18ios_base5rdbufEv
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__18ios_base5rdbufEv
__ZNKSt3__18ios_base5rdbufEv:           ## @_ZNKSt3__18ios_base5rdbufEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	40(%rdi), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc: ## @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc
Lfunc_begin35:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception35
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movl	%esi, %r14d
	movq	%rdi, %rsi
	leaq	-24(%rbp), %rbx
	movq	%rbx, %rdi
	callq	__ZNKSt3__18ios_base6getlocEv
Ltmp394:
	movq	%rbx, %rdi
	callq	__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE
Ltmp395:
## %bb.1:
Ltmp396:
	movsbl	%r14b, %esi
	movq	%rax, %rdi
	callq	__ZNKSt3__15ctypeIcE5widenEc
Ltmp397:
## %bb.2:
	movl	%eax, %ebx
	leaq	-24(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movsbl	%bl, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB537_3:
Ltmp398:
	movq	%rax, %rbx
	leaq	-24(%rbp), %rdi
	callq	__ZNSt3__16localeD1Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end35:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table537:
Lexception35:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end35-Lcst_begin35
Lcst_begin35:
	.uleb128 Lfunc_begin35-Lfunc_begin35    ## >> Call Site 1 <<
	.uleb128 Ltmp394-Lfunc_begin35          ##   Call between Lfunc_begin35 and Ltmp394
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp394-Lfunc_begin35          ## >> Call Site 2 <<
	.uleb128 Ltmp397-Ltmp394                ##   Call between Ltmp394 and Ltmp397
	.uleb128 Ltmp398-Lfunc_begin35          ##     jumps to Ltmp398
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp397-Lfunc_begin35          ## >> Call Site 3 <<
	.uleb128 Lfunc_end35-Ltmp397            ##   Call between Ltmp397 and Lfunc_end35
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end35:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE
__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE: ## @_ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	__ZNSt3__15ctypeIcE2idE@GOTPCREL(%rip), %rsi
	callq	__ZNKSt3__16locale9use_facetERNS0_2idE
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__15ctypeIcE5widenEc
__ZNKSt3__15ctypeIcE5widenEc:           ## @_ZNKSt3__15ctypeIcE5widenEc
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	callq	*56(%rax)
	movsbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEEC2ERKS3_ ## -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEEC2ERKS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEEC2ERKS3_
	.p2align	4, 0x90
__ZNSt3__16vectorIdNS_9allocatorIdEEEC2ERKS3_: ## @_ZNSt3__16vectorIdNS_9allocatorIdEEEC2ERKS3_
Lfunc_begin36:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception36
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r15
	movq	%rdi, %r14
	callq	__ZNSt3__113__vector_baseIdNS_9allocatorIdEEEC2EOS2_
	movq	%r15, %rdi
	callq	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeEv
	testq	%rax, %rax
	je	LBB540_3
## %bb.1:
	movq	%rax, %rbx
Ltmp399:
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE11__vallocateEm
Ltmp400:
## %bb.2:
	movq	(%r15), %rsi
	movq	8(%r15), %rdx
Ltmp401:
	movq	%r14, %rdi
	movq	%rbx, %rcx
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE18__construct_at_endIPdEENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeES7_S7_m
Ltmp402:
LBB540_3:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB540_4:
Ltmp403:
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	__ZNSt3__113__vector_baseIdNS_9allocatorIdEEED2Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end36:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table540:
Lexception36:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end36-Lcst_begin36
Lcst_begin36:
	.uleb128 Ltmp399-Lfunc_begin36          ## >> Call Site 1 <<
	.uleb128 Ltmp402-Ltmp399                ##   Call between Ltmp399 and Ltmp402
	.uleb128 Ltmp403-Lfunc_begin36          ##     jumps to Ltmp403
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp402-Lfunc_begin36          ## >> Call Site 2 <<
	.uleb128 Lfunc_end36-Ltmp402            ##   Call between Ltmp402 and Lfunc_end36
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end36:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__113__vector_baseIdNS_9allocatorIdEEEC2EOS2_
__ZNSt3__113__vector_baseIdNS_9allocatorIdEEEC2EOS2_: ## @_ZNSt3__113__vector_baseIdNS_9allocatorIdEEEC2EOS2_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	16(%rdi), %rax
	movq	$0, 8(%rdi)
	movq	$0, (%rdi)
	movq	%rax, %rdi
	callq	__ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC1IDnS3_EEOT_OT0_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC1IDnS3_EEOT_OT0_
__ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC1IDnS3_EEOT_OT0_: ## @_ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC1IDnS3_EEOT_OT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC2IDnS3_EEOT_OT0_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC2IDnS3_EEOT_OT0_
__ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC2IDnS3_EEOT_OT0_: ## @_ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC2IDnS3_EEOT_OT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__122__compressed_pair_elemIPdLi0ELb0EEC2IDnvEEOT_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE11__make_iterEPd
__ZNSt3__16vectorIdNS_9allocatorIdEEE11__make_iterEPd: ## @_ZNSt3__16vectorIdNS_9allocatorIdEEE11__make_iterEPd
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, %rsi
	leaq	-8(%rbp), %rdi
	callq	__ZNSt3__111__wrap_iterIPdEC1ES1_
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__111__wrap_iterIPdEC1ES1_
__ZNSt3__111__wrap_iterIPdEC1ES1_:      ## @_ZNSt3__111__wrap_iterIPdEC1ES1_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__111__wrap_iterIPdEC2ES1_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__111__wrap_iterIPdEC2ES1_
__ZNSt3__111__wrap_iterIPdEC2ES1_:      ## @_ZNSt3__111__wrap_iterIPdEC2ES1_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rsi, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEEC2Em ## -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEEC2Em
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEEC2Em
	.p2align	4, 0x90
__ZNSt3__16vectorIdNS_9allocatorIdEEEC2Em: ## @_ZNSt3__16vectorIdNS_9allocatorIdEEEC2Em
Lfunc_begin37:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception37
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	__ZNSt3__113__vector_baseIdNS_9allocatorIdEEEC2Ev
	testq	%rbx, %rbx
	je	LBB547_3
## %bb.1:
Ltmp404:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE11__vallocateEm
Ltmp405:
## %bb.2:
Ltmp406:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE18__construct_at_endEm
Ltmp407:
LBB547_3:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB547_4:
Ltmp408:
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	__ZNSt3__113__vector_baseIdNS_9allocatorIdEEED2Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end37:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table547:
Lexception37:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end37-Lcst_begin37
Lcst_begin37:
	.uleb128 Ltmp404-Lfunc_begin37          ## >> Call Site 1 <<
	.uleb128 Ltmp407-Ltmp404                ##   Call between Ltmp404 and Ltmp407
	.uleb128 Ltmp408-Lfunc_begin37          ##     jumps to Ltmp408
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp407-Lfunc_begin37          ## >> Call Site 2 <<
	.uleb128 Lfunc_end37-Ltmp407            ##   Call between Ltmp407 and Lfunc_end37
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end37:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE18__construct_at_endEm ## -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE18__construct_at_endEm
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEE18__construct_at_endEm
	.p2align	4, 0x90
__ZNSt3__16vectorIdNS_9allocatorIdEEE18__construct_at_endEm: ## @_ZNSt3__16vectorIdNS_9allocatorIdEEE18__construct_at_endEm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	leaq	-40(%rbp), %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC1ERS3_m
	movq	-32(%rbp), %rbx
	movq	-24(%rbp), %r14
	cmpq	%r14, %rbx
	je	LBB548_2
	.p2align	4, 0x90
LBB548_1:                               ## =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE9constructIdJEvEEvRS2_PT_DpOT0_
	addq	$8, %rbx
	movq	%rbx, -32(%rbp)
	cmpq	%rbx, %r14
	jne	LBB548_1
LBB548_2:
	leaq	-40(%rbp), %rdi
	callq	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD1Ev
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIdEEE9constructIdJEvEEvRS2_PT_DpOT0_
__ZNSt3__116allocator_traitsINS_9allocatorIdEEE9constructIdJEvEEvRS2_PT_DpOT0_: ## @_ZNSt3__116allocator_traitsINS_9allocatorIdEEE9constructIdJEvEEvRS2_PT_DpOT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__19allocatorIdE9constructIdJEEEvPT_DpOT0_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__19allocatorIdE9constructIdJEEEvPT_DpOT0_
__ZNSt3__19allocatorIdE9constructIdJEEEvPT_DpOT0_: ## @_ZNSt3__19allocatorIdE9constructIdJEEEvPT_DpOT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	$0, (%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__125uniform_real_distributionIdEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEdRT_RKNS1_10param_typeE
__ZNSt3__125uniform_real_distributionIdEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEdRT_RKNS1_10param_typeE: ## @_ZNSt3__125uniform_real_distributionIdEclINS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEEdRT_RKNS1_10param_typeE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	callq	__ZNKSt3__125uniform_real_distributionIdE10param_type1bEv
	movsd	%xmm0, -8(%rbp)                 ## 8-byte Spill
	callq	__ZNKSt3__125uniform_real_distributionIdE10param_type1aEv
	movsd	-8(%rbp), %xmm1                 ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -8(%rbp)                 ## 8-byte Spill
	leaq	_rng(%rip), %rdi
	callq	__ZNSt3__118generate_canonicalIdLm53ENS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEET_RT1_
	mulsd	-8(%rbp), %xmm0                 ## 8-byte Folded Reload
	movsd	%xmm0, -8(%rbp)                 ## 8-byte Spill
	callq	__ZNKSt3__125uniform_real_distributionIdE10param_type1aEv
	addsd	-8(%rbp), %xmm0                 ## 8-byte Folded Reload
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__125uniform_real_distributionIdE10param_type1bEv
__ZNKSt3__125uniform_real_distributionIdE10param_type1bEv: ## @_ZNKSt3__125uniform_real_distributionIdE10param_type1bEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movsd	_dis+8(%rip), %xmm0             ## xmm0 = mem[0],zero
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNKSt3__125uniform_real_distributionIdE10param_type1aEv
__ZNKSt3__125uniform_real_distributionIdE10param_type1aEv: ## @_ZNKSt3__125uniform_real_distributionIdE10param_type1aEv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movsd	_dis(%rip), %xmm0               ## xmm0 = mem[0],zero
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function _ZNSt3__118generate_canonicalIdLm53ENS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEET_RT1_
LCPI554_0:
	.quad	0x41f0000000000000              ## double 4294967296
LCPI554_1:
	.quad	0x3bf0000000000000              ## double 5.4210108624275222E-20
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__118generate_canonicalIdLm53ENS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEET_RT1_
	.weak_def_can_be_hidden	__ZNSt3__118generate_canonicalIdLm53ENS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEET_RT1_
	.p2align	4, 0x90
__ZNSt3__118generate_canonicalIdLm53ENS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEET_RT1_: ## @_ZNSt3__118generate_canonicalIdLm53ENS_23mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEEEET_RT1_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movq	%rdi, %rbx
	callq	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	movl	%eax, %eax
	cvtsi2sd	%rax, %xmm0
	movsd	%xmm0, -16(%rbp)                ## 8-byte Spill
	movq	%rbx, %rdi
	callq	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEclEv
	movl	%eax, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rax, %xmm0
	mulsd	LCPI554_0(%rip), %xmm0
	addsd	-16(%rbp), %xmm0                ## 8-byte Folded Reload
	mulsd	LCPI554_1(%rip), %xmm0
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEE8__appendEmRKi ## -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEE8__appendEmRKi
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEE8__appendEmRKi
	.p2align	4, 0x90
__ZNSt3__16vectorIiNS_9allocatorIiEEE8__appendEmRKi: ## @_ZNSt3__16vectorIiNS_9allocatorIiEEE8__appendEmRKi
Lfunc_begin38:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception38
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	__ZNSt3__113__vector_baseIiNS_9allocatorIiEEE9__end_capEv
	movq	(%rax), %rax
	subq	8(%rbx), %rax
	sarq	$2, %rax
	cmpq	%r15, %rax
	jae	LBB555_1
## %bb.2:
	movq	%rbx, %rdi
	callq	__ZNSt3__113__vector_baseIiNS_9allocatorIiEEE7__allocEv
	movq	%rax, -48(%rbp)                 ## 8-byte Spill
	movq	%rbx, %rdi
	callq	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv
	leaq	(%rax,%r15), %rsi
	movq	%rbx, %rdi
	callq	__ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendEm
	movq	%rax, %r13
	movq	%rbx, %rdi
	callq	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv
	leaq	-88(%rbp), %r12
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rax, %rdx
	movq	-48(%rbp), %rcx                 ## 8-byte Reload
	callq	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC1EmmS3_
Ltmp409:
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE18__construct_at_endEmRKi
Ltmp410:
## %bb.3:
Ltmp411:
	leaq	-88(%rbp), %rsi
	movq	%rbx, %rdi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE26__swap_out_circular_bufferERNS_14__split_bufferIiRS2_EE
Ltmp412:
## %bb.4:
	leaq	-88(%rbp), %rdi
	callq	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev
	jmp	LBB555_5
LBB555_1:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endEmRKi
LBB555_5:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB555_6:
Ltmp413:
	movq	%rax, %rbx
	leaq	-88(%rbp), %rdi
	callq	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end38:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table555:
Lexception38:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end38-Lcst_begin38
Lcst_begin38:
	.uleb128 Lfunc_begin38-Lfunc_begin38    ## >> Call Site 1 <<
	.uleb128 Ltmp409-Lfunc_begin38          ##   Call between Lfunc_begin38 and Ltmp409
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp409-Lfunc_begin38          ## >> Call Site 2 <<
	.uleb128 Ltmp412-Ltmp409                ##   Call between Ltmp409 and Ltmp412
	.uleb128 Ltmp413-Lfunc_begin38          ##     jumps to Ltmp413
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp412-Lfunc_begin38          ## >> Call Site 3 <<
	.uleb128 Lfunc_end38-Ltmp412            ##   Call between Ltmp412 and Lfunc_end38
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end38:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE18__construct_at_endEmRKi ## -- Begin function _ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE18__construct_at_endEmRKi
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE18__construct_at_endEmRKi
	.p2align	4, 0x90
__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE18__construct_at_endEmRKi: ## @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE18__construct_at_endEmRKi
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -24
	movq	%rdx, %rbx
	movq	%rsi, %rdx
	leaq	16(%rdi), %rsi
	leaq	-32(%rbp), %rdi
	callq	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionC1EPPim
	movq	-32(%rbp), %rdi
	cmpq	-24(%rbp), %rdi
	je	LBB556_3
	.p2align	4, 0x90
LBB556_1:                               ## =>This Inner Loop Header: Depth=1
	movq	%rbx, %rsi
	callq	__ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructIiJRKiEvEEvRS2_PT_DpOT0_
	movq	-32(%rbp), %rdi
	addq	$4, %rdi
	movq	%rdi, -32(%rbp)
	cmpq	-24(%rbp), %rdi
	jne	LBB556_1
LBB556_3:
	leaq	-32(%rbp), %rdi
	callq	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionD1Ev
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionC1EPPim ## -- Begin function _ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionC1EPPim
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionC1EPPim
	.p2align	4, 0x90
__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionC1EPPim: ## @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionC1EPPim
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionC2EPPim
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionD1Ev ## -- Begin function _ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionD1Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionD1Ev
	.p2align	4, 0x90
__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionD1Ev: ## @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionD1Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionD2Ev
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionC2EPPim ## -- Begin function _ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionC2EPPim
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionC2EPPim
	.p2align	4, 0x90
__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionC2EPPim: ## @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionC2EPPim
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	shlq	$2, %rdx
	addq	(%rsi), %rdx
	movq	%rdx, 8(%rdi)
	movq	%rsi, 16(%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionD2Ev ## -- Begin function _ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionD2Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionD2Ev
	.p2align	4, 0x90
__ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionD2Ev: ## @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionD2Ev
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	movq	16(%rdi), %rcx
	movq	%rax, (%rcx)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__16vectorIiNS_9allocatorIiEEEC2ERKS3_ ## -- Begin function _ZNSt3__16vectorIiNS_9allocatorIiEEEC2ERKS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIiNS_9allocatorIiEEEC2ERKS3_
	.p2align	4, 0x90
__ZNSt3__16vectorIiNS_9allocatorIiEEEC2ERKS3_: ## @_ZNSt3__16vectorIiNS_9allocatorIiEEEC2ERKS3_
Lfunc_begin39:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception39
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r15
	movq	%rdi, %r14
	callq	__ZNSt3__113__vector_baseIiNS_9allocatorIiEEEC2EOS2_
	movq	%r15, %rdi
	callq	__ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeEv
	testq	%rax, %rax
	je	LBB561_3
## %bb.1:
	movq	%rax, %rbx
Ltmp414:
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE11__vallocateEm
Ltmp415:
## %bb.2:
	movq	(%r15), %rsi
	movq	8(%r15), %rdx
Ltmp416:
	movq	%r14, %rdi
	movq	%rbx, %rcx
	callq	__ZNSt3__16vectorIiNS_9allocatorIiEEE18__construct_at_endIPiEENS_9enable_ifIXsr27__is_cpp17_forward_iteratorIT_EE5valueEvE4typeES7_S7_m
Ltmp417:
LBB561_3:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB561_4:
Ltmp418:
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	__ZNSt3__113__vector_baseIiNS_9allocatorIiEEED2Ev
	movq	%rbx, %rdi
	callq	__Unwind_Resume
	ud2
Lfunc_end39:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table561:
Lexception39:
	.byte	255                             ## @LPStart Encoding = omit
	.byte	255                             ## @TType Encoding = omit
	.byte	1                               ## Call site Encoding = uleb128
	.uleb128 Lcst_end39-Lcst_begin39
Lcst_begin39:
	.uleb128 Ltmp414-Lfunc_begin39          ## >> Call Site 1 <<
	.uleb128 Ltmp417-Ltmp414                ##   Call between Ltmp414 and Ltmp417
	.uleb128 Ltmp418-Lfunc_begin39          ##     jumps to Ltmp418
	.byte	0                               ##   On action: cleanup
	.uleb128 Ltmp417-Lfunc_begin39          ## >> Call Site 2 <<
	.uleb128 Lfunc_end39-Ltmp417            ##   Call between Ltmp417 and Lfunc_end39
	.byte	0                               ##     has no landing pad
	.byte	0                               ##   On action: cleanup
Lcst_end39:
	.p2align	2
                                        ## -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__113__vector_baseIiNS_9allocatorIiEEEC2EOS2_
__ZNSt3__113__vector_baseIiNS_9allocatorIiEEEC2EOS2_: ## @_ZNSt3__113__vector_baseIiNS_9allocatorIiEEEC2EOS2_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	16(%rdi), %rax
	movq	$0, 8(%rdi)
	movq	$0, (%rdi)
	movq	%rax, %rdi
	callq	__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC1IDnS3_EEOT_OT0_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC1IDnS3_EEOT_OT0_
__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC1IDnS3_EEOT_OT0_: ## @_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC1IDnS3_EEOT_OT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC2IDnS3_EEOT_OT0_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC2IDnS3_EEOT_OT0_
__ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC2IDnS3_EEOT_OT0_: ## @_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC2IDnS3_EEOT_OT0_
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__122__compressed_pair_elemIPiLi0ELb0EEC2IDnvEEOT_
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__18ios_base9precisionEl
__ZNSt3__18ios_base9precisionEl:        ## @_ZNSt3__18ios_base9precisionEl
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rsi, 16(%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC2Ej
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC2Ej: ## @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EEC2Ej
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, %esi
	leaq	_rng(%rip), %rdi
	callq	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE4seedEj
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE4seedEj ## -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE4seedEj
	.weak_def_can_be_hidden	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE4seedEj
	.p2align	4, 0x90
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE4seedEj: ## @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE4seedEj
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%esi, %r15d
	movq	%rdi, %r14
	movl	%esi, (%rdi)
	movl	$1, %ebx
	.p2align	4, 0x90
LBB567_1:                               ## =>This Inner Loop Header: Depth=1
	movl	%r15d, %edi
	callq	__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftILm30EEENS_9enable_ifIXltT_L_ZNS1_3_DtEEEjE4typeEj
	xorl	%r15d, %eax
	imull	$1812433253, %eax, %eax         ## imm = 0x6C078965
	leal	(%rbx,%rax), %r15d
	movl	%r15d, (%r14,%rbx,4)
	incq	%rbx
	cmpq	$624, %rbx                      ## imm = 0x270
	jne	LBB567_1
## %bb.2:
	movq	$0, 2496(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftILm30EEENS_9enable_ifIXltT_L_ZNS1_3_DtEEEjE4typeEj
__ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftILm30EEENS_9enable_ifIXltT_L_ZNS1_3_DtEEEjE4typeEj: ## @_ZNSt3__123mersenne_twister_engineIjLm32ELm624ELm397ELm31ELj2567483615ELm11ELj4294967295ELm7ELj2636928640ELm15ELj4022730752ELm18ELj1812433253EE8__rshiftILm30EEENS_9enable_ifIXltT_L_ZNS1_3_DtEEEjE4typeEj
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, %eax
	shrl	$30, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__ZNSt3__125uniform_real_distributionIdEC2Edd ## -- Begin function _ZNSt3__125uniform_real_distributionIdEC2Edd
	.weak_def_can_be_hidden	__ZNSt3__125uniform_real_distributionIdEC2Edd
	.p2align	4, 0x90
__ZNSt3__125uniform_real_distributionIdEC2Edd: ## @_ZNSt3__125uniform_real_distributionIdEC2Edd
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__125uniform_real_distributionIdE10param_typeC1Edd
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__125uniform_real_distributionIdE10param_typeC1Edd
__ZNSt3__125uniform_real_distributionIdE10param_typeC1Edd: ## @_ZNSt3__125uniform_real_distributionIdE10param_typeC1Edd
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__ZNSt3__125uniform_real_distributionIdE10param_typeC2Edd
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90                         ## -- Begin function _ZNSt3__125uniform_real_distributionIdE10param_typeC2Edd
__ZNSt3__125uniform_real_distributionIdE10param_typeC2Edd: ## @_ZNSt3__125uniform_real_distributionIdE10param_typeC2Edd
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movsd	%xmm0, (%rdi)
	movsd	%xmm1, 8(%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__StaticInit,regular,pure_instructions
	.p2align	4, 0x90                         ## -- Begin function _GLOBAL__sub_I_main.cpp
__GLOBAL__sub_I_main.cpp:               ## @_GLOBAL__sub_I_main.cpp
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	___cxx_global_var_init
	callq	___cxx_global_var_init.1
	callq	___cxx_global_var_init.2
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_dis                            ## @dis
.zerofill __DATA,__common,_dis,16,3
	.globl	_rng                            ## @rng
.zerofill __DATA,__common,_rng,2504,3
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"off diag operator not on site!"

	.globl	_rd                             ## @rd
.zerofill __DATA,__common,_rd,4,2
L_.str.3:                               ## @.str.3
	.asciz	"L = "

L_.str.4:                               ## @.str.4
	.asciz	"; Energy per site = "

L_.str.5:                               ## @.str.5
	.asciz	" error = "

L_.str.6:                               ## @.str.6
	.asciz	" at T = "

L_.str.7:                               ## @.str.7
	.asciz	"; Particle density  = "

L_.str.8:                               ## @.str.8
	.asciz	"; Magnetization per site = "

L_.str.9:                               ## @.str.9
	.asciz	"leg = "

L_.str.10:                              ## @.str.10
	.asciz	" vertex_list[vertex_list[v]] = "

L_.str.11:                              ## @.str.11
	.asciz	"ALERT: inconsistent list"

L_.str.12:                              ## @.str.12
	.asciz	"ALERT: linked list has missing links, leg_counter != n_legs"

L_.str.13:                              ## @.str.13
	.asciz	"allocator<T>::allocate(size_t n) 'n' exceeds maximum supported size"

L_.str.14:                              ## @.str.14
	.asciz	"/dev/urandom"

L_.str.15:                              ## @.str.15
	.asciz	"energy.txt"

L_.str.16:                              ## @.str.16
	.asciz	"density.txt"

L_.str.17:                              ## @.str.17
	.asciz	"magnetization.txt"

L_.str.18:                              ## @.str.18
	.asciz	"thermalization..."

L_.str.19:                              ## @.str.19
	.asciz	"begin measurement..."

L_.str.21:                              ## @.str.21
	.asciz	"PBC distance zero in potential!"

L_.str.22:                              ## @.str.22
	.asciz	"r = "

	.section	__DATA,__const
	.globl	__ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE ## @_ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE
	.weak_def_can_be_hidden	__ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE
	.p2align	3
__ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE:
	.quad	416
	.quad	0
	.quad	__ZTINSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE
	.quad	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.quad	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev
	.quad	-416
	.quad	-416
	.quad	__ZTINSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE
	.quad	__ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.quad	__ZTv0_n24_NSt3__114basic_ofstreamIcNS_11char_traitsIcEEED0Ev

	.globl	__ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE ## @_ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE
	.weak_def_can_be_hidden	__ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE
	.p2align	3
__ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE:
	.quad	__ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE+24
	.quad	__ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE+24
	.quad	__ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE+64
	.quad	__ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE+64

	.globl	__ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE ## @_ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE
	.weak_def_can_be_hidden	__ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE
	.p2align	3
__ZTCNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE:
	.quad	416
	.quad	0
	.quad	__ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE
	.quad	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev
	.quad	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev
	.quad	-416
	.quad	-416
	.quad	__ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE
	.quad	__ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED1Ev
	.quad	__ZTv0_n24_NSt3__113basic_ostreamIcNS_11char_traitsIcEEED0Ev

	.section	__TEXT,__const
	.globl	__ZTSNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE ## @_ZTSNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE
	.weak_definition	__ZTSNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE
__ZTSNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE:
	.asciz	"NSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE"

	.section	__DATA,__const
	.globl	__ZTINSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE ## @_ZTINSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE
	.weak_definition	__ZTINSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE
	.p2align	3
__ZTINSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE
	.quad	__ZTINSt3__113basic_ostreamIcNS_11char_traitsIcEEEE

	.globl	__ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE ## @_ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.weak_def_can_be_hidden	__ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.p2align	3
__ZTVNSt3__113basic_filebufIcNS_11char_traitsIcEEEE:
	.quad	0
	.quad	__ZTINSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED0Ev
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5imbueERKNS_6localeE
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE6setbufEPcl
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekoffExNS_8ios_base7seekdirEj
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE7seekposENS_4fposI11__mbstate_tEEj
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4syncEv
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE9showmanycEv
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsgetnEPcl
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9underflowEv
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5uflowEv
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE9pbackfailEi
	.quad	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE6xsputnEPKcl
	.quad	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE8overflowEi

	.section	__TEXT,__const
	.globl	__ZTSNSt3__113basic_filebufIcNS_11char_traitsIcEEEE ## @_ZTSNSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.weak_definition	__ZTSNSt3__113basic_filebufIcNS_11char_traitsIcEEEE
__ZTSNSt3__113basic_filebufIcNS_11char_traitsIcEEEE:
	.asciz	"NSt3__113basic_filebufIcNS_11char_traitsIcEEEE"

	.section	__DATA,__const
	.globl	__ZTINSt3__113basic_filebufIcNS_11char_traitsIcEEEE ## @_ZTINSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.weak_definition	__ZTINSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.p2align	3
__ZTINSt3__113basic_filebufIcNS_11char_traitsIcEEEE:
	.quad	__ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	__ZTSNSt3__113basic_filebufIcNS_11char_traitsIcEEEE
	.quad	__ZTINSt3__115basic_streambufIcNS_11char_traitsIcEEEE

	.section	__TEXT,__cstring,cstring_literals
L_.str.23:                              ## @.str.23
	.asciz	"w"

L_.str.24:                              ## @.str.24
	.asciz	"a"

L_.str.25:                              ## @.str.25
	.asciz	"r"

L_.str.26:                              ## @.str.26
	.asciz	"r+"

L_.str.27:                              ## @.str.27
	.asciz	"w+"

L_.str.28:                              ## @.str.28
	.asciz	"a+"

L_.str.29:                              ## @.str.29
	.asciz	"wb"

L_.str.30:                              ## @.str.30
	.asciz	"ab"

L_.str.31:                              ## @.str.31
	.asciz	"rb"

L_.str.32:                              ## @.str.32
	.asciz	"r+b"

L_.str.33:                              ## @.str.33
	.asciz	"w+b"

L_.str.34:                              ## @.str.34
	.asciz	"a+b"

	.section	__DATA,__mod_init_func,mod_init_funcs
	.p2align	3
	.quad	__GLOBAL__sub_I_main.cpp
.subsections_via_symbols
