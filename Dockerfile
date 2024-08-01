FROM docker.io/opensuse/leap

RUN zypper -n install -l steamcmd libatomic1 libpulse-devel libpulse0 knockd libcap-progs gawk
RUN setcap cap_net_raw=ep /usr/sbin/knockd

USER valheim:valheim

ENV SERVER_NAME='valheim' WORLD_NAME='Dedicated'

VOLUME ["/world"]

WORKDIR /valheim

COPY --chmod=750 start /
COPY --chmod=750 autopause /autopause
COPY --chmod=644 autopause/sudo-autopause /etc/sudoers.d

EXPOSE 2456-2457/udp

CMD ["/start"]
