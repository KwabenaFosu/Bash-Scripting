#!/bin/bash

package=unhide

sudo apt install -y $package >> package_install.logs

if [ $? -eq 0 ]
then 
    echo " installation was succesfull"
    echo " Installation can be found here:"
    which $package

else
   echo "installation unsuccessful with exit code $?" >> package_install.logs
fi
