#!/usr/bin/env bash

file=/tmp/contains.txt
docker ps -a > $file

awk '{print $1}' $file > $file.2

while read LINE
do
  docker rm  $LINE
done < $file.2

