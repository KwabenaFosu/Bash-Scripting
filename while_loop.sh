#!/bin/bash

while [ -f /etc/ngnix/nginx.conf ]
do 
    echo "As of $(date), server config files exist."
    sleep 5 
done

echo "As of $(date), server config files missing."
