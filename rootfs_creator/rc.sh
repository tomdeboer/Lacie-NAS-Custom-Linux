
banner_red () { tput setaf 0; tput setab 1;  echo $1; tput sgr0; }
banner_green () { tput setaf 0; tput setab 2;  echo $1; tput sgr0; }

run_myself_in_chroot () {
	# /files/rootfs exists, so we are not inside the chroot yet.
	if [ -d /files/rootfs ]; then
		[[ "$(ls $TMPDIR)" ]] || mount -t proc /proc /files/rootfs/proc
		update-binfmts --enable qemu-arm
		chroot /files/rootfs $BASH_SOURCE
		exit
	fi
}

