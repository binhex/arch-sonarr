#!/bin/bash

# exit script if return code != 0
set -e

# define pacman packages
pacman_packages="base-devel git libmediainfo mono sqlite"

# define aur helper
aur_helper="apacman"

# define aur packages
aur_packages="sonarr"

# install pre-reqs
pacman -S --needed $pacman_packages --noconfirm

# download build scripts from github
curl -o /tmp/scripts-master.zip -L https://github.com/binhex/scripts/archive/master.zip

# unzip build scripts
unzip /tmp/scripts-master.zip -d /tmp

# move shell scripts to /root
find /tmp/scripts-master/ -type f -name '*.sh' -exec mv -i {} /root/  \;

# call aur install script (arch user repo)
source /root/aur.sh

# create file with contets of here doc
cat <<'EOF' > /tmp/permissions_heredoc
# set permissions inside container
chown -R "${PUID}":"${PGID}" /usr/lib/sonarr /usr/bin/sonarr /home/nobody
chmod -R 775  /usr/lib/sonarr /usr/bin/sonarr /home/nobody

EOF

# replace permissions placeholder string with contents of file (here doc)
sed -i '/# PERMISSIONS_PLACEHOLDER/{
    s/# PERMISSIONS_PLACEHOLDER//g
    r /tmp/permissions_heredoc
}' /root/init.sh
rm /tmp/permissions_heredoc

# cleanup
yes|pacman -Scc
rm -rf /usr/share/locale/*
rm -rf /usr/share/man/*
rm -rf /tmp/*
