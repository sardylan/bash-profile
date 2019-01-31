#/bin/bash

set -e
set -x

curl https://raw.githubusercontent.com/sardylan/bash-profile/master/step-00.sh | bash

wget https://raw.githubusercontent.com/sardylan/bash-profile/master/DIR_COLORS -O /etc/DIR_COLORS
wget https://raw.githubusercontent.com/sardylan/bash-profile/master/profile -O /etc/profile

curl https://raw.githubusercontent.com/sardylan/bash-profile/master/step-01.sh | bash
