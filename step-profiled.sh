#!/bin/bash

if [ -e /etc/profile.d/bash_completion.sh ]; then
    chmod +x /etc/profile.d/bash_completion.sh
fi

chmod +x /etc/profile.d/90-git_branch.sh
