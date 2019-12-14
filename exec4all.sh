#!/usr/bin/bash
# ektelei mia entoli (stin peritosi edo thn last)
# gia olous tous xristes (theorei apo uid 1000 kai pano)
cat /etc/passwd|awk -F: '{if($3>999)print $1}'>users.tmp

while read USER
do
    last $USER
done<users.tmp 

rm users.tmp
