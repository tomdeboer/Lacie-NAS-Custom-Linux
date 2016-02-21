#!/bin/sh

# You can run this file after the Docker container is created and 
# you are ready do run debootstrap. This will install the base
# system including the necessary packages to make it "NAS-worthy".

qemu-debootstrap --arch=armel --variant=minbase --verbose --foreign --include=nano,ntpdate,wget,net-tools,iputils-ping jessie /files/rootfs "http://ftp.nl.debian.org/debian/"