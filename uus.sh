#!/bin/bash

distro=/etc/os-release
logfile=/var/log/updater.log
errorlog=/var/log/updater_errors.log

#Function to check exit status of apt & upgrade command
check_exit(){
	if  [ $? -ne 0 ]
	then 
	   echo "An error occured, please check $errorlog file"
	fi
}

if grep -q "ubuntu" $distro || grep -q "Debian" $distro
then 
#Distribution should be Ubuntu/Debian based
#Update and upgrade 
    sudo apt update 1>>$logfile 2>>$errorlog
    check_exit
    sudo apt upgrade -y 1>>$logfile 2>>$errorlog
    check_exit
else 
   echo "Kindly check distribution type: $(distro)"
fi
