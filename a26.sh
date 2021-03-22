#! /bin/bash

clear 
# df 
arr=(`df $1`) # fetching data with help of df and stored it in array
# echo ${arr[@]} 

echo "file-system ${arr[7]} is mounted on ${arr[12]} and it is having ${arr[9]} KB used space with ${arr[10]} KB free."
#printing it in given format





























<<comment
clear   
df | cut -d " " -f1 | tr [:space:] '\n' > out_a26_fs.txt # fetching all userIds in an text file
file_system=(`cat /home/emertxe/assignment/out_a26_fs.txt`) #storing that file in array
echo ${file_system[@]} 

df | tr -s " " | cut -d " " -f6 > out_a26_mo.txt # fetching all userIds in an text file
mounted_on=(`cat /home/emertxe/assignment/out_a26_mo.txt`) #storing that file in array
echo ${mounted_on[@]} 

df | tr -s " " | tr '%' " "| cut -d " " -f5 > out_a26_us.txt # fetching all userIds in an text file
used_space=(`cat /home/emertxe/assignment/out_a26_us.txt`) #storing that file in array
echo ${used_space[@]} 

df | tr -s " " | cut -d " " -f4 > out_a26_as.txt # fetching all userIds in an text file
available_space=(`cat /home/emertxe/assignment/out_a26_as.txt`) #storing that file in array
echo ${available_space[@]} 

fs=$1
for i in `seq 0 $len`
do
if [ "${mounted_on[$i]}"=="$fs" ]
then
    echo ${mounted_on[$i]}
    temp=$i
fi
done
echo $temp
echo "file-system ${file_system[$temp]} is mounted on ${mounted_on[$temp]} and it is having ${used_space[$temp]}% used space with ${available_space[$temp]} KB free."
comment
