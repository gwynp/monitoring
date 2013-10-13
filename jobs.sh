#!/bin/bash
# Gwyn
graphitestring=servers.`hostname`.jobs
monitoringhost=monitoring

result=`top -n1 -b| grep Tasks|cut -d : -f 2|cut -d' ' -f 2|tr -d ' '`
echo "$graphitestring:$result|g" | nc -w 1 -u $monitoringhost 8125
exit 0
