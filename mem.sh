#!/bin/bash

THRESHOLD=70
LOGFILE="/var/log/mem.log"

USAGE=$(free  | awk '/Mem/ {print $3*$2 * $100}')

if [ "$THRESHOLD" -gt "$USAGE" ]; then
	echo "warning: mem usage is $USAGE" >> $LOGFILE
else
	echo "info: mem usage is $USAGE" >> $LOGFILE
fi
