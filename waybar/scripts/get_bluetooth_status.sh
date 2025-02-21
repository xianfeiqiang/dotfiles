#!/bin/bash

status=$(bluetoothctl show | grep -q "Powered: yes" && echo "on" || echo "off")

if [ "$status" == "on" ]; then
    connected_devices=$(bluetoothctl paired-devices | grep "Device" | wc -l)
    if [ "$connected_devices" -gt 0 ]; then
        echo " Connected ($connected_devices)"
    else
        echo " On"
    fi
else
    echo " Off"
fi
