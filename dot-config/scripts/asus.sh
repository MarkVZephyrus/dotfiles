#!/bin/bash
asusctl profile -n

notify-send "AsusCTL" "Current Profile: $(asusctl profile -p | awk 'a!=Starting {print $NF} {a=$1}')"
