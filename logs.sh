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

echo "Script started execution at $(date +"%F %T")" &>> $log_file

validate () {
    if [ $1 -ne 0 ]
    then
        echo "$2 failed" | tee -a $log_file
        exit 1
    else
        echo "$2 success" | tee -a $log_file
    fi
}

dnf install nginx -y  &>> $log_file
validate $? "nginx installation" 

dnf install mysql -y  &>> $log_file
validate $? "mysql installation"

