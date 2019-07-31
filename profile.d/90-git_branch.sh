#!/bin/bash

parse_git_branch() {
    if [ -e .git ]; then
        echo -ne "\001\e[95m\002{"
        git branch 2> /dev/null | sed -e "/^ /d" -e "s/* //g" | tr -d "\n"
        echo -ne "}\001\e[39m\002 "
    fi
}

PS1="\$(parse_git_branch)${PS1}"

export PS1

