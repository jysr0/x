#
# ~/.bashrc
#

# If not running interactively, don"t do anything
[[ $- != *i* ]] && return

#stay in current lf directory:
lfcd () {
    # `command` is needed in case `lfcd` is aliased to `lf`
    cd "$(command lf -print-last-dir "$@")"
}
bind '"\C-o":"lfcd\C-m"'

################
#  ls aliases  #
################

alias ll="ls -lAFh --color=auto --group-directories-first "
alias la="ls -AF --color=auto --group-directories-first "
alias l1="ls -1AF --color=auto --group-directories-first "
alias ls="ls --color=auto --group-directories-first "

################
#  rm aliases  #
################

#alias rm="trash "
#alias rmdir="trash "

#################
#  DWM aliases  #
#################

alias dwmc="sudo vim ~/.suckless/dwm/config.h "
alias dwmm="cd ~/.suckless/dwm/ && sudo make clean install && cd ~ "
alias dmc="sudo vim ~/.suckless/dmenu/config.h "
alias dmm="cd ~/.suckless/dmenu/ && sudo make clean install && cd ~ "
alias stc="sudo sudo vim ~/.suckless/st/config.h "
alias stm="cd ~/.suckless/st/ && sudo make clean install && cd ~ "
alias dwmbc="sudo vim ~/.suckless/dwmblocks/blocks.h "
alias dwmbm="cd ~/.suckless/dwmblocks/ && sudo make clean install  && cd ~ "

##################
# other alaiases #
##################

#alias v="vim "
alias grep="grep --color=auto "
#alias s="sudo "
alias sudo="sudo "
#alias sn="~/Downloads/Simplenote-linux-2.23.2-x64/simplenote "

############
# commands #
############

shopt -s histappend #keep shell history accross terminal sessions, also there is HISTSIZE env var to determine how much commands to remember

xset r rate 200 55

##########
# prompt #
##########

__endeffect__="\[\033[0m\]"
#__username__="\[\033[1;38:2:0:204:0m\]"
#__username__="\[\033[1;38:2:255:178:102m\]" 
#__username__="\[\033[1;38:2:153:255:153m\]" 
__username__="\[\033[1;38:2:102:175:0m\]"
__at__="\[\033[1;38:2:0:153:76m\]" 
__hostname__="\[\033[1;38:2:0:102:102m\]" 
__workingdir__="\[\033[1;38:2:153:51:255m\]"
__dollar__="\[\033[1;38:2:204:153:255m\]" 
__colon__="\[\033[1;38:2:204:255:153m\]" 

PS1="$__username__\u$__endeffect__$__at__@$__endeffect__$__hostname__\h$__endeffect__$__colon__:$__endeffect__ $__workingdir__\W$__endeffect__$__dollar__\$$__endeffect__ " # \e[ = \033[ #
