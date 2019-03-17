#!/bin/bash

# decode base64
STR=`echo 'dGg0dF93NHNfczFtcEwz' | base64 -d`

echo "picoCTF{$STR}"
