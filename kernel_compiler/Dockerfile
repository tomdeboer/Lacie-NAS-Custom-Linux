
FROM ubuntu:14.04
MAINTAINER Tom de Boer <tom@tomdeboer.nl>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install --no-install-recommends -y git bc ncurses-dev make gcc libssl-dev u-boot-tools gcc-arm-linux-gnueabi ; \
	apt-get clean; \
	mkdir -p /kerneldev && cd /kerneldev; \
	git clone --depth=1 git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git; \
	cd linux-stable;

#RUN service rpcbind start
#RUN service nfs-kernel-server start

VOLUME /kerneldev
EXPOSE 111 2049

ADD run-debootstrap.sh /files/run-debootstrap.sh
ADD run-chroot.sh /files/run-chroot.sh


# Some random comments...
#debootstrap --arch=armel --variant=minbase --verbose --foreign jessie rootfs http://ftp.debian.org/debian
#qemu-debootstrap --arch=armel --variant=minbase --verbose --foreign --exclude=tzdata jessie rootfs http://ftp.nl.debian.org/debian/
#qemu-debootstrap --arch=armel --variant=minbase --verbose --foreign --exclude=tzdata jessie rootfs http://packages.devuan.org/merged

# https://git.devuan.org/packages-base/devuan-keyring/raw/master/keyrings/devuan-keyring.gpg
# apt-get install qemu-kvm-extras-static
# --no-check-gpg
