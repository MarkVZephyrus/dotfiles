#!/bin/sh

# Use the current timestamp as the unique filename of the screenshot.
FILE_PATH="/home/$USER/Pictures/Screenshots/ss_$(date -u +'%Y%m%d-%H%M%SZ').png"

main() {
  case $1 in
  full) maim --format=png $FILE_PATH ;;
  select) maim --select $FILE_PATH ;;
  window) maim --window $(xdotool getactivewindow) $FILE_PATH ;;
  screen) maim -x :0.0 $FILE_PATH ;;
  esac
}

main "$@"
notify-send "Screenschot saved." "Screenshot saved at ~/Pictures/Screenshots." --app-name="Maim" -i $FILE_PATH
