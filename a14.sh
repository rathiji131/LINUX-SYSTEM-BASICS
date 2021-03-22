#! /bin/bash

arr=(`ls`) # taking all files or dir of current folder in array
echo ${arr[@]} 
len=${#arr[@]} #length 
for i in `seq 0 1 $((len-1))` # logic for changing dir name to upper case an file name to lower case
do
    if [ -d "${arr[i]}" ]
    then
        td=`echo "${arr[i]}" | tr "[:lower:]" "[:upper:]"`
        mv "../madhu/${arr[i]}" "../madhu/$td" 
    else
       td=`echo "${arr[i]}" | tr "[:upper:]" "[:lower:]"`
       mv "../madhu/${arr[i]}" "../madhu/$td "
    fi
done
echo "After changing cases"
ls
