#!/bin/bash

chosen=$(echo -e " Shutdown\n Reboot\n Suspend\n Lock" | \
    wofi --dmenu \
         --width 280 \
         --height 240 \
         --hide-scroll \
         --prompt "" \
         --style ~/.config/wofi/power-menu.css)

case "$chosen" in
    *Shutdown) systemctl poweroff ;;
    *Reboot) systemctl reboot ;;
    *Suspend) systemctl suspend ;;
    *Lock) loginctl lock-session ;;
    *) exit 1 ;;
esac
