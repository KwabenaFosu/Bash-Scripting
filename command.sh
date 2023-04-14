#!/bin/bash

command=usr/bin/htop

if [ -f $command ]
then 
   echo "Command is available"
else
   echo "Command not foud"
fi
