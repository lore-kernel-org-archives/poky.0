Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web12.5575.1648636940844690500
 for <poky@lists.yoctoproject.org>;
 Wed, 30 Mar 2022 03:42:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20210112.gappssmtp.com header.s=20210112 header.b=B6FsQN8H;
 spf=pass (domain: burtonini.com, ip: 209.85.221.49, mailfrom: ross@burtonini.com)
Received: by mail-wr1-f49.google.com with SMTP id b19so28612306wrh.11
        for <poky@lists.yoctoproject.org>; Wed, 30 Mar 2022 03:42:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dpCU91A59t+EzxWNl7dy64stbsyTZPJa045954d38Ng=;
        b=B6FsQN8H7q/gJ8TBN0eIh4toBblA2GBv32qPGpg3vCMg7ayl19pxTCWOUjSzHwIqOr
         ycqUgfff2ZmhWvgUeuroa0chnS0lTbsGtofkdfdKogW5tF8pd1ex44YlFYNE5HDKQ8kE
         xd7ThHBkrRCtlDyjG66eoW7W+Vx5u+BTRW45T1iTqdDnoKQRZHTtv/CFzePIbYS71pxJ
         wK/MewanCfpGn/61WVK5+0yYdOXKww28u6B5Je8AhPoG3Wu1PsEJcv6ZBaLpztypE6w6
         3VZhbmscxCHrfChOrPPLhm6Dmxs4XwSMg/dFksAjLGBxMyla2Uqoezord7Y44KZifE/H
         RU+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dpCU91A59t+EzxWNl7dy64stbsyTZPJa045954d38Ng=;
        b=Yav13RXdAI99goANn7Gm5xJMSZ/0RnC4cCX3vcV95uZZMs/qh+tuJWGv8WqhYWOLji
         Evu8Nd/ZRQqdEzVZQgj/y5CLF4T8Jb2wUIa8VSnyfU+pzBcVHfGyKvLBOGUgcPy//T7f
         R2jYdvfJY9EW8cUwg2QHBONWyeUvmRLXH7fp8wnfm4RFx10FvDcU4Slac7GzNSUcOeop
         pkDnS7s/ft2/avd4ZGDGdmp2Q4h3r4QtLEmTYsGaHK5teDQ6QqhI4RozqnYMPBHTPSRA
         AIhzrFC+5HcGAbsR9rmdJX7+/mYXCcltIMAonPszBxukJFvCYDJ14FDWWfDAY4pcaw8R
         N6rw==
X-Gm-Message-State: AOAM533mNUJvdS4HDront/ZJwyr7/QSjtuDyns7/8dQbg3nryYzwcR8A
	PnfYvdjjj8HVWvsJxQlcXbBm3snra52jRWo86PLZKw==
X-Google-Smtp-Source: ABdhPJw2ep0ONMnlz93HpjS01FSyp8V+B7b3lxko8LGzt0pQ/AYpOLJWozHa8aJMN3Nxddo0tkyRAyDybLw3GfTrJdM=
X-Received: by 2002:a5d:47a8:0:b0:204:72:7051 with SMTP id 8-20020a5d47a8000000b0020400727051mr36031582wrb.451.1648636938734;
 Wed, 30 Mar 2022 03:42:18 -0700 (PDT)
MIME-Version: 1.0
References: <20220330092358.1499089-1-richard.purdie@linuxfoundation.org>
In-Reply-To: <20220330092358.1499089-1-richard.purdie@linuxfoundation.org>
From: "Ross Burton" <ross@burtonini.com>
Date: Wed, 30 Mar 2022 11:42:07 +0100
Message-ID: <CAAnfSTtACQG92eLG8estDQrynN1uwubzR=os4gZ-gvSKJf81DQ@mail.gmail.com>
Subject: Re: [poky] [PATCH] poky: Drop PREMIRRORS entries for scms
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 30 Mar 2022 at 10:24, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> The reasons for this are lost in the mists of time. These are already
> in OE-Core as MIRRORS and we should be falling back to the project as
> a backup, not a default. Update accordingly.

Given the relative bandwidth available on downloads.yoctoproject.org,
I endorse this.

I just ran 'bitbake core-image-sato --runall fetch' with an empty
DL_DIR. Buildstats-diff output as follows:

(durations of exactly 1000s are tasks which I aborted after 20 minutes
of fetching, so they had no endtime set)

  PKG                               TASK      ABSDIFF    RELDIFF
WALLTIME1 -> WALLTIME2
  dnf-native                        do_fetch  -992.2s     -99.2%
1000.0s -> 7.8s
  dnf                               do_fetch  -990.4s     -99.0%
1000.0s -> 9.6s
  rpm-native                        do_fetch  -985.4s     -98.5%
1000.0s -> 14.6s
  rpm                               do_fetch  -983.7s     -98.4%
1000.0s -> 16.3s
  iso-codes                         do_fetch  -971.6s     -97.2%
1000.0s -> 28.4s
  cross-localedef-native            do_fetch  -876.2s     -87.6%
1000.0s -> 123.8s
  glibc                             do_fetch  -872.3s     -87.2%
1000.0s -> 127.7s
  binutils-cross-x86_64             do_fetch  -801.4s     -80.1%
1000.0s -> 198.6s
  binutils                          do_fetch  -791.9s     -79.2%
1000.0s -> 208.1s
  glslang-native                    do_fetch  -724.5s     -96.7%
749.1s -> 24.7s
  e2fsprogs                         do_fetch  -524.3s     -89.6%
585.2s -> 60.9s
  e2fsprogs-native                  do_fetch  -510.9s     -92.1%
554.5s -> 43.6s
  vulkan-loader                     do_fetch  -503.3s     -94.2%
534.4s -> 31.1s
  spirv-tools-native                do_fetch  -396.6s     -96.2%
412.4s -> 15.9s
  zstd                              do_fetch  -395.3s     -96.6%
409.1s -> 13.8s
  zstd-native                       do_fetch  -391.5s     -97.3%
402.3s -> 10.8s
  linux-yocto                       do_fetch  -351.5s     -35.1%
1000.0s -> 648.5s
  ncurses                           do_fetch  -341.7s     -97.3%
351.0s -> 9.3s
  ncurses-native                    do_fetch  -335.5s     -98.7%
340.0s -> 4.6s
  puzzles                           do_fetch  -313.7s     -96.1%
326.4s -> 12.7s
  libsolv                           do_fetch  -306.7s     -97.2%
315.5s -> 8.9s
  libsolv-native                    do_fetch  -298.5s    -100.0%
298.5s -> 0.0s
  libdnf                            do_fetch  -284.3s     -97.1%
292.6s -> 8.3s
  libdnf-native                     do_fetch  -281.0s     -98.2%
286.1s -> 5.2s
  vulkan-headers                    do_fetch  -258.9s     -92.6%
279.7s -> 20.8s
  shared-mime-info                  do_fetch  -228.2s     -89.5%
255.0s -> 26.8s
  shared-mime-info-native           do_fetch  -228.0s     -91.9%
248.1s -> 20.1s
  file                              do_fetch  -199.8s     -98.4%
203.0s -> 3.2s
  file-native                       do_fetch  -198.2s     -99.8%
198.6s -> 0.4s
  btrfs-tools                       do_fetch  -180.6s     -86.6%
208.5s -> 28.0s
  createrepo-c-native               do_fetch  -131.9s     -98.6%
133.8s -> 1.9s
  procps                            do_fetch  -114.7s     -97.4%
117.8s -> 3.1s
  ninja-native                      do_fetch   -89.2s     -95.8%
93.1s -> 3.9s
  librepo                           do_fetch   -82.4s     -97.2%
84.8s -> 2.4s
  librepo-native                    do_fetch   -78.6s     -99.9%
78.7s -> 0.0s
  libmodulemd                       do_fetch   -75.3s     -94.2%
80.0s -> 4.6s
  libmodulemd-native                do_fetch   -75.2s     -95.9%
78.4s -> 3.2s
  libxcrypt                         do_fetch   -65.7s     -96.1%
68.4s -> 2.7s
  virglrenderer-native              do_fetch   -55.9s     -79.4%
70.5s -> 14.5s
  rpcbind                           do_fetch   -46.2s     -95.5%
48.4s -> 2.2s
  psmisc                            do_fetch   -42.4s     -95.2%
44.5s -> 2.1s
  libcomps                          do_fetch   -41.7s     -96.1%
43.3s -> 1.7s
  kmod                              do_fetch   -41.0s     -72.3%
56.7s -> 15.7s
  libcomps-native                   do_fetch   -36.8s     -99.9%
36.8s -> 0.0s
  mobile-broadband-provider-info    do_fetch   -35.6s     -94.3%
37.8s -> 2.1s
  shaderc-native                    do_fetch   -35.1s     -95.7%
36.7s -> 1.6s
  kmod-native                       do_fetch   -35.0s     -79.5%
44.0s -> 9.0s
  ca-certificates-native            do_fetch   -33.5s     -92.0%
36.4s -> 2.9s
  libseccomp                        do_fetch   -29.6s     -95.6%
31.0s -> 1.4s
  bzip2                             do_fetch   -29.0s     -89.5%
32.4s -> 3.4s
  pkgconfig-native                  do_fetch   -26.7s     -84.5%
31.6s -> 4.9s
  ca-certificates                   do_fetch   -24.5s     -99.4%
24.6s -> 0.1s
  bzip2-native                      do_fetch   -24.1s     -97.6%
24.7s -> 0.6s
  spirv-headers-native              do_fetch   -21.8s     -92.4%
23.6s -> 1.8s
  swig-native                       do_fetch   -18.2s     -21.8%
83.5s -> 65.3s
  dtc-native                        do_fetch   -17.2s     -72.6%
23.7s -> 6.5s
  gnu-config-native                 do_fetch   -16.3s     -90.2%
18.1s -> 1.8s
  busybox                           do_fetch   -15.9s     -85.2%
18.6s -> 2.8s
  gst-examples                      do_fetch   -14.8s     -71.7%
20.7s -> 5.9s
  libpng                            do_fetch   -13.3s     -43.3%
30.6s -> 17.3s
  libpng-native                     do_fetch   -13.0s     -53.3%
24.4s -> 11.4s
  kern-tools-native                 do_fetch   -11.7s     -76.6%
15.2s -> 3.5s
  pseudo-native                     do_fetch   -10.8s     -68.0%
15.9s -> 5.1s
  init-system-helpers               do_fetch   -10.0s     -84.5%
11.8s -> 1.8s
  l3afpad                           do_fetch    -8.0s     -90.0%
8.8s -> 0.9s
  debianutils-native                do_fetch    -7.6s     -77.6%
9.8s -> 2.2s
  m4-native                         do_fetch    -7.2s     -87.5%
8.3s -> 1.0s
  libnsl2-native                    do_fetch    -6.6s     -97.5%
6.8s -> 0.2s
  libnsl2                           do_fetch    -6.4s     -82.6%
7.8s -> 1.4s
  gcc-source-11.2.0                 do_fetch    -5.8s     -17.7%
32.5s -> 26.8s
  libnss-mdns                       do_fetch    -5.4s     -81.6%
6.6s -> 1.2s
  connman-gnome                     do_fetch    -4.5s     -87.5%
5.1s -> 0.6s
  librsvg-native                    do_fetch    -4.2s     -39.8%
10.4s -> 6.3s
  librsvg                           do_fetch    -4.1s     -26.6%
15.5s -> 11.4s
  libxml2                           do_fetch    -4.1s     -69.6%
5.9s -> 1.8s
  matchbox-panel-2                  do_fetch    -4.1s     -73.0%
5.6s -> 1.5s
  opkg-native                       do_fetch    -4.1s     -47.5%
8.6s -> 4.5s
  matchbox-keyboard                 do_fetch    -3.2s     -62.6%
5.1s -> 1.9s
  matchbox-wm                       do_fetch    -3.1s     -48.7%
6.3s -> 3.2s
  elfutils                          do_fetch    -2.8s     -48.0%
5.9s -> 3.1s
  rust-native                       do_fetch     2.1s     +11.5%
18.0s -> 20.1s
  qemu-native                       do_fetch     2.2s     +44.5%
4.9s -> 7.0s
  cargo-native                      do_fetch     2.2s     +12.5%
17.7s -> 19.9s
  menu-cache                        do_fetch     2.2s     +11.2%
20.1s -> 22.4s
  xz                                do_fetch     2.3s     +11.8%
19.5s -> 21.8s
  gtk+3                             do_fetch     2.6s     +17.3%
15.0s -> 17.6s
  zlib-native                       do_fetch     2.7s     +18.5%
14.7s -> 17.4s
  pixman                            do_fetch     2.7s     +86.7%
3.2s -> 5.9s
  libxi-native                      do_fetch     2.8s    +107.0%
2.6s -> 5.3s
  lame                              do_fetch     3.2s     +51.5%
6.2s -> 9.4s
  pango-native                      do_fetch     3.4s    +176.2%
1.9s -> 5.3s
  libstd-rs                         do_fetch     3.5s     +54.7%
6.3s -> 9.8s
  python3                           do_fetch     3.5s    +160.9%
2.2s -> 5.6s
  libfm                             do_fetch     3.5s     +20.4%
17.2s -> 20.8s
  cmake-native                      do_fetch     3.5s    +236.0%
1.5s -> 5.0s
  rust-llvm-native                  do_fetch     3.6s     +58.6%
6.1s -> 9.6s
  rust-cross-core2-64-glibc         do_fetch     3.6s     +57.4%
6.3s -> 10.0s
  gstreamer1.0-plugins-bad          do_fetch     3.7s    +127.9%
2.9s -> 6.5s
  mesa                              do_fetch     4.1s     +63.0%
6.4s -> 10.5s
  mesa-native                       do_fetch     4.3s    +248.3%
1.7s -> 6.0s
  libfm-extra                       do_fetch     4.3s     +18.9%
22.8s -> 27.1s
  libunistring-native               do_fetch     4.5s    +317.6%
1.4s -> 5.9s
  gdk-pixbuf                        do_fetch     4.6s    +192.8%
2.4s -> 6.9s
  grep                              do_fetch     5.0s    +467.9%
1.1s -> 6.0s
  sed                               do_fetch     5.1s    +444.7%
1.1s -> 6.2s
  sudo                              do_fetch     5.3s     +26.7%
19.8s -> 25.0s
  libtirpc-native                   do_fetch     5.3s     +15.4%
34.5s -> 39.9s
  libtirpc                          do_fetch     5.5s     +15.4%
35.5s -> 41.0s
  libx11-native                     do_fetch     5.8s  +19433.4%
0.0s -> 5.9s
  libx11                            do_fetch     6.1s    +332.8%
1.8s -> 7.9s
  adwaita-icon-theme                do_fetch     7.0s    +274.1%
2.5s -> 9.5s
  gstreamer1.0                      do_fetch     7.4s    +315.9%
2.3s -> 9.7s
  groff-native                      do_fetch     8.4s    +684.6%
1.2s -> 9.7s
  libsdl2-native                    do_fetch     9.2s    +306.3%
3.0s -> 12.2s
  xz-native                         do_fetch     9.4s    +147.6%
6.4s -> 15.8s
  bash                              do_fetch    11.9s    +381.1%
3.1s -> 15.0s
  pcmanfm                           do_fetch    25.1s    +433.9%
5.8s -> 30.9s
  docbook-xsl-stylesheets-native    do_fetch    99.1s    +146.6%
67.6s -> 166.7s

Cumulative walltime:
  -16728.9s    -83.3%    5:34:50.4 (20090.4s) -> 56:01.6 (3361.6s)

That's a huge win!  The days where our mirrors were faster than the
upstream repositories are long gone.

Ross
