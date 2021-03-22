#! /bin/bash

clear #clear the screen 
 
read -p "Enter the numbers to addition : " n1 n2 # taking 2 values from user

echo " scale=5 ; $n1 + $n2" | bc # adding an printing it bc and echo



