#!/bin/bash
umask 0023

zypper -n install -l steamcmd libatomic1 libpulse-devel libpulse0 knockd libcap-progs

setcap cap_net_raw=ep /usr/sbin/knockd

steamcmd +force_install_dir /valheim +login anonymous +app_update 896660 -beta none validate +quit

export templdpath=$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=./linux64:$LD_LIBRARY_PATH
export SteamAppId=892970

./valheim_server.x86_64 -name "" -port 2456 -world "Dedicated" -password "" -savedir /valheim/world -saveinterval 900

export LD_LIBRARY_PATH=$templdpath
