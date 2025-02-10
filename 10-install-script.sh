#!/bin/bash

Userid=$(id -u)
if [ $Userid -ne 0]
then 
   echo "Error:: you must have sudo access to execute this script"

 fi

 dnf install mysql -y

 dnf install git -y