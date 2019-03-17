#!/usr/bin/python3

import pwn

host, port = '2018shell.picoctf.com', 5221

s = pwn.remote(host, port)

print(s.recv().decode())
s.sendline('root')

print(s.recv().decode())
s.sendline('hellokitty')

print(s.recv().decode())

s.close()
