#!/usr/bin/env bash

FFMPEG_VERSION=5.1
FFMPEG_TARBALL=ffmpeg.tar.gz
FFMPEG_TARBALL_URL=https://github.com/ffmpeg/ffmpeg/tarball/release/$FFMPEG_VERSION

FFMPEG_CONFIGURE_FLAGS=(
    --disable-shared
    --enable-static
    --disable-debug
    --disable-doc

    --disable-avdevice
    --disable-swscale
    --disable-postproc
    --enable-ffmpeg
    --disable-ffplay

    --disable-iconv
    --disable-zlib
    --disable-bzlib
    --disable-lzma
    --disable-sdl2
    --disable-schannel
    --disable-securetransport
    --disable-xlib

    --disable-muxers
    --disable-demuxers
    --disable-hwaccels
    --disable-d3d11va
    --disable-nvenc
    --disable-dxva2
    --disable-bsfs
    --disable-filters
    --disable-parsers
    --disable-indevs
    --disable-outdevs
    --disable-encoders
    --disable-decoders
    --disable-bsfs

    --enable-demuxer=image2
    --enable-demuxer=aac
    --enable-demuxer=ac3
    --enable-demuxer=aiff
    --enable-demuxer=ape
    --enable-demuxer=asf
    --enable-demuxer=au
    --enable-demuxer=avi
    --enable-demuxer=flac
    --enable-demuxer=flv
    --enable-demuxer=matroska
    --enable-demuxer=mov
    --enable-demuxer=m4v
    --enable-demuxer=mp3
    --enable-demuxer=mpc*
    --enable-demuxer=ogg
    --enable-demuxer=pcm*
    --enable-demuxer=rm
    --enable-demuxer=shorten
    --enable-demuxer=tak
    --enable-demuxer=tta
    --enable-demuxer=wav
    --enable-demuxer=wv
    --enable-demuxer=xwma
    --enable-demuxer=dsf
    --enable-demuxer=dts
    --enable-demuxer=truehd

    --enable-decoder=aac*
    --enable-decoder=ac3
    --enable-decoder=alac
    --enable-decoder=als
    --enable-decoder=ape
    --enable-decoder=atrac*
    --enable-decoder=eac3
    --enable-decoder=flac
    --enable-decoder=gsm*
    --enable-decoder=mp1*
    --enable-decoder=mp2*
    --enable-decoder=mp3*
    --enable-decoder=mpc*
    --enable-decoder=opus
    --enable-decoder=ra*
    --enable-decoder=ralf
    --enable-decoder=shorten
    --enable-decoder=tak
    --enable-decoder=tta
    --enable-decoder=vorbis
    --enable-decoder=wavpack
    --enable-decoder=wma*
    --enable-decoder=pcm*
    --enable-decoder=dsd*
    --enable-decoder=truehd
    --enable-decoder=mjpeg

    --enable-parser=aac*
    --enable-parser=ac3
    --enable-parser=cook
    --enable-parser=dca
    --enable-parser=flac
    --enable-parser=gsm
    --enable-parser=mpegaudio
    --enable-parser=tak
    --enable-parser=vorbis
)
