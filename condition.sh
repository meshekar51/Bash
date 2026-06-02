#!/bin/bash
#find a file in etc directory
LOG_DIR=./chandra.txt

if [ -f /etc/resolv.conf ]; then
	echo "dns is available" 2>&1 | tee -a  $LOG_DIR
else
	echo "dns file not available" &>>$LOG_DIR
fi


if find /etc -name "resolv.conf" | xargs grep "nameserver"; then
        echo "name server available" &>>$LOG_DIR
else
        echo "name server not available" &>>$LOG_DIR
fi


