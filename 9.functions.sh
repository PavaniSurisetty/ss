#!/bin/bash
VALIDATE()
{

}
if [ $USERID -ne 0 ]
then 
    echo "error : please run with root access "
exit 1
else "you are a superuser "
fi 