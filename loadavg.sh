#!/bin/bash
result=`w|head -1|cut -d: -f 5|cut -d, -f1|tr -d ' '`
echo "servers.gwyn01.loadavg:$result|g" | nc -w 1 -u monitoring 8125

