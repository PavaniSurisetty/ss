#!/bin/bash
USERID=$(id -u)
SCRIPTNAME=$0
G="\e[32m"
for i in #@
do 
    yum install $i -y
done

if [ $USERID -ne 0 ] 
    then echo " take root access"

else 
    echo -e " $G installing is success"
fi