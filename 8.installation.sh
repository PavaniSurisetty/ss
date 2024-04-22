#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
    echo "error : please run with root access "
exit $?
fi 
yum install git -y 
yum install mysql -y
 if [ $? -ne 0 ]
 then "installation is successfull "