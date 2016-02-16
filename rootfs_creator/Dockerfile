
FROM ubuntu:14.04
MAINTAINER Tom de Boer <tom@tomdeboer.nl>

ENV DEBIAN_FRONTEND noninteractive

# Precice universe is needed for qemu-kvm-extras-static
RUN echo "\n\n# For Qemu:\ndeb http://archive.ubuntu.com/ubuntu/ precise main universe" >> /etc/apt/sources.list; \
	apt-get update && apt-get install --no-install-recommends -y debootstrap nfs-kernel-server qemu-kvm-extras-static binfmt-support; \
	apt-get clean; \
	mkdir -p /files/rootfs; \
	echo "/files/rootfs *(rw,sync,no_subtree_check,fsid=0,no_root_squash)" >> /etc/exports

#RUN service rpcbind start
#RUN service nfs-kernel-server start

VOLUME /files
EXPOSE 111 2049


# Some random comments...
#debootstrap --arch=armel --variant=minbase --verbose --foreign jessie rootfs http://ftp.debian.org/debian
#qemu-debootstrap --arch=armel --variant=minbase --verbose --foreign --exclude=tzdata jessie rootfs http://ftp.nl.debian.org/debian/
#qemu-debootstrap --arch=armel --variant=minbase --verbose --foreign --exclude=tzdata jessie rootfs http://packages.devuan.org/merged

# https://git.devuan.org/packages-base/devuan-keyring/raw/master/keyrings/devuan-keyring.gpg
# apt-get install qemu-kvm-extras-static
# --no-check-gpg
