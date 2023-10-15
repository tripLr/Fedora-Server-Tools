# fedora-tools Fedora 38 and previous DEPRECIATED
# This Repo contains a set of tools and guidelines
  This is how I generally set up my server Specific for Fedora
 Switch branches for your version of Fedora
# Note all branches before 39 are depreciated
   and combined to fedora 38
# Tested Fedora28,29,30,31,32,33,34,35,36,37,38
 
 Fedora 39 has enough different subsystems to make an install different
See Fedora release notes

Stable
https://docs.fedoraproject.org/en-US/fedora/latest/release-notes/
Beta 39 changeset
https://fedoraproject.org/wiki/Releases/39/ChangeSet

# 1. Packages to compile android using Fedora Server, will work on Workstation
# 2. Security and management tools for ssh
# 3. Testing Multiple Users, Disks, and BTRFS filesystem, 
# 4. Known Bugs
 Wayland display may cause apps to freeze
 several files,settings and locations are much different from older Fedora and other 
 Linux Distributions

# Fedora server build environment for Google AOSP and varients 
Many thanks to xda_developers @_mone, @ripee
First Successful Android Builds to Fedora Server with LineageOS on my server
by @_mone @ripee 
12-23-2018 with command line help and final cleanup instructions by @_mone 

# Android Build Packages:
Ubuntu packages are described for installing Google Android Open Source Project build environments.
Instructions on allmost all versions of AOSP like LineageOS, Ressurection Remix etc
are all based on Google AOSP.
I have translated and tested line by line scripts using Ubuntu packages into Fedora RPM packages
I have tested Fedora 28 server Android Oreo and before , and others have built Andooid Pie

I currently Testing Fedora 39 on my Delldesktop and Supermicro server to build

How to:
Install your Fedora Server
Use sudo dnf grouplist to show all your development groups
install all the development groups and things you want

1. update .profile .bashrc .bash_aliases to make working with commands easier
     suggest making shortcuts to git commands for my use 
2. test line by line commands in ubuntu and update bash scripts success 
3. Browse to XDA developers and search for a how to build for your ROM
4, jump to the initialize the repo and repo sync
5, make or copy over a roomservice for your device
6 build via brunch ( device ) or whatever the rom developers commands are
7. if build fails check the error log and see if there is a missing binary, add it to the fedora command and do a pull request 
     or post a bug here.
