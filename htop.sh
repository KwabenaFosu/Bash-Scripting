#!/bin/bash

command=htop

if command -v $command
then
   echo "Command is available. Running.."
else 
   echo "Command is not available. Installing.."
   sudo apt update && sudo apt install -y htop
fi

$command
