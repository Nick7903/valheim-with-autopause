#!/bin/bash

# reset network data counter
nstat -n

while : do
  sleep 60s
  if ! nstat | awk '/UdpInDatagrams/{print $2}' ; then
    /autopause/pause
  fi
done
