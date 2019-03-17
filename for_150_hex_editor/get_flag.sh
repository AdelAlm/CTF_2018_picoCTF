#!/bin/bash

# work woth strings and hexdump -C
strings hex_editor.jpg | grep -oE 'picoCTF{.*}'
