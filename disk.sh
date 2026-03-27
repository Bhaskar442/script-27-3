#!/bin/bash

THRESHOLD=70
HOSTNAME=$(hostname)
DATE=$(date '+%Y-%m-%d_%H:%M:%S')
LOGFILE="/var/log/disk.log"

USAGE=$(df -h / | awk 'NR==2 {print$5}' | sed 's/%//')

if [ "$THRESHOLD" -gt "$USAGE" ]; then
	echo "$HOSTNAME | $DATE | warning: disk usage is more $USAGE" >> $LOGFILE
else
	echo "$HOSTANEM | $DATE | info: disk usage is normal $USAGE" >> $LOGFILE
fi
#comment 2
