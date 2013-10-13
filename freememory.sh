#!/bin/bash
result=`free|grep +|awk '{print $4}'|tr -d ' '`
echo "servers.gwyn01.freememory:$result|g" | nc -w 1 -u monitoring 8125

