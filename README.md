# Readme

In this file you will read the instructions for the Youtube Downloader

## Description

The YoutubeDownloader is an open source Batch program that will lead the user through the process of downloading a video from Youtube

## Installation

For the installation of the Youtube Downloader you need NodeJs.

To install NodeJs, go to https://nodejs.org/en/ to install the latest version of NodeJs.

Once you have installed NodeJs, open your terminal and paste the text below:

~~~
npm -g install ytdl
~~~
To be shure you have installed it correctly, paste the following:

~~~
ytdl
~~~
The output you should get is something like this:
~~~

  url argument is required
Usage: ytdl [options] <url>

Options:
  -V, --version                   output the version number
  -q, --quality <ITAG>            Video quality to download, default: highest
  -r, --range <INT>..<INT>        Byte range to download, ie 10355705-12452856
  -b, --begin <INT>               Time to begin video, format by 1:30.123 and 1m30s
  -o, --output <FILE>             Save to file, template by {prop}, default: stdout or {title}
  --filter <STR>                  Can be video, videoonly, audio, audioonly
  --filter-container <REGEXP>     Filter in format container
  --unfilter-container <REGEXP>   Filter out format container
  --filter-resolution <REGEXP>    Filter in format resolution
  --unfilter-resolution <REGEXP>  Filter out format resolution
  --filter-encoding <REGEXP>      Filter in format encoding
  --unfilter-encoding <REGEXP>    Filter out format encoding
  -i, --info                      Print video info without downloading
  -j, --info-json                 Print video info as JSON without downloading
  --print-url                     Print direct download URL
  --no-cache                      Skip file cache for html5player
  --debug                         Print debug information
  -h, --help                      output usage information
~~~

If you also want to use the "Download as MP3" function you have to install ffmpeg.

Paste the following text in your Command Prompt:

~~~
npm -g install ffmpeg
~~~
To be shure you have installed ffmpeg correctly past this in your Command Prompt:

~~~
ffmpeg
~~~

The output you should get is something like this:

~~~
ffmpeg version git-2019-12-07-ff2b75d Copyright (c) 2000-2019 the FFmpeg developers
  built with gcc 9.2.1 (GCC) 20191125
  configuration: --enable-gpl --enable-version3 --enable-sdl2 --enable-fontconfig --enable-gnutls --enable-iconv --enable-libass --enable-libdav1d --enable-libbluray --enable-libfreetype --enable-libmp3lame --enable-libopencore-amrnb --enable-libopencore-amrwb --enable-libopenjpeg --enable-libopus --enable-libshine --enable-libsnappy --enable-libsoxr --enable-libtheora --enable-libtwolame --enable-libvpx --enable-libwavpack --enable-libwebp --enable-libx264 --enable-libx265 --enable-libxml2 --enable-libzimg --enable-lzma --enable-zlib --enable-gmp --enable-libvidstab --enable-libvorbis --enable-libvo-amrwbenc --enable-libmysofa --enable-libspeex --enable-libxvid --enable-libaom --enable-libmfx --enable-ffnvcodec --enable-cuvid --enable-d3d11va --enable-nvenc --enable-nvdec --enable-dxva2 --enable-avisynth --enable-libopenmpt --enable-amf
  libavutil      56. 36.101 / 56. 36.101
  libavcodec     58. 64.101 / 58. 64.101
  libavformat    58. 35.101 / 58. 35.101
  libavdevice    58.  9.101 / 58.  9.101
  libavfilter     7. 68.100 /  7. 68.100
  libswscale      5.  6.100 /  5.  6.100
  libswresample   3.  6.100 /  3.  6.100
  libpostproc    55.  6.100 / 55.  6.100
Hyper fast Audio and Video encoder
usage: ffmpeg [options] [[infile options] -i infile]... {[outfile options] outfile}...

Use -h to get full help or, even better, run 'man ffmpeg'
~~~

## Usage

Open the file YoutubeDownloader.bat after you have completed the installation

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://en.wikipedia.org/wiki/MIT_License)