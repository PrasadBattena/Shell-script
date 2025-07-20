#!/bin/bash

Number1=$1
Number2=$2

Timestamp=$(date)
echo "script executed at: $Timestamp"
sum=$(($Number1+$Number2))

echo "sum of $Number1 and $Number2"