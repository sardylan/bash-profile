#/bin/bash

if [ ! -e /etc/profile-vanilla ]; then
    mv /etc/profile{,-vanilla}
fi

if [ ! -e /etc/bash.bashrc-vanilla ]; then
    mv /etc/bash.bashrc{,-vanilla}
fi

if [ ! -e /root/.profile-vanilla ]; then
    mv /root/.profile{,-vanilla}
fi

if [ ! -e /root/.bashrc-vanilla ]; then
    mv /root/.bashrc{,-vanilla}
fi

rm -f /etc/profile
rm -f /etc/bash.bashrc
rm -f /etc/DIR_COLORS

rm -f /root/.profile
rm -f /root/.bashrc
