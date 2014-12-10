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
