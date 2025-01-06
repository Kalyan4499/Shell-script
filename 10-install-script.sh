#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Error: root privileges are required to run this command"
    exit 1 #other than 0
fi

dnf install mysql -y
if [ $? -ne 0 ]
then
    echo "Failure: mysql is not installed"
    exit 1
else
    echo "Success: mysql is installed"
fi 

dnf install git -y
if [ $?-ne 0 ]
then
    echo "Failure: git is not installed"
    exit 1
else
    echo "Success: git is installed"
fi