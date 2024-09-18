#!/bin/bash


interface="lo"
ip_address="127.0.0.1"

while true; do

 speed=$(ethtool $interface | grep "Speed:" | awk '{print $2}')
 speed_value=$(echo "$speed" | grep -oE '^[0-9]+')
 
 if (( 1 == 0 && speed_value < 100 )); then
            current_time=$(date +"%Y-%m-%d %H:%M:%S")
            echo "[$current_time] Network interface $interface speed is less than 100M. Current speed: $speed." >> ping_failure.log
        elif (( 1 == 1 && speed_value < 1000 )); then
            current_time=$(date +"%Y-%m-%d %H:%M:%S")
            echo "[$current_time] Network interface $interface speed is less than 1000M. Current speed: $speed." >> ping_failure.log
        fi

    sleep 0.5
done
