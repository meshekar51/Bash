#!/bin/bash
DIR="/etc/app"
for path in $DIR
do
if [ -d "$path" ]; then
echo "$path is available"
else
  mkdir -p $path
  echo $?
  echo "$path Created"
  fi
done