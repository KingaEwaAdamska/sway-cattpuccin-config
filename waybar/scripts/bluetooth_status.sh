#!/bin/bash

# Sprawdzenie, czy Bluetooth jest włączony
if bluetoothctl show | grep -q "Powered: yes"; then
    # Sprawdzenie, czy jakieś urządzenie jest połączone
    if bluetoothctl info | grep -q "Connected: yes"; then
        echo "  Połączono"
    else
        echo "  Włączony"
    fi
else
    echo "  Wyłączony"
fi

