#!/bin/bash
result=`free|grep Swap|awk '{print $4}'|tr -d ' '`
echo "servers.gwyn01.freeswap:$result|g" | nc -w 1 -u monitoring 8125

