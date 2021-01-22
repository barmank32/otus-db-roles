FROM jrei/systemd-ubuntu:16.04

RUN apt-get update \
    && apt-get install -y python3 net-tools\
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["/lib/systemd/systemd"]
