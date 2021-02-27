#!/bin/bash

kill -9 $(ps -ef | grep autoreg_main.py | grep -v grep | awk '{print $2}')