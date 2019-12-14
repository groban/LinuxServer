#!/usr/bin/bash
# elengxei an mia entoli yparxei sto path
# i entoli mporei na dinetai san sketo onoma
# i san full path

COMMAND=$1;
FULLPATH=0; # pairnei 0 an den einai fullpath 1 an einai

# elegxei an einai full path
if [[ $COMMAND == "/"* ]]; then
    FULLPATH=1
fi

if [ $FULLPATH -eq 0 ]; then
# se periptosi poy den einai fullpath
# pairnei ena ena ta dir toy path
# kai elegxei an yparxei arxeioekei
    ALLPATHS=$PATH

    OLDIFS="$IFS"
    IFS=:

    for DIR in $ALLPATHS
    do
        if [ -f $DIR/$COMMAND ]; then
            echo Command Exist
            IFS="$OLDIFS"
            exit
        fi
    done
    IFS="$OLDIFS"
    echo Command does not exists
else
# se periptosi poy einai fullpath elegxei an yparxei ayto to arxeio
    if [ -f $COMMAND ]; then
        echo Command exist
    else
        echo Command does not exist
    fi
fi
