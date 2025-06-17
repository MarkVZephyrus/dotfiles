#!/bin/bash

INTERVAL=1
INTERFACES=$(ls /sys/class/net | grep -v lo)

print_speed() {
  local bytes=$1
  local unit

  if ((bytes < 1000)); then
    printf "0 kB/s"
  elif ((bytes < 1000000)); then
    awk -v b="$bytes" 'BEGIN { printf "%.0f kB/s", b/1000 }'
  else
    awk -v b="$bytes" 'BEGIN { printf "%.1f MB/s", b/1000000 }'
  fi
}

declare -A prev_rx prev_tx

for iface in $INTERFACES; do
  read -r prev_rx[$iface] <"/sys/class/net/$iface/statistics/rx_bytes"
  read -r prev_tx[$iface] <"/sys/class/net/$iface/statistics/tx_bytes"
done

while true; do
  total_rx=0
  total_tx=0

  for iface in $INTERFACES; do
    read -r now_rx <"/sys/class/net/$iface/statistics/rx_bytes"
    read -r now_tx <"/sys/class/net/$iface/statistics/tx_bytes"

    diff_rx=$(((now_rx - prev_rx[$iface]) / INTERVAL))
    diff_tx=$(((now_tx - prev_tx[$iface]) / INTERVAL))

    total_rx=$((total_rx + diff_rx))
    total_tx=$((total_tx + diff_tx))

    prev_rx[$iface]=$now_rx
    prev_tx[$iface]=$now_tx
  done

  echo "󰁆 $(print_speed $total_rx) 󰁞 $(print_speed $total_tx)"
  sleep "$INTERVAL"
done
