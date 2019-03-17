#!/usr/bin/python3

import sys

eax = 0
ebp_plus_0x8 = 0

def asm1(param1):
	global ebp_plus_0x8
	global eax
	ebp_plus_0x8 = param1
	if ebp_plus_0x8 > 0xea:
		part_a()
	if ebp_plus_0x8 != 0x8:
		part_b()
	eax = ebp_plus_0x8
	eax += 0x3
	part_d()

def part_a():
	global ebp_plus_0x8
	global eax
	if ebp_plus_0x8 != 0x6:
		part_c()
	eax = ebp_plus_0x8
	eax -= 0x3
	part_d()

def part_b():
	global ebp_plus_0x8
	global eax
	eax = ebp_plus_0x8
	eax -= 0x3
	part_d()
	if ebp_plus_0x8 != 0x126:
		part_c()
	eax = ebp_plus_0x8
	eax -= 0x3
	part_d()

def part_c():
	global ebp_plus_0x8
	global eax
	eax = ebp_plus_0x8
	eax += 0x3
	part_d()

def part_d():
	global ebp_plus_0x8
	global eax
	print('eax -> ', hex(eax))
	sys.exit(1)

asm1(0x255)

