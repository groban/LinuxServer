#!/bin/bash

# takes one argument the string we want to examine
# returns 0 if the string is number 1 else
function isNumber(){
    name=$1

    tmp=$(echo $number | sed 's/[[:digit:]]//g')

    if [ -z $tmp ]; then
        return 0 
    else
        return 1
    fi
}

# takes one argument the string we want to examine
# returns 0 if the string is suitable for var name 0 else
function isVarname() {
    name=$1
    if [[ ! "$name" = [[:alpha:]]* ]]; then 
        echo "$name is not for var name"
        exit 1
    fi

    tmp2=$(echo $name | sed 's/[[:alnum:]]//g')
    if [[ -z $tmp2 ]]; then
        return 0
    else
        return 1
    fi 
}
