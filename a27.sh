#! /bin/bash

clear
if [ $# -gt 0 ]
then
arr=($@)
len=$((${#arr[@]}-1))
for i in `seq 0 $len`
do
   if [ -d "/home/emertxe/${arr[$i]}" ]  # checking directory is present or not
   then
       echo "content of ${arr[$i]} " # if present print then content of of that directory
       dir /home/emertxe/${arr[$i]}
   else
      echo "No such file directory"
   fi
done
else
    echo "Please enter directory name."
fi
