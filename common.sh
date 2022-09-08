#!/usr/bin/env bash

FFMPEG_VERSION=5.1
FFMPEG_TARBALL=ffmpeg.tar.gz
FFMPEG_TARBALL_URL=https://github.com/ffmpeg/ffmpeg/tarball/release/$FFMPEG_VERSION

FFMPEG_CONFIGURE_FLAGS=(
    --disable-doc
    --disable-debug
    --enable-shared
    --enable-ffmpeg
    --disable-ffplay
    --enable-runtime-cpudetect
    --disable-ptx-compression
    --enable-mediafoundation
    --disable-vulkan
    --disable-postproc
    --enable-pic
    --disable-filter=scale_cuda
)
