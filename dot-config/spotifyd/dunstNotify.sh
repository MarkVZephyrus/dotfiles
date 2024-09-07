#!/bin/bash
song=$(playerctl metadata --format "{{ title }}")
songDesc = $(playerctl metadata --format "{{ artist }}\n{{ album }}")
notify-send "$song" "$songDesc"
