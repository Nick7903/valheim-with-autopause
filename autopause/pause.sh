#!/bin/bash

if [[ $(ps -C valheim_server. -o stat=) =~ ^S.*$ ]] ; then
  pkill -STOP valheim_server.
fi
