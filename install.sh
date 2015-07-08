#!/bin/bash

# exit script if return code != 0
set -e

# define pacman packages
pacman_packages="libmediainfo mono sqlite"

# install pre-reqs
pacman -Sy --noconfirm
pacman -S --needed $pacman_packages --noconfirm

# call aur packer script
source /root/packer.sh

# set permissions
chown -R nobody:users /usr/lib/sonarr /usr/bin/sonarr
chmod -R 775  /usr/lib/sonarr /usr/bin/sonarr

# cleanup
yes|pacman -Scc
rm -rf /usr/share/locale/*
rm -rf /usr/share/man/*
rm -rf /tmp/*
