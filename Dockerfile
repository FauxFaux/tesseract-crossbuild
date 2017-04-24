FROM mingw-base:latest

COPY zlib /root/zlib
WORKDIR /root/zlib
RUN make -j 12 -fwin32/Makefile.gcc \
    PREFIX=i686-w64-mingw32- \
    prefix=/root/.cache/w32/ \
    DESTDIR=/root/.cache/w32/ \
    INSTALL=install \
    INCLUDE_PATH=include \
    LIBRARY_PATH=lib \
    BINARY_PATH=bin \
    install \
    && rm -rf /root/zlib

COPY libjpeg-turbo /root/libjpeg-turbo
WORKDIR /root/libjpeg-turbo
RUN try-build

COPY libpng /root/libpng
WORKDIR /root/libpng
RUN try-build

COPY libtiff /root/libtiff
WORKDIR /root/libtiff
RUN try-build

COPY leptonica /root/leptonica
WORKDIR /root/leptonica
RUN try-build --without-libwebp --without-libopenjpeg --without-zlib --without-libpng

COPY tesseract /root/tesseract
WORKDIR /root/tesseract
RUN try-build --disable-graphics

