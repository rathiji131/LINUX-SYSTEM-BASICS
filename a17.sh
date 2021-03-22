#! /bin/bash

clear

if [ $# -eq 3 ]
then
    n1=$1 # reading CLA 
    n2=$2
    file_name=$3
    n3=`expr $n1 + $n2`
    echo `head -$n3 $file_name | tail -$n2` # logic for printing lines between given 5 numbers
    
else #error massage
    echo "Argument missing!"
    echo "Usage bash file_name.sh start_line uptoline filename"
    echo "for ex. bash a1.sh 5 3 <file> "
fi
