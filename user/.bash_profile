#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
#---------------------------------------------------------------------------------------

#[[ -f ~/.xprofile ]] && . ~/.xprofile

#system env variables:---------------
#export DISPLAY=":0"
#export HOME="$HOME"
#export PATH="$PATH:$HOME/.scripts"
#------------------------------------

#XDG env variables:-------------------------------
#export XDG_CURRENT_DESKTOP="dwm"
#export XDG_SESSION_TYPE="x11"
#export XDG_SESSION_TYPE="wayland"

#export XDG_RUNTIME_DIR="$HOME/.runtime.dir"
#export XDG_PUBLICSHARE_DIR="$HOME/"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CONFIG_DIRS="/etc/xdg"
export XDG_DATA_DIRS="/usr/share:/usr/local/share"
export XDG_DESKTOP_DIR="$HOME/desktop"
export XDG_DOWNLOAD_DIR="$HOME/downloads"
export XDG_DOCUMENTS_DIR="$HOME/documents"
export XDG_MUSIC_DIR="$HOME/music"
#export XDG_AUDIO_DIR="$HOME/audio"
export XDG_PICTURES_DIR="$HOME/pictures"
export XDG_VIDEOS_DIR="$HOME/videos"
export XDG_PUBLIC_DIR="$HOME/public"
#export XDG_SCRIPTS_DIR="$HOME/.scripts"
export XDG_TEMPLATES_DIR="$HOME/templates"
export XDG_WALLPAPERS_DIR="$HOME/pictures/wallpapers"
#-------------------------------------------------

#user env variables:-----------
export EDITOR="vim"
#export PAGER="vim -R"
#export BROWSER="librewolf"
export BROWSER="vivaldi"
export TERMINAL="alacritty"
export TERM="alacritty"
export HISTSIZE=500 #shell history size
#------------------------------

#lf file manager vars:-----------
export lf="/usr/bin/lf"
export lf_mode="normal"
export OPERNER="xdg-open"
#-------------------------------

#clipmenu vars:-------------
export CM_HISTLENGTH="10"
export CM_LAUNCHER="dmenu"
#---------------------------

#commands:-------------------
setxkbmap -model acer_laptop -option grp:alt_shift_toggle us,ara
xset r rate 200 55
sxhkd &

systemctl --user start dunst.service
xwallpaper --stretch $XDG_CACHE_HOME/wallpaper
picom -b
systemctl --user start clipmenud.service

dwmblocks &
#---------------------------

#exec dwm
#exec startx dwm #to start dwm
