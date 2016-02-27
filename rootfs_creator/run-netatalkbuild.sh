#!/bin/sh

# You can run this file after debootstrap finished and the new
# system needs some basic configuration. This means a proper
# /etc/get/sources.list file, a root password and some other
# housekeeping.

# This script will run itself inside the chroot

source rc.sh

$TMPDIR="/tmp/netatalk"

banner_green "Making directory..."
mkdir -p "$TMPDIR" && echo OK;

banner_green "Downloading and extracting latest netatalk source."
wget -nv 'https://sourceforge.net/projects/netatalk/files/latest/download?source=files' -O - \
	tar xvf - -C "$TMPDIR"

[[ "$(ls $TMPDIR)" ]] || banner_red "Error downloading and/or extracting netatalk" && exit 1
echo OK


banner_green "Starting configure:"
./configure \
	--with-init-style=debian-systemd \
	--without-libevent \
	--with-cracklib \
	--with-pam-confdir=/etc/pam.d \
	--with-dbus-sysconf-dir=/etc/dbus-1/system.d
