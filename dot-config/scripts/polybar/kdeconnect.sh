#!/bin/bash
kdeconnect-cli --refresh
CURRENT_KDE="$(kdeconnect-cli -a --name-only 2>/dev/null)"
CURRENT_BT=""
IFS=$'\n' read -d '' -r -a device_lines < <(
  bluetoothctl devices Connected
  printf '\0'
)
for line in "${device_lines[@]}"; do
  read -r _ mac name <<<"$line"
  if [[ "$name" == "$CURRENT_KDE" ]]; then
    CURRENT_BT="$name"
    break
  fi
done
if [[ $CURRENT_KDE == "" ]]; then
  echo "󰄢 "
elif [[ "$CURRENT_KDE" == "$CURRENT_BT" ]]; then
  echo "󰄡  + 󰋋 "
else
  echo "󰄡 "
fi
