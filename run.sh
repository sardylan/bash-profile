#/bin/bash

set -e
set -x

curl https://raw.githubusercontent.com/sardylan/bash-profile/master/step-clean.sh | bash

wget https://raw.githubusercontent.com/sardylan/bash-profile/master/DIR_COLORS -O /etc/DIR_COLORS
wget https://raw.githubusercontent.com/sardylan/bash-profile/master/profile -O /etc/profile
wget https://raw.githubusercontent.com/sardylan/bash-profile/master/profile.d/90-git_branch.sh -O /etc/profile.d/90-git_branch.sh

curl https://raw.githubusercontent.com/sardylan/bash-profile/master/step-basic.sh | bash

curl https://raw.githubusercontent.com/sardylan/bash-profile/master/step-profiled.sh | bash
