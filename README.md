# valheim-with-autopause
Valheim server container with autopause functionality, to save power and cpu time

Inspired by https://github.com/itzg/docker-minecraft-server

# Usage
```bash
$ podman run -d -t -v valheim-world:/world -p 2456:2456/udp -p 2457:2457/udp \\
-e SERVER_NAME='my server' \\\
-e WORLD_NAME='Dedicated'
-e PASSWORD='1234'
-e PUBLIC=FALSE
-e SAVE_INTERVAL=900
-e BACKUPS=4
-e BACKUP_SHORT=7200
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
```

| Name | Type | Default | Purpose |
|---|---|---|---|
| `SERVER_NAME` | `str` | valheim | name of server shown in server browser if public |
| `WORLD_NAME` | `str` | 'Dedicated' | name of world |
| `PASSWORD` | `str` | | password to server |
| `PUBLIC` | `bool` | 1 | if set, the server will show up in server browser |
| `SAVE_INTERVAL` | `int` seconds | 1800 | time between saves |
| `BACKUPS` | `int` | 4 | amount of auto backups, 1 short, 3 long |
| `BACKUP_SHORT` | `int` seconds | 7200 | interval time for short backup |
| `BACKUP_LONG` | `int` seconds | 43200 | interval time for long backups |
| `CROSSPLAY` | `bool` | 1 | if false, only steam users can join |
| `PRESET_DIFFICULTY` | `str` from list | normal | difficulty: normal, casual, easy, hard, hardcore, immersive, hammer |
| `MODIFIER_COMBAT` | `str` from list | | combat difficulty: veryeasy, easy, hard, veryhard |
| `MODIFIER_DEATHPENALTY` | `str` from list | | deathpenalty level: casual, veryeasy, easy, hard, hardcore |
| `MODIFIER_RESOURCES` | `str` from list | | resource amount: muchless, less, more, muchmore, most |
| `MODIFIER_RAIDS` | `str` from list | | raid amount: none, muchless, less, more, muchmore |
| `MODIFIER_PORTALS` | `str` from list | | portal difficulty: casual, hard, veryhard |
| `NOBUILDCOST` | `bool` | 0 | disable build cost |
| `PLAYEREVENTS` | `bool` | 0 | idk |
| `PASSIVEMOBS` | `bool` | 0 | set mobs to be passive |
| `NOMAP` | `bool` | 0 | disable map |
