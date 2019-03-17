#!/usr/bin/python3

param1 = 0x6
param2 = 0x28

eax = 0
ebp_0x4 = 0
ebp_0x8 = 0

def part_a():
	global param1
	global ebp_0x4
	global ebp_0x8
	ebp_0x4 += 0x1
	param1 += 0x8f
	part_b()

def part_b():
	global param1
	global eax
	global ebp_0x4
	if param1 <= 0x8f90:
		part_a()
	eax = ebp_0x4
	print(hex(eax))
	exit(1)

def asm2():
	global param1
	global param2
	global eax
	global ebp_0x4
	global ebp_0x8
	eax = param2
	ebp_0x4 = eax
	eax = param2
	ebp_0x8 = eax
	part_b()

asm2()
