#!/bin/bash

user_id=$(id -u)

if [ ${user_id} -ne 0 ] 
then
    echo "please run the script with root user"
    exit 1
fi

logs_folder="/var/logs/shell-script"
log_file="${logs_folder}/$0.log"

mkdir -p ${logs_folder}

validate () {
    if [ $1 -ne 0 ]
    then
        echo "$2 failed"
        exit 1
    else
        echo"$2 success"
    fi
}

dnf install nginxx -y
validate $? "nginx installation"

dnf install mysql -y
validate $? "mysql installation"

