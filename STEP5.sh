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
