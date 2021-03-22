#! /bin/bash

clear
var=$1
case $var in
    1)  echo "currently logged user is : "
        echo `whoami`
        ;;
    2)  echo "Your shell directory is : "
        echo $SHELL
        ;;
    3)  echo "Your home directory is : "
        echo ~
        ;;
    4)  echo "OS name and version is : "
        echo `uname`
        echo `uname -r`
        ;;
    5)  echo "Your current working directory is : "
        pwd 
        ;;
    6)  echo "Number of users logged in  your system is : "
        users | wc -w
        ;;
    7)  echo "All availabel shells in your system : "
        cat /etc/shells
        ;;
    8)  echo "Harddisk information is : "
        df 
        ;;
    9)  echo "CPU information is : "
        cat /proc/cpuinfo
        ;;
   10)  echo "Memory information is : "
        cat /proc/meminfo
        ;;
   11)  echo "file system information is : "
        ls -l
        ;;
   12)  echo "Currently running process is : "
        ps -aux
        ;;
    *)
        echo "Please enter correct number!!"
esac
