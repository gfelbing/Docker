#!/bin/bash

set -e
set -x

BASEDIR=$(realpath "$(dirname $0)")
ARCHDIR=$BASEDIR/arch

sudo rm -rf $ARCHDIR
mkdir $ARCHDIR
sudo pacstrap -dM $ARCHDIR pacman bash grep awk vi
sudo cp $BASEDIR/mirrorlist $ARCHDIR/etc/pacman.d/mirrorlist
sudo arch-chroot $ARCHDIR /usr/bin/pacman -Syu --noconfirm
#sudo arch-chroot $ARCHDIR pacman-key --init

sudo tar -C $ARCHDIR -c . | docker import - gfelbing/arch
#sudo rm -rf $ARCHDIR