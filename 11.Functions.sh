#!/bin/bash

USERID=$(id -u)

validate(){

    if [ $1 -ne 0 ]
    then 
      echo "$2...Failure"
      exit 1
     else
        echo "$2...sucsess"
      fi   
}

if [ $USERID -ne 0 ]
then 
   echo "Error:: You must have sudo access to execute this script"
   exit 1 #other than 0
 fi

dnf list installed mysql

if [ $? -ne 0 ] 
then #not installed
    dnf install mysql -y
    validate $? "Installing mysql"

    else
     echo "mysql is already...installed"
fi


 dnf list installed git

 if [ $? -ne 0 ]
 then 
    dnf install git -y
   validate $? "Installing Git"
else
   echo "Git is already...Installed"
 fi   
