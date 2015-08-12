#!/bin/bash

if [ "$1" == "" ]
then
echo "./getIP_ClassC.sh [network]"
else
for x in `seq 1 254`; do
ping -c 1 $1.$x | grep "64 bytes" | sed 's/.*\('$1'.*\):.*/\1/' >> IPs.txt
done
fi
