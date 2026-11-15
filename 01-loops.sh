#!/bin/bash

user_id=$(id -u)
logs_folder="/var/logs/shell-script"
log_file="${logs_folder}/$0.log"

if [$user_id -ne 0]
then
    echo "please run the script with user"
    exit 1
fi

mkdir -p $logs_folder

echo "script started executing at $(date +"%F %T")" &>> $log_file

for package in @
do 
    dnf list installed $package &>> $log_file
    if [ $? -ne 0]
    then
        echo "going to install ${package}"
        dnf install $package -y &>> log_file
        validate $? "installing ${pacakge}"
    else
        echo "${pacakge} is already installed..skipping"
    fi
done

validate(){
    if [ $1 -ne 0 ]; then
        echo "${2}..FAILED" | tee -a $logs_file
        exit 1
    else
        echo "${2}..SUCCESS" | tee -a $logs_file
    fi
}