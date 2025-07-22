#! /bin/bash

USERID=$(id -U)

if ($USERID -ne 0)
then
   echo "ERROR :: You must haev sudo access to execute this script"
   exit 1 #other than 0
fi

dnf install mysqll -y

dnf install git -y