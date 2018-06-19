#!/bin/sh

md5=$(echo -n $1 | md5sum | awk '{print $1}')

if [[ ! -f "/tmp/$md5" ]]; then
    touch /tmp/$md5
fi

if [[ $(find "/tmp/$md5" -mmin +"$2" -print) ]]; then
    echo "yes"
    rm -rf /tmp/$md5
else
  echo "no"
fi