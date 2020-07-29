#!/bin/bash
# run this as root on a first install to get most of your environmnet up
# then run the environment setup
# remove the comments for the other groups you wish to install
# note: work in progress to redo fedora commands to ubuntu

dnf clean metadata
dnf update
sudo dnf install \ https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install \ https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm



#Installed Environment Groups:

sudo dnf -y groupinstall 'Fedora Server Edition' 'LXDE Desktop' 'Cinnamon Desktop' 'Administration Tools' 'Authoring and Publishing' 'Books and Guides' 'C Development Tools and Libraries' 'Cloud Management Tools' 'Container Management' 'Development Tools' 'Editors' 'Games and Entertainment' 'Headless Management' 'LibreOffice' 'MATE Applications' 'Network Servers' 'Office/Productivity' 'Python Classroom' 'Security Lab' 'System Tools' 'Text-based Internet' 'Development Libraries'


echo 'groupinstall complete'

dnf -y install cockpit-* fail2ban

# fedora packages that replace ubuntu build-essential package

dnf -y install java-1.8.0-openjdk-devel java-1.8.0-openjdk

# fedora gcc-c++ replaces ubuntu  g++-multilib gcc-multilib
# dnf -y install gcc-c++  fedora 31 installs with a previously above package
# fedora readline.* installs listed below include both 32 bit (i686) and 64bit (x86-64) replaces ubuntu lib32readline-dev

dnf -y install readline.*
dnf -y install readline-devel.*

# fedora packages zlibrary* replaces lib32z1-dev package in ubuntu

dnf -y install   zlibrary.*
dnf -y install   zlibrary-devel.*
# fedora packages below repalace ubuntu ncurses-devel ncurses-c++-libs

dnf -y install ncurses.*
dnf -y install ncurses-*
# fedora package ImageMagick replaces ubuntu imagemagic
# dnf -y install ImageMagick  installed by fedora 31 in above groups
# fedora packages SDL and SDL2 replace ubuntu libsdl1.2-dev
dnf -y install SDL.* SDL-* SDL2.* SDL2-*
# fedora package openssl and openssl-libs replace ubuntu libssl-dev
# dnf -y install openssl openssl-libs.*   installed by fedora 31 in above groups
# fedora package gtk3 replaces ubuntu package libwxgtk3.0-dev
dnf -y install gtk3 gtk3-devel.*
# fedora package libxml2 needs 32 and 64 bit libraries same command as ubuntu
dnf -y install libxml2 libxml2-devel.*
# fedora package java-1.8.0-openjdk replaces ubuntu openjdk*
dnf -y install java-1.8.0-openjdk java-1.8.0-openjdk-devel
# fedora package libxslt provides ubuntu xsltproc
# dnf -y install libxslt installed by fedora 31 above
# fedora package zlib replaces ubuntu zlib1g-dev
dnf -y install zlib.*
# xz compatable libraries
dnf -y install lzma

dnf -y install xz
# packages below with the same name as ubuntu and fedora
# dnf -y install bc bison ccache curl flex git gnupg gperf lzop pngcrush rsync schedtool squashfs-tools zip
## tools in next line are the only ones remaining
dnf -y install gperf pngcrush schedtool
echo 'fedora build environment update successful'

