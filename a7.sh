#! /bin/bash

clear
if [ $# -gt 0 ]  
then
echo before deleting empty lines:
cat $1 #printing orignal file having empty lines
echo
#grep -Ev "^$" $1 > out.txt    # logic of deleting empty lines and redirecting it to out.txt
sed -i '/^$/d' $1 #finding empty lines,deleting it and saving by back it to same file.  
echo After deleting empty lines: 
echo
cat $1
#cat out.txt  #printing file with deleted empty lines
else
    echo Please pass the file name through command line.
fi




