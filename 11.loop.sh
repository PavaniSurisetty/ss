#!/bin/bash
USERID=$(id -u)
SCRIPTNAME=$0
G="\e[32m"
for i in #@
do 
    yum install $i -y
done

if [ $USERID -eq 0 ] 
    then echo -e " $G installing is success"
else
    then echo " take root access"
fi