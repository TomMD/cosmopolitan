.include "o/libc/nt/codegen.inc"
.imp	KernelBase,__imp_FreeResource,FreeResource,407

	.text.windows
FreeResource:
	push	%rbp
	mov	%rsp,%rbp
	.profilable
	mov	%rdi,%rcx
	sub	$32,%rsp
	call	*__imp_FreeResource(%rip)
	leave
	ret
	.endfn	FreeResource,globl
	.previous
