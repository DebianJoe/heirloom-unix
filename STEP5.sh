#!/bin/ush

cp /bin/echo /bin/echo-backup
cp /usr/ucb/echo /bin/echo

cp /usr/bin/whoami /usr/bin/whoami-backup
cp /usr/ucb/whoami /usr/bin/whoami
# test step, pass

cp /usr/bin/catman /usr/bin/catman-backup
cp /usr/ucb/catman /usr/bin/catman

rm /usr/ucb/catman /usr/ucb/whoami /usr/ucb/echo

cp /bin/ls /bin/ls-backup
cp /usr/ucb/ls /bin/ls

cp /usr/bin/test /usr/bin/test-backup
cp /usr/ucb/test /usr/bin/test

rm /usr/ucb/test /usr/ucb/ls
# test step, pass

cp /usr/bin/basename /usr/bin/basename-backup
cp /usr/ucb/basename /usr/bin/basename

rm /usr/ucb/ls /usr/ucb/basename

cp /bin/ln /bin/ln-backup
cp /usr/ucb/ln /bin/ln
# created test link, works.

cp /bin/chown /bin/chown-backup
cp /usr/ucb/chown /bin/chown

rm /usr/ucb/ln /usr/ucb/chown

cp /bin/stty /bin/stty-backup
cp /usr/ucb/stty /bin/stty
# test via full reboot at this step
# test passes

rm /usr/ucb/stty

cp /usr/bin/install /usr/bin/install-backup
cp /usr/ucb/install /usr/bin/install

cp /usr/bin/groups /usr/bin/groups-backup
cp /usr/ucb/groups /usr/bin/groups

cp /bin/df /bin/df-backup
cp /usr/ucb/df /bin/df

rm /usr/ucb/install /usr/ucb/groups /usr/ucb/df
