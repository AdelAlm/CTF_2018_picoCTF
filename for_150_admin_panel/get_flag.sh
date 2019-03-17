#!/bin/bash

#wget -c -q --no-check-certificate https://2018shell.picoctf.com/static/19129d64f5676ff5661da65b9772aff5/data.pcap

#number of tcp streams
#tshark -r data.pcap -qz conv,tcp

# get number of tcp streams
NB_STREAMS=`tshark -r data.pcap -qz conv,tcp | grep -oE '^([0-9]{1,3}\.){3}([0-9]){1,3}' | wc -l`

echo 'Number of tcp streams -> '$NB_STREAMS

# -1
let NB_STREAMS--

# look for the flag with tcp follow
for i in `seq $NB_STREAMS`
do
	tshark -r data.pcap -z follow,tcp,ascii,$i | grep -oE 'picoCTF{.*}'
done
