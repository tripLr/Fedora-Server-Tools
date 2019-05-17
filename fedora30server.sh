#!/bin/bash

# Fedora server command replacement 11-13-2018
# Please send comments or updates to triplr.dev@gmail.com or github.com/tripLr
# for build environment setup,  google android development
# and kernel build environment and most c and java compilers
# necessary to build android nougat and  oreo
# 
# below line commands are common to  ubuntu packages for compiling android , listed on

# sources 
#   https://source.android.com/setup/build/initializing
#   github.com/ripee https://github.com/ripee/scripts/blob/master/build_environment.sh
#   https://forum.xda-developers.com/chef-central/android/how-to-build-lineageos-14-1-t3551484

# Common Ubuntu libraries in one command
# apt-get install bc bison build-essential ccache curl flex g++-multilib #gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5-dev #libsdl1.2-dev libssl-dev libwxgtk3.0-dev libxml2 libxml2-utils lzop openjdk-8-jdk pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev

### ??libxml2-utils??  not found in fedora

# package list for android 9.0 nitrogen builds, 
#[Forwarded from Kuran Kaname]
#Try sudo apt-get install git-core gnupg flex bison gperf build-essential
#zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386
#lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache
#libgl1-mesa-dev libxml2-utils xsltproc unzip

# Fedora 28 packages commented out testing for fedora 29
# fedora 29 install packages listed below for both 32 bit and 64 bit binaries, libraries and utilities

sudo dnf -y clean metadata
# fedora 28 command,  sudo dnf -y dist-upgrade
sudo dnf -y upgrade # upgrade all packages
# because fedora dependancies are immutable  the following line is optional  
# sudo dnf -y remove openjdk-* icedtea-* icedtea6-*
sudo dnf -y autoremove

# fedora packages that replace ubuntu build-essential package
sudo dnf -y groupinstall "Development Tools" "Development Libraries"

# fedora 28 gcc-c++ replaces ubuntu  g++-multilib gcc-multilib
# sudo dnf -y install gcc-c++.* gcc-c++-arm* gcc-c++-x*

# fedora 29 gcc-c++ replaces ubuntu g++-multilib  
sudo dnf -y install gcc-c++ gcc-c++-arm-linux-gnu gcc-c++-x86_64-linux-gnu

# fedora 29 readline.* installs listed below include both 32 bit (i686) and 64bit (x86-64) replaces ubuntu lib32readline-dev
sudo dnf -y install readline.* readline-devel.* readline-static.*

# fedora 29 packages z compression libraries
sudo dnf -y install zlib.* zlib-devel.* zlibrary.* zlibrary-devel.* 
sudo dnf -y install  zlibrary.*
sudo dnf -y install  zlibrary-devel.*
sudo dnf -y install  lzma* 
sudo dnf -y install  xz*

# fedora 29 packages below repalace ubuntu ncurses-devel ncurses-c++-libs
sudo dnf -y install ncurses.* ncurses-devel.* ncurses-*

# fedora 29 package ImageMagick replaces ubuntu imagemagic 
sudo dnf -y install ImageMagick.* ImageMagick-*

# fedora 29 packages SDL and SDL2 replace ubuntu libsdl1.2-dev  
sudo dnf -y install  SDL* SDL-* SDL2*

# fedora 29 package openssl and openssl-libs replace ubuntu libssl-dev
sudo dnf -y install openssl* openssl-*

# fedora 29 package gtk3 replaces ubuntu package libwxgtk3.0-dev
sudo dnf -y install gtk3 gtk3-devel*

# fedora 29 package libxml2 needs 32 and 64 bit libraries same command as ubuntu
sudo dnf -y install libxml2 libxml2-devel.* libxml++.* libxml++*

# fedora 29 package java-1.8.0-openjdk replaces ubuntu openjdk*
sudo dnf -y install java-1.8.0-openjdk.*
sudo dnf -y install java-1.8.0-openjdk-devel.*

# fedora 29 package libxslt provides ubuntu xsltproc 
sudo dnf -y install libxslt libxslt-devel

# packages below with the same name as ubuntu and fedora
sudo dnf -y install bc bison ccache curl flex git gnupg gperf lzop pngcrush rsync schedtool squashfs-tools zip

# libc6-dev-i386
sudo dnf install -y glibc-devel.x86_64 glibc-devel.i686 

# python
sudo dnf install -y python3 python3-devel

# fedora xorg-x11-proto-devel replaces ubuntu x11proto-core-dev
sudo dnf install -y xorg-x11-proto-devel 

# fedora package libX11-devel.* replaces ubuntu libx11-dev 
sudo dnf install -y libX11-devel.*

# misc but mostlikely installed in above packages
sudo dnf install -y ccache

# Open GL library mesa-libGLU-devel replaces ubuntu libgl1-mesa-dev , shotgun install all the Open GL by
sudo dnf install -y mesa-libG*

# Virtual Box dependancies
sudo dnf install -y binutils gcc make patch libgomp glibc-headers glibc-devel kernel-headers kernel-devel dkms qt5-qtx11extras libxkbcommon
