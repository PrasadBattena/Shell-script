#!/bin/bash
echo "All variables passed: $@"
echo "Number of variables: $#"
echo "script name: $0"
echo "present working directory: $pwd"
echo "Home directory of current user: $home"
echo "which user is running this script: $user"
echo "process id of current script: $$"
sleep 60 &
echo "process id of last command in background: $!"
