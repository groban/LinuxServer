#!/bin/bash
. function.sh

read -p "give number:" number


if isNumber $number; then
    echo "$number is number"
else
   echo "$number is not a number"
fi


read -p "give var name:" name

if isVarname $name; then
    echo "$name is for var name"
else
    echo "$name is not for var name"
fi 
