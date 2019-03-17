#!/bin/bash

# open the binary with r2
# don't call the function set_timer

# old main
[0x0040085f]> pdf
            ;-- main:
/ (fcn) sym.main 62
|   sym.main ();
|           ; var int local_10h @ rbp-0x10
|           ; var int local_4h @ rbp-0x4
|              ; DATA XREF from 0x004005bd (entry0)
|           0x0040085f      90             nop
|           0x00400860      4889e5         mov rbp, rsp
|           0x00400863      4883ec10       sub rsp, 0x10
|           0x00400867      897dfc         mov dword [local_4h], edi
|           0x0040086a      488975f0       mov qword [local_10h], rsi
|           0x0040086e      b800000000     mov eax, 0
|           0x00400873      e8a9ffffff     call sym.header
|           0x00400878      b800000000     mov eax, 0
|           0x0040087d      e8f8feffff     call sym.set_timer # we have to remove it
|           0x00400882      b800000000     mov eax, 0
|           0x00400887      e842ffffff     call sym.get_key
|           0x0040088c      b800000000     mov eax, 0
|           0x00400891      e863ffffff     call sym.print_flag
|           0x00400896      b800000000     mov eax, 0
|           0x0040089b      c9             leave
\           0x0040089c      c3             ret

# edition
wa nop @ 0x0040087d
wa nop @ 0x0040087e
wa nop @ 0x0040087f
wa nop @ 0x00400880
wa nop @ 0x00400881

# new main
[0x0040085f]> pdf
            ;-- main:
/ (fcn) sym.main 62
|   sym.main ();
|           ; var int local_10h @ rbp-0x10
|           ; var int local_4h @ rbp-0x4
|              ; DATA XREF from 0x004005bd (entry0)
|           0x0040085f      90             nop
|           0x00400860      4889e5         mov rbp, rsp
|           0x00400863      4883ec10       sub rsp, 0x10
|           0x00400867      897dfc         mov dword [local_4h], edi
|           0x0040086a      488975f0       mov qword [local_10h], rsi
|           0x0040086e      b800000000     mov eax, 0
|           0x00400873      e8a9ffffff     call sym.header
|           0x00400878      b800000000     mov eax, 0
|           0x0040087d      90             nop
|           0x0040087e      90             nop
|           0x0040087f      90             nop
|           0x00400880      90             nop
|           0x00400881      90             nop
|           0x00400882      b800000000     mov eax, 0
|           0x00400887      e842ffffff     call sym.get_key
|           0x0040088c      b800000000     mov eax, 0
|           0x00400891      e863ffffff     call sym.print_flag
|           0x00400896      b800000000     mov eax, 0
|           0x0040089b      c9             leave
\           0x0040089c      c3             ret

# get_key
[0x004007ce]> pdf
/ (fcn) sym.get_key 43
|   sym.get_key ();
|              ; CALL XREF from 0x00400887 (sym.main)
|           0x004007ce      55             push rbp
|           0x004007cf      4889e5         mov rbp, rsp
|           0x004007d2      bfb8094000     mov edi, str.Calculating_key... ; 0x4009b8 ; "Calculating key..." ; const char * s
|           0x004007d7      e854fdffff     call sym.imp.puts           ; int puts(const char *s)
|           0x004007dc      b800000000     mov eax, 0
|           0x004007e1      e865ffffff     call sym.calculate_key
|           0x004007e6      8905d4082000   mov dword [obj.key], eax    ; obj.__TMC_END ; [0x6010c0:4]=0
|           0x004007ec      bfcb094000     mov edi, str.Done_calculating_key ; 0x4009cb ; "Done calculating key" ; const char * s
|           0x004007f1      e83afdffff     call sym.imp.puts           ; int puts(const char *s)
|           0x004007f6      90             nop
|           0x004007f7      5d             pop rbp
\           0x004007f8      c3             ret


# calculate_key
[0x0040074b]> pdf
/ (fcn) sym.calculate_key 16
|   sym.calculate_key ();
|              ; CALL XREF from 0x004007e1 (sym.get_key)
|           0x0040074b      55             push rbp
|           0x0040074c      4889e5         mov rbp, rsp
|           0x0040074f      bf02040000     mov edi, 0x402              ; 1026
|           0x00400754      e8adffffff     call sym.fib
|           0x00400759      5d             pop rbp
\           0x0040075a      c3             ret

# it is try to find fibo(1026)...
# it takes a lot of time
# let's edit the program and give it the result finded in internet

# back to get_key
[0x004007ce]> pdf
/ (fcn) sym.get_key 43
|   sym.get_key ();
|              ; CALL XREF from 0x00400887 (sym.main)
|           0x004007ce      55             push rbp
|           0x004007cf      4889e5         mov rbp, rsp
|           0x004007d2      bfb8094000     mov edi, str.Calculating_key... ; 0x4009b8 ; "Calculating key..." ; const char * s
|           0x004007d7      e854fdffff     call sym.imp.puts           ; int puts(const char *s)
|           0x004007dc      b800000000     mov eax, 0
|           0x004007e1      e865ffffff     call sym.calculate_key # we have to put fibo(2016) in eax (it is used in next instruction)
|           0x004007e6      8905d4082000   mov dword [obj.key], eax    ; obj.__TMC_END ; [0x6010c0:4]=0
|           0x004007ec      bfcb094000     mov edi, str.Done_calculating_key ; 0x4009cb ; "Done calculating key" ; const char * s
|           0x004007f1      e83afdffff     call sym.imp.puts           ; int puts(const char *s)
|           0x004007f6      90             nop
|           0x004007f7      5d             pop rbp
\           0x004007f8      c3             ret

wa eax, 0xf70a9b58 @ 0x004007e1

# why 0xf70a9b58 ?
# it is hex( hex(fibo(1026)) & 0xffffffff) with python

dc
Be Quick Or Be Dead 2
=====================

Calculating key...
Done calculating key
Printing flag:
picoCTF{the_fibonacci_sequence_can_be_done_fast_7e188834}

