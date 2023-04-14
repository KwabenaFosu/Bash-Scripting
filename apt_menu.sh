#!/bin/bash

echo "What is the package name: "
read packagename

finished=0

while [ $finished -ne 1 ] 
do
	echo "Package Management on Ubuntu"
	echo "1 - Install a Package"
	echo "2 - Remove a Package"
	echo "3 - Find Package"
	echo "4 - Update Package"
	echo "5 - Upgrade Package"
	echo "6 - Do something else"
	echo "7 - Exit  the script"

	read command;

     case $command in 
	1) sudo apt install $packagename;;
	2) sudo apt remove $packagename;;
	3) sudo apt-cache search $packagename;;
	4) sudo apt update ;;
	5) sudo apt upgrade;;
	6) echo "Check ubuntu docs for more commands";;
	7) finished=1;;
	*) echo "Wrong input choice."
     esac
done

echo "Package  management menu closed."
