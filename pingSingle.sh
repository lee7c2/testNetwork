#!/bin/bash

ip_address="192.168.1.201"
while true; do
    ping_result=$(ping -c 1 $ip_address)
    if [[ $? -ne 0 ]]; then
        current_time=$(date +"%Y-%m-%d %H:%M:%S")
        echo "[$current_time] Ping to $ip_address failed." >> ping_failure.log
    else
        echo "[$(date +"%Y-%m-%d %H:%M:%S")] Ping to $ip_address succeeded."
    fi
    sleep 0.5
done
