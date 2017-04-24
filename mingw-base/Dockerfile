FROM ubuntu:16.04

RUN \
    apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install --no-install-recommends -y \
        automake \
        autoconf \
        mingw-w64 \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY try-build /usr/local/bin/try-build

