#!/bin/bash

read -p "give number:" number

tmp=$(echo $number | sed 's/[[:digit:]]//g')

if [ -z $tmp ]; then
    echo "$number is number"
else
   echo "$number is not a number"
fi


read -p "give var name:" name

if [[ ! "$name" = [[:alpha:]]* ]]; then 
   echo "$name is not for var name"
   exit 1
fi

tmp2=$(echo $name | sed 's/[[:alnum:]]//g')
if [[ -z $tmp2 ]]; then
    echo "$name is for var name"
else
    echo "$name is not for var name"
fi 
