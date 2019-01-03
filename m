Return-Path: <matthew_stanger@trimble.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 081D3E00C1E; Thu,  3 Jan 2019 09:48:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.178 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
	[209.85.160.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13153E00C10
	for <poky@yoctoproject.org>; Thu,  3 Jan 2019 09:48:23 -0800 (PST)
Received: by mail-qt1-f178.google.com with SMTP id n32so37664032qte.11
	for <poky@yoctoproject.org>; Thu, 03 Jan 2019 09:48:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=trimble-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=lavkzzv8f+LMAGKzdrOVymjLibUsdwY1gQQGJZu2PNE=;
	b=iKs5mRpJZKWMc9MoSZNpVzjByHVB38MH6Z1HqCpoTmoaNdyQXoWTua2v//z74fDSYd
	HxLG/eIC52v9fu6YAu/+FaXt4TSI2ArG/VVQYP/2/sdH92BegISaf4e1IZJQziMgbvw1
	1tHmd/GDSOE3YoCOIajV9DRWiutFzzS6Bd+cMr8N41kSTI4PGPvMrwL9HaGK9Fq/d1gf
	74gG8Ha0Twu7F6Qf1vHEfuY564CdKCmg9nRl1ZvMZVFhNDAAG8ohX9djtsiS5gAd3JZm
	2+4j1sAVDAjgzJ50pWOXf6s80GNsD4A32Jj6WXToabym7VPf8gvdPeT85hDVV0eXcVID
	pt7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=lavkzzv8f+LMAGKzdrOVymjLibUsdwY1gQQGJZu2PNE=;
	b=hDDSIV6u88F0vO7b9ON0c1uGAAgzOEbLPDxJvpzPh1z+xiqNJpMN91i6X9ND68AYf0
	xJrQifDclgRp0gEAHEjZkkQkHyn+G6/3GYuBGu//CfaOK8fdIkbphBGFBufuBPm80pFb
	n+ezWcirzmzxDoizMOoxGYhAU8Rbi1kUmA5KJCzlIP8+qLZNvm0PyLlj/KZ+E9NY1g4S
	pNA9kokGzx047SmKA4O3bvqF/xKWYSZlQxM320PDC+kf3EIxkG8o13HZRW+q0NjsR3uO
	ocKNb1LPmscJzeQle9ecPmHL0KSV+nWFcpjxB0TmcZ3pxvZE5Ix5fXfcE40yJtuVtUnp
	ViNQ==
X-Gm-Message-State: AJcUukfAnXX4jKIa2eG5/2QmOTsb00LtrYjtmffNBedWm+y6CsZwDbwl
	aZnhUG+Au46pl8+S1hK4dKzV9yWsR+QIHnlJ1gTzVA==
X-Google-Smtp-Source: ALg8bN6sAFAIP0rNw06qCvDofz7gce8K5KnGP3BdQ95rY07aPRW5PS0yEfSPrVgW1asZCfdYQ8Jto5PyYP4KAzU45+E=
X-Received: by 2002:a0c:dd81:: with SMTP id v1mr48400516qvk.71.1546537702645; 
	Thu, 03 Jan 2019 09:48:22 -0800 (PST)
MIME-Version: 1.0
References: <CANr77M2NsGWUEeYobQFM_YChfK37KM06z=PUQSe6z8nQCqzQsw@mail.gmail.com>
	<CAMKF1sqogmNy0uRuiShQUP7ONpJjwgrpaTKFAAd378sQ7YWYwQ@mail.gmail.com>
	<CANr77M1a9Y9_JPzypFdyO=jrRa1b9=dWqHdpaijdMQ+RNRz_6w@mail.gmail.com>
	<CA+chaQdj6Eb0_FTgZxeroxZCYUbLY4+kGw06-fc0bmELC6r_ng@mail.gmail.com>
	<CAMKF1sorEf+Rfmc=PsGCEv6oSS4ko5zUk2XJa0CtahQAXQGHtA@mail.gmail.com>
In-Reply-To: <CAMKF1sorEf+Rfmc=PsGCEv6oSS4ko5zUk2XJa0CtahQAXQGHtA@mail.gmail.com>
From: Matthew Stanger <matthew_stanger@trimble.com>
Date: Thu, 3 Jan 2019 10:48:51 -0700
Message-ID: <CANr77M1g5qivCU65iCUZmc94hMhwAQ2MM74-cjPB3Rp-weT+Zg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: glibc-initial fails to build in Thud with arm926ejs tune
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 03 Jan 2019 17:48:30 -0000
Content-Type: multipart/alternative; boundary="000000000000665182057e915e02"

--000000000000665182057e915e02
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

>
> Try something like this

Yes the patch works, it gets a double '-march' passed in but the 'te' seems
to override since it's coming after. ie.
configure:2316: result: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
-march=3Darmv5te -mcpu=3Darm926ej-s
--sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnue=
abi/glibc-initial/2.28-r0/recipe-sysroot
There is no more warning in the logs as Martian pointed out.

We expect ARM_INSTRUCTION_SET =3D "thumb" for the tunes to be set to use
> -march=3Darm??t?. for compiler which in my mind is wrong constraint.
> semantically armv5te does not mean the instruction set used to
> generate code can only be thumb. It indicates that it can execute
> thumb code, so what ISA is used should not be tied to what -march is
> used.

Yes this is how I understand it & I'm not intending to use the 16 bit Thumb
instruction set. I want the 32-bit ARM instruction's. This seems correct
since you can see the '-marm' flag being used not the '-mthumb' flag. The
IPK's are still being build as 'arm926ejse' not 'te' which further
makes sense. I think I'm good to go here on my end but let me know if you
want me to try anything else out.

The spaghetti we have for arm tunes is incredibly hard to fathom. With
> gcc9 dropping all arches below armv5t means we need to rework these
> tunes for arm specifically for armv4 and armv5.

Good riddance I'd say. I'll take anything I can to pitch the idea of using
hardware build sometime in a modern day.

On Wed, Jan 2, 2019 at 11:01 PM Khem Raj <raj.khem@gmail.com> wrote:

> On Wed, Jan 2, 2019 at 2:42 PM Martin Jansa <martin.jansa@gmail.com>
> wrote:
> >
> > cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e =
switch
> >
> > Is IMHO the root cause, try enabling thumb for you DISTRO (set -march t=
o
> armv5te).
>
> We expect ARM_INSTRUCTION_SET =3D "thumb" for the tunes to be set to use
> -march=3Darm??t?. for compiler which in my mind is wrong constraint.
> semantically armv5te does not mean the instruction set used to
> generate code can only be thumb. It indicates that it can execute
> thumb code, so what ISA is used should not be tied to what -march is
> used.
>
> The spaghetti we have for arm tunes is incredibly hard to fathom. With
> gcc9 dropping all arches below armv5t means we need to rework these
> tunes for arm specifically for armv4 and armv5.
>
> >
> > On Wed, Jan 2, 2019 at 11:33 PM Matthew Stanger <
> matthew_stanger@trimble.com> wrote:
> >>>
> >>> yes that would be helpful. Since gcc has become stricter with option
> >>> checks, its possibly ending in some combination which either is inval=
id
> >>> or is wrongly computed by gcc from -mcpu
> >>
> >>
> >> ************************* GCC Config Output Below
> *************************
> >> This file contains any messages produced by compilers while
> >> running configure, to aid debugging if configure makes a mistake.
> >>
> >> It was created by GNU C Library configure (see version.h), which was
> >> generated by GNU Autoconf 2.69.  Invocation command line was
> >>
> >>   $ ../git/configure --host=3Darm-poky-linux-gnueabi --build=3Dx86_64-=
linux
> --prefix=3D/usr --disable-sanity-checks
> --with-headers=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-lin=
ux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot/usr/include
> --enable-hacker-mode
> >>
> >> ## --------- ##
> >> ## Platform. ##
> >> ## --------- ##
> >>
> >> hostname =3D matt-dev
> >> uname -m =3D x86_64
> >> uname -r =3D 4.18.0-13-generic
> >> uname -s =3D Linux
> >> uname -v =3D #14-Ubuntu SMP Wed Dec 5 09:04:24 UTC 2018
> >>
> >> /usr/bin/uname -p =3D unknown
> >> /bin/uname -X     =3D unknown
> >>
> >> /bin/arch              =3D unknown
> >> /usr/bin/arch -k       =3D unknown
> >> /usr/convex/getsysinfo =3D unknown
> >> /usr/bin/hostinfo      =3D unknown
> >> /bin/machine           =3D unknown
> >> /usr/bin/oslevel       =3D unknown
> >> /bin/universe          =3D unknown
> >>
> >> PATH:
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.gcc-cr=
oss-initial-arm
> >> PATH:
> /home/matt/renew_thud/build/tmp/sysroots-uninative/x86_64-linux/usr/bin
> >> PATH: /home/matt/renew_thud/oe/poky/scripts
> >> PATH:
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi
> >> PATH:
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/recipe-sysroot/usr/bin/crossscripts
> >> PATH:
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/recipe-sysroot-native/usr/sbin
> >> PATH:
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/recipe-sysroot-native/usr/bin
> >> PATH:
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/recipe-sysroot-native/sbin
> >> PATH:
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/recipe-sysroot-native/bin
> >> PATH: /home/matt/renew_thud/oe/poky/bitbake/bin
> >> PATH: /home/matt/renew_thud/build/tmp/hosttools
> >>
> >>
> >> ## ----------- ##
> >> ## Core tests. ##
> >> ## ----------- ##
> >>
> >> configure:2213: checking build system type
> >> configure:2227: result: x86_64-pc-linux-gnu
> >> configure:2247: checking host system type
> >> configure:2260: result: arm-poky-linux-gnueabi
> >> configure:2289: checking for arm-poky-linux-gnueabi-gcc
> >> configure:2316: result: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -m=
arm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> >> configure:2585: checking for C compiler version
> >> configure:2594: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> --version >&5
> >> arm-poky-linux-gnueabi-gcc (GCC) 8.2.0
> >> Copyright (C) 2018 Free Software Foundation, Inc.
> >> This is free software; see the source for copying conditions.  There i=
s
> NO
> >> warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR
> PURPOSE.
> >>
> >> configure:2605: $? =3D 0
> >> configure:2594: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -v >&5
> >> Using built-in specs.
> >> COLLECT_GCC=3Darm-poky-linux-gnueabi-gcc
> >>
> COLLECT_LTO_WRAPPER=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-pok=
y-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-pok=
y-linux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueabi.=
gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/lto-wrapper
> >> Target: arm-poky-linux-gnueabi
> >> Configured with:
> ../../../../../../work-shared/gcc-8.2.0-r0/gcc-8.2.0/configure
> --build=3Dx86_64-linux --host=3Dx86_64-linux --target=3Darm-poky-linux-gn=
ueabi
> --prefix=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/gcc-cross-in=
itial-arm/8.2.0-r0/recipe-sysroot-native/usr
> --exec_prefix=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/gcc-cro=
ss-initial-arm/8.2.0-r0/recipe-sysroot-native/usr
> --bindir=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/gcc-cross-in=
itial-arm/8.2.0-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.gcc=
-cross-initial-arm
> --sbindir=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/gcc-cross-i=
nitial-arm/8.2.0-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.gc=
c-cross-initial-arm
> --libexecdir=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/gcc-cros=
s-initial-arm/8.2.0-r0/recipe-sysroot-native/usr/libexec/arm-poky-linux-gnu=
eabi.gcc-cross-initial-arm
> --datadir=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/gcc-cross-i=
nitial-arm/8.2.0-r0/recipe-sysroot-native/usr/share
> --sysconfdir=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/gcc-cros=
s-initial-arm/8.2.0-r0/recipe-sysroot-native/etc
> --sharedstatedir=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/gcc-=
cross-initial-arm/8.2.0-r0/recipe-sysroot-native/com
> --localstatedir=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/gcc-c=
ross-initial-arm/8.2.0-r0/recipe-sysroot-native/var
> --libdir=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/gcc-cross-in=
itial-arm/8.2.0-r0/recipe-sysroot-native/usr/lib/arm-poky-linux-gnueabi.gcc=
-cross-initial-arm
> --includedir=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/gcc-cros=
s-initial-arm/8.2.0-r0/recipe-sysroot-native/usr/include
> --oldincludedir=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/gcc-c=
ross-initial-arm/8.2.0-r0/recipe-sysroot-native/usr/include
> --infodir=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/gcc-cross-i=
nitial-arm/8.2.0-r0/recipe-sysroot-native/usr/share/info
> --mandir=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/gcc-cross-in=
itial-arm/8.2.0-r0/recipe-sysroot-native/usr/share/man
> --disable-silent-rules --disable-dependency-tracking
> --with-libtool-sysroot=3D/home/matt/renew_thud/build/tmp/work/x86_64-linu=
x/gcc-cross-initial-arm/8.2.0-r0/recipe-sysroot-native
> --with-newlib --without-headers --disable-shared --disable-threads
> --disable-multilib --disable-__cxa_atexit --enable-languages=3Dc
> --program-prefix=3Darm-poky-linux-gnueabi- --with-sysroot=3D/not/exist
> --with-build-sysroot=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/=
gcc-cross-initial-arm/8.2.0-r0/recipe-sysroot
> --disable-libmudflap --disable-libgomp --disable-libitm
> --disable-libquadmath --with-system-zlib --disable-lto --disable-plugin
> --enable-linker-build-id --enable-decimal-float=3Dno --without-isl
> --disable-libssp --with-native-system-header-dir=3D/usr/include
> --disable-static --disable-nls --enable-initfini-array
> >> Thread model: single
> >> gcc version 8.2.0 (GCC)
> >> configure:2605: $? =3D 0
> >> configure:2594: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -V >&5
> >> arm-poky-linux-gnueabi-gcc: error: unrecognized command line option '-=
V'
> >> arm-poky-linux-gnueabi-gcc: fatal error: no input files
> >> compilation terminated.
> >> configure:2605: $? =3D 1
> >> configure:2594: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -qversion >&5
> >> arm-poky-linux-gnueabi-gcc: error: unrecognized command line option
> '-qversion'; did you mean '--version'?
> >> arm-poky-linux-gnueabi-gcc: fatal error: no input files
> >> compilation terminated.
> >> configure:2605: $? =3D 1
> >> configure:2610: checking for suffix of object files
> >> configure:2632: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -c  -O2 -pipe -g -feliminate-unused-debug-types
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0=3D/usr/src/debug/glibc-initial/2.28-r0
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=3D
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D
>  conftest.c >&5
> >> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e
> switch
> >> configure:2636: $? =3D 0
> >> configure:2657: result: o
> >> configure:2661: checking whether we are using the GNU C compiler
> >> configure:2680: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -c  -O2 -pipe -g -feliminate-unused-debug-types
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0=3D/usr/src/debug/glibc-initial/2.28-r0
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=3D
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D
>  conftest.c >&5
> >> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e
> switch
> >> configure:2680: $? =3D 0
> >> configure:2689: result: yes
> >> configure:2698: checking whether arm-poky-linux-gnueabi-gcc
> -march=3Darmv5e -marm -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> accepts -g
> >> configure:2718: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -c -g  conftest.c >&5
> >> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e
> switch
> >> configure:2718: $? =3D 0
> >> configure: failed program was:
> >> | /* confdefs.h */
> >> | #define PACKAGE_NAME "GNU C Library"
> >> | #define PACKAGE_TARNAME "glibc"
> >> | #define PACKAGE_VERSION "(see version.h)"
> >> | #define PACKAGE_STRING "GNU C Library (see version.h)"
> >> | #define PACKAGE_BUGREPORT "https://sourceware.org/bugzilla/"
> >> | #define PACKAGE_URL "http://www.gnu.org/software/glibc/"
> >> | #define PKGVERSION "(GNU libc) "
> >> | #define REPORT_BUGS_TO "<http://www.gnu.org/software/libc/bugs.html>=
"
> >> | /* end confdefs.h.  */
> >> |
> >> | int
> >> | main ()
> >> | {
> >> |
> >> |   ;
> >> |   return 0;
> >> | }
> >> configure:2733: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -c   conftest.c >&5
> >> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e
> switch
> >> configure:2733: $? =3D 0
> >> configure: failed program was:
> >> | /* confdefs.h */
> >> | #define PACKAGE_NAME "GNU C Library"
> >> | #define PACKAGE_TARNAME "glibc"
> >> | #define PACKAGE_VERSION "(see version.h)"
> >> | #define PACKAGE_STRING "GNU C Library (see version.h)"
> >> | #define PACKAGE_BUGREPORT "https://sourceware.org/bugzilla/"
> >> | #define PACKAGE_URL "http://www.gnu.org/software/glibc/"
> >> | #define PKGVERSION "(GNU libc) "
> >> | #define REPORT_BUGS_TO "<http://www.gnu.org/software/libc/bugs.html>=
"
> >> | /* end confdefs.h.  */
> >> |
> >> | int
> >> | main ()
> >> | {
> >> |
> >> |   ;
> >> |   return 0;
> >> | }
> >> configure:2749: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -c -g  conftest.c >&5
> >> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e
> switch
> >> configure:2749: $? =3D 0
> >> configure:2759: result: yes
> >> configure:2788: checking for gcc
> >> configure:2815: result: gcc
> >> configure:2839: checking for arm-poky-linux-gnueabi-readelf
> >> configure:2866: result: arm-poky-linux-gnueabi-readelf
> >> configure:3042: checking for C++ compiler version
> >> configure:3051: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> --version >&5
> >> ../git/configure: line 3053: arm-poky-linux-gnueabi-g++: command not
> found
> >> configure:3062: $? =3D 127
> >> configure:3051: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -v >&5
> >> ../git/configure: line 3053: arm-poky-linux-gnueabi-g++: command not
> found
> >> configure:3062: $? =3D 127
> >> configure:3051: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -V >&5
> >> ../git/configure: line 3053: arm-poky-linux-gnueabi-g++: command not
> found
> >> configure:3062: $? =3D 127
> >> configure:3051: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -qversion >&5
> >> ../git/configure: line 3053: arm-poky-linux-gnueabi-g++: command not
> found
> >> configure:3062: $? =3D 127
> >> configure:3066: checking whether we are using the GNU C++ compiler
> >> configure:3085: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -c  -O2 -pipe -g -feliminate-unused-debug-types
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0=3D/usr/src/debug/glibc-initial/2.28-r0
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=3D
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D
> -fvisibility-inlines-hidden  conftest.cpp >&5
> >> ../git/configure: line 1633: arm-poky-linux-gnueabi-g++: command not
> found
> >> configure:3085: $? =3D 127
> >> configure: failed program was:
> >> | /* confdefs.h */
> >> | #define PACKAGE_NAME "GNU C Library"
> >> | #define PACKAGE_TARNAME "glibc"
> >> | #define PACKAGE_VERSION "(see version.h)"
> >> | #define PACKAGE_STRING "GNU C Library (see version.h)"
> >> | #define PACKAGE_BUGREPORT "https://sourceware.org/bugzilla/"
> >> | #define PACKAGE_URL "http://www.gnu.org/software/glibc/"
> >> | #define PKGVERSION "(GNU libc) "
> >> | #define REPORT_BUGS_TO "<http://www.gnu.org/software/libc/bugs.html>=
"
> >> | /* end confdefs.h.  */
> >> |
> >> | int
> >> | main ()
> >> | {
> >> | #ifndef __GNUC__
> >> |        choke me
> >> | #endif
> >> |
> >> |   ;
> >> |   return 0;
> >> | }
> >> configure:3094: result: no
> >> configure:3103: checking whether arm-poky-linux-gnueabi-g++
> -march=3Darmv5e -marm -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> accepts -g
> >> configure:3123: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -c -g  conftest.cpp >&5
> >> ../git/configure: line 1633: arm-poky-linux-gnueabi-g++: command not
> found
> >> configure:3123: $? =3D 127
> >> configure: failed program was:
> >> | /* confdefs.h */
> >> | #define PACKAGE_NAME "GNU C Library"
> >> | #define PACKAGE_TARNAME "glibc"
> >> | #define PACKAGE_VERSION "(see version.h)"
> >> | #define PACKAGE_STRING "GNU C Library (see version.h)"
> >> | #define PACKAGE_BUGREPORT "https://sourceware.org/bugzilla/"
> >> | #define PACKAGE_URL "http://www.gnu.org/software/glibc/"
> >> | #define PKGVERSION "(GNU libc) "
> >> | #define REPORT_BUGS_TO "<http://www.gnu.org/software/libc/bugs.html>=
"
> >> | /* end confdefs.h.  */
> >> |
> >> | int
> >> | main ()
> >> | {
> >> |
> >> |   ;
> >> |   return 0;
> >> | }
> >> configure:3138: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -c   conftest.cpp >&5
> >> ../git/configure: line 1633: arm-poky-linux-gnueabi-g++: command not
> found
> >> configure:3138: $? =3D 127
> >> configure: failed program was:
> >> | /* confdefs.h */
> >> | #define PACKAGE_NAME "GNU C Library"
> >> | #define PACKAGE_TARNAME "glibc"
> >> | #define PACKAGE_VERSION "(see version.h)"
> >> | #define PACKAGE_STRING "GNU C Library (see version.h)"
> >> | #define PACKAGE_BUGREPORT "https://sourceware.org/bugzilla/"
> >> | #define PACKAGE_URL "http://www.gnu.org/software/glibc/"
> >> | #define PKGVERSION "(GNU libc) "
> >> | #define REPORT_BUGS_TO "<http://www.gnu.org/software/libc/bugs.html>=
"
> >> | /* end confdefs.h.  */
> >> |
> >> | int
> >> | main ()
> >> | {
> >> |
> >> |   ;
> >> |   return 0;
> >> | }
> >> configure:3154: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -c -g  conftest.cpp >&5
> >> ../git/configure: line 1633: arm-poky-linux-gnueabi-g++: command not
> found
> >> configure:3154: $? =3D 127
> >> configure: failed program was:
> >> | /* confdefs.h */
> >> | #define PACKAGE_NAME "GNU C Library"
> >> | #define PACKAGE_TARNAME "glibc"
> >> | #define PACKAGE_VERSION "(see version.h)"
> >> | #define PACKAGE_STRING "GNU C Library (see version.h)"
> >> | #define PACKAGE_BUGREPORT "https://sourceware.org/bugzilla/"
> >> | #define PACKAGE_URL "http://www.gnu.org/software/glibc/"
> >> | #define PKGVERSION "(GNU libc) "
> >> | #define REPORT_BUGS_TO "<http://www.gnu.org/software/libc/bugs.html>=
"
> >> | /* end confdefs.h.  */
> >> |
> >> | int
> >> | main ()
> >> | {
> >> |
> >> |   ;
> >> |   return 0;
> >> | }
> >> configure:3164: result: no
> >> configure:3189: checking whether arm-poky-linux-gnueabi-g++
> -march=3Darmv5e -marm -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> can link programs
> >> configure:3212: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -o conftest  -O2 -pipe -g -feliminate-unused-debug-types
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0=3D/usr/src/debug/glibc-initial/2.28-r0
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=3D
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D
> -fvisibility-inlines-hidden  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-need=
ed
> -Wl,-z,relro,-z,now conftest.cpp  >&5
> >> ../git/configure: line 1671: arm-poky-linux-gnueabi-g++: command not
> found
> >> configure:3212: $? =3D 127
> >> configure: failed program was:
> >> | /* confdefs.h */
> >> | #define PACKAGE_NAME "GNU C Library"
> >> | #define PACKAGE_TARNAME "glibc"
> >> | #define PACKAGE_VERSION "(see version.h)"
> >> | #define PACKAGE_STRING "GNU C Library (see version.h)"
> >> | #define PACKAGE_BUGREPORT "https://sourceware.org/bugzilla/"
> >> | #define PACKAGE_URL "http://www.gnu.org/software/glibc/"
> >> | #define PKGVERSION "(GNU libc) "
> >> | #define REPORT_BUGS_TO "<http://www.gnu.org/software/libc/bugs.html>=
"
> >> | /* end confdefs.h.  */
> >> |
> >> | int
> >> | main ()
> >> | {
> >> |
> >> |   ;
> >> |   return 0;
> >> | }
> >> configure:3235: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -o conftest  -O2 -pipe -g -feliminate-unused-debug-types
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0=3D/usr/src/debug/glibc-initial/2.28-r0
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=3D
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D
> -fvisibility-inlines-hidden  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-need=
ed
> -Wl,-z,relro,-z,now -static conftest.cpp  >&5
> >> ../git/configure: line 1671: arm-poky-linux-gnueabi-g++: command not
> found
> >> configure:3235: $? =3D 127
> >> configure: failed program was:
> >> | /* confdefs.h */
> >> | #define PACKAGE_NAME "GNU C Library"
> >> | #define PACKAGE_TARNAME "glibc"
> >> | #define PACKAGE_VERSION "(see version.h)"
> >> | #define PACKAGE_STRING "GNU C Library (see version.h)"
> >> | #define PACKAGE_BUGREPORT "https://sourceware.org/bugzilla/"
> >> | #define PACKAGE_URL "http://www.gnu.org/software/glibc/"
> >> | #define PKGVERSION "(GNU libc) "
> >> | #define REPORT_BUGS_TO "<http://www.gnu.org/software/libc/bugs.html>=
"
> >> | /* end confdefs.h.  */
> >> |
> >> | #include <iostream>
> >> |
> >> | int
> >> | main()
> >> | {
> >> |   std::cout << "Hello, world!";
> >> |   return 0;
> >> | }
> >> |
> >> configure:3250: result: no
> >> configure:3817: checking for sysdeps preconfigure fragments
> >> configure:49: WARNING: arm/preconfigure: Did not find ARM architecture
> type; using default
> >> configure:3824: result:
> >> configure:3854: checking for use of fpu sysdeps directories
> >> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e
> switch
> >> conftest.c:4:3: error: #error "no hardware floating point"
> >>  # error "no hardware floating point"
> >>    ^~~~~
> >> configure:3873: result: no
> >> configure:3877: checking for -fstack-protector
> >> configure:3883: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -O2 -pipe -g -feliminate-unused-debug-types
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0=3D/usr/src/debug/glibc-initial/2.28-r0
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=3D
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D
> -fno-unwind-tables  -Werror -fstack-protector -xc /dev/null -S -o /dev/nu=
ll
> >> cc1: error: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e s=
witch
> [-Werror]
> >> cc1: all warnings being treated as errors
> >> configure:3886: $? =3D 1
> >> configure:3894: result: no
> >> configure:3897: checking for -fstack-protector-strong
> >> configure:3903: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -O2 -pipe -g -feliminate-unused-debug-types
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0=3D/usr/src/debug/glibc-initial/2.28-r0
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=3D
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D
> -fno-unwind-tables  -Werror -fstack-protector-strong -xc /dev/null -S -o
> /dev/null
> >> cc1: error: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e s=
witch
> [-Werror]
> >> cc1: all warnings being treated as errors
> >> configure:3906: $? =3D 1
> >> configure:3914: result: no
> >> configure:3917: checking for -fstack-protector-all
> >> configure:3923: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -O2 -pipe -g -feliminate-unused-debug-types
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0=3D/usr/src/debug/glibc-initial/2.28-r0
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=3D
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D
> -fno-unwind-tables  -Werror -fstack-protector-all -xc /dev/null -S -o
> /dev/null
> >> cc1: error: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e s=
witch
> [-Werror]
> >> cc1: all warnings being treated as errors
> >> configure:3926: $? =3D 1
> >> configure:3934: result: no
> >> configure:3977: checking for assembler and linker STT_GNU_IFUNC suppor=
t
> >> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e
> switch
> >>
> >> Relocation section '.rel.dyn' at offset 0xd8 contains 1 entry:
> >>  Offset     Info    Type            Sym.Value  Sym. Name
> >> 00020ffc  000000a0 R_ARM_IRELATIVE
> >> configure:4008: result: yes
> >> configure:4012: checking for gcc attribute ifunc support
> >> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e
> switch
> >> configure:4038: result: yes
> >> configure:4042: checking if compiler warns about alias for function
> with incompatible types
> >> cc1: error: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e s=
witch
> [-Werror]
> >> conftest.c:9:34: error: 'foo_alias' alias between functions of
> incompatible types 'int(const void *, int)' and 'int (*(void))(const void
> *, int)' [-Werror=3Dattribute-alias]
> >>  extern __typeof (__redirect_foo) foo_alias __attribute__ ((alias
> ("foo")));
> >>                                   ^~~~~~~~~
> >> conftest.c:4:28: note: aliased declaration here
> >>  __typeof (__redirect_foo) *foo_impl (void)
> >>                             ^~~~~~~~
> >> cc1: all warnings being treated as errors
> >> configure:4064: result: yes
> >> configure:4102: checking sysdep dirs
> >> configure:4299: result: sysdeps/generic
> >> configure:4319: checking for a BSD-compatible install
> >> configure:4387: result:
> /home/matt/renew_thud/build/tmp/hosttools/install -c
> >> configure:4402: checking whether ln -s works
> >> configure:4406: result: yes
> >> configure:4432: checking whether
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.gcc-cr=
oss-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-initial-arm/=
gcc/arm-poky-linux-gnueabi/8.2.0/as
> is GNU as
> >> configure:4446: result: yes
> >> configure:4451: checking whether
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.gcc-cr=
oss-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-initial-arm/=
gcc/arm-poky-linux-gnueabi/8.2.0/ld
> is GNU ld
> >> configure:4465: result: yes
> >> configure:4475: checking for
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.gcc-cr=
oss-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-initial-arm/=
gcc/arm-poky-linux-gnueabi/8.2.0/as
> >> configure:4502: result:
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.gcc-cr=
oss-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-initial-arm/=
gcc/arm-poky-linux-gnueabi/8.2.0/as
> >> configure:4517: checking version of
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.gcc-cr=
oss-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-initial-arm/=
gcc/arm-poky-linux-gnueabi/8.2.0/as
> >> configure:4527: result: 2.31.1.20180818, ok
> >> configure:4605: checking for
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.gcc-cr=
oss-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-initial-arm/=
gcc/arm-poky-linux-gnueabi/8.2.0/ld
> >> configure:4632: result:
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.gcc-cr=
oss-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-initial-arm/=
gcc/arm-poky-linux-gnueabi/8.2.0/ld
> >> configure:4647: checking version of
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.gcc-cr=
oss-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-initial-arm/=
gcc/arm-poky-linux-gnueabi/8.2.0/ld
> >> configure:4657: result: 2.31.1.20180818, ok
> >> configure:4672: checking for gnumake
> >> configure:4699: result: make
> >> configure:4714: checking version of make
> >> configure:4724: result: 4.2.1, ok
> >> configure:4736: checking for gnumsgfmt
> >> configure:4766: result: no
> >> configure:4736: checking for gmsgfmt
> >> configure:4766: result: no
> >> configure:4736: checking for msgfmt
> >> configure:4766: result: no
> >> configure:4799: checking for makeinfo
> >> configure:4815: found /home/matt/renew_thud/build/tmp/hosttools/makein=
fo
> >> configure:4826: result: makeinfo
> >> configure:4841: checking version of makeinfo
> >> configure:4851: result: 6.5, ok
> >> configure:4862: checking for sed
> >> configure:4878: found /home/matt/renew_thud/build/tmp/hosttools/sed
> >> configure:4889: result: sed
> >> configure:4904: checking version of sed
> >> configure:4914: result: 4.5, ok
> >> configure:4925: checking for gawk
> >> configure:4941: found /home/matt/renew_thud/build/tmp/hosttools/gawk
> >> configure:4952: result: gawk
> >> configure:4967: checking version of gawk
> >> configure:4977: result: 4.1.4, ok
> >> configure:4988: checking for bison
> >> configure:5004: found
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/recipe-sysroot-native/usr/bin/bison
> >> configure:5015: result: bison
> >> configure:5030: checking version of bison
> >> configure:5040: result: 3.0.4, ok
> >> configure:5048: checking if arm-poky-linux-gnueabi-gcc  -march=3Darmv5=
e
> -marm -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> is sufficient to build libc
> >> configure:5068: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -c  -O2 -pipe -g -feliminate-unused-debug-types
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0=3D/usr/src/debug/glibc-initial/2.28-r0
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=3D
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D
> -fno-unwind-tables  conftest.c >&5
> >> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e
> switch
> >> configure:5068: $? =3D 0
> >> configure:5075: result: yes
> >> configure:5084: checking for arm-poky-linux-gnueabi-nm
> >> configure:5111: result: arm-poky-linux-gnueabi-nm
> >> configure:5249: checking for python3
> >> configure:5265: found /home/matt/renew_thud/build/tmp/hosttools/python=
3
> >> configure:5276: result: python3
> >> configure:5307: WARNING:
> >> *** These auxiliary programs are missing or incompatible versions:
> msgfmt
> >> *** some features or tests will be disabled.
> >> *** Check the INSTALL file for required versions.
> >> configure:5358: checking LD_LIBRARY_PATH variable
> >> configure:5368: result: ok
> >> configure:5379: checking for bash
> >> configure:5397: found /home/matt/renew_thud/build/tmp/hosttools/bash
> >> configure:5410: result: /home/matt/renew_thud/build/tmp/hosttools/bash
> >> configure:5421: checking for perl
> >> configure:5439: found /home/matt/renew_thud/build/tmp/hosttools/perl
> >> configure:5452: result: /home/matt/renew_thud/build/tmp/hosttools/perl
> >> configure:5466: checking for install-info
> >> configure:5485: found /usr/bin/install-info
> >> configure:5498: result: /usr/bin/install-info
> >> configure:5507: checking for .set assembler directive
> >> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e
> switch
> >> configure:5533: result: yes
> >> configure:5540: checking linker support for protected data symbol
> >> configure:5550: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -nostdlib -nostartfiles -fno-stack-protector -fPIC -shared conftest.c -o
> conftest.so
> >> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e
> switch
> >> configure:5553: $? =3D 0
> >> configure:5560: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -nostdlib -nostartfiles -fno-stack-protector conftest.c -o conftest
> conftest.so
> >> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e
> switch
> >>
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.gcc-cr=
oss-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-initial-arm/=
gcc/arm-poky-linux-gnueabi/8.2.0/ld:
> warning: cannot find entry symbol _start; defaulting to 00000000000101dc
> >> configure:5563: $? =3D 0
> >> configure:5571: result: yes
> >> configure:5575: checking linker support for INSERT in linker script
> >> configure:5593: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -nostdlib -nostartfiles -fno-stack-protector -fPIC -shared conftest.c
> -Wl,-T,conftest.t -o conftest.so
> >> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e
> switch
> >> configure:5596: $? =3D 0
> >> configure:5603: result: yes
> >> configure:5607: checking for broken __attribute__((alias()))
> >> configure:5622: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -Werror -S conftest.c -o conftest.s 1>&5
> >> cc1: error: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e s=
witch
> [-Werror]
> >> cc1: all warnings being treated as errors
> >> configure:5625: $? =3D 1
> >> configure:5635: result: yes
> >> configure:5638: error: working alias attribute support required
> >>
> >> ## ---------------- ##
> >> ## Cache variables. ##
> >> ## ---------------- ##
> >>
> >> ac_cv_build=3Dx86_64-pc-linux-gnu
> >> ac_cv_c_compiler_gnu=3Dyes
> >> ac_cv_cxx_compiler_gnu=3Dno
> >> ac_cv_env_CCC_set=3D
> >> ac_cv_env_CCC_value=3D
> >> ac_cv_env_CC_set=3Dset
> >> ac_cv_env_CC_value=3D'arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -mar=
m
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot'
> >> ac_cv_env_CFLAGS_set=3Dset
> >> ac_cv_env_CFLAGS_value=3D' -O2 -pipe -g -feliminate-unused-debug-types
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0=3D/usr/src/debug/glibc-initial/2.28-r0
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=3D
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D
> '
> >> ac_cv_env_CPPFLAGS_set=3Dset
> >> ac_cv_env_CPPFLAGS_value=3D
> >> ac_cv_env_CPP_set=3Dset
> >> ac_cv_env_CPP_value=3D'arm-poky-linux-gnueabi-gcc -E
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -march=3Darmv5e -marm -mcpu=3Darm926ej-s '
> >> ac_cv_env_CXXFLAGS_set=3Dset
> >> ac_cv_env_CXXFLAGS_value=3D' -O2 -pipe -g -feliminate-unused-debug-typ=
es
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0=3D/usr/src/debug/glibc-initial/2.28-r0
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=3D
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D
> -fvisibility-inlines-hidden'
> >> ac_cv_env_CXX_set=3Dset
> >> ac_cv_env_CXX_value=3D'arm-poky-linux-gnueabi-g++  -march=3Darmv5e -ma=
rm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot'
> >> ac_cv_env_LDFLAGS_set=3Dset
> >> ac_cv_env_LDFLAGS_value=3D'-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-nee=
ded
> -Wl,-z,relro,-z,now'
> >> ac_cv_env_LIBS_set=3D
> >> ac_cv_env_LIBS_value=3D
> >> ac_cv_env_build_alias_set=3Dset
> >> ac_cv_env_build_alias_value=3Dx86_64-linux
> >> ac_cv_env_host_alias_set=3Dset
> >> ac_cv_env_host_alias_value=3Darm-poky-linux-gnueabi
> >> ac_cv_env_target_alias_set=3D
> >> ac_cv_env_target_alias_value=3D
> >> ac_cv_host=3Darm-poky-linux-gnueabi
> >> ac_cv_objext=3Do
> >> ac_cv_path_BASH_SHELL=3D/home/matt/renew_thud/build/tmp/hosttools/bash
> >> ac_cv_path_INSTALL_INFO=3D/usr/bin/install-info
> >> ac_cv_path_PERL=3D/home/matt/renew_thud/build/tmp/hosttools/perl
> >> ac_cv_path_install=3D'/home/matt/renew_thud/build/tmp/hosttools/instal=
l
> -c'
> >>
> ac_cv_prog_AS=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linu=
x-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linu=
x-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cr=
oss-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/as
> >> ac_cv_prog_AWK=3Dgawk
> >> ac_cv_prog_BISON=3Dbison
> >> ac_cv_prog_BUILD_CC=3D'gcc '
> >> ac_cv_prog_CC=3D'arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot'
> >>
> ac_cv_prog_LD=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linu=
x-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linu=
x-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cr=
oss-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/ld
> >> ac_cv_prog_MAKE=3Dmake
> >> ac_cv_prog_MAKEINFO=3Dmakeinfo
> >> ac_cv_prog_NM=3Darm-poky-linux-gnueabi-nm
> >> ac_cv_prog_PYTHON_PROG=3Dpython3
> >> ac_cv_prog_READELF=3Darm-poky-linux-gnueabi-readelf
> >> ac_cv_prog_SED=3Dsed
> >> ac_cv_prog_cc_g=3Dyes
> >> ac_cv_prog_cxx_g=3Dno
> >> libc_cv_asm_set_directive=3Dyes
> >> libc_cv_broken_alias_attribute=3Dyes
> >> libc_cv_compiler_ok=3Dyes
> >> libc_cv_cxx_link_ok=3Dno
> >> libc_cv_gcc_incompatible_alias=3Dyes
> >> libc_cv_gcc_indirect_function=3Dyes
> >> libc_cv_insert=3Dyes
> >> libc_cv_ld_gnu_indirect_function=3Dyes
> >> libc_cv_nss_crypt=3Dno
> >> libc_cv_prog_as_gnu=3Dyes
> >> libc_cv_prog_ld_gnu=3Dyes
> >> libc_cv_protected_data=3Dyes
> >> libc_cv_ssp=3Dno
> >> libc_cv_ssp_all=3Dno
> >> libc_cv_ssp_strong=3Dno
> >> libc_cv_static_nss_crypt=3Dno
> >> libc_cv_with_fp=3Dno
> >> lt_cv_sys_lib_dlsearch_path_spec=3D'/usr/lib /lib'
> >>
> >> ## ----------------- ##
> >> ## Output variables. ##
> >> ## ----------------- ##
> >>
> >>
> AR=3D'/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/=
glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.=
gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-initia=
l-arm/gcc/arm-poky-linux-gnueabi/8.2.0/ar'
> >>
> AS=3D'/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/=
glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.=
gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-initia=
l-arm/gcc/arm-poky-linux-gnueabi/8.2.0/as'
> >> ASFLAGS_config=3D''
> >> AUTOCONF=3D'no'
> >> AWK=3D'gawk'
> >> BASH_SHELL=3D'/home/matt/renew_thud/build/tmp/hosttools/bash'
> >> BISON=3D'bison'
> >> BUILD_CC=3D'gcc '
> >> CC=3D'arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm -mcpu=3Darm926=
ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot'
> >> CFLAGS=3D' -O2 -pipe -g -feliminate-unused-debug-types
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0=3D/usr/src/debug/glibc-initial/2.28-r0
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=3D
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D
> -fno-unwind-tables'
> >> CPP=3D'arm-poky-linux-gnueabi-gcc -E
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -march=3Darmv5e -marm -mcpu=3Darm926ej-s '
> >> CPPFLAGS=3D''
> >> CPPUNDEFS=3D''
> >> CXX=3D''
> >> CXXFLAGS=3D' -O2 -pipe -g -feliminate-unused-debug-types
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0=3D/usr/src/debug/glibc-initial/2.28-r0
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=3D
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D
> -fvisibility-inlines-hidden'
> >> CXX_BITS_STD_ABS_H=3D''
> >> CXX_CMATH_HEADER=3D''
> >> CXX_CSTDLIB_HEADER=3D''
> >> CXX_SYSINCLUDES=3D''
> >> DEFINES=3D''
> >> DEFS=3D''
> >> ECHO_C=3D''
> >> ECHO_N=3D'-n'
> >> ECHO_T=3D''
> >> GPROF=3D'gprof'
> >> INSTALL_DATA=3D'${INSTALL} -m 644'
> >> INSTALL_INFO=3D'/usr/bin/install-info'
> >> INSTALL_PROGRAM=3D'${INSTALL}'
> >> INSTALL_SCRIPT=3D'${INSTALL}'
> >>
> LD=3D'/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/=
glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.=
gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-initia=
l-arm/gcc/arm-poky-linux-gnueabi/8.2.0/ld'
> >> LDFLAGS=3D'-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed
> -Wl,-z,relro,-z,now'
> >> LIBGD=3D''
> >> LIBOBJS=3D''
> >> LIBS=3D''
> >> LN_S=3D'ln -s'
> >> LTLIBOBJS=3D''
> >> MAKE=3D'make'
> >> MAKEINFO=3D'makeinfo'
> >> MSGFMT=3D':'
> >> NM=3D'arm-poky-linux-gnueabi-nm'
> >>
> OBJCOPY=3D'/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnu=
eabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnu=
eabi.gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-i=
nitial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/objcopy'
> >>
> OBJDUMP=3D'/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnu=
eabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnu=
eabi.gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-i=
nitial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/objdump'
> >> OBJEXT=3D'o'
> >> PACKAGE_BUGREPORT=3D'https://sourceware.org/bugzilla/'
> >> PACKAGE_NAME=3D'GNU C Library'
> >> PACKAGE_STRING=3D'GNU C Library (see version.h)'
> >> PACKAGE_TARNAME=3D'glibc'
> >> PACKAGE_URL=3D'http://www.gnu.org/software/glibc/'
> >> PACKAGE_VERSION=3D'(see version.h)'
> >> PATH_SEPARATOR=3D':'
> >> PERL=3D'/home/matt/renew_thud/build/tmp/hosttools/perl'
> >> PKGVERSION=3D'(GNU libc) '
> >> PKGVERSION_TEXI=3D'(GNU libc) '
> >> PYTHON=3D'python3 -B'
> >> PYTHON_PROG=3D'python3'
> >> READELF=3D'arm-poky-linux-gnueabi-readelf'
> >> RELEASE=3D''
> >> REPORT_BUGS_TEXI=3D'@uref{http://www.gnu.org/software/libc/bugs.html}'
> >> REPORT_BUGS_TO=3D'<http://www.gnu.org/software/libc/bugs.html>'
> >> SED=3D'sed'
> >> SHELL=3D'/bin/bash'
> >> SYSINCLUDES=3D'-nostdinc -isystem
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.gcc-cr=
oss-initial-arm/../../lib/arm-poky-linux-gnueabi.gcc-cross-initial-arm/gcc/=
arm-poky-linux-gnueabi/8.2.0/include
> -isystem
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.gcc-cr=
oss-initial-arm/../../lib/arm-poky-linux-gnueabi.gcc-cross-initial-arm/gcc/=
arm-poky-linux-gnueabi/8.2.0/include-fixed
> -isystem
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/recipe-sysroot/usr/include'
> >> VERSION=3D''
> >> ac_ct_CC=3D''
> >> ac_ct_CXX=3D''
> >> all_warnings=3D''
> >> base_machine=3D'arm'
> >> bindir=3D'${exec_prefix}/bin'
> >> bindnow=3D'no'
> >> build=3D'x86_64-pc-linux-gnu'
> >> build_alias=3D'x86_64-linux'
> >> build_cpu=3D'x86_64'
> >> build_crypt=3D'yes'
> >> build_nscd=3D'default'
> >> build_obsolete_nsl=3D'no'
> >> build_os=3D'linux-gnu'
> >> build_pt_chown=3D'no'
> >> build_vendor=3D'pc'
> >> cross_compiling=3D'yes'
> >> datadir=3D'${datarootdir}'
> >> datarootdir=3D'${prefix}/share'
> >> docdir=3D'${datarootdir}/doc/${PACKAGE_TARNAME}'
> >> dvidir=3D'${docdir}'
> >> enable_timezone_tools=3D'yes'
> >> enable_werror=3D'yes'
> >> exec_prefix=3D'NONE'
> >> experimental_malloc=3D'yes'
> >> fno_unit_at_a_time=3D''
> >> force_install=3D'yes'
> >> hardcoded_path_in_tests=3D'no'
> >> have_libaudit=3D''
> >> have_libcap=3D''
> >> have_selinux=3D''
> >> have_tunables=3D'yes'
> >> host=3D'arm-poky-linux-gnueabi'
> >> host_alias=3D'arm-poky-linux-gnueabi'
> >> host_cpu=3D'arm'
> >> host_os=3D'linux-gnueabi'
> >> host_vendor=3D'poky'
> >> htmldir=3D'${docdir}'
> >> includedir=3D'${prefix}/include'
> >> infodir=3D'${datarootdir}/info'
> >> ldd_rewrite_script=3D''
> >> libc_cv_cc_loop_to_function=3D''
> >> libc_cv_cc_nofma=3D''
> >> libc_cv_cc_pie_default=3D''
> >> libc_cv_cc_submachine=3D''
> >> libc_cv_cc_with_libunwind=3D''
> >> libc_cv_complocaledir=3D''
> >> libc_cv_cxx_thread_local=3D''
> >> libc_cv_fpie=3D''
> >> libc_cv_gcc_unwind_find_fde=3D''
> >> libc_cv_has_glob_dat=3D''
> >> libc_cv_hashstyle=3D''
> >> libc_cv_insert=3D'yes'
> >> libc_cv_localstatedir=3D''
> >> libc_cv_mtls_dialect_gnu2=3D''
> >> libc_cv_multidir=3D''
> >> libc_cv_nss_crypt=3D'no'
> >> libc_cv_output_format=3D''
> >> libc_cv_pic_default=3D''
> >> libc_cv_pie_default=3D''
> >> libc_cv_protected_data=3D'yes'
> >> libc_cv_rootsbindir=3D''
> >> libc_cv_rtlddir=3D''
> >> libc_cv_slibdir=3D''
> >> libc_cv_ssp=3D'no'
> >> libc_cv_static_nss_crypt=3D'no'
> >> libc_cv_sysconfdir=3D''
> >> libc_cv_with_fp=3D'no'
> >> libc_cv_z_combreloc=3D''
> >> libc_cv_z_execstack=3D''
> >> libc_extra_cflags=3D''
> >> libc_extra_cppflags=3D''
> >> libdir=3D'${exec_prefix}/lib'
> >> libexecdir=3D'${exec_prefix}/libexec'
> >> link_obsolete_rpc=3D'no'
> >> localedir=3D'${datarootdir}/locale'
> >> localstatedir=3D'${prefix}/var'
> >> mach_interface_list=3D''
> >> mandir=3D'${datarootdir}/man'
> >> multi_arch=3D'no'
> >> no_stack_protector=3D''
> >> oldincludedir=3D'/usr/include'
> >> pdfdir=3D'${docdir}'
> >> prefix=3D'/usr'
> >> profile=3D'no'
> >> program_transform_name=3D's,x,x,'
> >> psdir=3D'${docdir}'
> >> sbindir=3D'${exec_prefix}/sbin'
> >> shared=3D'yes'
> >> sharedstatedir=3D'${prefix}/com'
> >> stack_protector=3D'-fno-stack-protector'
> >> static=3D''
> >> static_nss=3D'no'
> >> subdirs=3D' '
> >> submachine=3D''
> >> sysconfdir=3D'${prefix}/etc'
> >>
> sysheaders=3D'/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-=
gnueabi/glibc-initial/2.28-r0/recipe-sysroot/usr/include'
> >> sysnames=3D' sysdeps/unix/sysv/linux/arm sysdeps/arm/nptl
> sysdeps/unix/sysv/linux sysdeps/nptl sysdeps/pthread sysdeps/gnu
> sysdeps/unix/inet sysdeps/unix/sysv sysdeps/unix/arm sysdeps/unix
> sysdeps/posix sysdeps/arm/nofpu sysdeps/ieee754/soft-fp sysdeps/arm
> sysdeps/wordsize-32 sysdeps/ieee754/flt-32 sysdeps/ieee754/dbl-64
> sysdeps/ieee754 sysdeps/generic'
> >> target_alias=3D''
> >> use_default_link=3D'default'
> >> use_ldconfig=3D''
> >> use_nscd=3D'yes'
> >>
> >> ## ----------- ##
> >> ## confdefs.h. ##
> >> ## ----------- ##
> >>
> >> /* confdefs.h */
> >> #define PACKAGE_NAME "GNU C Library"
> >> #define PACKAGE_TARNAME "glibc"
> >> #define PACKAGE_VERSION "(see version.h)"
> >> #define PACKAGE_STRING "GNU C Library (see version.h)"
> >> #define PACKAGE_BUGREPORT "https://sourceware.org/bugzilla/"
> >> #define PACKAGE_URL "http://www.gnu.org/software/glibc/"
> >> #define PKGVERSION "(GNU libc) "
> >> #define REPORT_BUGS_TO "<http://www.gnu.org/software/libc/bugs.html>"
> >> #define HAVE_TUNABLES 1
> >> #define STACK_PROTECTOR_LEVEL 0
> >> #define HAVE_ASM_SET_DIRECTIVE 1
> >>
> >> configure: exit 1
> >>
> >>
> >> On Wed, Jan 2, 2019 at 3:19 PM Khem Raj <raj.khem@gmail.com> wrote:
> >>>
> >>> On Wed, Jan 2, 2019 at 12:37 PM Matthew Stanger
> >>> <matthew_stanger@trimble.com> wrote:
> >>> >
> >>> > Hi,
> >>> >
> >>> > I'm getting a build failure under Thud when trying to use the
> >>> > following tune in my machine.conf:
> >>> > #at91sam9.inc is from meta-atmel - at91sam9263 is ARM target
> >>> > require conf/machine/include/at91sam9.inc
> >>> > DEFAULTTUNE =3D "arm926ejs"
> >>> >
> >>> >
> >>> > When doing a fresh build 'glibc-initial' config stage fail's with:
> >>> > | checking for broken __attribute__((alias()))... yes
> >>> > | configure: error: working alias attribute support required
> >>> > | WARNING: exit code 1 from a shell command.
> >>> > | ERROR: Function failed: do_configure (log file is located at
> >>> >
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/temp/log.do_configure.1177)
> >>> > ERROR: Task
> (/home/matt/renew_thud/build/../oe/poky/meta/recipes-core/glibc/glibc-ini=
tial_2.28.bb:
> do_configure)
> >>> > failed with exit code '1'
> >>> > NOTE: Tasks Summary: Attempted 2173 tasks of which 0 didn't need to
> be
> >>> > rerun and 1 failed.
> >>> >
> >>> > Summary: 1 task failed:
> >>> >
>  /home/matt/renew_thud/build/../oe/poky/meta/recipes-core/glibc/glibc-ini=
tial_2.28.bb:
> do_configure
> >>> >
> >>> > Can give follow on config.log's and such as required.
> >>>
> >>> yes that would be helpful. Since gcc has become stricter with option
> >>> checks, its possibly ending in some combination which either is inval=
id
> >>> or is wrongly computed by gcc from -mcpu
> >>>
> >>> >
> >>> > If I edit 'poky/meta/conf/machine/include/tune-arm926ejs.inc' to
> >>> > change the '-mcpu' back to 'mtune'(commit f29d642c) then glibc buil=
ds
> >>> > fine. GCC tuning is totally outside my expertise so I'm hoping
> someone
> >>> > can confirm if '-mcpu' is really desired over '-mtune'? And also if
> >>> > this look like a Poky issue or something else?
> >>> >
> >>> > Cheers,
> >>> > Matt
> >>> > --
> >>> > _______________________________________________
> >>> > poky mailing list
> >>> > poky@yoctoproject.org
> >>> > https://lists.yoctoproject.org/listinfo/poky
> >>
> >> --
> >> _______________________________________________
> >> poky mailing list
> >> poky@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/poky
>

--000000000000665182057e915e02
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">Try something like this</blockquote><div>Yes the patch works, it=
 gets a double &#39;-march&#39; passed in but the &#39;te&#39; seems to ove=
rride since it&#39;s coming after. ie.</div><div>configure:2316: result: ar=
m-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv5e -marm -march=3Darmv5te -mcpu=
=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926=
ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=C2=A0</div><di=
v>There is no more warning in the logs as Martian pointed out.</div><div><b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">We expect ARM_INS=
TRUCTION_SET =3D &quot;thumb&quot; for the tunes to be set to use<br>-march=
=3Darm??t?. for compiler which in my mind is wrong constraint.<br>semantica=
lly armv5te does not mean the instruction set used to<br>generate code can =
only be thumb. It indicates that it can execute<br>thumb code, so what ISA =
is used should not be tied to what -march is<br>used.=C2=A0=C2=A0</blockquo=
te><div>Yes this is how I understand it &amp; I&#39;m not intending to use =
the 16 bit Thumb instruction set. I want the 32-bit ARM instruction&#39;s. =
This seems correct since you can see the &#39;-marm&#39; flag being used no=
t the &#39;-mthumb&#39; flag. The IPK&#39;s are still being build as &#39;a=
rm926ejse&#39; not &#39;te&#39; which further makes=C2=A0sense. I think I&#=
39;m good to go here on my end but let me know if you want me to try anythi=
ng else out.=C2=A0</div><div><br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">The spaghetti we have for arm tunes is incredibly hard to fat=
hom. With<br>gcc9 dropping all arches below armv5t means we need to rework =
these<br>tunes for arm specifically for armv4 and armv5.=C2=A0=C2=A0</block=
quote><div>Good riddance I&#39;d say. I&#39;ll take anything I can to pitch=
 the idea of using hardware build sometime in a modern day.</div></div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Wed, Jan 2, 2019 at 11=
:01 PM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>On Wed, Jan 2, 2019 at 2:42 PM Martin Jansa &lt;<a href=3D"mailto:martin.j=
ansa@gmail.com" target=3D"_blank">martin.jansa@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e=
 switch<br>
&gt;<br>
&gt; Is IMHO the root cause, try enabling thumb for you DISTRO (set -march =
to armv5te).<br>
<br>
We expect ARM_INSTRUCTION_SET =3D &quot;thumb&quot; for the tunes to be set=
 to use<br>
-march=3Darm??t?. for compiler which in my mind is wrong constraint.<br>
semantically armv5te does not mean the instruction set used to<br>
generate code can only be thumb. It indicates that it can execute<br>
thumb code, so what ISA is used should not be tied to what -march is<br>
used.<br>
<br>
The spaghetti we have for arm tunes is incredibly hard to fathom. With<br>
gcc9 dropping all arches below armv5t means we need to rework these<br>
tunes for arm specifically for armv4 and armv5.<br>
<br>
&gt;<br>
&gt; On Wed, Jan 2, 2019 at 11:33 PM Matthew Stanger &lt;<a href=3D"mailto:=
matthew_stanger@trimble.com" target=3D"_blank">matthew_stanger@trimble.com<=
/a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; yes that would be helpful. Since gcc has become stricter with =
option<br>
&gt;&gt;&gt; checks, its possibly ending in some combination which either i=
s invalid<br>
&gt;&gt;&gt; or is wrongly computed by gcc from -mcpu<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; ************************* GCC Config Output Below ****************=
*********<br>
&gt;&gt; This file contains any messages produced by compilers while<br>
&gt;&gt; running configure, to aid debugging if configure makes a mistake.<=
br>
&gt;&gt;<br>
&gt;&gt; It was created by GNU C Library configure (see version.h), which w=
as<br>
&gt;&gt; generated by GNU Autoconf 2.69.=C2=A0 Invocation command line was<=
br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0$ ../git/configure --host=3Darm-poky-linux-gnueabi --b=
uild=3Dx86_64-linux --prefix=3D/usr --disable-sanity-checks --with-headers=
=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc=
-initial/2.28-r0/recipe-sysroot/usr/include --enable-hacker-mode<br>
&gt;&gt;<br>
&gt;&gt; ## --------- ##<br>
&gt;&gt; ## Platform. ##<br>
&gt;&gt; ## --------- ##<br>
&gt;&gt;<br>
&gt;&gt; hostname =3D matt-dev<br>
&gt;&gt; uname -m =3D x86_64<br>
&gt;&gt; uname -r =3D 4.18.0-13-generic<br>
&gt;&gt; uname -s =3D Linux<br>
&gt;&gt; uname -v =3D #14-Ubuntu SMP Wed Dec 5 09:04:24 UTC 2018<br>
&gt;&gt;<br>
&gt;&gt; /usr/bin/uname -p =3D unknown<br>
&gt;&gt; /bin/uname -X=C2=A0 =C2=A0 =C2=A0=3D unknown<br>
&gt;&gt;<br>
&gt;&gt; /bin/arch=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D unkn=
own<br>
&gt;&gt; /usr/bin/arch -k=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D unknown<br>
&gt;&gt; /usr/convex/getsysinfo =3D unknown<br>
&gt;&gt; /usr/bin/hostinfo=C2=A0 =C2=A0 =C2=A0 =3D unknown<br>
&gt;&gt; /bin/machine=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D unknown<b=
r>
&gt;&gt; /usr/bin/oslevel=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D unknown<br>
&gt;&gt; /bin/universe=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D unknown<br>
&gt;&gt;<br>
&gt;&gt; PATH: /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-g=
nueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-g=
nueabi.gcc-cross-initial-arm<br>
&gt;&gt; PATH: /home/matt/renew_thud/build/tmp/sysroots-uninative/x86_64-li=
nux/usr/bin<br>
&gt;&gt; PATH: /home/matt/renew_thud/oe/poky/scripts<br>
&gt;&gt; PATH: /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-g=
nueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-g=
nueabi<br>
&gt;&gt; PATH: /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-g=
nueabi/glibc-initial/2.28-r0/recipe-sysroot/usr/bin/crossscripts<br>
&gt;&gt; PATH: /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-g=
nueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/sbin<br>
&gt;&gt; PATH: /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-g=
nueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin<br>
&gt;&gt; PATH: /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-g=
nueabi/glibc-initial/2.28-r0/recipe-sysroot-native/sbin<br>
&gt;&gt; PATH: /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-g=
nueabi/glibc-initial/2.28-r0/recipe-sysroot-native/bin<br>
&gt;&gt; PATH: /home/matt/renew_thud/oe/poky/bitbake/bin<br>
&gt;&gt; PATH: /home/matt/renew_thud/build/tmp/hosttools<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; ## ----------- ##<br>
&gt;&gt; ## Core tests. ##<br>
&gt;&gt; ## ----------- ##<br>
&gt;&gt;<br>
&gt;&gt; configure:2213: checking build system type<br>
&gt;&gt; configure:2227: result: x86_64-pc-linux-gnu<br>
&gt;&gt; configure:2247: checking host system type<br>
&gt;&gt; configure:2260: result: arm-poky-linux-gnueabi<br>
&gt;&gt; configure:2289: checking for arm-poky-linux-gnueabi-gcc<br>
&gt;&gt; configure:2316: result: arm-poky-linux-gnueabi-gcc=C2=A0 -march=3D=
armv5e -marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/bui=
ld/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysr=
oot<br>
&gt;&gt; configure:2585: checking for C compiler version<br>
&gt;&gt; configure:2594: arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv5e -=
marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/w=
ork/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot --ve=
rsion &gt;&amp;5<br>
&gt;&gt; arm-poky-linux-gnueabi-gcc (GCC) 8.2.0<br>
&gt;&gt; Copyright (C) 2018 Free Software Foundation, Inc.<br>
&gt;&gt; This is free software; see the source for copying conditions.=C2=
=A0 There is NO<br>
&gt;&gt; warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR=
 PURPOSE.<br>
&gt;&gt;<br>
&gt;&gt; configure:2605: $? =3D 0<br>
&gt;&gt; configure:2594: arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv5e -=
marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/w=
ork/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -v &=
gt;&amp;5<br>
&gt;&gt; Using built-in specs.<br>
&gt;&gt; COLLECT_GCC=3Darm-poky-linux-gnueabi-gcc<br>
&gt;&gt; COLLECT_LTO_WRAPPER=3D/home/matt/renew_thud/build/tmp/work/arm926e=
jse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/=
arm-poky-linux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-linux-g=
nueabi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/lto-wrapper<b=
r>
&gt;&gt; Target: arm-poky-linux-gnueabi<br>
&gt;&gt; Configured with: ../../../../../../work-shared/gcc-8.2.0-r0/gcc-8.=
2.0/configure --build=3Dx86_64-linux --host=3Dx86_64-linux --target=3Darm-p=
oky-linux-gnueabi --prefix=3D/home/matt/renew_thud/build/tmp/work/x86_64-li=
nux/gcc-cross-initial-arm/8.2.0-r0/recipe-sysroot-native/usr --exec_prefix=
=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/gcc-cross-initial-arm/=
8.2.0-r0/recipe-sysroot-native/usr --bindir=3D/home/matt/renew_thud/build/t=
mp/work/x86_64-linux/gcc-cross-initial-arm/8.2.0-r0/recipe-sysroot-native/u=
sr/bin/arm-poky-linux-gnueabi.gcc-cross-initial-arm --sbindir=3D/home/matt/=
renew_thud/build/tmp/work/x86_64-linux/gcc-cross-initial-arm/8.2.0-r0/recip=
e-sysroot-native/usr/bin/arm-poky-linux-gnueabi.gcc-cross-initial-arm --lib=
execdir=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/gcc-cross-initi=
al-arm/8.2.0-r0/recipe-sysroot-native/usr/libexec/arm-poky-linux-gnueabi.gc=
c-cross-initial-arm --datadir=3D/home/matt/renew_thud/build/tmp/work/x86_64=
-linux/gcc-cross-initial-arm/8.2.0-r0/recipe-sysroot-native/usr/share --sys=
confdir=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/gcc-cross-initi=
al-arm/8.2.0-r0/recipe-sysroot-native/etc --sharedstatedir=3D/home/matt/ren=
ew_thud/build/tmp/work/x86_64-linux/gcc-cross-initial-arm/8.2.0-r0/recipe-s=
ysroot-native/com --localstatedir=3D/home/matt/renew_thud/build/tmp/work/x8=
6_64-linux/gcc-cross-initial-arm/8.2.0-r0/recipe-sysroot-native/var --libdi=
r=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/gcc-cross-initial-arm=
/8.2.0-r0/recipe-sysroot-native/usr/lib/arm-poky-linux-gnueabi.gcc-cross-in=
itial-arm --includedir=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/=
gcc-cross-initial-arm/8.2.0-r0/recipe-sysroot-native/usr/include --oldinclu=
dedir=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/gcc-cross-initial=
-arm/8.2.0-r0/recipe-sysroot-native/usr/include --infodir=3D/home/matt/rene=
w_thud/build/tmp/work/x86_64-linux/gcc-cross-initial-arm/8.2.0-r0/recipe-sy=
sroot-native/usr/share/info --mandir=3D/home/matt/renew_thud/build/tmp/work=
/x86_64-linux/gcc-cross-initial-arm/8.2.0-r0/recipe-sysroot-native/usr/shar=
e/man --disable-silent-rules --disable-dependency-tracking --with-libtool-s=
ysroot=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/gcc-cross-initia=
l-arm/8.2.0-r0/recipe-sysroot-native --with-newlib --without-headers --disa=
ble-shared --disable-threads --disable-multilib --disable-__cxa_atexit --en=
able-languages=3Dc --program-prefix=3Darm-poky-linux-gnueabi- --with-sysroo=
t=3D/not/exist --with-build-sysroot=3D/home/matt/renew_thud/build/tmp/work/=
x86_64-linux/gcc-cross-initial-arm/8.2.0-r0/recipe-sysroot --disable-libmud=
flap --disable-libgomp --disable-libitm --disable-libquadmath --with-system=
-zlib --disable-lto --disable-plugin --enable-linker-build-id --enable-deci=
mal-float=3Dno --without-isl --disable-libssp --with-native-system-header-d=
ir=3D/usr/include --disable-static --disable-nls --enable-initfini-array<br=
>
&gt;&gt; Thread model: single<br>
&gt;&gt; gcc version 8.2.0 (GCC)<br>
&gt;&gt; configure:2605: $? =3D 0<br>
&gt;&gt; configure:2594: arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv5e -=
marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/w=
ork/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -V &=
gt;&amp;5<br>
&gt;&gt; arm-poky-linux-gnueabi-gcc: error: unrecognized command line optio=
n &#39;-V&#39;<br>
&gt;&gt; arm-poky-linux-gnueabi-gcc: fatal error: no input files<br>
&gt;&gt; compilation terminated.<br>
&gt;&gt; configure:2605: $? =3D 1<br>
&gt;&gt; configure:2594: arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv5e -=
marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/w=
ork/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -qve=
rsion &gt;&amp;5<br>
&gt;&gt; arm-poky-linux-gnueabi-gcc: error: unrecognized command line optio=
n &#39;-qversion&#39;; did you mean &#39;--version&#39;?<br>
&gt;&gt; arm-poky-linux-gnueabi-gcc: fatal error: no input files<br>
&gt;&gt; compilation terminated.<br>
&gt;&gt; configure:2605: $? =3D 1<br>
&gt;&gt; configure:2610: checking for suffix of object files<br>
&gt;&gt; configure:2632: arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv5e -=
marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/w=
ork/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -c=
=C2=A0 -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/ho=
me/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initi=
al/2.28-r0=3D/usr/src/debug/glibc-initial/2.28-r0 -fdebug-prefix-map=3D/hom=
e/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initia=
l/2.28-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/home/matt/renew_thud/buil=
d/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysro=
ot-native=3D=C2=A0 =C2=A0conftest.c &gt;&amp;5<br>
&gt;&gt; cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Dar=
mv5e switch<br>
&gt;&gt; configure:2636: $? =3D 0<br>
&gt;&gt; configure:2657: result: o<br>
&gt;&gt; configure:2661: checking whether we are using the GNU C compiler<b=
r>
&gt;&gt; configure:2680: arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv5e -=
marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/w=
ork/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -c=
=C2=A0 -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/ho=
me/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initi=
al/2.28-r0=3D/usr/src/debug/glibc-initial/2.28-r0 -fdebug-prefix-map=3D/hom=
e/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initia=
l/2.28-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/home/matt/renew_thud/buil=
d/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysro=
ot-native=3D=C2=A0 =C2=A0conftest.c &gt;&amp;5<br>
&gt;&gt; cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Dar=
mv5e switch<br>
&gt;&gt; configure:2680: $? =3D 0<br>
&gt;&gt; configure:2689: result: yes<br>
&gt;&gt; configure:2698: checking whether arm-poky-linux-gnueabi-gcc=C2=A0 =
-march=3Darmv5e -marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew=
_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/re=
cipe-sysroot accepts -g<br>
&gt;&gt; configure:2718: arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv5e -=
marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/w=
ork/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -c -=
g=C2=A0 conftest.c &gt;&amp;5<br>
&gt;&gt; cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Dar=
mv5e switch<br>
&gt;&gt; configure:2718: $? =3D 0<br>
&gt;&gt; configure: failed program was:<br>
&gt;&gt; | /* confdefs.h */<br>
&gt;&gt; | #define PACKAGE_NAME &quot;GNU C Library&quot;<br>
&gt;&gt; | #define PACKAGE_TARNAME &quot;glibc&quot;<br>
&gt;&gt; | #define PACKAGE_VERSION &quot;(see version.h)&quot;<br>
&gt;&gt; | #define PACKAGE_STRING &quot;GNU C Library (see version.h)&quot;=
<br>
&gt;&gt; | #define PACKAGE_BUGREPORT &quot;<a href=3D"https://sourceware.or=
g/bugzilla/" rel=3D"noreferrer" target=3D"_blank">https://sourceware.org/bu=
gzilla/</a>&quot;<br>
&gt;&gt; | #define PACKAGE_URL &quot;<a href=3D"http://www.gnu.org/software=
/glibc/" rel=3D"noreferrer" target=3D"_blank">http://www.gnu.org/software/g=
libc/</a>&quot;<br>
&gt;&gt; | #define PKGVERSION &quot;(GNU libc) &quot;<br>
&gt;&gt; | #define REPORT_BUGS_TO &quot;&lt;<a href=3D"http://www.gnu.org/s=
oftware/libc/bugs.html" rel=3D"noreferrer" target=3D"_blank">http://www.gnu=
.org/software/libc/bugs.html</a>&gt;&quot;<br>
&gt;&gt; | /* end confdefs.h.=C2=A0 */<br>
&gt;&gt; |<br>
&gt;&gt; | int<br>
&gt;&gt; | main ()<br>
&gt;&gt; | {<br>
&gt;&gt; |<br>
&gt;&gt; |=C2=A0 =C2=A0;<br>
&gt;&gt; |=C2=A0 =C2=A0return 0;<br>
&gt;&gt; | }<br>
&gt;&gt; configure:2733: arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv5e -=
marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/w=
ork/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -c=
=C2=A0 =C2=A0conftest.c &gt;&amp;5<br>
&gt;&gt; cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Dar=
mv5e switch<br>
&gt;&gt; configure:2733: $? =3D 0<br>
&gt;&gt; configure: failed program was:<br>
&gt;&gt; | /* confdefs.h */<br>
&gt;&gt; | #define PACKAGE_NAME &quot;GNU C Library&quot;<br>
&gt;&gt; | #define PACKAGE_TARNAME &quot;glibc&quot;<br>
&gt;&gt; | #define PACKAGE_VERSION &quot;(see version.h)&quot;<br>
&gt;&gt; | #define PACKAGE_STRING &quot;GNU C Library (see version.h)&quot;=
<br>
&gt;&gt; | #define PACKAGE_BUGREPORT &quot;<a href=3D"https://sourceware.or=
g/bugzilla/" rel=3D"noreferrer" target=3D"_blank">https://sourceware.org/bu=
gzilla/</a>&quot;<br>
&gt;&gt; | #define PACKAGE_URL &quot;<a href=3D"http://www.gnu.org/software=
/glibc/" rel=3D"noreferrer" target=3D"_blank">http://www.gnu.org/software/g=
libc/</a>&quot;<br>
&gt;&gt; | #define PKGVERSION &quot;(GNU libc) &quot;<br>
&gt;&gt; | #define REPORT_BUGS_TO &quot;&lt;<a href=3D"http://www.gnu.org/s=
oftware/libc/bugs.html" rel=3D"noreferrer" target=3D"_blank">http://www.gnu=
.org/software/libc/bugs.html</a>&gt;&quot;<br>
&gt;&gt; | /* end confdefs.h.=C2=A0 */<br>
&gt;&gt; |<br>
&gt;&gt; | int<br>
&gt;&gt; | main ()<br>
&gt;&gt; | {<br>
&gt;&gt; |<br>
&gt;&gt; |=C2=A0 =C2=A0;<br>
&gt;&gt; |=C2=A0 =C2=A0return 0;<br>
&gt;&gt; | }<br>
&gt;&gt; configure:2749: arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv5e -=
marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/w=
ork/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -c -=
g=C2=A0 conftest.c &gt;&amp;5<br>
&gt;&gt; cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Dar=
mv5e switch<br>
&gt;&gt; configure:2749: $? =3D 0<br>
&gt;&gt; configure:2759: result: yes<br>
&gt;&gt; configure:2788: checking for gcc<br>
&gt;&gt; configure:2815: result: gcc<br>
&gt;&gt; configure:2839: checking for arm-poky-linux-gnueabi-readelf<br>
&gt;&gt; configure:2866: result: arm-poky-linux-gnueabi-readelf<br>
&gt;&gt; configure:3042: checking for C++ compiler version<br>
&gt;&gt; configure:3051: arm-poky-linux-gnueabi-g++=C2=A0 -march=3Darmv5e -=
marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/w=
ork/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot --ve=
rsion &gt;&amp;5<br>
&gt;&gt; ../git/configure: line 3053: arm-poky-linux-gnueabi-g++: command n=
ot found<br>
&gt;&gt; configure:3062: $? =3D 127<br>
&gt;&gt; configure:3051: arm-poky-linux-gnueabi-g++=C2=A0 -march=3Darmv5e -=
marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/w=
ork/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -v &=
gt;&amp;5<br>
&gt;&gt; ../git/configure: line 3053: arm-poky-linux-gnueabi-g++: command n=
ot found<br>
&gt;&gt; configure:3062: $? =3D 127<br>
&gt;&gt; configure:3051: arm-poky-linux-gnueabi-g++=C2=A0 -march=3Darmv5e -=
marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/w=
ork/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -V &=
gt;&amp;5<br>
&gt;&gt; ../git/configure: line 3053: arm-poky-linux-gnueabi-g++: command n=
ot found<br>
&gt;&gt; configure:3062: $? =3D 127<br>
&gt;&gt; configure:3051: arm-poky-linux-gnueabi-g++=C2=A0 -march=3Darmv5e -=
marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/w=
ork/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -qve=
rsion &gt;&amp;5<br>
&gt;&gt; ../git/configure: line 3053: arm-poky-linux-gnueabi-g++: command n=
ot found<br>
&gt;&gt; configure:3062: $? =3D 127<br>
&gt;&gt; configure:3066: checking whether we are using the GNU C++ compiler=
<br>
&gt;&gt; configure:3085: arm-poky-linux-gnueabi-g++=C2=A0 -march=3Darmv5e -=
marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/w=
ork/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -c=
=C2=A0 -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/ho=
me/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initi=
al/2.28-r0=3D/usr/src/debug/glibc-initial/2.28-r0 -fdebug-prefix-map=3D/hom=
e/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initia=
l/2.28-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/home/matt/renew_thud/buil=
d/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysro=
ot-native=3D=C2=A0 -fvisibility-inlines-hidden=C2=A0 conftest.cpp &gt;&amp;=
5<br>
&gt;&gt; ../git/configure: line 1633: arm-poky-linux-gnueabi-g++: command n=
ot found<br>
&gt;&gt; configure:3085: $? =3D 127<br>
&gt;&gt; configure: failed program was:<br>
&gt;&gt; | /* confdefs.h */<br>
&gt;&gt; | #define PACKAGE_NAME &quot;GNU C Library&quot;<br>
&gt;&gt; | #define PACKAGE_TARNAME &quot;glibc&quot;<br>
&gt;&gt; | #define PACKAGE_VERSION &quot;(see version.h)&quot;<br>
&gt;&gt; | #define PACKAGE_STRING &quot;GNU C Library (see version.h)&quot;=
<br>
&gt;&gt; | #define PACKAGE_BUGREPORT &quot;<a href=3D"https://sourceware.or=
g/bugzilla/" rel=3D"noreferrer" target=3D"_blank">https://sourceware.org/bu=
gzilla/</a>&quot;<br>
&gt;&gt; | #define PACKAGE_URL &quot;<a href=3D"http://www.gnu.org/software=
/glibc/" rel=3D"noreferrer" target=3D"_blank">http://www.gnu.org/software/g=
libc/</a>&quot;<br>
&gt;&gt; | #define PKGVERSION &quot;(GNU libc) &quot;<br>
&gt;&gt; | #define REPORT_BUGS_TO &quot;&lt;<a href=3D"http://www.gnu.org/s=
oftware/libc/bugs.html" rel=3D"noreferrer" target=3D"_blank">http://www.gnu=
.org/software/libc/bugs.html</a>&gt;&quot;<br>
&gt;&gt; | /* end confdefs.h.=C2=A0 */<br>
&gt;&gt; |<br>
&gt;&gt; | int<br>
&gt;&gt; | main ()<br>
&gt;&gt; | {<br>
&gt;&gt; | #ifndef __GNUC__<br>
&gt;&gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 choke me<br>
&gt;&gt; | #endif<br>
&gt;&gt; |<br>
&gt;&gt; |=C2=A0 =C2=A0;<br>
&gt;&gt; |=C2=A0 =C2=A0return 0;<br>
&gt;&gt; | }<br>
&gt;&gt; configure:3094: result: no<br>
&gt;&gt; configure:3103: checking whether arm-poky-linux-gnueabi-g++=C2=A0 =
-march=3Darmv5e -marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew=
_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/re=
cipe-sysroot accepts -g<br>
&gt;&gt; configure:3123: arm-poky-linux-gnueabi-g++=C2=A0 -march=3Darmv5e -=
marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/w=
ork/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -c -=
g=C2=A0 conftest.cpp &gt;&amp;5<br>
&gt;&gt; ../git/configure: line 1633: arm-poky-linux-gnueabi-g++: command n=
ot found<br>
&gt;&gt; configure:3123: $? =3D 127<br>
&gt;&gt; configure: failed program was:<br>
&gt;&gt; | /* confdefs.h */<br>
&gt;&gt; | #define PACKAGE_NAME &quot;GNU C Library&quot;<br>
&gt;&gt; | #define PACKAGE_TARNAME &quot;glibc&quot;<br>
&gt;&gt; | #define PACKAGE_VERSION &quot;(see version.h)&quot;<br>
&gt;&gt; | #define PACKAGE_STRING &quot;GNU C Library (see version.h)&quot;=
<br>
&gt;&gt; | #define PACKAGE_BUGREPORT &quot;<a href=3D"https://sourceware.or=
g/bugzilla/" rel=3D"noreferrer" target=3D"_blank">https://sourceware.org/bu=
gzilla/</a>&quot;<br>
&gt;&gt; | #define PACKAGE_URL &quot;<a href=3D"http://www.gnu.org/software=
/glibc/" rel=3D"noreferrer" target=3D"_blank">http://www.gnu.org/software/g=
libc/</a>&quot;<br>
&gt;&gt; | #define PKGVERSION &quot;(GNU libc) &quot;<br>
&gt;&gt; | #define REPORT_BUGS_TO &quot;&lt;<a href=3D"http://www.gnu.org/s=
oftware/libc/bugs.html" rel=3D"noreferrer" target=3D"_blank">http://www.gnu=
.org/software/libc/bugs.html</a>&gt;&quot;<br>
&gt;&gt; | /* end confdefs.h.=C2=A0 */<br>
&gt;&gt; |<br>
&gt;&gt; | int<br>
&gt;&gt; | main ()<br>
&gt;&gt; | {<br>
&gt;&gt; |<br>
&gt;&gt; |=C2=A0 =C2=A0;<br>
&gt;&gt; |=C2=A0 =C2=A0return 0;<br>
&gt;&gt; | }<br>
&gt;&gt; configure:3138: arm-poky-linux-gnueabi-g++=C2=A0 -march=3Darmv5e -=
marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/w=
ork/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -c=
=C2=A0 =C2=A0conftest.cpp &gt;&amp;5<br>
&gt;&gt; ../git/configure: line 1633: arm-poky-linux-gnueabi-g++: command n=
ot found<br>
&gt;&gt; configure:3138: $? =3D 127<br>
&gt;&gt; configure: failed program was:<br>
&gt;&gt; | /* confdefs.h */<br>
&gt;&gt; | #define PACKAGE_NAME &quot;GNU C Library&quot;<br>
&gt;&gt; | #define PACKAGE_TARNAME &quot;glibc&quot;<br>
&gt;&gt; | #define PACKAGE_VERSION &quot;(see version.h)&quot;<br>
&gt;&gt; | #define PACKAGE_STRING &quot;GNU C Library (see version.h)&quot;=
<br>
&gt;&gt; | #define PACKAGE_BUGREPORT &quot;<a href=3D"https://sourceware.or=
g/bugzilla/" rel=3D"noreferrer" target=3D"_blank">https://sourceware.org/bu=
gzilla/</a>&quot;<br>
&gt;&gt; | #define PACKAGE_URL &quot;<a href=3D"http://www.gnu.org/software=
/glibc/" rel=3D"noreferrer" target=3D"_blank">http://www.gnu.org/software/g=
libc/</a>&quot;<br>
&gt;&gt; | #define PKGVERSION &quot;(GNU libc) &quot;<br>
&gt;&gt; | #define REPORT_BUGS_TO &quot;&lt;<a href=3D"http://www.gnu.org/s=
oftware/libc/bugs.html" rel=3D"noreferrer" target=3D"_blank">http://www.gnu=
.org/software/libc/bugs.html</a>&gt;&quot;<br>
&gt;&gt; | /* end confdefs.h.=C2=A0 */<br>
&gt;&gt; |<br>
&gt;&gt; | int<br>
&gt;&gt; | main ()<br>
&gt;&gt; | {<br>
&gt;&gt; |<br>
&gt;&gt; |=C2=A0 =C2=A0;<br>
&gt;&gt; |=C2=A0 =C2=A0return 0;<br>
&gt;&gt; | }<br>
&gt;&gt; configure:3154: arm-poky-linux-gnueabi-g++=C2=A0 -march=3Darmv5e -=
marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/w=
ork/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -c -=
g=C2=A0 conftest.cpp &gt;&amp;5<br>
&gt;&gt; ../git/configure: line 1633: arm-poky-linux-gnueabi-g++: command n=
ot found<br>
&gt;&gt; configure:3154: $? =3D 127<br>
&gt;&gt; configure: failed program was:<br>
&gt;&gt; | /* confdefs.h */<br>
&gt;&gt; | #define PACKAGE_NAME &quot;GNU C Library&quot;<br>
&gt;&gt; | #define PACKAGE_TARNAME &quot;glibc&quot;<br>
&gt;&gt; | #define PACKAGE_VERSION &quot;(see version.h)&quot;<br>
&gt;&gt; | #define PACKAGE_STRING &quot;GNU C Library (see version.h)&quot;=
<br>
&gt;&gt; | #define PACKAGE_BUGREPORT &quot;<a href=3D"https://sourceware.or=
g/bugzilla/" rel=3D"noreferrer" target=3D"_blank">https://sourceware.org/bu=
gzilla/</a>&quot;<br>
&gt;&gt; | #define PACKAGE_URL &quot;<a href=3D"http://www.gnu.org/software=
/glibc/" rel=3D"noreferrer" target=3D"_blank">http://www.gnu.org/software/g=
libc/</a>&quot;<br>
&gt;&gt; | #define PKGVERSION &quot;(GNU libc) &quot;<br>
&gt;&gt; | #define REPORT_BUGS_TO &quot;&lt;<a href=3D"http://www.gnu.org/s=
oftware/libc/bugs.html" rel=3D"noreferrer" target=3D"_blank">http://www.gnu=
.org/software/libc/bugs.html</a>&gt;&quot;<br>
&gt;&gt; | /* end confdefs.h.=C2=A0 */<br>
&gt;&gt; |<br>
&gt;&gt; | int<br>
&gt;&gt; | main ()<br>
&gt;&gt; | {<br>
&gt;&gt; |<br>
&gt;&gt; |=C2=A0 =C2=A0;<br>
&gt;&gt; |=C2=A0 =C2=A0return 0;<br>
&gt;&gt; | }<br>
&gt;&gt; configure:3164: result: no<br>
&gt;&gt; configure:3189: checking whether arm-poky-linux-gnueabi-g++=C2=A0 =
-march=3Darmv5e -marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew=
_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/re=
cipe-sysroot can link programs<br>
&gt;&gt; configure:3212: arm-poky-linux-gnueabi-g++=C2=A0 -march=3Darmv5e -=
marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/w=
ork/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -o c=
onftest=C2=A0 -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-ma=
p=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glib=
c-initial/2.28-r0=3D/usr/src/debug/glibc-initial/2.28-r0 -fdebug-prefix-map=
=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc=
-initial/2.28-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/home/matt/renew_th=
ud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recip=
e-sysroot-native=3D=C2=A0 -fvisibility-inlines-hidden=C2=A0 -Wl,-O1 -Wl,--h=
ash-style=3Dgnu -Wl,--as-needed=C2=A0 -Wl,-z,relro,-z,now conftest.cpp=C2=
=A0 &gt;&amp;5<br>
&gt;&gt; ../git/configure: line 1671: arm-poky-linux-gnueabi-g++: command n=
ot found<br>
&gt;&gt; configure:3212: $? =3D 127<br>
&gt;&gt; configure: failed program was:<br>
&gt;&gt; | /* confdefs.h */<br>
&gt;&gt; | #define PACKAGE_NAME &quot;GNU C Library&quot;<br>
&gt;&gt; | #define PACKAGE_TARNAME &quot;glibc&quot;<br>
&gt;&gt; | #define PACKAGE_VERSION &quot;(see version.h)&quot;<br>
&gt;&gt; | #define PACKAGE_STRING &quot;GNU C Library (see version.h)&quot;=
<br>
&gt;&gt; | #define PACKAGE_BUGREPORT &quot;<a href=3D"https://sourceware.or=
g/bugzilla/" rel=3D"noreferrer" target=3D"_blank">https://sourceware.org/bu=
gzilla/</a>&quot;<br>
&gt;&gt; | #define PACKAGE_URL &quot;<a href=3D"http://www.gnu.org/software=
/glibc/" rel=3D"noreferrer" target=3D"_blank">http://www.gnu.org/software/g=
libc/</a>&quot;<br>
&gt;&gt; | #define PKGVERSION &quot;(GNU libc) &quot;<br>
&gt;&gt; | #define REPORT_BUGS_TO &quot;&lt;<a href=3D"http://www.gnu.org/s=
oftware/libc/bugs.html" rel=3D"noreferrer" target=3D"_blank">http://www.gnu=
.org/software/libc/bugs.html</a>&gt;&quot;<br>
&gt;&gt; | /* end confdefs.h.=C2=A0 */<br>
&gt;&gt; |<br>
&gt;&gt; | int<br>
&gt;&gt; | main ()<br>
&gt;&gt; | {<br>
&gt;&gt; |<br>
&gt;&gt; |=C2=A0 =C2=A0;<br>
&gt;&gt; |=C2=A0 =C2=A0return 0;<br>
&gt;&gt; | }<br>
&gt;&gt; configure:3235: arm-poky-linux-gnueabi-g++=C2=A0 -march=3Darmv5e -=
marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/w=
ork/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -o c=
onftest=C2=A0 -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-ma=
p=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glib=
c-initial/2.28-r0=3D/usr/src/debug/glibc-initial/2.28-r0 -fdebug-prefix-map=
=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc=
-initial/2.28-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/home/matt/renew_th=
ud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recip=
e-sysroot-native=3D=C2=A0 -fvisibility-inlines-hidden=C2=A0 -Wl,-O1 -Wl,--h=
ash-style=3Dgnu -Wl,--as-needed=C2=A0 -Wl,-z,relro,-z,now -static conftest.=
cpp=C2=A0 &gt;&amp;5<br>
&gt;&gt; ../git/configure: line 1671: arm-poky-linux-gnueabi-g++: command n=
ot found<br>
&gt;&gt; configure:3235: $? =3D 127<br>
&gt;&gt; configure: failed program was:<br>
&gt;&gt; | /* confdefs.h */<br>
&gt;&gt; | #define PACKAGE_NAME &quot;GNU C Library&quot;<br>
&gt;&gt; | #define PACKAGE_TARNAME &quot;glibc&quot;<br>
&gt;&gt; | #define PACKAGE_VERSION &quot;(see version.h)&quot;<br>
&gt;&gt; | #define PACKAGE_STRING &quot;GNU C Library (see version.h)&quot;=
<br>
&gt;&gt; | #define PACKAGE_BUGREPORT &quot;<a href=3D"https://sourceware.or=
g/bugzilla/" rel=3D"noreferrer" target=3D"_blank">https://sourceware.org/bu=
gzilla/</a>&quot;<br>
&gt;&gt; | #define PACKAGE_URL &quot;<a href=3D"http://www.gnu.org/software=
/glibc/" rel=3D"noreferrer" target=3D"_blank">http://www.gnu.org/software/g=
libc/</a>&quot;<br>
&gt;&gt; | #define PKGVERSION &quot;(GNU libc) &quot;<br>
&gt;&gt; | #define REPORT_BUGS_TO &quot;&lt;<a href=3D"http://www.gnu.org/s=
oftware/libc/bugs.html" rel=3D"noreferrer" target=3D"_blank">http://www.gnu=
.org/software/libc/bugs.html</a>&gt;&quot;<br>
&gt;&gt; | /* end confdefs.h.=C2=A0 */<br>
&gt;&gt; |<br>
&gt;&gt; | #include &lt;iostream&gt;<br>
&gt;&gt; |<br>
&gt;&gt; | int<br>
&gt;&gt; | main()<br>
&gt;&gt; | {<br>
&gt;&gt; |=C2=A0 =C2=A0std::cout &lt;&lt; &quot;Hello, world!&quot;;<br>
&gt;&gt; |=C2=A0 =C2=A0return 0;<br>
&gt;&gt; | }<br>
&gt;&gt; |<br>
&gt;&gt; configure:3250: result: no<br>
&gt;&gt; configure:3817: checking for sysdeps preconfigure fragments<br>
&gt;&gt; configure:49: WARNING: arm/preconfigure: Did not find ARM architec=
ture type; using default<br>
&gt;&gt; configure:3824: result:<br>
&gt;&gt; configure:3854: checking for use of fpu sysdeps directories<br>
&gt;&gt; cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Dar=
mv5e switch<br>
&gt;&gt; conftest.c:4:3: error: #error &quot;no hardware floating point&quo=
t;<br>
&gt;&gt;=C2=A0 # error &quot;no hardware floating point&quot;<br>
&gt;&gt;=C2=A0 =C2=A0 ^~~~~<br>
&gt;&gt; configure:3873: result: no<br>
&gt;&gt; configure:3877: checking for -fstack-protector<br>
&gt;&gt; configure:3883: arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv5e -=
marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/w=
ork/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=C2=
=A0 -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/home/=
matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/=
2.28-r0=3D/usr/src/debug/glibc-initial/2.28-r0 -fdebug-prefix-map=3D/home/m=
att/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2=
.28-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/home/matt/renew_thud/build/t=
mp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-=
native=3D=C2=A0 -fno-unwind-tables=C2=A0 -Werror -fstack-protector -xc /dev=
/null -S -o /dev/null<br>
&gt;&gt; cc1: error: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv=
5e switch [-Werror]<br>
&gt;&gt; cc1: all warnings being treated as errors<br>
&gt;&gt; configure:3886: $? =3D 1<br>
&gt;&gt; configure:3894: result: no<br>
&gt;&gt; configure:3897: checking for -fstack-protector-strong<br>
&gt;&gt; configure:3903: arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv5e -=
marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/w=
ork/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=C2=
=A0 -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/home/=
matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/=
2.28-r0=3D/usr/src/debug/glibc-initial/2.28-r0 -fdebug-prefix-map=3D/home/m=
att/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2=
.28-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/home/matt/renew_thud/build/t=
mp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-=
native=3D=C2=A0 -fno-unwind-tables=C2=A0 -Werror -fstack-protector-strong -=
xc /dev/null -S -o /dev/null<br>
&gt;&gt; cc1: error: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv=
5e switch [-Werror]<br>
&gt;&gt; cc1: all warnings being treated as errors<br>
&gt;&gt; configure:3906: $? =3D 1<br>
&gt;&gt; configure:3914: result: no<br>
&gt;&gt; configure:3917: checking for -fstack-protector-all<br>
&gt;&gt; configure:3923: arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv5e -=
marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/w=
ork/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=C2=
=A0 -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/home/=
matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/=
2.28-r0=3D/usr/src/debug/glibc-initial/2.28-r0 -fdebug-prefix-map=3D/home/m=
att/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2=
.28-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/home/matt/renew_thud/build/t=
mp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-=
native=3D=C2=A0 -fno-unwind-tables=C2=A0 -Werror -fstack-protector-all -xc =
/dev/null -S -o /dev/null<br>
&gt;&gt; cc1: error: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv=
5e switch [-Werror]<br>
&gt;&gt; cc1: all warnings being treated as errors<br>
&gt;&gt; configure:3926: $? =3D 1<br>
&gt;&gt; configure:3934: result: no<br>
&gt;&gt; configure:3977: checking for assembler and linker STT_GNU_IFUNC su=
pport<br>
&gt;&gt; cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Dar=
mv5e switch<br>
&gt;&gt;<br>
&gt;&gt; Relocation section &#39;.rel.dyn&#39; at offset 0xd8 contains 1 en=
try:<br>
&gt;&gt;=C2=A0 Offset=C2=A0 =C2=A0 =C2=A0Info=C2=A0 =C2=A0 Type=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Sym.Value=C2=A0 Sym. Name<br>
&gt;&gt; 00020ffc=C2=A0 000000a0 R_ARM_IRELATIVE<br>
&gt;&gt; configure:4008: result: yes<br>
&gt;&gt; configure:4012: checking for gcc attribute ifunc support<br>
&gt;&gt; cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Dar=
mv5e switch<br>
&gt;&gt; configure:4038: result: yes<br>
&gt;&gt; configure:4042: checking if compiler warns about alias for functio=
n with incompatible types<br>
&gt;&gt; cc1: error: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv=
5e switch [-Werror]<br>
&gt;&gt; conftest.c:9:34: error: &#39;foo_alias&#39; alias between function=
s of incompatible types &#39;int(const void *, int)&#39; and &#39;int (*(vo=
id))(const void *, int)&#39; [-Werror=3Dattribute-alias]<br>
&gt;&gt;=C2=A0 extern __typeof (__redirect_foo) foo_alias __attribute__ ((a=
lias (&quot;foo&quot;)));<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~<br>
&gt;&gt; conftest.c:4:28: note: aliased declaration here<br>
&gt;&gt;=C2=A0 __typeof (__redirect_foo) *foo_impl (void)<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~<br>
&gt;&gt; cc1: all warnings being treated as errors<br>
&gt;&gt; configure:4064: result: yes<br>
&gt;&gt; configure:4102: checking sysdep dirs<br>
&gt;&gt; configure:4299: result: sysdeps/generic<br>
&gt;&gt; configure:4319: checking for a BSD-compatible install<br>
&gt;&gt; configure:4387: result: /home/matt/renew_thud/build/tmp/hosttools/=
install -c<br>
&gt;&gt; configure:4402: checking whether ln -s works<br>
&gt;&gt; configure:4406: result: yes<br>
&gt;&gt; configure:4432: checking whether /home/matt/renew_thud/build/tmp/w=
ork/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-nati=
ve/usr/bin/arm-poky-linux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-p=
oky-linux-gnueabi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/as=
 is GNU as<br>
&gt;&gt; configure:4446: result: yes<br>
&gt;&gt; configure:4451: checking whether /home/matt/renew_thud/build/tmp/w=
ork/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-nati=
ve/usr/bin/arm-poky-linux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-p=
oky-linux-gnueabi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/ld=
 is GNU ld<br>
&gt;&gt; configure:4465: result: yes<br>
&gt;&gt; configure:4475: checking for /home/matt/renew_thud/build/tmp/work/=
arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/u=
sr/bin/arm-poky-linux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-=
linux-gnueabi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/as<br>
&gt;&gt; configure:4502: result: /home/matt/renew_thud/build/tmp/work/arm92=
6ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bi=
n/arm-poky-linux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-linux=
-gnueabi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/as<br>
&gt;&gt; configure:4517: checking version of /home/matt/renew_thud/build/tm=
p/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-n=
ative/usr/bin/arm-poky-linux-gnueabi.gcc-cross-initial-arm/../../libexec/ar=
m-poky-linux-gnueabi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0=
/as<br>
&gt;&gt; configure:4527: result: 2.31.1.20180818, ok<br>
&gt;&gt; configure:4605: checking for /home/matt/renew_thud/build/tmp/work/=
arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/u=
sr/bin/arm-poky-linux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-=
linux-gnueabi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/ld<br>
&gt;&gt; configure:4632: result: /home/matt/renew_thud/build/tmp/work/arm92=
6ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bi=
n/arm-poky-linux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-linux=
-gnueabi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/ld<br>
&gt;&gt; configure:4647: checking version of /home/matt/renew_thud/build/tm=
p/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-n=
ative/usr/bin/arm-poky-linux-gnueabi.gcc-cross-initial-arm/../../libexec/ar=
m-poky-linux-gnueabi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0=
/ld<br>
&gt;&gt; configure:4657: result: 2.31.1.20180818, ok<br>
&gt;&gt; configure:4672: checking for gnumake<br>
&gt;&gt; configure:4699: result: make<br>
&gt;&gt; configure:4714: checking version of make<br>
&gt;&gt; configure:4724: result: 4.2.1, ok<br>
&gt;&gt; configure:4736: checking for gnumsgfmt<br>
&gt;&gt; configure:4766: result: no<br>
&gt;&gt; configure:4736: checking for gmsgfmt<br>
&gt;&gt; configure:4766: result: no<br>
&gt;&gt; configure:4736: checking for msgfmt<br>
&gt;&gt; configure:4766: result: no<br>
&gt;&gt; configure:4799: checking for makeinfo<br>
&gt;&gt; configure:4815: found /home/matt/renew_thud/build/tmp/hosttools/ma=
keinfo<br>
&gt;&gt; configure:4826: result: makeinfo<br>
&gt;&gt; configure:4841: checking version of makeinfo<br>
&gt;&gt; configure:4851: result: 6.5, ok<br>
&gt;&gt; configure:4862: checking for sed<br>
&gt;&gt; configure:4878: found /home/matt/renew_thud/build/tmp/hosttools/se=
d<br>
&gt;&gt; configure:4889: result: sed<br>
&gt;&gt; configure:4904: checking version of sed<br>
&gt;&gt; configure:4914: result: 4.5, ok<br>
&gt;&gt; configure:4925: checking for gawk<br>
&gt;&gt; configure:4941: found /home/matt/renew_thud/build/tmp/hosttools/ga=
wk<br>
&gt;&gt; configure:4952: result: gawk<br>
&gt;&gt; configure:4967: checking version of gawk<br>
&gt;&gt; configure:4977: result: 4.1.4, ok<br>
&gt;&gt; configure:4988: checking for bison<br>
&gt;&gt; configure:5004: found /home/matt/renew_thud/build/tmp/work/arm926e=
jse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/=
bison<br>
&gt;&gt; configure:5015: result: bison<br>
&gt;&gt; configure:5030: checking version of bison<br>
&gt;&gt; configure:5040: result: 3.0.4, ok<br>
&gt;&gt; configure:5048: checking if arm-poky-linux-gnueabi-gcc=C2=A0 -marc=
h=3Darmv5e -marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud=
/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-=
sysroot is sufficient to build libc<br>
&gt;&gt; configure:5068: arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv5e -=
marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/w=
ork/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -c=
=C2=A0 -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/ho=
me/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initi=
al/2.28-r0=3D/usr/src/debug/glibc-initial/2.28-r0 -fdebug-prefix-map=3D/hom=
e/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initia=
l/2.28-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/home/matt/renew_thud/buil=
d/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysro=
ot-native=3D=C2=A0 -fno-unwind-tables=C2=A0 conftest.c &gt;&amp;5<br>
&gt;&gt; cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Dar=
mv5e switch<br>
&gt;&gt; configure:5068: $? =3D 0<br>
&gt;&gt; configure:5075: result: yes<br>
&gt;&gt; configure:5084: checking for arm-poky-linux-gnueabi-nm<br>
&gt;&gt; configure:5111: result: arm-poky-linux-gnueabi-nm<br>
&gt;&gt; configure:5249: checking for python3<br>
&gt;&gt; configure:5265: found /home/matt/renew_thud/build/tmp/hosttools/py=
thon3<br>
&gt;&gt; configure:5276: result: python3<br>
&gt;&gt; configure:5307: WARNING:<br>
&gt;&gt; *** These auxiliary programs are missing or incompatible versions:=
 msgfmt<br>
&gt;&gt; *** some features or tests will be disabled.<br>
&gt;&gt; *** Check the INSTALL file for required versions.<br>
&gt;&gt; configure:5358: checking LD_LIBRARY_PATH variable<br>
&gt;&gt; configure:5368: result: ok<br>
&gt;&gt; configure:5379: checking for bash<br>
&gt;&gt; configure:5397: found /home/matt/renew_thud/build/tmp/hosttools/ba=
sh<br>
&gt;&gt; configure:5410: result: /home/matt/renew_thud/build/tmp/hosttools/=
bash<br>
&gt;&gt; configure:5421: checking for perl<br>
&gt;&gt; configure:5439: found /home/matt/renew_thud/build/tmp/hosttools/pe=
rl<br>
&gt;&gt; configure:5452: result: /home/matt/renew_thud/build/tmp/hosttools/=
perl<br>
&gt;&gt; configure:5466: checking for install-info<br>
&gt;&gt; configure:5485: found /usr/bin/install-info<br>
&gt;&gt; configure:5498: result: /usr/bin/install-info<br>
&gt;&gt; configure:5507: checking for .set assembler directive<br>
&gt;&gt; cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Dar=
mv5e switch<br>
&gt;&gt; configure:5533: result: yes<br>
&gt;&gt; configure:5540: checking linker support for protected data symbol<=
br>
&gt;&gt; configure:5550: arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv5e -=
marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/w=
ork/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -nos=
tdlib -nostartfiles -fno-stack-protector -fPIC -shared conftest.c -o confte=
st.so<br>
&gt;&gt; cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Dar=
mv5e switch<br>
&gt;&gt; configure:5553: $? =3D 0<br>
&gt;&gt; configure:5560: arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv5e -=
marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/w=
ork/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -nos=
tdlib -nostartfiles -fno-stack-protector conftest.c -o conftest conftest.so=
<br>
&gt;&gt; cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Dar=
mv5e switch<br>
&gt;&gt; /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi=
/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi=
.gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-initi=
al-arm/gcc/arm-poky-linux-gnueabi/8.2.0/ld: warning: cannot find entry symb=
ol _start; defaulting to 00000000000101dc<br>
&gt;&gt; configure:5563: $? =3D 0<br>
&gt;&gt; configure:5571: result: yes<br>
&gt;&gt; configure:5575: checking linker support for INSERT in linker scrip=
t<br>
&gt;&gt; configure:5593: arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv5e -=
marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/w=
ork/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -nos=
tdlib -nostartfiles -fno-stack-protector -fPIC -shared conftest.c -Wl,-T,co=
nftest.t -o conftest.so<br>
&gt;&gt; cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Dar=
mv5e switch<br>
&gt;&gt; configure:5596: $? =3D 0<br>
&gt;&gt; configure:5603: result: yes<br>
&gt;&gt; configure:5607: checking for broken __attribute__((alias()))<br>
&gt;&gt; configure:5622: arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv5e -=
marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/w=
ork/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -Wer=
ror -S conftest.c -o conftest.s 1&gt;&amp;5<br>
&gt;&gt; cc1: error: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv=
5e switch [-Werror]<br>
&gt;&gt; cc1: all warnings being treated as errors<br>
&gt;&gt; configure:5625: $? =3D 1<br>
&gt;&gt; configure:5635: result: yes<br>
&gt;&gt; configure:5638: error: working alias attribute support required<br=
>
&gt;&gt;<br>
&gt;&gt; ## ---------------- ##<br>
&gt;&gt; ## Cache variables. ##<br>
&gt;&gt; ## ---------------- ##<br>
&gt;&gt;<br>
&gt;&gt; ac_cv_build=3Dx86_64-pc-linux-gnu<br>
&gt;&gt; ac_cv_c_compiler_gnu=3Dyes<br>
&gt;&gt; ac_cv_cxx_compiler_gnu=3Dno<br>
&gt;&gt; ac_cv_env_CCC_set=3D<br>
&gt;&gt; ac_cv_env_CCC_value=3D<br>
&gt;&gt; ac_cv_env_CC_set=3Dset<br>
&gt;&gt; ac_cv_env_CC_value=3D&#39;arm-poky-linux-gnueabi-gcc=C2=A0 -march=
=3Darmv5e -marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/=
build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-s=
ysroot&#39;<br>
&gt;&gt; ac_cv_env_CFLAGS_set=3Dset<br>
&gt;&gt; ac_cv_env_CFLAGS_value=3D&#39; -O2 -pipe -g -feliminate-unused-deb=
ug-types -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ej=
se-poky-linux-gnueabi/glibc-initial/2.28-r0=3D/usr/src/debug/glibc-initial/=
2.28-r0 -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejs=
e-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=3D -fdebug-prefix=
-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/g=
libc-initial/2.28-r0/recipe-sysroot-native=3D &#39;<br>
&gt;&gt; ac_cv_env_CPPFLAGS_set=3Dset<br>
&gt;&gt; ac_cv_env_CPPFLAGS_value=3D<br>
&gt;&gt; ac_cv_env_CPP_set=3Dset<br>
&gt;&gt; ac_cv_env_CPP_value=3D&#39;arm-poky-linux-gnueabi-gcc -E --sysroot=
=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc=
-initial/2.28-r0/recipe-sysroot=C2=A0 -march=3Darmv5e -marm -mcpu=3Darm926e=
j-s &#39;<br>
&gt;&gt; ac_cv_env_CXXFLAGS_set=3Dset<br>
&gt;&gt; ac_cv_env_CXXFLAGS_value=3D&#39; -O2 -pipe -g -feliminate-unused-d=
ebug-types -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926=
ejse-poky-linux-gnueabi/glibc-initial/2.28-r0=3D/usr/src/debug/glibc-initia=
l/2.28-r0 -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926e=
jse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=3D -fdebug-pref=
ix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi=
/glibc-initial/2.28-r0/recipe-sysroot-native=3D=C2=A0 -fvisibility-inlines-=
hidden&#39;<br>
&gt;&gt; ac_cv_env_CXX_set=3Dset<br>
&gt;&gt; ac_cv_env_CXX_value=3D&#39;arm-poky-linux-gnueabi-g++=C2=A0 -march=
=3Darmv5e -marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/=
build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-s=
ysroot&#39;<br>
&gt;&gt; ac_cv_env_LDFLAGS_set=3Dset<br>
&gt;&gt; ac_cv_env_LDFLAGS_value=3D&#39;-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,=
--as-needed=C2=A0 -Wl,-z,relro,-z,now&#39;<br>
&gt;&gt; ac_cv_env_LIBS_set=3D<br>
&gt;&gt; ac_cv_env_LIBS_value=3D<br>
&gt;&gt; ac_cv_env_build_alias_set=3Dset<br>
&gt;&gt; ac_cv_env_build_alias_value=3Dx86_64-linux<br>
&gt;&gt; ac_cv_env_host_alias_set=3Dset<br>
&gt;&gt; ac_cv_env_host_alias_value=3Darm-poky-linux-gnueabi<br>
&gt;&gt; ac_cv_env_target_alias_set=3D<br>
&gt;&gt; ac_cv_env_target_alias_value=3D<br>
&gt;&gt; ac_cv_host=3Darm-poky-linux-gnueabi<br>
&gt;&gt; ac_cv_objext=3Do<br>
&gt;&gt; ac_cv_path_BASH_SHELL=3D/home/matt/renew_thud/build/tmp/hosttools/=
bash<br>
&gt;&gt; ac_cv_path_INSTALL_INFO=3D/usr/bin/install-info<br>
&gt;&gt; ac_cv_path_PERL=3D/home/matt/renew_thud/build/tmp/hosttools/perl<b=
r>
&gt;&gt; ac_cv_path_install=3D&#39;/home/matt/renew_thud/build/tmp/hosttool=
s/install -c&#39;<br>
&gt;&gt; ac_cv_prog_AS=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-po=
ky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-po=
ky-linux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueabi=
.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/as<br>
&gt;&gt; ac_cv_prog_AWK=3Dgawk<br>
&gt;&gt; ac_cv_prog_BISON=3Dbison<br>
&gt;&gt; ac_cv_prog_BUILD_CC=3D&#39;gcc &#39;<br>
&gt;&gt; ac_cv_prog_CC=3D&#39;arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darm=
v5e -marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/=
tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=
&#39;<br>
&gt;&gt; ac_cv_prog_LD=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-po=
ky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-po=
ky-linux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueabi=
.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/ld<br>
&gt;&gt; ac_cv_prog_MAKE=3Dmake<br>
&gt;&gt; ac_cv_prog_MAKEINFO=3Dmakeinfo<br>
&gt;&gt; ac_cv_prog_NM=3Darm-poky-linux-gnueabi-nm<br>
&gt;&gt; ac_cv_prog_PYTHON_PROG=3Dpython3<br>
&gt;&gt; ac_cv_prog_READELF=3Darm-poky-linux-gnueabi-readelf<br>
&gt;&gt; ac_cv_prog_SED=3Dsed<br>
&gt;&gt; ac_cv_prog_cc_g=3Dyes<br>
&gt;&gt; ac_cv_prog_cxx_g=3Dno<br>
&gt;&gt; libc_cv_asm_set_directive=3Dyes<br>
&gt;&gt; libc_cv_broken_alias_attribute=3Dyes<br>
&gt;&gt; libc_cv_compiler_ok=3Dyes<br>
&gt;&gt; libc_cv_cxx_link_ok=3Dno<br>
&gt;&gt; libc_cv_gcc_incompatible_alias=3Dyes<br>
&gt;&gt; libc_cv_gcc_indirect_function=3Dyes<br>
&gt;&gt; libc_cv_insert=3Dyes<br>
&gt;&gt; libc_cv_ld_gnu_indirect_function=3Dyes<br>
&gt;&gt; libc_cv_nss_crypt=3Dno<br>
&gt;&gt; libc_cv_prog_as_gnu=3Dyes<br>
&gt;&gt; libc_cv_prog_ld_gnu=3Dyes<br>
&gt;&gt; libc_cv_protected_data=3Dyes<br>
&gt;&gt; libc_cv_ssp=3Dno<br>
&gt;&gt; libc_cv_ssp_all=3Dno<br>
&gt;&gt; libc_cv_ssp_strong=3Dno<br>
&gt;&gt; libc_cv_static_nss_crypt=3Dno<br>
&gt;&gt; libc_cv_with_fp=3Dno<br>
&gt;&gt; lt_cv_sys_lib_dlsearch_path_spec=3D&#39;/usr/lib /lib&#39;<br>
&gt;&gt;<br>
&gt;&gt; ## ----------------- ##<br>
&gt;&gt; ## Output variables. ##<br>
&gt;&gt; ## ----------------- ##<br>
&gt;&gt;<br>
&gt;&gt; AR=3D&#39;/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-lin=
ux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-lin=
ux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-c=
ross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/ar&#39;<br>
&gt;&gt; AS=3D&#39;/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-lin=
ux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-lin=
ux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-c=
ross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/as&#39;<br>
&gt;&gt; ASFLAGS_config=3D&#39;&#39;<br>
&gt;&gt; AUTOCONF=3D&#39;no&#39;<br>
&gt;&gt; AWK=3D&#39;gawk&#39;<br>
&gt;&gt; BASH_SHELL=3D&#39;/home/matt/renew_thud/build/tmp/hosttools/bash&#=
39;<br>
&gt;&gt; BISON=3D&#39;bison&#39;<br>
&gt;&gt; BUILD_CC=3D&#39;gcc &#39;<br>
&gt;&gt; CC=3D&#39;arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv5e -marm -=
mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/work/ar=
m926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot&#39;<br>
&gt;&gt; CFLAGS=3D&#39; -O2 -pipe -g -feliminate-unused-debug-types -fdebug=
-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0=3D/usr/src/debug/glibc-initial/2.28-r0 -fdebug-=
prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnu=
eabi/glibc-initial/2.28-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/home/mat=
t/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.2=
8-r0/recipe-sysroot-native=3D=C2=A0 -fno-unwind-tables&#39;<br>
&gt;&gt; CPP=3D&#39;arm-poky-linux-gnueabi-gcc -E --sysroot=3D/home/matt/re=
new_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0=
/recipe-sysroot=C2=A0 -march=3Darmv5e -marm -mcpu=3Darm926ej-s &#39;<br>
&gt;&gt; CPPFLAGS=3D&#39;&#39;<br>
&gt;&gt; CPPUNDEFS=3D&#39;&#39;<br>
&gt;&gt; CXX=3D&#39;&#39;<br>
&gt;&gt; CXXFLAGS=3D&#39; -O2 -pipe -g -feliminate-unused-debug-types -fdeb=
ug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-=
gnueabi/glibc-initial/2.28-r0=3D/usr/src/debug/glibc-initial/2.28-r0 -fdebu=
g-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-g=
nueabi/glibc-initial/2.28-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/home/m=
att/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2=
.28-r0/recipe-sysroot-native=3D=C2=A0 -fvisibility-inlines-hidden&#39;<br>
&gt;&gt; CXX_BITS_STD_ABS_H=3D&#39;&#39;<br>
&gt;&gt; CXX_CMATH_HEADER=3D&#39;&#39;<br>
&gt;&gt; CXX_CSTDLIB_HEADER=3D&#39;&#39;<br>
&gt;&gt; CXX_SYSINCLUDES=3D&#39;&#39;<br>
&gt;&gt; DEFINES=3D&#39;&#39;<br>
&gt;&gt; DEFS=3D&#39;&#39;<br>
&gt;&gt; ECHO_C=3D&#39;&#39;<br>
&gt;&gt; ECHO_N=3D&#39;-n&#39;<br>
&gt;&gt; ECHO_T=3D&#39;&#39;<br>
&gt;&gt; GPROF=3D&#39;gprof&#39;<br>
&gt;&gt; INSTALL_DATA=3D&#39;${INSTALL} -m 644&#39;<br>
&gt;&gt; INSTALL_INFO=3D&#39;/usr/bin/install-info&#39;<br>
&gt;&gt; INSTALL_PROGRAM=3D&#39;${INSTALL}&#39;<br>
&gt;&gt; INSTALL_SCRIPT=3D&#39;${INSTALL}&#39;<br>
&gt;&gt; LD=3D&#39;/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-lin=
ux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-lin=
ux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-c=
ross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/ld&#39;<br>
&gt;&gt; LDFLAGS=3D&#39;-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=C2=
=A0 -Wl,-z,relro,-z,now&#39;<br>
&gt;&gt; LIBGD=3D&#39;&#39;<br>
&gt;&gt; LIBOBJS=3D&#39;&#39;<br>
&gt;&gt; LIBS=3D&#39;&#39;<br>
&gt;&gt; LN_S=3D&#39;ln -s&#39;<br>
&gt;&gt; LTLIBOBJS=3D&#39;&#39;<br>
&gt;&gt; MAKE=3D&#39;make&#39;<br>
&gt;&gt; MAKEINFO=3D&#39;makeinfo&#39;<br>
&gt;&gt; MSGFMT=3D&#39;:&#39;<br>
&gt;&gt; NM=3D&#39;arm-poky-linux-gnueabi-nm&#39;<br>
&gt;&gt; OBJCOPY=3D&#39;/home/matt/renew_thud/build/tmp/work/arm926ejse-pok=
y-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-pok=
y-linux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueabi.=
gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/objcopy&#39;<br>
&gt;&gt; OBJDUMP=3D&#39;/home/matt/renew_thud/build/tmp/work/arm926ejse-pok=
y-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-pok=
y-linux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueabi.=
gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/objdump&#39;<br>
&gt;&gt; OBJEXT=3D&#39;o&#39;<br>
&gt;&gt; PACKAGE_BUGREPORT=3D&#39;<a href=3D"https://sourceware.org/bugzill=
a/" rel=3D"noreferrer" target=3D"_blank">https://sourceware.org/bugzilla/</=
a>&#39;<br>
&gt;&gt; PACKAGE_NAME=3D&#39;GNU C Library&#39;<br>
&gt;&gt; PACKAGE_STRING=3D&#39;GNU C Library (see version.h)&#39;<br>
&gt;&gt; PACKAGE_TARNAME=3D&#39;glibc&#39;<br>
&gt;&gt; PACKAGE_URL=3D&#39;<a href=3D"http://www.gnu.org/software/glibc/" =
rel=3D"noreferrer" target=3D"_blank">http://www.gnu.org/software/glibc/</a>=
&#39;<br>
&gt;&gt; PACKAGE_VERSION=3D&#39;(see version.h)&#39;<br>
&gt;&gt; PATH_SEPARATOR=3D&#39;:&#39;<br>
&gt;&gt; PERL=3D&#39;/home/matt/renew_thud/build/tmp/hosttools/perl&#39;<br=
>
&gt;&gt; PKGVERSION=3D&#39;(GNU libc) &#39;<br>
&gt;&gt; PKGVERSION_TEXI=3D&#39;(GNU libc) &#39;<br>
&gt;&gt; PYTHON=3D&#39;python3 -B&#39;<br>
&gt;&gt; PYTHON_PROG=3D&#39;python3&#39;<br>
&gt;&gt; READELF=3D&#39;arm-poky-linux-gnueabi-readelf&#39;<br>
&gt;&gt; RELEASE=3D&#39;&#39;<br>
&gt;&gt; REPORT_BUGS_TEXI=3D&#39;@uref{<a href=3D"http://www.gnu.org/softwa=
re/libc/bugs.html" rel=3D"noreferrer" target=3D"_blank">http://www.gnu.org/=
software/libc/bugs.html</a>}&#39;<br>
&gt;&gt; REPORT_BUGS_TO=3D&#39;&lt;<a href=3D"http://www.gnu.org/software/l=
ibc/bugs.html" rel=3D"noreferrer" target=3D"_blank">http://www.gnu.org/soft=
ware/libc/bugs.html</a>&gt;&#39;<br>
&gt;&gt; SED=3D&#39;sed&#39;<br>
&gt;&gt; SHELL=3D&#39;/bin/bash&#39;<br>
&gt;&gt; SYSINCLUDES=3D&#39;-nostdinc -isystem /home/matt/renew_thud/build/=
tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=
-native/usr/bin/arm-poky-linux-gnueabi.gcc-cross-initial-arm/../../lib/arm-=
poky-linux-gnueabi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/i=
nclude -isystem /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-=
gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-=
gnueabi.gcc-cross-initial-arm/../../lib/arm-poky-linux-gnueabi.gcc-cross-in=
itial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/include-fixed -isystem /home/mat=
t/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.2=
8-r0/recipe-sysroot/usr/include&#39;<br>
&gt;&gt; VERSION=3D&#39;&#39;<br>
&gt;&gt; ac_ct_CC=3D&#39;&#39;<br>
&gt;&gt; ac_ct_CXX=3D&#39;&#39;<br>
&gt;&gt; all_warnings=3D&#39;&#39;<br>
&gt;&gt; base_machine=3D&#39;arm&#39;<br>
&gt;&gt; bindir=3D&#39;${exec_prefix}/bin&#39;<br>
&gt;&gt; bindnow=3D&#39;no&#39;<br>
&gt;&gt; build=3D&#39;x86_64-pc-linux-gnu&#39;<br>
&gt;&gt; build_alias=3D&#39;x86_64-linux&#39;<br>
&gt;&gt; build_cpu=3D&#39;x86_64&#39;<br>
&gt;&gt; build_crypt=3D&#39;yes&#39;<br>
&gt;&gt; build_nscd=3D&#39;default&#39;<br>
&gt;&gt; build_obsolete_nsl=3D&#39;no&#39;<br>
&gt;&gt; build_os=3D&#39;linux-gnu&#39;<br>
&gt;&gt; build_pt_chown=3D&#39;no&#39;<br>
&gt;&gt; build_vendor=3D&#39;pc&#39;<br>
&gt;&gt; cross_compiling=3D&#39;yes&#39;<br>
&gt;&gt; datadir=3D&#39;${datarootdir}&#39;<br>
&gt;&gt; datarootdir=3D&#39;${prefix}/share&#39;<br>
&gt;&gt; docdir=3D&#39;${datarootdir}/doc/${PACKAGE_TARNAME}&#39;<br>
&gt;&gt; dvidir=3D&#39;${docdir}&#39;<br>
&gt;&gt; enable_timezone_tools=3D&#39;yes&#39;<br>
&gt;&gt; enable_werror=3D&#39;yes&#39;<br>
&gt;&gt; exec_prefix=3D&#39;NONE&#39;<br>
&gt;&gt; experimental_malloc=3D&#39;yes&#39;<br>
&gt;&gt; fno_unit_at_a_time=3D&#39;&#39;<br>
&gt;&gt; force_install=3D&#39;yes&#39;<br>
&gt;&gt; hardcoded_path_in_tests=3D&#39;no&#39;<br>
&gt;&gt; have_libaudit=3D&#39;&#39;<br>
&gt;&gt; have_libcap=3D&#39;&#39;<br>
&gt;&gt; have_selinux=3D&#39;&#39;<br>
&gt;&gt; have_tunables=3D&#39;yes&#39;<br>
&gt;&gt; host=3D&#39;arm-poky-linux-gnueabi&#39;<br>
&gt;&gt; host_alias=3D&#39;arm-poky-linux-gnueabi&#39;<br>
&gt;&gt; host_cpu=3D&#39;arm&#39;<br>
&gt;&gt; host_os=3D&#39;linux-gnueabi&#39;<br>
&gt;&gt; host_vendor=3D&#39;poky&#39;<br>
&gt;&gt; htmldir=3D&#39;${docdir}&#39;<br>
&gt;&gt; includedir=3D&#39;${prefix}/include&#39;<br>
&gt;&gt; infodir=3D&#39;${datarootdir}/info&#39;<br>
&gt;&gt; ldd_rewrite_script=3D&#39;&#39;<br>
&gt;&gt; libc_cv_cc_loop_to_function=3D&#39;&#39;<br>
&gt;&gt; libc_cv_cc_nofma=3D&#39;&#39;<br>
&gt;&gt; libc_cv_cc_pie_default=3D&#39;&#39;<br>
&gt;&gt; libc_cv_cc_submachine=3D&#39;&#39;<br>
&gt;&gt; libc_cv_cc_with_libunwind=3D&#39;&#39;<br>
&gt;&gt; libc_cv_complocaledir=3D&#39;&#39;<br>
&gt;&gt; libc_cv_cxx_thread_local=3D&#39;&#39;<br>
&gt;&gt; libc_cv_fpie=3D&#39;&#39;<br>
&gt;&gt; libc_cv_gcc_unwind_find_fde=3D&#39;&#39;<br>
&gt;&gt; libc_cv_has_glob_dat=3D&#39;&#39;<br>
&gt;&gt; libc_cv_hashstyle=3D&#39;&#39;<br>
&gt;&gt; libc_cv_insert=3D&#39;yes&#39;<br>
&gt;&gt; libc_cv_localstatedir=3D&#39;&#39;<br>
&gt;&gt; libc_cv_mtls_dialect_gnu2=3D&#39;&#39;<br>
&gt;&gt; libc_cv_multidir=3D&#39;&#39;<br>
&gt;&gt; libc_cv_nss_crypt=3D&#39;no&#39;<br>
&gt;&gt; libc_cv_output_format=3D&#39;&#39;<br>
&gt;&gt; libc_cv_pic_default=3D&#39;&#39;<br>
&gt;&gt; libc_cv_pie_default=3D&#39;&#39;<br>
&gt;&gt; libc_cv_protected_data=3D&#39;yes&#39;<br>
&gt;&gt; libc_cv_rootsbindir=3D&#39;&#39;<br>
&gt;&gt; libc_cv_rtlddir=3D&#39;&#39;<br>
&gt;&gt; libc_cv_slibdir=3D&#39;&#39;<br>
&gt;&gt; libc_cv_ssp=3D&#39;no&#39;<br>
&gt;&gt; libc_cv_static_nss_crypt=3D&#39;no&#39;<br>
&gt;&gt; libc_cv_sysconfdir=3D&#39;&#39;<br>
&gt;&gt; libc_cv_with_fp=3D&#39;no&#39;<br>
&gt;&gt; libc_cv_z_combreloc=3D&#39;&#39;<br>
&gt;&gt; libc_cv_z_execstack=3D&#39;&#39;<br>
&gt;&gt; libc_extra_cflags=3D&#39;&#39;<br>
&gt;&gt; libc_extra_cppflags=3D&#39;&#39;<br>
&gt;&gt; libdir=3D&#39;${exec_prefix}/lib&#39;<br>
&gt;&gt; libexecdir=3D&#39;${exec_prefix}/libexec&#39;<br>
&gt;&gt; link_obsolete_rpc=3D&#39;no&#39;<br>
&gt;&gt; localedir=3D&#39;${datarootdir}/locale&#39;<br>
&gt;&gt; localstatedir=3D&#39;${prefix}/var&#39;<br>
&gt;&gt; mach_interface_list=3D&#39;&#39;<br>
&gt;&gt; mandir=3D&#39;${datarootdir}/man&#39;<br>
&gt;&gt; multi_arch=3D&#39;no&#39;<br>
&gt;&gt; no_stack_protector=3D&#39;&#39;<br>
&gt;&gt; oldincludedir=3D&#39;/usr/include&#39;<br>
&gt;&gt; pdfdir=3D&#39;${docdir}&#39;<br>
&gt;&gt; prefix=3D&#39;/usr&#39;<br>
&gt;&gt; profile=3D&#39;no&#39;<br>
&gt;&gt; program_transform_name=3D&#39;s,x,x,&#39;<br>
&gt;&gt; psdir=3D&#39;${docdir}&#39;<br>
&gt;&gt; sbindir=3D&#39;${exec_prefix}/sbin&#39;<br>
&gt;&gt; shared=3D&#39;yes&#39;<br>
&gt;&gt; sharedstatedir=3D&#39;${prefix}/com&#39;<br>
&gt;&gt; stack_protector=3D&#39;-fno-stack-protector&#39;<br>
&gt;&gt; static=3D&#39;&#39;<br>
&gt;&gt; static_nss=3D&#39;no&#39;<br>
&gt;&gt; subdirs=3D&#39; &#39;<br>
&gt;&gt; submachine=3D&#39;&#39;<br>
&gt;&gt; sysconfdir=3D&#39;${prefix}/etc&#39;<br>
&gt;&gt; sysheaders=3D&#39;/home/matt/renew_thud/build/tmp/work/arm926ejse-=
poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot/usr/include&#39;<br=
>
&gt;&gt; sysnames=3D&#39; sysdeps/unix/sysv/linux/arm sysdeps/arm/nptl sysd=
eps/unix/sysv/linux sysdeps/nptl sysdeps/pthread sysdeps/gnu sysdeps/unix/i=
net sysdeps/unix/sysv sysdeps/unix/arm sysdeps/unix sysdeps/posix sysdeps/a=
rm/nofpu sysdeps/ieee754/soft-fp sysdeps/arm sysdeps/wordsize-32 sysdeps/ie=
ee754/flt-32 sysdeps/ieee754/dbl-64 sysdeps/ieee754 sysdeps/generic&#39;<br=
>
&gt;&gt; target_alias=3D&#39;&#39;<br>
&gt;&gt; use_default_link=3D&#39;default&#39;<br>
&gt;&gt; use_ldconfig=3D&#39;&#39;<br>
&gt;&gt; use_nscd=3D&#39;yes&#39;<br>
&gt;&gt;<br>
&gt;&gt; ## ----------- ##<br>
&gt;&gt; ## confdefs.h. ##<br>
&gt;&gt; ## ----------- ##<br>
&gt;&gt;<br>
&gt;&gt; /* confdefs.h */<br>
&gt;&gt; #define PACKAGE_NAME &quot;GNU C Library&quot;<br>
&gt;&gt; #define PACKAGE_TARNAME &quot;glibc&quot;<br>
&gt;&gt; #define PACKAGE_VERSION &quot;(see version.h)&quot;<br>
&gt;&gt; #define PACKAGE_STRING &quot;GNU C Library (see version.h)&quot;<b=
r>
&gt;&gt; #define PACKAGE_BUGREPORT &quot;<a href=3D"https://sourceware.org/=
bugzilla/" rel=3D"noreferrer" target=3D"_blank">https://sourceware.org/bugz=
illa/</a>&quot;<br>
&gt;&gt; #define PACKAGE_URL &quot;<a href=3D"http://www.gnu.org/software/g=
libc/" rel=3D"noreferrer" target=3D"_blank">http://www.gnu.org/software/gli=
bc/</a>&quot;<br>
&gt;&gt; #define PKGVERSION &quot;(GNU libc) &quot;<br>
&gt;&gt; #define REPORT_BUGS_TO &quot;&lt;<a href=3D"http://www.gnu.org/sof=
tware/libc/bugs.html" rel=3D"noreferrer" target=3D"_blank">http://www.gnu.o=
rg/software/libc/bugs.html</a>&gt;&quot;<br>
&gt;&gt; #define HAVE_TUNABLES 1<br>
&gt;&gt; #define STACK_PROTECTOR_LEVEL 0<br>
&gt;&gt; #define HAVE_ASM_SET_DIRECTIVE 1<br>
&gt;&gt;<br>
&gt;&gt; configure: exit 1<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; On Wed, Jan 2, 2019 at 3:19 PM Khem Raj &lt;<a href=3D"mailto:raj.=
khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Wed, Jan 2, 2019 at 12:37 PM Matthew Stanger<br>
&gt;&gt;&gt; &lt;<a href=3D"mailto:matthew_stanger@trimble.com" target=3D"_=
blank">matthew_stanger@trimble.com</a>&gt; wrote:<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; Hi,<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; I&#39;m getting a build failure under Thud when trying to=
 use the<br>
&gt;&gt;&gt; &gt; following tune in my machine.conf:<br>
&gt;&gt;&gt; &gt; #at91sam9.inc is from meta-atmel - at91sam9263 is ARM tar=
get<br>
&gt;&gt;&gt; &gt; require conf/machine/include/at91sam9.inc<br>
&gt;&gt;&gt; &gt; DEFAULTTUNE =3D &quot;arm926ejs&quot;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; When doing a fresh build &#39;glibc-initial&#39; config s=
tage fail&#39;s with:<br>
&gt;&gt;&gt; &gt; | checking for broken __attribute__((alias()))... yes<br>
&gt;&gt;&gt; &gt; | configure: error: working alias attribute support requi=
red<br>
&gt;&gt;&gt; &gt; | WARNING: exit code 1 from a shell command.<br>
&gt;&gt;&gt; &gt; | ERROR: Function failed: do_configure (log file is locat=
ed at<br>
&gt;&gt;&gt; &gt; /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linu=
x-gnueabi/glibc-initial/2.28-r0/temp/log.do_configure.1177)<br>
&gt;&gt;&gt; &gt; ERROR: Task (/home/matt/renew_thud/build/../oe/poky/meta/=
recipes-core/glibc/glibc-initial_2.28.bb:do_configure)<br>
&gt;&gt;&gt; &gt; failed with exit code &#39;1&#39;<br>
&gt;&gt;&gt; &gt; NOTE: Tasks Summary: Attempted 2173 tasks of which 0 didn=
&#39;t need to be<br>
&gt;&gt;&gt; &gt; rerun and 1 failed.<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; Summary: 1 task failed:<br>
&gt;&gt;&gt; &gt;=C2=A0 =C2=A0/home/matt/renew_thud/build/../oe/poky/meta/r=
ecipes-core/glibc/glibc-initial_2.28.bb:do_configure<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; Can give follow on config.log&#39;s and such as required.=
<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; yes that would be helpful. Since gcc has become stricter with =
option<br>
&gt;&gt;&gt; checks, its possibly ending in some combination which either i=
s invalid<br>
&gt;&gt;&gt; or is wrongly computed by gcc from -mcpu<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; If I edit &#39;poky/meta/conf/machine/include/tune-arm926=
ejs.inc&#39; to<br>
&gt;&gt;&gt; &gt; change the &#39;-mcpu&#39; back to &#39;mtune&#39;(commit=
 f29d642c) then glibc builds<br>
&gt;&gt;&gt; &gt; fine. GCC tuning is totally outside my expertise so I&#39=
;m hoping someone<br>
&gt;&gt;&gt; &gt; can confirm if &#39;-mcpu&#39; is really desired over &#3=
9;-mtune&#39;? And also if<br>
&gt;&gt;&gt; &gt; this look like a Poky issue or something else?<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; Cheers,<br>
&gt;&gt;&gt; &gt; Matt<br>
&gt;&gt;&gt; &gt; --<br>
&gt;&gt;&gt; &gt; _______________________________________________<br>
&gt;&gt;&gt; &gt; poky mailing list<br>
&gt;&gt;&gt; &gt; <a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank=
">poky@yoctoproject.org</a><br>
&gt;&gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinf=
o/poky</a><br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; poky mailing list<br>
&gt;&gt; <a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yo=
ctoproject.org</a><br>
&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"no=
referrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a=
><br>
</blockquote></div>

--000000000000665182057e915e02--
