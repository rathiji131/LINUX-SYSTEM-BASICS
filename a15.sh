#! /bin/bash

echo "Current working directory is : " #command to print current working directory
ls ../ECEP
echo "Currect woring directory renamed to $1"

mv "../ECEP" "../$1" #command to rename directory
ls ../
