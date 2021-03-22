#! /bin/bash

clear

directory_name=$1  # storing CLA to variable
echo "Before locking"
ls -l ../$directory_name # printing before permission chage

for i in `ls ../$directory_name` # traversing in given directory
do
     chmod 700 ../$directory_name/$i # changing permisions of groups n others
done
echo "After locking"
ls -l ../$directory_name # printing after permission chage








