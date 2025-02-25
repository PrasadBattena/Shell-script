#!/bin/bash

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="e[0m"
LOGS_FOLDER="/var/log/shellscript-logs"
LOG_FILE=$(echo $0 | cut -d "." -f1 )
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE_NAME="$LOGS_FOLDER/$LOG_FILE-$TIMESTAMP.log"

validate(){

    if [ $1 -ne 0 ]
    then 
      echo -e "$2...$R Failure $N"
      exit 1
     else
        echo -e  "$2...$G sucsess"
      fi   
}
echo "script started executing at: $Timestamp" &>>$LOG_FILE
if [ $USERID -ne 0 ]
then 
   echo "Error:: You must have sudo access to execute this script"
   exit 1 #other than 0
 fi

dnf list installed mysql &>>$LOG_FILE_NAME

if [ $? -ne 0 ] 
then #not installed
    dnf install mysql -y &>>$LOG_FILE_NAME
    validate $? "Installing mysql"

    else
     echo -e "mysql is already...$Y installed"
fi


 dnf list installed git

 if [ $? -ne 0 ]
 then 
    dnf install git -y &>>$LOG_FILE_NAME
   validate $? "Installing Git"
else
   echo -e "Git is already...$Y Installed"
 fi   
