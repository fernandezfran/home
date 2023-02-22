#!/bin/bash
# (f)ree (u)p (d)isk (s)pace 
#
# run with sudo:
# $ sudo bash fuds.sh
old=$(df -H | grep "/$" | awk '{print $4}')

# packages not required
apt-get autoremove

# clean up apt cache
apt-get autoclean
apt-get clean

# clear systemd journal logs
journalctl --vacuum-time=3d

# Removes old revisions of snaps
set -eu
LANG=en_US.UTF-8 snap list --all | awk '/disabled/{print $1, $3}' |
    while read snapname revision; do
        snap remove "$snapname" --revision="$revision"
    done

# print old/new free space
new=$(df -H | grep "/$" | awk '{print $4}')
echo "now you have $new free space on disk, while before you had $old"
