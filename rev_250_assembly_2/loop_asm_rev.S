.intel_syntax noprefix
.bits 32
	
.global asm2

# syscall -> asm2(0x6,0x28)

asm2:
	push   	ebp												; prologue
	mov    	ebp,esp										; prologue
	sub    	esp,0x10									; prologue
	mov    	eax,DWORD PTR [ebp+0xc]		; eax = 0x28
	mov 	DWORD PTR [ebp-0x4],eax			; ebp_0x4 = eax
	mov    	eax,DWORD PTR [ebp+0x8]		; eax = 0x6
	mov	DWORD PTR [ebp-0x8],eax				; ebp_0x8 = eax
	jmp    	part_b										; jump part_b
part_a:	
	add    	DWORD PTR [ebp-0x4],0x1		; ebp_0x4 += 0x1
	add	DWORD PTR [ebp+0x8],0x8f			; param1 += 0x8f
part_b:	
	cmp    	DWORD PTR [ebp+0x8],0x8f90; param1 <= 0x8f90
	jle    	part_a										; jump part_4
	mov    	eax,DWORD PTR [ebp-0x4]		; eax = ebp_0x4
	mov	esp,ebp												; epilogue
	pop	ebp														; epilogue
	ret																; epilogue
