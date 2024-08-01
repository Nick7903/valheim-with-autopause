# valheim-with-autopause
Valheim server container with autopause functionality, to save power and cpu time

Inspired by https://github.com/itzg/docker-minecraft-server

# Usage
$ podman run -d -t -v valheim-world:/world -p 2456:2456/udp -p 2457:2457/udp \
-e SERVER_NAME='my server'
-e 
-e
--name valheim localhost/vhsrv:latest
