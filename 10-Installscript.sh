#! /bin/bash

USERID=$(id -U)

if ($USERID -ne 0)
then
   echo "ERROR :: You must haev sudo access to execute this script"
fi
dnf install mysqll -y
