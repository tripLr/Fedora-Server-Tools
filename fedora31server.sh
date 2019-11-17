#!/bin/bash                                                                                                                                                        

# fedora server command replacement 11-17-2019                                                                                                                     
# please send comments or updates to triplr.dev@gmail.com or github.com/tripLr                                                                                     
# for build environment setup google android development                                                                                                           
# and kernel build environment and most c and java compilers                                                                                                       
# necessary to build android nougat and  oreo and pie                                                                                                                     
# below line commands are common to  ubuntu packages for compiling android , listed on                                                                             
# https://source.android.com/setup/build/initializing                                                                                                              
# and                                                                                                                                                              
# https://forum.xda-developers.com/chef-central/android/how-to-build-lineageos-14-1-t3551484                                                                       
# apt-get install bc bison #build-essential ccache curl flex g++-multilib #gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-de$

# from github.com/ripee https://github.com/ripee/scripts/blob/master/build_environment.sh                                                                          
### ??libxml2-utils??  not found in fedora                                                                                                                         
# fedora install packages listed below                                                                                                                             

dnf clean metadata
dnf update
# fedora packages that replace ubuntu build-essential package                                                                                                      
dnf groupinstall "Development Tools" "Development Libraries"

# fedora gcc-c++ replaces ubuntu  g++-multilib gcc-multilib                                                                                                        
# dnf install gcc-c++  fedora 31 installs with a previously above package                                                                                                                                      
# fedora readline.* installs listed below include both 32 bit (i686) and 64bit (x86-64) replaces ubuntu lib32readline-dev                                          
dnf install readline.*
dnf install readline-devel.*
# fedora packages zlibrary* replaces lib32z1-dev package in ubuntu                                                                                                 
dnf install   zlibrary.*
dnf install   zlibrary-devel.*
# fedora packages below repalace ubuntu ncurses-devel ncurses-c++-libs                                                                                             
dnf install ncurses.*
dnf install ncurses-*
# fedora package ImageMagick replaces ubuntu imagemagic                                                                                                            
# dnf install ImageMagick  installed by fedora 31 in above groups                                                                                                                                 
# fedora packages SDL and SDL2 replace ubuntu libsdl1.2-dev                                                                                                        
dnf install SDL.* SDL-* SDL2.* SDL2-*
# fedora package openssl and openssl-libs replace ubuntu libssl-dev                                                                                                
# dnf install openssl openssl-libs.*   installed by fedora 31 in above groups 
# fedora package gtk3 replaces ubuntu package libwxgtk3.0-dev                                                                                                      
dnf install gtk3 gtk3-devel.*
# fedora package libxml2 needs 32 and 64 bit libraries same command as ubuntu                                                                                      
dnf install libxml2 libxml2-devel.*
# fedora package java-1.8.0-openjdk replaces ubuntu openjdk*                                                                                                       
dnf install java-1.8.0-openjdk java-1.8.0-openjdk-devel
# fedora package libxslt provides ubuntu xsltproc                                                                                                                  
# dnf install libxslt installed by fedora 31 above 
# fedora package zlib replaces ubuntu zlib1g-dev                                                                                                                   
dnf install zlib.*
# packages below with the same name as ubuntu and fedora                                                                                                           
# dnf install bc bison ccache curl flex git gnupg gperf lzop pngcrush rsync schedtool squashfs-tools zip  ## tools in next line are the only ones remaining                                                     
dnf install gperf pngcrush schedtool
echo 'fedora build environment update successful' 
~                                                                                                                                                                                                                                             
~                                                                                                                                                                                                                                             
~                                                                                                                                                                                                                                             
~                                                                                                                                                                                                                                             
"build-env.sh" 53L, 8050C written                                                                                                                                                                                           53,1          All
