.intel_syntax noprefix
.bits 32
	
.global asm0

# syscall -> asm0(0xd8,0x7a)

asm0:
	push	ebp										; prologue
	mov	ebp,esp									; prologue
	mov	eax,DWORD PTR [ebp+0x8]	; eax = 0xd8
	mov	ebx,DWORD PTR [ebp+0xc]	; ebx = 0x7q
	mov	eax,ebx									; eax = ebx
	mov	esp,ebp									; epilogue
	pop	ebp											; epilogue
	ret													; epilogue
