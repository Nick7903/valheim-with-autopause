# valheim-with-autopause
Valheim server container with autopause functionality, to save power and cpu time

Inspired by https://github.com/itzg/docker-minecraft-server

# Usage
$ podman run -d -t -v valheim-world:/world -p 2456:2456/udp -p 2457:2457/udp \
-e NAME='my server'
-e WORLD='Dedicated'
-e PASSWORD='1234'
-e PUBLIC=FALSE
-e SAVE_INTERVAL_SECONDS=900
-e BACKUPS=4
-e BACKUP_SHORT=7000
-e BACKUP_LONG=43200
-e CROSSPLAY=FALSE
-e PRESET_DIFFICULTY=normal
-e MODIFIERS=
-e SETKEY=
--name valheim localhost/vhsrv:latest


SERVER_NAME  :  string   :  name of server shown in server browser if public  :  default: none         :  required
WORLD_NAME   :  string   :  name of world                                     :  default: 'Dedicated'  :  optional
PASSWORD     :  string   :  password to server                                :  default: none         :  optional
PUBLIC       :  Boolean  :  if set, the server will show up in server browser :  default: TRUE         :  optional


