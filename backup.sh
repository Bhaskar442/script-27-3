#!/bin/bash

SOURCE="/var/log"
DEST="/tmp/log_backup"
TIMESTAMP=$(date '+%Y-%m-%d_%H:%M:%S')

mkdir -p "$DEST"

tar -czf "$DEST/logs_$TIMESTAMP.tar.gz" "$SOURCE"

echo "$(date):backup created at $DEST" >> /tmp/log_backup.log

