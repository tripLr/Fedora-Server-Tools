#!/bin/bash
swap=$(cat /proc/sys/vm/swappiness)
if [ $swap != 10 ] ;
	then 
	       sudo sysctl vm.swappiness=10 ;
       		echo "Swappiness set was set to $swap "	
	else	echo "Swappiness was set to $swap "
fi

