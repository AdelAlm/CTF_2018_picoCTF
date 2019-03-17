.intel_syntax noprefix
.bits 32
	
.global asm1

# call -> asm1(0x255)

asm1:
	push	ebp											; prologue
	mov	ebp,esp										; prologue
	cmp	DWORD PTR [ebp+0x8],0xea	; ebp_plus_0x8 > 0xea
	jg 	part_a										; 	jump part_a
	cmp	DWORD PTR [ebp+0x8],0x8		; ebp_plus_0x8 != 0x8
	jne	part_b										;		jump part_b
	mov	eax,DWORD PTR [ebp+0x8]		; eax = ebp_plus_0x8
	add	eax,0x3										; eax += 0x3
	jmp	part_d										; jump part_d
part_a:
	cmp	DWORD PTR [ebp+0x8],0x6		; ebp_plus_0x8 != 0x6
	jne	part_c										; 	jump part_c
	mov	eax,DWORD PTR [ebp+0x8]		; eax = ebp_plus_0x8
	sub	eax,0x3										; eax -= 0x3
	jmp	part_d										; jump part_d
part_b:
	mov	eax,DWORD PTR [ebp+0x8]		; eax = ebp_plus_0x8
	sub	eax,0x3										; eax -= 0x3
	jmp	part_d										; jump part_d
	cmp	DWORD PTR [ebp+0x8],0x126	; ebp_plus_0x8 != 0x126
	jne	part_c										;		jump part_c
	mov	eax,DWORD PTR [ebp+0x8]		; eax = ebp_plus_0x8
	sub	eax,0x3										; eax -= 0x3
	jmp	part_d										; jump part_d
part_c:
	mov	eax,DWORD PTR [ebp+0x8]		; eax = ebp_plus_0x8
	add	eax,0x3										; eax += 0x3
part_d:
	pop	ebp												; epilogue
	ret														; epilogue
