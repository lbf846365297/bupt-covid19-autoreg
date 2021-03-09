#!/bin/bash

python3 autoreg_main.py >> log.txt &

if [ $(uname) == "Darwin" ]
then 
    caffeinate -w $(ps -ef | grep autoreg_main.py | grep -v grep | awk '{print $2}') &
    echo "caffeinated"
fi
