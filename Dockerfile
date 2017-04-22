FROM ubuntu:16.04
MAINTAINER Tom de Boer <tom@tomdeboer.nl>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install --no-install-recommends -y git bc ncurses-dev make \
	gcc libssl-dev u-boot-tools gcc-arm-linux-gnueabi texinfo file g++ patch wget cpio python unzip rsync bzcat locales; \
	apt-get clean;

RUN	locale-gen en_GB.UTF-8 && locale-gen –no-purge –lang en_GB.UTF-8; \

RUN mkdir -p /buildenv && cd /buildenv; \
	git clone --depth=1 git://git.buildroot.net/buildroot;
	
VOLUME /buildenv




# Some random comments...
#debootstrap --arch=armel --variant=minbase --verbose --foreign jessie rootfs http://ftp.debian.org/debian
#qemu-debootstrap --arch=armel --variant=minbase --verbose --foreign --exclude=tzdata jessie rootfs http://ftp.nl.debian.org/debian/
#qemu-debootstrap --arch=armel --variant=minbase --verbose --foreign --exclude=tzdata jessie rootfs http://packages.devuan.org/merged

# https://git.devuan.org/packages-base/devuan-keyring/raw/master/keyrings/devuan-keyring.gpg
# apt-get install qemu-kvm-extras-static
# --no-check-gpg
