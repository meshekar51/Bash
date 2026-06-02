#!/bin/bash
LOG_DIR=./chandra.txt
if [ -f /etc/resolv.conf ]; then
        echo "dns is available" 2>&1 | tee -a  $LOG_DIR
else
        echo "dns file not available" 2>&1 | tee -a $LOG_DIR
fi
if find /etc -name "resolv.conf" | xargs grep -q "nameserver"; then
        echo "name server available" 2>&1 | tee -a $LOG_DIR
else
        echo "name server not available" 2>&1 | tee -a $LOG_DIR
fi
if find /etc -name "resolv.conf" | xargs grep "nameserver" | awk '{print $2}'; then 2>&1 | tee -a $LOG_DIR
        echo "name server 10.0.0.2 is available" 2>&1 | tee -a $LOG_DIR
else
        echo "name server not available" 2>&1 | tee -a $LOG_DIR
fi
