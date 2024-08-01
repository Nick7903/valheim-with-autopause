FROM docker.io/opensuse/leap

RUN zypper -n install -l steamcmd libatomic1 libpulse-devel libpulse0 knockd libcap-progs gawk
RUN setcap cap_net_raw=ep /usr/sbin/knockd

COPY --chmod=644 autopause/sudo-autopause /etc/sudoers.d

RUN groupadd --gid 1000 valheim
RUN useradd --system --shell /bin/false --uid 1000 -g valheim --home /valheim valheim
USER valheim:valheim

ENV SERVER_NAME='valheim' WORLD_NAME='Dedicated'

VOLUME ["/world"]

WORKDIR /valheim

COPY --chmod=750 start /
COPY --chmod=750 autopause /autopause

EXPOSE 2456-2457/udp

CMD ["/start"]
