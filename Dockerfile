FROM docker.io/opensuse/leap

VOLUME ["/world"]

WORKDIR /valheim

COPY --chmod=750 start /

EXPOSE 2456-2457/udp

CMD ["/start"]
