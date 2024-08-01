#!/bin/bash
umask 0023

zypper -n install -l steamcmd libatomic1 libpulse-devel libpulse0

steamcmd +force_install_dir /valheim +login anonymous +app_update 896660 -beta none validate +quit

export templdpath=$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=./linux64:$LD_LIBRARY_PATH
export SteamAppId=892970

./valheim_server.x86_64 -name "Klinge og venner" -port 2456 -world "Dedicated" -password "klingenberg" -savedir /valheim/world -saveinterval 900

export LD_LIBRARY_PATH=$templdpath
