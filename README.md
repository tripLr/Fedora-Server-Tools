# fedora-build 
# Check branches for your version of Fedora
# Created Fedora28 for server
# Created Fedora29 for server
# Created Fedora28desktop for fedora 28 desktop
# Fedora server build environment for Google Android,  Oreo , LineageOS
# many thanks to xda_developers @_mone, @ripee

Update First Successful Builds to Fedora Server with LineageOS on my server
by @_mone @ripee 
12-23-2018 with command line help and final cleanup instructions by @_mone 

Android developers typically use virtual or bare metal machines using Ubuntu/Debian
distributions ( see https://en.wikipedia.org/wiki/List_of_Linux_distributions ).
Ubuntu packages are described Google Android Open Source Project build environments.
Instructions on allmost all versions of AOSP like LineageOS, Ressurection Remix etc
are all based on Google AOSP.

I have translated and tested line by line scripts using Ubuntu packages into Fedora RPM packages
I have tested Fedora 28 server Android Oreo and before , and others have built Andooid Pie

I currently Testing Fedora 29 on my Dell r810 server to build
Sucessfully built one copy of LineageOS 15 for trlteduos 
I am currently trying to develop the machine into a nightly builder

Install How to:
Install your Fedora Server
Use sudo dnf grouplist to show all your development groups
install all the development groups and things you want
download the branch for your machine
run the *.sh to execute your version of all the binaries
suggestions
# 1. update .profile .bashrc .bash_aliases to make working with commands easier
#     suggest making shortcuts to git commands for my use 
2. test line by line commands in ubuntu and update bash scripts success 
3. Browse to XDA developers and search for a how to build for your ROM
4, jump to the initialize the repo and repo sync
5, make or copy over a roomservice for your device
6 build via brunch ( device ) or whatever the rom developers commands are
7. if build fails check the error log and see if there is a missing binary, add it to the fedora command and do a pull request 
     or post a bug here.
