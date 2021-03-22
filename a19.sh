#! /bin/bash
clear
direc=$1 # storing dir name from CLA in variable
IFS=" " # internal file seprator
arr=(`find /home/emertxe/$direc -name "*.swp"`) # taking all .swp files in array
arr1=(`find ~/ -name "*.swp"`) 
len=${#arr[@]} # calculating length
len1=${#arr1[@]}
if [ $len -ne 1 ] # if not equal to 1 then no .swp files
then
    echo No swap files found in $direc
elif [ $len2 -ne 1 ]
then
    echo No swap files found.
else 
if [ $# -ne 0 ]
then              # logic to find all .swp file from folder n delete it
    echo "Swap files found : "
    find /home/emertxe/$direc -name "*.swp"
    find /home/emertxe/$direc -name "*.swp" -delete
else # logic for deleting all .swp from ~/
    echo "Swap files found : "
    find ~/ -name "*.swp"
    find ~/ -name "*.swp" -delete
fi
fi

