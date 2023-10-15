#!/bin/bash
# Status Tested !!
# run this as root on a first install to get most of your environmnet up
# then run the environment setup
# remove the comments for the other groups you wish to install
# note: This script translates fedora binaries from ubuntu

alias dnf='sudo dnf'

dnf clean metadata
dnf update

dnf install \ https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
dnf install \ https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Install Fedora Environment Groups:
# This installs most needed server environments

dnf -y groupinstall 'Fedora Server Edition' 'Administration Tools' 'Authoring and Publishing' 'C Development Tools and Libraries' 'Cloud Management Tools' 'Container Management' 'Development Tools' 'Editors' 'Headless Management' 'Network Servers' 'Python Classroom' 'Security Lab' 'System Tools' 'Text-based Internet' 'Development Libraries'

# Install Desktop Environment
# Fedora 39 requires Wayland

dnf -y groupinstall 'KDE Plasma Workspaces'
