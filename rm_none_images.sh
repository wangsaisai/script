#!/usr/bin/env bash

file=/tmp/none_images.txt
docker images | grep none > $file

awk '{print $3}' $file > $file.2

while read LINE
do
  if [ "X$1" == "X-f" ]
  then
    docker rmi -f $LINE
  else
    docker rmi  $LINE
  fi
done < $file.2

