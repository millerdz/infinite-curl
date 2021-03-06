#!/bin/sh
count=$2
read up rest </proc/uptime; t1="${up%.*}${up#*.}"

while [ $count -gt 0 ];
do
	count=`expr $count - 1`
    read up rest </proc/uptime; t2="${up%.*}${up#*.}"
    result="$(curl -s -o /dev/null -I -w "%{http_code}" --connect-timeout 60 --max-time 65 $1)"
    millisec=$(( 10*(t2-t1) ))
    echo "ms=$millisec; count=$count; result=$result"
done
echo "Bye!"