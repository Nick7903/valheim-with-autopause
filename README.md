# valheim-with-autopause
Valheim server container with autopause functionality, to save power and cpu time

Inspired by https://github.com/itzg/docker-minecraft-server

# Usage
$ podman run -d -t -v valheim-world:/world -p 2456:2456/udp -p 2457:2457/udp \
-e SERVER_NAME='my server'
-e WORLD_NAME='Dedicated'
-e PASSWORD='1234'
-e PUBLIC=FALSE
-e SAVE_INTERVAL=900
-e BACKUPS=4
-e BACKUP_SHORT=7000
-e BACKUP_LONG=43200
-e CROSSPLAY=FALSE
-e PRESET_DIFFICULTY=normal
-e MODIFIER_COMBAT=easy
-e MODIFIER_DEATHPENALTY=easy
-e MODIFIER_RESOURCES=less
-e MODIFIER_RAIDS=less
-e MODIFIER_PORTALS=casual
-e SETKEY=passivemobs
--name valheim localhost/vhsrv:latest


| Name | Type | Default | Purpose | req/opt |
|----------|----------|-------|---|--|
| `SERVER_NAME` | `string` | | name of server shown in server browser if public | `required` |
| `WORLD_NAME` | `string` | 'Dedicated' | name of world | `optional` |
| `PASSWORD` | `string` | | password to server | `optional` |
| `PUBLIC` | `boolean` | TRUE | if set, the server will show up in server browser | `optional` |

SAVE_INTERVAL          :  
BACKUPS                :  
BACKUP_SHORT           :  
BACKUP_LONG            :  
CROSSPLAY              :  
PRESET_DIFFICULTY      :  
MODIFIER_COMBAT        :  
MODIFIER_DEATHPENALTY  :  
MODIFIER_RESOURCES     :  
MODIFIER_RAIDS         :  
MODIFIER_PORTALS
SETKEY
