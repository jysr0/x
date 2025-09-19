systemctl --user import-environment XDG_CURRENT_DESKTOP DISPLAY
#dbus-update-activation-environment --systemd XDG_CURRENT_DESKTOP=dwm DISPLAY=:0
dbus-update-activation-environment XDG_CURRENT_DESKTOP DISPLAY # used for filechoose when (down/up)load from browser

setxkbmap -model acer_laptop -option grp:alt_shift_toggle us,ara
xset r rate 200 55
xwallpaper --stretch $XDG_CACHE_HOME/wallpaper
picom -b

sxhkd &
#dunst &
systemctl --user start dunst.service

#climenud &
systemctl --user start clipmenud.service
dwmblocks &
exec dwm
