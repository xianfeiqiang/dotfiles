#!/bin/bash

# 使用 rofi 显示电源菜单
rofi_command="rofi -dmenu -i -p 'Power Menu'"

options=" Shutdown\n Reboot\n Logout\n Lock\n⏾ Suspend"

chosen=$(echo -e "$options" | $rofi_command)

case $chosen in
" Shutdown")
    systemctl poweroff
    ;;
" Reboot")
    systemctl reboot
    ;;
" Logout")
    hyprctl dispatch exit
    ;;
" Lock")
    swaylock
    ;;
"⏾ Suspend")
    systemctl suspend
    ;;
*)
    exit 1
    ;;
esac
