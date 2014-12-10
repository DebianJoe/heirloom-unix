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

cp /usr/bin/sum /usr/bin/sum-backup
cp /usr/ucb/sum /usr/bin/sum

cp /usr/bin/du /usr/bin/du-backup
cp /usr/ucb/du /usr/bin/du
# test step, test passes

rm /usr/ucb/sum /usr/ucb/du

cp /bin/ps /bin/ps-backup
cp /usr/ucb/ps /bin/ps
# use bsd style switching here. =D

cp /usr/bin/tr /usr/bin/tr-backup
cp /usr/ucb/tr /usr/bin/tr

rm /usr/ucb/tr /usr/ucb/ps
mv /usr/ucb/deroff /usr/bin/deroff

# At this point, only symlinks left in /usr/ucb/
# leaving them for now

cp /usr/bin/tabs /usr/bin/tabs-backup
cp /usr/5bin/tabs /usr/bin/tabs

mv /usr/5bin/shl /usr/bin/
mv /usr/5bin/banner /usr/bin/

cp /bin/su /bin/su-backup
cp /usr/5bin/su /bin/su
# test reboot, passes

rm /usr/5bin/su /usr/5bin/tabs

cp /usr/bin/yes /usr/bin/yes-backup
cp /usr/5bin/yes /usr/bin/yes

cp /usr/bin/xargs /usr/bin/xargs-backup
cp /usr/5bin/xargs /usr/bin/xargs

mv /usr/5bin/whodo /usr/bin/whodo

cp /usr/bin/wc /usr/bin/wc-backup
cp /usr/5bin/wc /usr/bin/wc

rm /usr/5bin/wc /usr/5bin/xargs /usr/5bin/yes

cp /usr/bin/who /usr/bin/who-backup
cp /usr/5bin/who /usr/bin/who

mv /usr/5bin/what /usr/bin/

rm /usr/5bin/whoami #dupe of already moved file

cp /usr/bin/tty /usr/bin/tty-backup
cp /usr/5bin/tty /usr/bin/tty
#test time, passes test

cp /usr/bin/tee /usr/bin/tee-backup
cp /usr/5bin/tee /usr/bin/tee

rm /usr/5bin/tty /usr/5bin/tee /usr/5bin/who

cp /usr/bin/users /usr/bin/users-backup
cp /usr/5bin/users /usr/bin/users
rm /usr/5bin/users

cp /bin/uname /bin/uname-backup
cp /usr/5bin/uname /bin/uname

rm /usr/5bin/uname

cp /usr/bin/uniq /usr/bin/uniq-backup
cp /usr/5bin/uniq /usr/bin/uniq

rm /usr/5bin/uniq

cp /usr/bin/units /usr/bin/units-backup
cp /usr/5bin/units /usr/bin/units

rm /usr/5bin/units

cp /usr/bin/ul /usr/bin/ul-backup
cp /usr/5bin/ul /usr/bin/ul

rm /usr/5bin/ul
#reboot test, test passes

cp /bin/true /bin/true-backup
cp /usr/5bin/true /bin/true
rm /usr/5bin/true /usr/5bin/tr #dupe rm'd

cp /usr/bin/touch /usr/bin/touch-backup
cp /usr/5bin/touch /usr/bin/touch
rm /usr/5bin/touch

mv /usr/5bin/time /usr/bin/time
rm /usr/5bin/test #ucb dupe

mv /usr/5bin/tcopy /usr/bin/tcopy
mv /usr/5bin/tapecntl /usr/bin/tapecntl
# ^ in case you need to copy to tape. :D

cp /bin/tar /bin/tar-backup
cp /usr/5bin/tar /bin/tar
rm /usr/5bin/tar
# pulled a tar.gz, checked this, passes

cp /usr/bin/tail /usr/bin/tail-backup
cp /usr/5bin/tail /usr/bin/tail
rm /usr/5bin/tail

cp /bin/sync /bin/sync-backup
cp /usr/5bin/sync /bin/sync
rm /usr/5bin/sync

rm /usr/5bin/sum #another ucb dupe

mv /usr/5bin/ptime /usr/bin/ptime

cp /bin/false /bin/false-backup
cp /usr/5bin/false /bin/false
rm /usr/5bin/false
# seems like a good time to reboot
# test passed

rm /usr/5bin/stty #ucb dupe
rm /usr/5bin/STTY #symlink to dupe

cp /usr/bin/split /usr/bin/split-backup
cp /usr/5bin/split /usr/bin/split
rm /usr/5bin/split

mv /usr/5bin/spell /usr/bin/spell

cp /usr/bin/sort /usr/bin/sort-backup
cp /usr/5bin/sort /usr/bin/sort
rm /usr/5bin/sort

cp /usr/bin/sleep /usr/bin/sleep-backup
cp /usr/5bin/sleep /bin/sleep
rm /usr/5bin/sleep

mv /usr/5bin/setpgrp /usr/bin/setpgrp
# cp /bin/sed /bin/sed-backup
# cp /usr/5bin/sed /bin/sed
# rm /usr/5bin/sed
# uhh, this broke in plan9, let's try here.
# reboot test, Unix sed breaks networking >.<
# replaced with backup.

#cleaning symlinks and dupes
rm /usr/5bin/settime /usr/5bin/tape /usr/5bin/uptime
mv /usr/5bin/newform /usr/bin/newform
rm /usr/5bin/catman
rm /usr/5bin/ps

cp /bin/rmdir /bin/rmdir-backup
cp /usr/5bin/rmdir /bin/rmdir
rm /usr/5bin/rmdir
# tested this step, works

cp /bin/rm /bin/rm-backup
cp /usr/5bin/rm /bin/rm
rm /usr/5bin/rm #obviously works. :)

cp /usr/bin/sdiff /usr/bin/sdiff-backup
cp /usr/5bin/sdiff /usr/bin/sdiff
rm /usr/5bin/sdiff

cp /bin/pwd /bin/pwd-backup
cp /usr/5bin/pwd /bin/pwd
rm /usr/5bin/pwd
#reboot, pass

cp /usr/bin/renice /usr/bin/renice-backup
cp /usr/5bin/renice /usr/bin/renice
rm /usr/5bin/renice

mv /usr/5bin/random /usr/bin/random
mv /usr/5bin/psrinfo /usr/bin/psrinfo

cp /usr/bin/printf /usr/bin/printf-backup
cp /usr/5bin/printf /usr/bin/printf
rm /usr/5bin/printf
printf "testing printf\n"
#works up to here

rm /usr/5bin/pkill #symlink
cp /usr/bin/pgrep /usr/bin/pgrep-backup
cp /usr/5bin/pgrep /usr/bin/pgrep
cp /usr/5bin/pgrep /usr/bin/pgrep
rm /usr/5bin/pgrep
mv /usr/5bin/priocntl /usr/bin/priocntl

cp /usr/bin/printenv /usr/bin/printenv-backup
cp /usr/5bin/printenv /usr/bin/printenv
rm /usr/5bin/printenv

cp /usr/bin/pr /usr/bin/pr-backup
cp /usr/5bin/pr /usr/bin/pr
rm /usr/5bin/pr

cp /usr/bin/pg /usr/bin/pg-backup
cp /usr/5bin/pg /usr/bin/pg
rm /usr/5bin/pg
#reboot time, tests passed

cp /usr/bin/pathchk /usr/bin/pathchk-backup
cp /usr/5bin/pathchk /usr/bin/pathchk
rm /usr/5bin/pathchk

cp /usr/bin/paste /usr/bin/paste-backup
cp /usr/5bin/paste /usr/bin/paste
rm /usr/5bin/paste

cp /usr/bin/od /usr/bin/od-backup
cp /usr/5bin/od /usr/bin/od
rm /usr/5bin/od

mv /usr/5bin/oawk /usr/bin/

cp /usr/bin/nohup /usr/bin/nohup-backup
cp /usr/5bin/nohup /usr/bin/nohup
rm /usr/5bin/nohup

cp /usr/bin/nl /usr/bin/nl-backup
cp /usr/5bin/nl /usr/bin/nl
rm /usr/5bin/nl

cp /usr/bin/nice /usr/bin/nice-backup
cp /usr/5bin/nice /usr/bin/nice
rm /usr/5bin/nice

#clean some symlinks
rm /usr/5bin/page /usr/5bin/whatis /usr/5bin/install
mv /usr/5bin/news /usr/bin/news

# nawk is errywhere!
cp /usr/bin/nawk /usr/bin/nawk-backup
cp /usr/5bin/nawk /usr/bin/nawk
rm /usr/5bin/nawk
rm /etc/alternatives/nawk
rm /usr/bin/nawk-backup

mv /usr/5bin/mvdir /usr/bin/mvdir
cp /bin/more /bin/more-backup
cp /usr/5bin/more /bin/more
rm /usr/5bin/more

cp /bin/mknod /bin/mknod-backup
cp /usr/5bin/mknod /bin/mknod
rm /usr/5bin/mknod
# reboot time, reboot passed

cp /usr/bin/mkfifo /usr/bin/mkfifo-backup
cp /usr/5bin/mkfifo /usr/bin/mkfifo
rm /usr/5bin/mkfifo

cp /bin/mkdir /bin/mkdir-backup
cp /usr/5bin/mkdir /bin/mkdir
rm /usr/5bin/mkdir

cp /usr/bin/mesg /usr/bin/mesg-backup
cp /usr/5bin/mesg /usr/bin/mesg
rm /usr/5bin/mesg

cp /usr/bin/man /usr/bin/man-backup
cp /usr/5bin/man /usr/bin/man
rm /usr/5bin/man

mv /usr/5bin/mail /usr/bin/mail
rm /usr/5bin/ls #ucb dupe
rm /usr/5bin/lc #ls symlink

cp /usr/bin/logname /usr/bin/logname-backup
cp /usr/5bin/logname /usr/bin/logname
rm /usr/5bin/logname

# cp symlinks, not needed
rm /usr/5bin/ln /usr/5bin/mv
rm /usr/5bin/w   #symlink to whodo
rm /usr/5bin/mt  #symlink to tapecntl
rm /usr/5bin/awk #symlink to nawk

cp /usr/bin/unexpand /usr/bin/unexpand-backup
cp /usr/5bin/unexpand /usr/bin/unexpand
rm /usr/5bin/unexpand

mv /usr/5bin/pax /usr/bin/
mv /usr/5bin/logins /usr/bin
mv /usr/5bin/listusers /usr/bin/

cp /usr/bin/line /usr/bin/line-backup
cp /usr/5bin/line /usr/bin/line
rm /usr/5bin/line
#time to reboot, and do some testing

cp /bin/kill /bin/kill-backup
cp /usr/5bin/kill /bin/kill
rm /usr/5bin/kill

cp /usr/bin/id /usr/bin/id-backup
cp /usr/5bin/id /usr/bin/id
rm /usr/5bin/id

cp /bin/hostname /bin/hostname-backup
cp /usr/5bin/hostname /bin/hostname
rm /usr/5bin/hostname

cp /usr/bin/join /usr/bin/join-backup
cp /usr/5bin/join /usr/bin/join
rm /usr/5bin/join

cp /usr/bin/head /usr/bin/head-backup
cp /usr/5bin/head /usr/bin/head
rm /usr/5bin/head

rm /usr/bin/hd #normally just a symlink
mv /usr/5bin/hd /usr/bin/hd
rm /usr/5bin/groups #dupe

cp /bin/grep /bin/grep-backup
cp /usr/5bin/grep /bin/grep
rm /usr/5bin/grep
# good time to run more tests
