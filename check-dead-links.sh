#!/bin/bash

SITES=$(cat index.html | grep 'a href' | sed 's/^.*<a href="\([^"]*\)".*$/\1/')

for site in $SITES; do
  wget --no-cache --spider --connect-timeout=5 --tries=1 $site > /dev/null 2>&1
  RESULT=$?
  if [ $RESULT -ne 0 ]; then
    echo "'$site' is a dead link"
  fi
done