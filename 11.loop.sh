#!/bin/bash
USERID=$(id -u)
SCRIPTNAME=$0
G="\e[32m"
DATE=$(date +%F)
for i in #@
do 
    yum install $i -y
done

if [ $USERID -eq 0 ] 
    then echo -e " $G  $i installing is success"
    exit 1
else
    echo " take root access"
fi
if [ $1 -eq 0 ]
then echo " $DATE "
fi