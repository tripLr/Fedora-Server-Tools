# fedora-build
# Fedora server build environment for Google Android,  Oreo , LineageOS
# many thanks to xda_developers @_mone, @ripee

Update First Successful Builds to Fedora Server with LineageOS on my server
by @_mone @ripee 
12-23-2018 with command line help and final cleanup instructions by @_mone 


Scripts to setup and build android LineageOS using fedora server 
verified packages also work by @_mone on fedora desktop

Android developers typically use virtual machines using ubuntu
and ubuntu packages are described in android developer for a build environment
I have translated and tested line by line scripts using ubuntu into fedora packages
I am using fedora on a server to build, and although I could run ubuntu in a VM or container 
I am going to use baremetal for this try.

steps and goals
# 1. update .profile .bashrc .bash_aliases to make working with commands easier
#     suggest making shortcuts to git commands for my use 
2. test line by line commands in ubuntu and update bash scripts success 
3. run buildenvironment.sh success
4. run lineageos.sh .. success
5. fork a build repo to fix exfat bug in lineageos for gts28wifi (sm-t710)
    a. build kernel only
    b. build entire rom
