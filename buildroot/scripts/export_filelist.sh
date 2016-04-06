#!/bin/bash
# Exit on any error
set -e

# This script is run as part of the Buildroot build process.
# It is called after all packages ar built, right before the images are created.
# First arguments is Buildroot's TARGET_DIR, which is this case is our new filesystem's root

[[ ! -d "$1" ]] && echo "Usage: This script is supposed to be to called as Buildroot's BR2_ROOTFS_POST_BUILD_SCRIPT" && exit 1;
[[ ! -f "$BINARIES_DIR/rootfs.tar" ]] && echo "Can't find rootfs.tar (BINARIES_DIR=$BINARIES_DIR)" && exit 1;
[[ ! -d "$NEW_ROOT/opt/fsupdate/" ]]  && echo "Can't find fsupdate directory in /opt/. (NEWROOT=$NEWROOT)" && exit 1;

NEW_ROOT=$1
TARGETNAME="current.filelist"
TARGETPATH="opt/fsupdate/$TARGETNAME"

# 'tar --list' only lists all files, then exits.
tar --list -f "$BINARIES_DIR/rootfs.tar" > "$NEW_ROOT/$TARGETPATH" && echo "$TARGETPATH created"

exit $?
