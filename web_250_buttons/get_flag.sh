#!/bin/bash

# index page with form button who send to new page 'button1.php'
# in button1.php, we have classic button who send to button2.php but without form
# let's change the firtst button form to send us to 'button2.php'

curl -s -X POST http://2018shell.picoctf.com:7949/button2.php | grep -oE 'picoCTF{.*}'
