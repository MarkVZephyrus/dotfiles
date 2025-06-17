#!/bin/bash

# Initialize variable
CURRENT_BT=""

# Save the output into an array
IFS=$'\n' read -d '' -r -a device_lines < <(
  bluetoothctl devices
  printf '\0'
)

# Loop directly over the array
for line in "${device_lines[@]}"; do
  # Parse MAC and name
  read -r _ mac name <<<"$line"

  # Check if device is connected
  if bluetoothctl info "$mac" | grep -q "Connected: yes"; then
    CURRENT_BT="$name"
    break
  fi
done

# Output result
if [[ -n "$CURRENT_BT" ]]; then
  echo "$CURRENT_BT"
else
  echo "No Bluetooth device connected"
  exit 1
fi
