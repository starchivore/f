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
    --enable-decoder='*sub*,movtext,*web*,aac*,*ac3*,alac*,ape,ass,av1*,cc_dec,cook,dca,dnxhd,eac3*,exr,truehd,ff*,*yuv*,flv,flac,gif,h26[3-4]*,hevc*,hap,mp[1-3]*,prores,*peg*,mlp,mpl2,nellymoser,opus,pcm*,qtrle,*png*,tiff,rawvideo,rv*,sami,srt,ssa,v210*,vc1*,vorbis,vp[6-9]*,wm*,wrapped_avframe'
    --disable-demuxers
    --enable-demuxer='*sub*,*ac3,*ac,*peg*,*web*,ape,ass,avi,concat,dnxhd,dts*,*dash*,*flv,gif,hls,h264,hevc,kux,xv,matroska,mlv,mov,mp3,mxf,nsv,nut,ogg,pcm*,rawvideo,rt*p,spdif,srt,vc1,v210*,wav,*pipe,image2'
    --disable-parsers
    --enable-parser='*sub*,aac*,ac3,cook,dnxhd,flac,h26[3-4],hevc,m*,opus,rv*,vc1,vorbis,vp[8-9]'
    --disable-encoders
    --enable-encoder='aac,dnxhd,exr,ff*,*yuv*,gif,h26[3-4]*,hevc*,mjpeg,*png,opus,pcm*,prores*,rawvideo,spdif,speedhq,*jpeg,*png,tiff,vp[7-9],wrapped_avframe,nvenc*,vorbis'
    --disable-muxers
    --enable-muxer='*jpeg,dnxhd,fifo,flv,gif,hls,h264,hevc,image2,mov,mp4,mpegts,matroska,null,og*,pcm*,rawvideo,spdif,*pipe,*segment,webm,wav,dash,nu*'
)
