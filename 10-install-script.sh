#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
   echo "Error:: You must have sudo access to execute this script"
   exit 1 #other than 0
 fi

dnf list installed mysql

if [ $? -ne 0 ] 
then #not installed
    dnf install mysql -y
    if [ $? -ne 0 ]

 then
     echo "installing mysql....Failure"
     exit 1
  else 
       echo "installing mysql...Success"

    fi
else 
   echo "Mysql is already ....installed"
fi


 dnf install git
 if [ $? -ne 0 ]
 then 
    dnf install git -y
    if [ $? -ne 0]
    then 
    echo "installing git... Failure"
    exit 1
 else
    echo "installing git....success"
   fi   
 else   
   echo "Git is already... installed"
 fi   

 #if [ $? -ne 0 ]
 # then 
 #     echo "installing git ....failure"
 #     exit 1
 #else
 #    echo instlling git....success"
 #fi