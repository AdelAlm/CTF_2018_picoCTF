#!/bin/bash

# get files
#rsync -av adel007@2018shell4.picoctf.com:/problems/grep-2_3_826f886f547acb8a9c3fccb030e8168d/files .

# recursive grep to find the flag with format
grep -oEr 'picoCTF{.*}' files/ | cut -d ':' -f2
