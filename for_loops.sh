#!/bin/bash

for file in /home/stylus007/Documents/*.txt
do
  tar -zvcf $file.tar.gz $file
done 
