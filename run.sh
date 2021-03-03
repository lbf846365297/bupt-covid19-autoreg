#!/bin/bash

python3 autoreg_main.py >> log.txt &
caffeinate -w $(ps -ef | grep autoreg_main.py | grep -v grep | awk '{print $2}') &