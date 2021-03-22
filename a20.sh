#! /bin/bash

clear
for i in `seq 10` #loop for printing 10 random password
do
cat /dev/urandom | tr -dc A-Za-z0-9 | head -c 8 # command to genrate random password
echo
done
