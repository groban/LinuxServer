#!/bin/bash 

if [ $# -gt 1 ]; then 
    echo "Usage: $0 [file_type]"
    exit 1
fi

if [ $# -eq 1 ]; then
   ext=$1
fi

read -p "Give me users name:" name

echo "------------------------------"
echo " Printing home dir of user $name"

if [ ! -d /home/$name ]; then
    echo $user does not have /home directory
    exit 2
fi

find /home/$name -maxdepth 1 -type f | grep "$ext"
