#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR: root privileges are required to run this command"
    exit 1 #other than 0
fi

dnf list installed MySQL
if [ $? -ne 0 ]
then
    dnf install MySQL -y
    if [ $? -ne 0 ]
    then
        echo "Failure: MySQL is not installed"
        exit 1
    else
        echo "Success: MySQL is installed"
    fi 
else
    echo "MySQL is already installed"
fi
    


# dnf install MySQL -y
#     if [ $? -ne 0 ]
#     then
#         echo "Failure: MySQL is not installed"
#         exit 1
#     else
#         echo "Success: MySQL is installed"
#     fi






dnf list installed git
if [ $? -ne 0 ]
then
    dnf install git -y
    if [ $? -ne 0 ]
    then
        echo "Failure: git is not installed"
        exit 1
    else
        echo "Success: git is installed"
    fi 
else
    echo "git is already installed"
fi




# dnf install git -y
#     if [ $? -ne 0 ]
#     then
#         echo "Failure: git is not installed"
#         exit 1
#     else
#         echo "Success: git is installed"
#     fi 