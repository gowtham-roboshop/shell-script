#!/bin/bash

user_id=$(id -u)

if [ ${user_id} -ne 0 ]
then
    echo "please run the script with root user"
    exit 1
fi

validate (){
    if [ $1 -ne 0]
    then
        echo"$2 failed"
    else
        echo"$2 success"
    fi
}

dnf install nginx -y 
validate $? "Nginx installation"

dnf install mysql -y 
validate $? "sql installation"