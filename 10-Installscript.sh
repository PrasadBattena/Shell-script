#! /bin/bash

USERID=$(id -U)

if ($USERID -ne 0)
then
   echo "ERROR :: You must haev sudo access to execute this script"
   exit 1 #other than 0
fi

dnf install mysqll -y

if ($? -ne 0 )
then 
   echo "INSTALLING MYSQL ...Failure"
   exit 1

   else 
      echo "installing myql ... Success"
fi      

dnf install git -y

if ($? -ne 0)
then 
    echo "Installing Git...Failure"
    exit 1
 else 
    echo "Installing Git ... Success"
fi   