#!/bin/bash
number=$1

# -gt, -lt, -eq, -ge ,-le, gretarer than, le less than equal to 
if [ $number -gt 100 ]
then
    echo "given number is greater than 100"
else   
    echo "given number is lesss tha or equal to 100"
fi