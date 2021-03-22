#! /bin/bash

clear 

file=$1
if [ $# -gt 0 ]  
then
    if [ -f /home/emertxe/assignment/$file ] # checking file is present or not
    then
    len=`wc -l /home/emertxe/assignment/$file | cut -d ' ' -f1` # calculated number of lines in file
    if [ $len -gt 5 ] #checking it is grester than 5 or not
    then
        echo -n "Fifth line of $file is "
        echo `head -5 $file | tail -1`. #printing fifth line of given file
    else
        echo "$file is having only $len lines . so can't print5th line." #error sms
    fi
else
    echo "No such file." #error sms
fi
else
    echo "Please pass the the file name in command line." #error sms
fi
