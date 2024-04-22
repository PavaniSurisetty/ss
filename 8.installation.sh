#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
    echo "error : please run with root access "
exit 1
else "you are a super user"
fi 

yum install postfix -y
 if [ $? -ne 0 ]
 then 
    echo "installation of my sql is successfull "
 exit 1
 else 
    echo "installation is failed"
 fi

 yum install mongodb -y 

 if [ $? -ne 0 ]
 then 
    echo "installation of git is successfull "
    exit 1
 else 
    echo "installation is failed"
 fi
 echo "is scripting proceeding"