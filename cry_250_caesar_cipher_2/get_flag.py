#!/usr/bin/python3

cipher = "PICO#4&[C!ESA2?#I0H%R3?JU34?A2%N4?S%C5R%]"

# offset of 32 !
str = ''
for i in cipher:
	str += chr(ord(i)+32)

print(str)
