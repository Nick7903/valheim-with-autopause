#!/bin/bash

if [[ $(ps -C valheim_server. -o stat=) =~ ^T.*$ ]] ; then
  pkill -CONT valheim_server.
fi
