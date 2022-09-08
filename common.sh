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
    --enable-small
    --disable-filters
    --enable-filter='*null*,afade,*fifo,*format,*resample,aeval,allrgb,allyuv,atempo,pan,*bars,color,*key,crop,draw*,eq*,framerate,*_qsv,*_vaapi,*v4l2*,hw*,scale,volume,test*'
    --disable-decoders
    --enable-decoder='aac,aac_latm,ac3,alac,als,ape,atrac1,atrac3,eac3,flac,gsm,gsm_ms,mp1,mp1float,mp2,mp2float,mp3,mp3adu,mp3adufloat,mp3float,mp3on4,mp3on4float,mpc7,mpc8,opus,ra_144,ra_288,ralf,shorten,tak,tta,vorbis,wavpack,wmalossless,wmapro,wmav1,wmav2,wmavoice,pcm_alaw,pcm_bluray,pcm_dvd,pcm_f32be,pcm_f32le,pcm_f64be,pcm_f64le,pcm_lxf,pcm_mulaw,pcm_s8,pcm_s8_planar,pcm_s16be,pcm_s16be_planar,pcm_s16le,pcm_s16le_planar,pcm_s24be,pcm_s24daud,pcm_s24le,pcm_s24le_planar,pcm_s32be,pcm_s32le,pcm_s32le_planar,pcm_u8,pcm_u16be,pcm_u16le,pcm_u24be,pcm_u24le,pcm_u32be,pcm_u32le,pcm_zork,dsd_lsbf,dsd_msbf,dsd_lsbf_planar,dsd_msbf_planar'
    --disable-demuxers
    --enable-demuxer='*sub*,*ac3,*ac,*peg*,*web*,ape,ass,avi,concat,dnxhd,dts*,*dash*,*flv,gif,hls,h264,hevc,kux,xv,matroska,mlv,mov,mp3,mxf,nsv,nut,ogg,pcm*,rawvideo,rt*p,spdif,srt,vc1,v210*,wav,*pipe,image2'
    --disable-parsers
    --enable-parser='*sub*,aac*,ac3,cook,dnxhd,flac,h26[3-4],hevc,m*,opus,rv*,vc1,vorbis,vp[8-9]'
)
