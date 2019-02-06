#!/bin/bash

shopt -s checkwinsize

COLOR_RESET="\[\e[0m\]"
COLOR_HOSTNAME="\[\e[1;37m\]"
COLOR_PATH="\[\e[1;36m\]"
COLOR_DEFAULT="\[\e[1;32m\]"

HISTCONTROL="ignoreboth"
HISTIGNORE="&:[bf]g:exit:history:reboot"
HISTSIZE="1048576"
HISTFILESIZE="8388608"

USER_COLOR="${COLOR_DEFAULT}"
USER_SYMBOL="$"

PATH="/lbin:${PATH}"

PS2="> "
PS3="- "
PS4="+ "

if [ "${GROUPS}" = "0" ]; then
    USER_COLOR="\[\e[1;31m\]"
    USER_SYMBOL="#"
fi

if [ "${GROUPS}" = "2000" ]; then
    USER_COLOR="\[\e[1;33m\]"
    USER_SYMBOL=">"
fi

if [ "${GROUPS}" = "3000" ]; then
    USER_COLOR="\[\e[1;35m\]"
    USER_SYMBOL=">"
fi

if [ "${GROUPS}" = "5000" ]; then
    USER_COLOR="\[\e[1;35m\]"
    USER_SYMBOL=">"
fi

if [ "${GROUPS}" = "7000" ]; then
    USER_COLOR="\[\e[1;36m\]"
    USER_SYMBOL=">"
fi

if [ "${GROUPS}" = "9000" ]; then
    USER_COLOR="\[\e[1;35m\]"
    USER_SYMBOL=">"
fi

PS1="${USER_COLOR}\u${COLOR_RESET}@${COLOR_HOSTNAME}\H${COLOR_RESET} ${COLOR_PATH}[${COLOR_RESET} \w ${COLOR_PATH}]${COLOR_RESET}${USER_SYMBOL} "

LS_OPTIONS="-b -T0 --color=auto"
SVN_EDITOR="vim"

alias ls="/bin/ls ${LS_OPTIONS}"
alias dir="/bin/ls ${LS_OPTIONS} --format=vertical"
alias vdir="/bin/ls ${LS_OPTIONS} --format=long"
alias d="dir"
alias v="vdir"
alias la="ls -a"
alias ll="ls -l"
alias lla="ls -la"

if [ -f /etc/DIR_COLORS ]; then
    eval $(dircolors -b /etc/DIR_COLORS)
fi

if [ -d /etc/profile.d ]; then
    for F in /etc/profile.d/*.sh; do
        if [ -x ${F} ]; then
            source ${F}
        fi
    done
    unset F
fi

if [ -x /lbin/env-sanitize ]; then
    source /lbin/env-sanitize
fi

export LS_COLORS
export LS_OPTIONS
export SVN_EDITOR

export HISTCONTROL
export HISTIGNORE
export HISTSIZE
export HISTFILESIZE
export PATH
export PS1
export PS2
export PS3
export PS4
