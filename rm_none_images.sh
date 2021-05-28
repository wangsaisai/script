#!/usr/bin/env bash

echo "---------------before delete images-----------------"
docker images
echo "--------------------------------"

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


echo "---------------after delete images-----------------"
docker images
