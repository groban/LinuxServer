#!/bin/bash

AGENDAFILE="$HOME/.agenda"

if [ ! -e $AGENDAFILE ]; then
    echo File $AGENDAFILE is missing!
    echo You should create agenda file
    exit 1
fi

WEEKDAY=$(date +%a)
DAY=$(date +%d)
MONTH=$(date +%b)
YEAR=$(date +%Y)

echo Today is: $WEEKDAY $DAY/$MONTH/$YEAR
echo ====================================

format1=$WEEKDAY
format2="$DAY/$MONTH"
format3="$DAY/$MONTH/$YEAR"

while read date descr 
do
    if [[ $date == $format1 || $date == $format2 || $date == $format3 ]]; then
       echo $descr
    fi 
done <$AGENDAFILE
