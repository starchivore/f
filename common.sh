#!/usr/bin/env bash

FFMPEG_VERSION=5.1
FFMPEG_TARBALL=ffmpeg.tar.gz
FFMPEG_TARBALL_URL=https://github.com/ffmpeg/ffmpeg/tarball/release/$FFMPEG_VERSION

FFMPEG_CONFIGURE_FLAGS=(
    --disable-doc
    --disable-debug
    --disable-shared
    --enable-static
    --enable-ffmpeg
    --disable-ffplay
    --disable-avdevice
    --disable-bsfs
    --disable-bzlib
    --disable-hwaccels
    --disable-iconv
    --disable-indevs
    --disable-network
    --disable-nvenc
    --disable-outdevs
    --disable-postproc
    --disable-swscale
    --disable-videotoolbox
    --disable-vulkan
    --disable-zlib
    --enable-mediafoundation
    --enable-pic
    --disable-protocols
    --enable-protocol=file
    --enable-protocol=pipe
    --disable-filters
    --enable-filter='*null*,*format,*resample'
    --disable-decoders
    --enable-decoder='aac,aac_latm,ac3,alac,als,ape,atrac1,atrac3,eac3,flac,gsm,gsm_ms,mp1,mp1float,mp2,mp2float,mp3,mp3adu,mp3adufloat,mp3float,mp3on4,mp3on4float,mpc7,mpc8,opus,ra_144,ra_288,ralf,shorten,tak,tta,vorbis,w64,wavpack,wmalossless,wmapro,wmav1,wmav2,wmavoice,pcm_alaw,pcm_bluray,pcm_dvd,pcm_f32be,pcm_f32le,pcm_f64be,pcm_f64le,pcm_lxf,pcm_mulaw,pcm_s8,pcm_s8_planar,pcm_s16be,pcm_s16be_planar,pcm_s16le,pcm_s16le_planar,pcm_s24be,pcm_s24daud,pcm_s24le,pcm_s24le_planar,pcm_s32be,pcm_s32le,pcm_s32le_planar,pcm_u8,pcm_u16be,pcm_u16le,pcm_u24be,pcm_u24le,pcm_u32be,pcm_u32le,pcm_zork,dsd_lsbf,dsd_msbf,dsd_lsbf_planar,dsd_msbf_planar'
    --disable-demuxers
    --enable-demuxer='image2,aac,ac3,aiff,ape,asf,au,avi,flac,flv,matroska,mov,m4v,mp3,mpc,mpc8,ogg,pcm_alaw,pcm_mulaw,pcm_f64be,pcm_f64le,pcm_f32be,pcm_f32le,pcm_s32be,pcm_s32le,pcm_s24be,pcm_s24le,pcm_s16be,pcm_s16le,pcm_s8,pcm_u32be,pcm_u32le,pcm_u24be,pcm_u24le,pcm_u16be,pcm_u16le,pcm_u8,rm,shorten,tak,tta,w64,wav,wv,xwma,dsf'
    --disable-parsers
    --enable-parser='aac,aac_latm,ac3,cook,dca,flac,gsm,mpegaudio,tak,vorbis'
    --disable-muxers
    --enable-muxer='image2,aac,ac3,aiff,ape,asf,au,avi,flac,flv,matroska,mov,m4v,mp3,mpc,mpc8,ogg,pcm_alaw,pcm_mulaw,pcm_f64be,pcm_f64le,pcm_f32be,pcm_f32le,pcm_s32be,pcm_s32le,pcm_s24be,pcm_s24le,pcm_s16be,pcm_s16le,pcm_s8,pcm_u32be,pcm_u32le,pcm_u24be,pcm_u24le,pcm_u16be,pcm_u16le,pcm_u8,rm,shorten,tak,tta,w64,wav,wv,xwma,dsf'
)
