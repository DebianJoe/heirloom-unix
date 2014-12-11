#!/bin/sh

## at this point, Unix heirloom should be /bin/sh
## this rips out the Debian stuff left on the system
## harshly, without love or lube.  DaNgEr!!!

rm /usr/bin/dpkg /usr/bin/dpkg-divert /usr/bin/dpkg-maintscript-helper /usr/bin/dpkg-query /usr/bin/dpkg-split /usr/bin/dpkg-statoverride /usr/bin/dpkg-trigger /usr/bin/dpkg-architecture
rm /usr/bin/dpkg-deb /usr/bin/dpkg-buildflags /usr/bin/dpkg-buildpackage /usr/bin/dpkg-checkbuilddeps /usr/bin/dpkg-distaddfile /usr/bin/dpkg-genchanges /usr/bin/dpkg-gencontrol /usr/bin/dpkg-gensymbols /usr/bin/dpkg-mergechangelogs /usr/bin/dpkg-name /usr/bin/dpkg-parsechangelog /usr/bin/dpkg-scanpackages /usr/bin/dpkg-scansources /usr/bin/dpkg-shlibdeps /usr/bin/dpkg-source /usr/bin/dpkg-vendor
rm /usr/bin/apt /usr/bin/apt-cache /usr/bin/apt-cdrom /usr/bin/apt-config /usr/bin/apt-get /usr/bin/apt-key /usr/bin/apt-mark /usr/bin/apt-extracttemplates /usr/bin/apt-ftparchive /usr/bin/apt-sortpkgs

rm -rf /etc/apt/
rm -rf /etc/dpkg/
