#!/usr/bin/python3

def asm0(arg_1, arg_2):
	eax = arg_1
	ebx = arg_2

	eax = ebx

	print(hex(eax))

asm0(0xd8, 0x7a)
