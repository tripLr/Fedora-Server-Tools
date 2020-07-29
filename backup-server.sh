#!/bin/bash

cd /root
. .bashrc
. .bash_aliases

# export users and directories
# fedora users start at guid 1000 
export UGIDLIMIT=1000

# creates a user file for allusers on system with GUID and folders to be able to backup system
awk -v LIMIT=$UGIDLIMIT -F: '($3>=LIMIT) && ($3!=65534)' /etc/passwd | tee /root/guid-users.txt

# creates a list of all the users home directories including root on this system for the backup script
# change /
awk -F":" '$7 == "/bin/bash" {print $6}' /etc/passwd | tee users-folders.txt


echo ' printing exclude list '
cat $list

echo 'set backup folder'
export backup='/home/backup/'
echo $backup

echo ' backup root user '
RSYNC --exclude-from=$list /root $backup


