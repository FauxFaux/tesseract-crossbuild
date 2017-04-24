FROM ubuntu:16.04

COPY mingw-is-c-compiler_1.0_all.deb /tmp/

RUN \
    apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install --no-install-recommends -y \
        automake \
        autoconf-archive \
        autoconf \
        make \
        mingw-w64 \
        && \
    dpkg -i /tmp/mingw-is-c-compiler_1.0_all.deb && \
    rm /tmp/mingw-is-c-compiler_1.0_all.deb && \
    apt-get install --no-install-recommends -y \
        libtool \
        pkg-config \
        nasm \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY try-build /usr/local/bin/try-build

