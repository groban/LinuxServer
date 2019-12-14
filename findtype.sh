#!/usr/bin/bash
# metraei poso megethos exoun ta arxeia enos xristi enos typo
# usage: findtype user [type]
# and den dosei type metraei gia ola

# if no arguments prints usage
if [ $# -eq 0 ]; then
    echo Usage: $0 user filetype_extensions
    exit -1
fi

USER=$1

# sets FTYPE if type is defined or not
if [ -z $2 ]; then
    echo no file type defined - counting all files
    FTYPE=*.*
else
    FTYPE="*.$2"
fi

# finds and ls files of certain type of certain user
# and outputs in tmp file myfind.tmp
find /home -user $USER  -iname $FTYPE -ls 2>/dev/null | awk '{print $7}'>myfind.tmp 

# sums the size of the files in tmp file
SUM=$(cat myfind.tmp | awk '{sum=sum+$0}END{print sum}')

echo Summary is $SUM
rm myfind.tmp
