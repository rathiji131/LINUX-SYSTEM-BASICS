#! /bin/bash 
#write this code in bashrc file
clear

# hare we are rading current hour,day,month,year.date,min,sec from following command
this_hour=`date +%H`
this_day=`date +%A`
this_month=`date +%b`
this_year=`date +%Y`
this_date=`date +%d`
this_min=`date +%M`
this_sec=`date +%S`

<<com
echo $this_date
echo $this_month
echo $this_year
echo $this_day
echo $this_hour
echo $this_min
echo $this_sec
com
#checking time zone for printing sms
if [ $this_hour -lt 5 ]
then
    echo "Good Night!!"
elif [ $this_hour -lt 12 ]
then
    echo "Good Morning user , Have nice day!"
elif [ $this_hour -lt 13 ]
then
    echo "Good Noon user , Have nice day!"
elif [ $this_hour -lt 17 ]
then
    echo "Good Afternoon user , Have nice day"
elif [ $this_hour -lt 21 ]
then
    echo "Good Evening user!!"
else
    echo "Good night!!"
fi

#for checking AM or PM
if [ $this_hour -lt 12 ]
then
echo "This is $this_day $this_date in $this_month of $this_year ($this_hour:$this_min:$this_sec AM)"
else
echo "This is $this_day $this_date in $this_month of $this_year ($this_hour:$this_min:$this_sec PM)"
fi



