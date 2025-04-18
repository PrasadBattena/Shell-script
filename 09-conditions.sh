#!/bin/bash

NUMBER=$1

# -gt, -lt, -eq, -ge ,-le, gretarer than, le less than equal to 

if [ $NUMBER -gt 100 ]
then
    echo "Given number is greater than 100"
else   
    echo "Given number is lesss tha or equal to 100"
fi