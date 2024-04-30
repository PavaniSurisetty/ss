#!/bin/bash
USERID=$(id -u)
SCRIPTNAME=$0
G="\e[32m"
R="\e[31m"
DATE=$(date +%F)
for i in $@
do 
    # yum install $i -y
    yum list installed $i -y
done

if [ $USERID -ne 0 ] 
    then
     echo " take root access"
    exit 1

fi

if [ $1 -ne 0 ]
    then echo -e " $DATE   $R installation $2 is failed  "
    exit 1
else
    echo -e " $G  installing  $2 is success"
fi