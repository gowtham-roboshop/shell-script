#!/bin/bash

echo "please enter the student marks"

read marks

if [ $marks -lt 33 ]
then
    echo "student is failed in exam"
elif [ $marks -lt 40 ]
then
    echo "third class"
elif [ $marks -lt 60 ]
then
    echo "second class"
else
    echo "first class"
fi
