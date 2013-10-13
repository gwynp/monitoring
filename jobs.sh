#!/bin/bash
result=`top -n1 -b| grep Tasks|cut -d : -f 2|cut -d' ' -f 2|tr -d ' '`
echo "servers.gwyn01.jobs:$result|g" | nc -w 1 -u monitoring 8125

