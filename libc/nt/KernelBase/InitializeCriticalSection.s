.include "o/libc/nt/codegen.inc"
.imp	KernelBase,__imp_InitializeCriticalSection,InitializeCriticalSection,0

	.text.windows
InitializeCriticalSection:
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	%rdi,%rcx
	sub	$32,%rsp
	call	*__imp_InitializeCriticalSection(%rip)
	leave
	ret
	.endfn	InitializeCriticalSection,globl
	.previous
