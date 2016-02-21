#!/bin/sh

# You can run this file after debootstrap finished and the new
# system needs some basic configuration. This means a proper
# /etc/get/sources.list file, a root password and some other
# housekeeping.

# This script will run itself inside the chroot

if [ -d /files/rootfs ]; then
	# /files/rootfs exists, so we are not inside the chroot yet.
	chroot /files/rootfs $BASH_SOURCE
	exit
fi

echo "root:root" | chpasswd
echo "deb http://ftp.nl.debian.org/debian/ jessie main" > \
    /etc/apt/sources.list


