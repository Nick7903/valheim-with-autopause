#!/bin/bash

# reset network data counter
nstat -n

while : ; do
  sleep 60s
  udp_in_datagrams=$(nstat | awk '/UdpInDatagrams/{print $2}')
  if [ -z "$udp_in_datagrams" ] ; then
    /autopause/pause
  fi
done
