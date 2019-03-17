#!/bin/bash

MY_RAND=`echo $RANDOM`

echo "my rand -> $MY_RAND"

# dont work because using ssh user ?
ssh adel007@2018shell4.picoctf.com "mkdir /tmp/$MY_RAND && ln -s /problems/absolutely-relative_4_bef88c36784b44d2585bb4d2dbe074bd/absolutely-relative /tmp/$MY_RAND && echo 'yes' > /tmp/$MY_RAND/permission.txt  && /tmp/$MY_RAND/absolutely-relative"
