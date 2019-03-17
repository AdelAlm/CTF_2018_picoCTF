#!/usr/bin/python3

import pwn
import re

host, port = '2018shell.picoctf.com', 64706

s = pwn.remote(host, port)

prompt = s.recv()
print(prompt.decode())

binary = re.findall('Please give me the (.*) as a word.', prompt.decode())[0]
answer = bytes.fromhex(hex(int(binary.replace(' ', ''),2))[2:])
s.sendline(answer)

prompt = s.recv()
print(prompt.decode())

hexa = re.findall('Please give me the (.*) as a word.', prompt.decode())[0]
answer = bytes.fromhex(hexa)
s.sendline(answer)

prompt = s.recv()
print(prompt.decode())

integer = re.findall('Please give me the  (.*) as a word.', prompt.decode())[0]
answer = bytes.fromhex(''.join([hex(int(i,8))[2:] for i in integer.split(' ')]))
s.sendline(answer)

prompt = s.recv()
print(re.findall('(picoCTF{.*})', prompt.decode())[0])

s.close()

