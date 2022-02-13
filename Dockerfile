FROM lscr.io/linuxserver/wireguard:latest

LABEL org.opencontainers.image.source https://github.com/bsdf/wgproxy

RUN apt-get update && \
    apt-get install -y --no-install-recommends dante-server && \
    rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*

COPY ./danted.conf /etc/danted.conf
COPY ./dante-service-run.sh /etc/services.d/danted/run
