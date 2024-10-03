#!/bin/bash

# Define log file and threshold
logfile="/var/log/nginx/access.log"
threshold=100

# Check if the logfile exists
if [ ! -f "$logfile" ]; then
    echo "Log file not found!"
    exit 1
fi

# Analyze the log file
echo "IP Address Analysis:"
awk '{print $1}' $logfile | sort | uniq -c | sort -nr | while read count ip; do
    if [ $count -gt $threshold ]; then
        echo "IP $ip has accessed the server $count times"
    fi
done

