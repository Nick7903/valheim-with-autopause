FROM docker.io/opensuse/leap

VOLUME ["/world]
WORKDIR /valheim

COPY --chown=root:root --chmod=750 ./start.sh .

EXPOSE 2456/udp
EXPOSE 2457/udp

CMD ["./start.sh"]
