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

# fedora install packages listed below

sudo dnf -y clean metadata
sudo dnf -y dist-upgrade
sudo dnf -y update
# because fedora dependancies are immutable  the following line is optional  
# sudo dnf -y remove openjdk-* icedtea-* icedtea6-*
sudo dnf -y autoremove

# fedora packages that replace ubuntu build-essential package
sudo dnf -y groupinstall "Development Tools" "Development Libraries"

# fedora gcc-c++ replaces ubuntu  g++-multilib gcc-multilib
sudo dnf -y install gcc-c++

# fedora readline.* installs listed below include both 32 bit (i686) and 64bit (x86-64) replaces ubuntu lib32readline-dev
sudo dnf -y install readline.*
sudo dnf -y install readline-devel.*

# fedora packages zlibrary* replaces lib32z1-dev package in ubuntu 
sudo dnf -y install -y zlibrary.*
sudo dnf -y install -y zlibrary-devel.*

# fedora packages below repalace ubuntu ncurses-devel ncurses-c++-libs
sudo dnf -y install ncurses.*
sudo dnf -y install ncurses-*

# fedora package ImageMagick replaces ubuntu imagemagic 
sudo dnf -y install ImageMagick

# fedora packages SDL and SDL2 replace ubuntu libsdl1.2-dev  
sudo dnf -y install SDL.* SDL-* SDL2.* SDL2-*

# fedora package openssl and openssl-libs replace ubuntu libssl-dev
sudo dnf -y install openssl openssl-libs.*

# fedora package gtk3 replaces ubuntu package libwxgtk3.0-dev
sudo dnf -y install gtk3 gtk-devel.*

# fedora package libxml2 needs 32 and 64 bit libraries same command as ubuntu
sudo dnf -y install libxml2 libxml2-devel.*

# fedora package java-1.8.0-openjdk replaces ubuntu openjdk*
sudo dnf -y install java-1.8.0-openjdk
sudo dnf -y install java-1.8.0-openjdk-devel

# fedora package libxslt provides ubuntu xsltproc 
sudo dnf -y install libxslt

# fedora package zlib replaces ubuntu zlib1g-dev
sudo dnf -y install zlib.*

# packages below with the same name as ubuntu and fedora
sudo dnf -y install bc bison ccache curl flex git gnupg gperf lzop pngcrush rsync schedtool squashfs-tools zip

