#! /bin/bash


clear
echo "Before loop starts : "
cat hi.txt
while [ 1 ]
do
    cat hi.txt
done




























echo "before loop start file contents "
cat $1 # printing before loop
echo 
echo "After loop start: "  
cat | cat | tail -f $1 >> $1

