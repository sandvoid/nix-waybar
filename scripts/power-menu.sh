#!/run/current-system/sw/bin/bash

choice=$(printf "󰌾 Lock\n󰤄 Sleep\n󰗼 Logout\n󰜉 Reboot\n󰐥 Shutdown" |
  rofi -dmenu -i -p "Power" -font "JetBrainsMono Nerd Font 12")

case "$choice" in
  "󰌾 Lock") hyprlock ;;
  "󰤄 Sleep") systemctl suspend ;;
  "󰗼 Logout") hyprctl dispatch exit ;;
  "󰜉 Reboot") systemctl reboot ;;
  "󰐥 Shutdown") systemctl poweroff ;;
esac

