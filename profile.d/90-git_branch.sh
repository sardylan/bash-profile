#!/bin/bash

parse_git_branch() {
    if [ -e .git ]; then
        echo -ne "\e[95m{"
        git branch 2> /dev/null | sed -e "/^ /d" -e "s/* //g" | tr -d "\n"
        echo -ne "}\e[39m "
    fi
}

PS1="\$(parse_git_branch)${PS1}"

export PS1

