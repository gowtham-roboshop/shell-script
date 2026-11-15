#!/bin/bash

user_id=$(id -u)

if [ ${user_id} -ne 0 ]
then
    echo "please run the script with root user"
fi

dnf install nginx -y 

if [ $? -ne 0 ]
then
    echo "nginx installation failed"
else
    echo "nginx installation success"
fi

