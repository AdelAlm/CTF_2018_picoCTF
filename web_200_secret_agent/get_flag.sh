#!/bin/bash

# desc: Here's a little website that hasn't fully been finished. But I heard google gets all your info anyway.
#curl -s http://2018shell.picoctf.com:3827/flag
# we get "You are not google! curl/7.58.0"

# maybe set User-Agent to Googlebot ?
curl -s -A 'Googlebot' http://2018shell.picoctf.com:3827/flag | grep -oE 'picoCTF{.*}'
