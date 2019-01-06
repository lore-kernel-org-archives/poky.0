Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4F79E00C99; Sat,  5 Jan 2019 16:59:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.195 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
	[209.85.160.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E35EE00BFB
	for <poky@yoctoproject.org>; Sat,  5 Jan 2019 16:59:11 -0800 (PST)
Received: by mail-qt1-f195.google.com with SMTP id r14so44395560qtp.1
	for <poky@yoctoproject.org>; Sat, 05 Jan 2019 16:59:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=Z2hvjNkGNhrfdm+7LUoCw7+zQiiPhIC8w6/CSNuuIi0=;
	b=uJLtM0x00pbNCGHs2nz1Nv1cKolWrQ7cfez6lEGA9m1XBH+lb0TELF9TQ9Yhc8AjpM
	AwjNJmsL6MK5MDqti5JVtvhGvFSsu8ADPErs2qQP7S1dwQeuHu3Kck7ZHOQTuCrKG5IE
	9iUFxe7YENnCCFXeh4MtLerVdrXUdvyG+Acxtc5I3sFCdR5EAy8XhEJB7/HNxkwIyfrC
	gvkrMJ8pOYSRFe8OgWG1jZeIFXiFVW/W/4vlsWuO+TVCmT9IQ00jIfEaVP70aKK2se4b
	syOe4MgLOb2C1EMeKdcBgeCEgrAhfd9PN4xdCFYCUuwzFvGNFohHJ9F7GmLac2I3b3Lq
	8+dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=Z2hvjNkGNhrfdm+7LUoCw7+zQiiPhIC8w6/CSNuuIi0=;
	b=fDt/rTVEfgvpA4GkvH4rbFAkn9bFlUseyNr2GpEs0U4NnydOdIVbzzPt8puUvmztdq
	q3eCYsaAKN/dfI5yQNBzHj1GKthvA/8LN7VNOkHxStj01Vpqpja8szu2XhoscQTLsY3F
	eonDIss/omRfRBJM9hX2PCvYN4W7yn7wI/tucD+fF2QMfCqQcNSZXBQh+ZQxLzjSU6r4
	AXOkAZy1EebUW3rb0dayDR2gtxOwv8TOjVk7+oae9nIyZK3Mpu+Gu0ObP5FBdp+hEn+V
	wQ6pfFpUhtjCQFXUiDfgnfw5smUKoL0pNp3G/WpttCg9MSUqV2rIWsdE+CiPW10dXrSw
	iROg==
X-Gm-Message-State: AJcUukfRnlGOVTUN33zZ3a4RSPLMN1zkO6X4RV1VpabG+Qm9/Bnkpl8v
	kYXgBaFuU0HI0BCShmeD5Ci8M4oMlCuoiTpuGrs=
X-Google-Smtp-Source: ALg8bN4gHsZgvyBH1cQ9n+4RfgJy9eq2SzR//TfYSIuxIvB5jxLUbGTFBPZ0O61WUSoZPnBTWwasBgQgKmTc1v6tnNE=
X-Received: by 2002:a0c:d80f:: with SMTP id h15mr56249900qvj.228.1546736350635;
	Sat, 05 Jan 2019 16:59:10 -0800 (PST)
MIME-Version: 1.0
References: <CANr77M2NsGWUEeYobQFM_YChfK37KM06z=PUQSe6z8nQCqzQsw@mail.gmail.com>
	<CAMKF1sqogmNy0uRuiShQUP7ONpJjwgrpaTKFAAd378sQ7YWYwQ@mail.gmail.com>
	<CANr77M1a9Y9_JPzypFdyO=jrRa1b9=dWqHdpaijdMQ+RNRz_6w@mail.gmail.com>
	<CA+chaQdj6Eb0_FTgZxeroxZCYUbLY4+kGw06-fc0bmELC6r_ng@mail.gmail.com>
	<CAMKF1sorEf+Rfmc=PsGCEv6oSS4ko5zUk2XJa0CtahQAXQGHtA@mail.gmail.com>
	<CANr77M1g5qivCU65iCUZmc94hMhwAQ2MM74-cjPB3Rp-weT+Zg@mail.gmail.com>
	<CAMKF1somavxZ1fmAec87k+F5U8n+cfHpg2rkFPjvc=J156Y_6Q@mail.gmail.com>
	<CANr77M24yBvPNKox5gt6pengDs9A+gM+0gQWwov6_+Tf+MZomA@mail.gmail.com>
	<CAMKF1srynMT43a1BuDHbxKpLnTZ4Jkr4h25bYgJzL0DWZ39Vgg@mail.gmail.com>
	<CANr77M1q=YZHgu1yLCKBcz-QgOtMgp3RFzX0Wor7VUcEwzEM5g@mail.gmail.com>
In-Reply-To: <CANr77M1q=YZHgu1yLCKBcz-QgOtMgp3RFzX0Wor7VUcEwzEM5g@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 5 Jan 2019 16:58:44 -0800
Message-ID: <CAMKF1srW7xSUOO_HrPQu73TpZB=JTMHs1OiynO_ezFjkS2v2qg@mail.gmail.com>
To: Matthew Stanger <matthew_stanger@trimble.com>
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
X-List-Received-Date: Sun, 06 Jan 2019 00:59:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Jan 5, 2019 at 4:53 PM Matthew Stanger
<matthew_stanger@trimble.com> wrote:
>>
>> you can discard the suggestion I have a patch which would fix it too.
>> http://lists.openembedded.org/pipermail/openembedded-core/2019-January/2=
77527.html
>
> Tested builds for both 'arm926ejs' & 'armv5te'(default) tunes from 'tune-=
arm926ejs.inc' and both built packages without issue. IPK's seemed to have =
correct arch.
>

sounds good. Thanks for testing out

> Cheers
>
> On Thu, Jan 3, 2019 at 10:56 AM Khem Raj <raj.khem@gmail.com> wrote:
>>
>> On Thu, Jan 3, 2019 at 9:54 AM Matthew Stanger
>> <matthew_stanger@trimble.com> wrote:
>> >
>> > Thanks for the help and the patch!
>> >
>>
>> No worries, Please test it out and report back.
>>
>> > On Thu, Jan 3, 2019 at 10:52 AM Khem Raj <raj.khem@gmail.com> wrote:
>> >>
>> >> On Thu, Jan 3, 2019 at 9:48 AM Matthew Stanger
>> >> <matthew_stanger@trimble.com> wrote:
>> >> >>
>> >> >> Try something like this
>> >> >
>> >> > Yes the patch works, it gets a double '-march' passed in but the 't=
e' seems to override since it's coming after. ie.
>> >>
>> >> you can discard the suggestion I have a patch which would fix it too.
>> >> http://lists.openembedded.org/pipermail/openembedded-core/2019-Januar=
y/277527.html
>> >>
>> >> > configure:2316: result: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e=
 -marm -march=3Darmv5te -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_th=
ud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recip=
e-sysroot
>> >> > There is no more warning in the logs as Martian pointed out.
>> >> >
>> >> >> We expect ARM_INSTRUCTION_SET =3D "thumb" for the tunes to be set =
to use
>> >> >> -march=3Darm??t?. for compiler which in my mind is wrong constrain=
t.
>> >> >> semantically armv5te does not mean the instruction set used to
>> >> >> generate code can only be thumb. It indicates that it can execute
>> >> >> thumb code, so what ISA is used should not be tied to what -march =
is
>> >> >> used.
>> >> >
>> >> > Yes this is how I understand it & I'm not intending to use the 16 b=
it Thumb instruction set. I want the 32-bit ARM instruction's. This seems c=
orrect since you can see the '-marm' flag being used not the '-mthumb' flag=
. The IPK's are still being build as 'arm926ejse' not 'te' which further ma=
kes sense. I think I'm good to go here on my end but let me know if you wan=
t me to try anything else out.
>> >> >
>> >> >> The spaghetti we have for arm tunes is incredibly hard to fathom. =
With
>> >> >> gcc9 dropping all arches below armv5t means we need to rework thes=
e
>> >> >> tunes for arm specifically for armv4 and armv5.
>> >> >
>> >> > Good riddance I'd say. I'll take anything I can to pitch the idea o=
f using hardware build sometime in a modern day.
>> >> >
>> >> > On Wed, Jan 2, 2019 at 11:01 PM Khem Raj <raj.khem@gmail.com> wrote=
:
>> >> >>
>> >> >> On Wed, Jan 2, 2019 at 2:42 PM Martin Jansa <martin.jansa@gmail.co=
m> wrote:
>> >> >> >
>> >> >> > cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3D=
armv5e switch
>> >> >> >
>> >> >> > Is IMHO the root cause, try enabling thumb for you DISTRO (set -=
march to armv5te).
>> >> >>
>> >> >> We expect ARM_INSTRUCTION_SET =3D "thumb" for the tunes to be set =
to use
>> >> >> -march=3Darm??t?. for compiler which in my mind is wrong constrain=
t.
>> >> >> semantically armv5te does not mean the instruction set used to
>> >> >> generate code can only be thumb. It indicates that it can execute
>> >> >> thumb code, so what ISA is used should not be tied to what -march =
is
>> >> >> used.
>> >> >>
>> >> >> The spaghetti we have for arm tunes is incredibly hard to fathom. =
With
>> >> >> gcc9 dropping all arches below armv5t means we need to rework thes=
e
>> >> >> tunes for arm specifically for armv4 and armv5.
>> >> >>
>> >> >> >
>> >> >> > On Wed, Jan 2, 2019 at 11:33 PM Matthew Stanger <matthew_stanger=
@trimble.com> wrote:
>> >> >> >>>
>> >> >> >>> yes that would be helpful. Since gcc has become stricter with =
option
>> >> >> >>> checks, its possibly ending in some combination which either i=
s invalid
>> >> >> >>> or is wrongly computed by gcc from -mcpu
>> >> >> >>
>> >> >> >>
>> >> >> >> ************************* GCC Config Output Below *************=
************
>> >> >> >> This file contains any messages produced by compilers while
>> >> >> >> running configure, to aid debugging if configure makes a mistak=
e.
>> >> >> >>
>> >> >> >> It was created by GNU C Library configure (see version.h), whic=
h was
>> >> >> >> generated by GNU Autoconf 2.69.  Invocation command line was
>> >> >> >>
>> >> >> >>   $ ../git/configure --host=3Darm-poky-linux-gnueabi --build=3D=
x86_64-linux --prefix=3D/usr --disable-sanity-checks --with-headers=3D/home=
/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial=
/2.28-r0/recipe-sysroot/usr/include --enable-hacker-mode
>> >> >> >>
>> >> >> >> ## --------- ##
>> >> >> >> ## Platform. ##
>> >> >> >> ## --------- ##
>> >> >> >>
>> >> >> >> hostname =3D matt-dev
>> >> >> >> uname -m =3D x86_64
>> >> >> >> uname -r =3D 4.18.0-13-generic
>> >> >> >> uname -s =3D Linux
>> >> >> >> uname -v =3D #14-Ubuntu SMP Wed Dec 5 09:04:24 UTC 2018
>> >> >> >>
>> >> >> >> /usr/bin/uname -p =3D unknown
>> >> >> >> /bin/uname -X     =3D unknown
>> >> >> >>
>> >> >> >> /bin/arch              =3D unknown
>> >> >> >> /usr/bin/arch -k       =3D unknown
>> >> >> >> /usr/convex/getsysinfo =3D unknown
>> >> >> >> /usr/bin/hostinfo      =3D unknown
>> >> >> >> /bin/machine           =3D unknown
>> >> >> >> /usr/bin/oslevel       =3D unknown
>> >> >> >> /bin/universe          =3D unknown
>> >> >> >>
>> >> >> >> PATH: /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linu=
x-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linu=
x-gnueabi.gcc-cross-initial-arm
>> >> >> >> PATH: /home/matt/renew_thud/build/tmp/sysroots-uninative/x86_64=
-linux/usr/bin
>> >> >> >> PATH: /home/matt/renew_thud/oe/poky/scripts
>> >> >> >> PATH: /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linu=
x-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linu=
x-gnueabi
>> >> >> >> PATH: /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linu=
x-gnueabi/glibc-initial/2.28-r0/recipe-sysroot/usr/bin/crossscripts
>> >> >> >> PATH: /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linu=
x-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/sbin
>> >> >> >> PATH: /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linu=
x-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin
>> >> >> >> PATH: /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linu=
x-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/sbin
>> >> >> >> PATH: /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linu=
x-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/bin
>> >> >> >> PATH: /home/matt/renew_thud/oe/poky/bitbake/bin
>> >> >> >> PATH: /home/matt/renew_thud/build/tmp/hosttools
>> >> >> >>
>> >> >> >>
>> >> >> >> ## ----------- ##
>> >> >> >> ## Core tests. ##
>> >> >> >> ## ----------- ##
>> >> >> >>
>> >> >> >> configure:2213: checking build system type
>> >> >> >> configure:2227: result: x86_64-pc-linux-gnu
>> >> >> >> configure:2247: checking host system type
>> >> >> >> configure:2260: result: arm-poky-linux-gnueabi
>> >> >> >> configure:2289: checking for arm-poky-linux-gnueabi-gcc
>> >> >> >> configure:2316: result: arm-poky-linux-gnueabi-gcc  -march=3Dar=
mv5e -marm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/=
work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot
>> >> >> >> configure:2585: checking for C compiler version
>> >> >> >> configure:2594: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -ma=
rm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm=
926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot --version >=
&5
>> >> >> >> arm-poky-linux-gnueabi-gcc (GCC) 8.2.0
>> >> >> >> Copyright (C) 2018 Free Software Foundation, Inc.
>> >> >> >> This is free software; see the source for copying conditions.  =
There is NO
>> >> >> >> warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICU=
LAR PURPOSE.
>> >> >> >>
>> >> >> >> configure:2605: $? =3D 0
>> >> >> >> configure:2594: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -ma=
rm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm=
926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -v >&5
>> >> >> >> Using built-in specs.
>> >> >> >> COLLECT_GCC=3Darm-poky-linux-gnueabi-gcc
>> >> >> >> COLLECT_LTO_WRAPPER=3D/home/matt/renew_thud/build/tmp/work/arm9=
26ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/b=
in/arm-poky-linux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-linu=
x-gnueabi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/lto-wrappe=
r
>> >> >> >> Target: arm-poky-linux-gnueabi
>> >> >> >> Configured with: ../../../../../../work-shared/gcc-8.2.0-r0/gcc=
-8.2.0/configure --build=3Dx86_64-linux --host=3Dx86_64-linux --target=3Dar=
m-poky-linux-gnueabi --prefix=3D/home/matt/renew_thud/build/tmp/work/x86_64=
-linux/gcc-cross-initial-arm/8.2.0-r0/recipe-sysroot-native/usr --exec_pref=
ix=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/gcc-cross-initial-ar=
m/8.2.0-r0/recipe-sysroot-native/usr --bindir=3D/home/matt/renew_thud/build=
/tmp/work/x86_64-linux/gcc-cross-initial-arm/8.2.0-r0/recipe-sysroot-native=
/usr/bin/arm-poky-linux-gnueabi.gcc-cross-initial-arm --sbindir=3D/home/mat=
t/renew_thud/build/tmp/work/x86_64-linux/gcc-cross-initial-arm/8.2.0-r0/rec=
ipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.gcc-cross-initial-arm --l=
ibexecdir=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/gcc-cross-ini=
tial-arm/8.2.0-r0/recipe-sysroot-native/usr/libexec/arm-poky-linux-gnueabi.=
gcc-cross-initial-arm --datadir=3D/home/matt/renew_thud/build/tmp/work/x86_=
64-linux/gcc-cross-initial-arm/8.2.0-r0/recipe-sysroot-native/usr/share --s=
ysconfdir=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/gcc-cross-ini=
tial-arm/8.2.0-r0/recipe-sysroot-native/etc --sharedstatedir=3D/home/matt/r=
enew_thud/build/tmp/work/x86_64-linux/gcc-cross-initial-arm/8.2.0-r0/recipe=
-sysroot-native/com --localstatedir=3D/home/matt/renew_thud/build/tmp/work/=
x86_64-linux/gcc-cross-initial-arm/8.2.0-r0/recipe-sysroot-native/var --lib=
dir=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/gcc-cross-initial-a=
rm/8.2.0-r0/recipe-sysroot-native/usr/lib/arm-poky-linux-gnueabi.gcc-cross-=
initial-arm --includedir=3D/home/matt/renew_thud/build/tmp/work/x86_64-linu=
x/gcc-cross-initial-arm/8.2.0-r0/recipe-sysroot-native/usr/include --oldinc=
ludedir=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/gcc-cross-initi=
al-arm/8.2.0-r0/recipe-sysroot-native/usr/include --infodir=3D/home/matt/re=
new_thud/build/tmp/work/x86_64-linux/gcc-cross-initial-arm/8.2.0-r0/recipe-=
sysroot-native/usr/share/info --mandir=3D/home/matt/renew_thud/build/tmp/wo=
rk/x86_64-linux/gcc-cross-initial-arm/8.2.0-r0/recipe-sysroot-native/usr/sh=
are/man --disable-silent-rules --disable-dependency-tracking --with-libtool=
-sysroot=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/gcc-cross-init=
ial-arm/8.2.0-r0/recipe-sysroot-native --with-newlib --without-headers --di=
sable-shared --disable-threads --disable-multilib --disable-__cxa_atexit --=
enable-languages=3Dc --program-prefix=3Darm-poky-linux-gnueabi- --with-sysr=
oot=3D/not/exist --with-build-sysroot=3D/home/matt/renew_thud/build/tmp/wor=
k/x86_64-linux/gcc-cross-initial-arm/8.2.0-r0/recipe-sysroot --disable-libm=
udflap --disable-libgomp --disable-libitm --disable-libquadmath --with-syst=
em-zlib --disable-lto --disable-plugin --enable-linker-build-id --enable-de=
cimal-float=3Dno --without-isl --disable-libssp --with-native-system-header=
-dir=3D/usr/include --disable-static --disable-nls --enable-initfini-array
>> >> >> >> Thread model: single
>> >> >> >> gcc version 8.2.0 (GCC)
>> >> >> >> configure:2605: $? =3D 0
>> >> >> >> configure:2594: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -ma=
rm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm=
926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -V >&5
>> >> >> >> arm-poky-linux-gnueabi-gcc: error: unrecognized command line op=
tion '-V'
>> >> >> >> arm-poky-linux-gnueabi-gcc: fatal error: no input files
>> >> >> >> compilation terminated.
>> >> >> >> configure:2605: $? =3D 1
>> >> >> >> configure:2594: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -ma=
rm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm=
926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -qversion >=
&5
>> >> >> >> arm-poky-linux-gnueabi-gcc: error: unrecognized command line op=
tion '-qversion'; did you mean '--version'?
>> >> >> >> arm-poky-linux-gnueabi-gcc: fatal error: no input files
>> >> >> >> compilation terminated.
>> >> >> >> configure:2605: $? =3D 1
>> >> >> >> configure:2610: checking for suffix of object files
>> >> >> >> configure:2632: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -ma=
rm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm=
926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -c  -O2 -pi=
pe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/home/matt/renew_=
thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0=3D/=
usr/src/debug/glibc-initial/2.28-r0 -fdebug-prefix-map=3D/home/matt/renew_t=
hud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/reci=
pe-sysroot=3D -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm=
926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D  =
 conftest.c >&5
>> >> >> >> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=
=3Darmv5e switch
>> >> >> >> configure:2636: $? =3D 0
>> >> >> >> configure:2657: result: o
>> >> >> >> configure:2661: checking whether we are using the GNU C compile=
r
>> >> >> >> configure:2680: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -ma=
rm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm=
926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -c  -O2 -pi=
pe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/home/matt/renew_=
thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0=3D/=
usr/src/debug/glibc-initial/2.28-r0 -fdebug-prefix-map=3D/home/matt/renew_t=
hud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/reci=
pe-sysroot=3D -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm=
926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D  =
 conftest.c >&5
>> >> >> >> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=
=3Darmv5e switch
>> >> >> >> configure:2680: $? =3D 0
>> >> >> >> configure:2689: result: yes
>> >> >> >> configure:2698: checking whether arm-poky-linux-gnueabi-gcc  -m=
arch=3Darmv5e -marm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/b=
uild/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sy=
sroot accepts -g
>> >> >> >> configure:2718: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -ma=
rm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm=
926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -c -g  conf=
test.c >&5
>> >> >> >> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=
=3Darmv5e switch
>> >> >> >> configure:2718: $? =3D 0
>> >> >> >> configure: failed program was:
>> >> >> >> | /* confdefs.h */
>> >> >> >> | #define PACKAGE_NAME "GNU C Library"
>> >> >> >> | #define PACKAGE_TARNAME "glibc"
>> >> >> >> | #define PACKAGE_VERSION "(see version.h)"
>> >> >> >> | #define PACKAGE_STRING "GNU C Library (see version.h)"
>> >> >> >> | #define PACKAGE_BUGREPORT "https://sourceware.org/bugzilla/"
>> >> >> >> | #define PACKAGE_URL "http://www.gnu.org/software/glibc/"
>> >> >> >> | #define PKGVERSION "(GNU libc) "
>> >> >> >> | #define REPORT_BUGS_TO "<http://www.gnu.org/software/libc/bug=
s.html>"
>> >> >> >> | /* end confdefs.h.  */
>> >> >> >> |
>> >> >> >> | int
>> >> >> >> | main ()
>> >> >> >> | {
>> >> >> >> |
>> >> >> >> |   ;
>> >> >> >> |   return 0;
>> >> >> >> | }
>> >> >> >> configure:2733: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -ma=
rm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm=
926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -c   confte=
st.c >&5
>> >> >> >> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=
=3Darmv5e switch
>> >> >> >> configure:2733: $? =3D 0
>> >> >> >> configure: failed program was:
>> >> >> >> | /* confdefs.h */
>> >> >> >> | #define PACKAGE_NAME "GNU C Library"
>> >> >> >> | #define PACKAGE_TARNAME "glibc"
>> >> >> >> | #define PACKAGE_VERSION "(see version.h)"
>> >> >> >> | #define PACKAGE_STRING "GNU C Library (see version.h)"
>> >> >> >> | #define PACKAGE_BUGREPORT "https://sourceware.org/bugzilla/"
>> >> >> >> | #define PACKAGE_URL "http://www.gnu.org/software/glibc/"
>> >> >> >> | #define PKGVERSION "(GNU libc) "
>> >> >> >> | #define REPORT_BUGS_TO "<http://www.gnu.org/software/libc/bug=
s.html>"
>> >> >> >> | /* end confdefs.h.  */
>> >> >> >> |
>> >> >> >> | int
>> >> >> >> | main ()
>> >> >> >> | {
>> >> >> >> |
>> >> >> >> |   ;
>> >> >> >> |   return 0;
>> >> >> >> | }
>> >> >> >> configure:2749: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -ma=
rm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm=
926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -c -g  conf=
test.c >&5
>> >> >> >> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=
=3Darmv5e switch
>> >> >> >> configure:2749: $? =3D 0
>> >> >> >> configure:2759: result: yes
>> >> >> >> configure:2788: checking for gcc
>> >> >> >> configure:2815: result: gcc
>> >> >> >> configure:2839: checking for arm-poky-linux-gnueabi-readelf
>> >> >> >> configure:2866: result: arm-poky-linux-gnueabi-readelf
>> >> >> >> configure:3042: checking for C++ compiler version
>> >> >> >> configure:3051: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -ma=
rm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm=
926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot --version >=
&5
>> >> >> >> ../git/configure: line 3053: arm-poky-linux-gnueabi-g++: comman=
d not found
>> >> >> >> configure:3062: $? =3D 127
>> >> >> >> configure:3051: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -ma=
rm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm=
926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -v >&5
>> >> >> >> ../git/configure: line 3053: arm-poky-linux-gnueabi-g++: comman=
d not found
>> >> >> >> configure:3062: $? =3D 127
>> >> >> >> configure:3051: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -ma=
rm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm=
926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -V >&5
>> >> >> >> ../git/configure: line 3053: arm-poky-linux-gnueabi-g++: comman=
d not found
>> >> >> >> configure:3062: $? =3D 127
>> >> >> >> configure:3051: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -ma=
rm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm=
926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -qversion >=
&5
>> >> >> >> ../git/configure: line 3053: arm-poky-linux-gnueabi-g++: comman=
d not found
>> >> >> >> configure:3062: $? =3D 127
>> >> >> >> configure:3066: checking whether we are using the GNU C++ compi=
ler
>> >> >> >> configure:3085: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -ma=
rm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm=
926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -c  -O2 -pi=
pe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/home/matt/renew_=
thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0=3D/=
usr/src/debug/glibc-initial/2.28-r0 -fdebug-prefix-map=3D/home/matt/renew_t=
hud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/reci=
pe-sysroot=3D -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm=
926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D  =
-fvisibility-inlines-hidden  conftest.cpp >&5
>> >> >> >> ../git/configure: line 1633: arm-poky-linux-gnueabi-g++: comman=
d not found
>> >> >> >> configure:3085: $? =3D 127
>> >> >> >> configure: failed program was:
>> >> >> >> | /* confdefs.h */
>> >> >> >> | #define PACKAGE_NAME "GNU C Library"
>> >> >> >> | #define PACKAGE_TARNAME "glibc"
>> >> >> >> | #define PACKAGE_VERSION "(see version.h)"
>> >> >> >> | #define PACKAGE_STRING "GNU C Library (see version.h)"
>> >> >> >> | #define PACKAGE_BUGREPORT "https://sourceware.org/bugzilla/"
>> >> >> >> | #define PACKAGE_URL "http://www.gnu.org/software/glibc/"
>> >> >> >> | #define PKGVERSION "(GNU libc) "
>> >> >> >> | #define REPORT_BUGS_TO "<http://www.gnu.org/software/libc/bug=
s.html>"
>> >> >> >> | /* end confdefs.h.  */
>> >> >> >> |
>> >> >> >> | int
>> >> >> >> | main ()
>> >> >> >> | {
>> >> >> >> | #ifndef __GNUC__
>> >> >> >> |        choke me
>> >> >> >> | #endif
>> >> >> >> |
>> >> >> >> |   ;
>> >> >> >> |   return 0;
>> >> >> >> | }
>> >> >> >> configure:3094: result: no
>> >> >> >> configure:3103: checking whether arm-poky-linux-gnueabi-g++  -m=
arch=3Darmv5e -marm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/b=
uild/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sy=
sroot accepts -g
>> >> >> >> configure:3123: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -ma=
rm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm=
926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -c -g  conf=
test.cpp >&5
>> >> >> >> ../git/configure: line 1633: arm-poky-linux-gnueabi-g++: comman=
d not found
>> >> >> >> configure:3123: $? =3D 127
>> >> >> >> configure: failed program was:
>> >> >> >> | /* confdefs.h */
>> >> >> >> | #define PACKAGE_NAME "GNU C Library"
>> >> >> >> | #define PACKAGE_TARNAME "glibc"
>> >> >> >> | #define PACKAGE_VERSION "(see version.h)"
>> >> >> >> | #define PACKAGE_STRING "GNU C Library (see version.h)"
>> >> >> >> | #define PACKAGE_BUGREPORT "https://sourceware.org/bugzilla/"
>> >> >> >> | #define PACKAGE_URL "http://www.gnu.org/software/glibc/"
>> >> >> >> | #define PKGVERSION "(GNU libc) "
>> >> >> >> | #define REPORT_BUGS_TO "<http://www.gnu.org/software/libc/bug=
s.html>"
>> >> >> >> | /* end confdefs.h.  */
>> >> >> >> |
>> >> >> >> | int
>> >> >> >> | main ()
>> >> >> >> | {
>> >> >> >> |
>> >> >> >> |   ;
>> >> >> >> |   return 0;
>> >> >> >> | }
>> >> >> >> configure:3138: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -ma=
rm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm=
926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -c   confte=
st.cpp >&5
>> >> >> >> ../git/configure: line 1633: arm-poky-linux-gnueabi-g++: comman=
d not found
>> >> >> >> configure:3138: $? =3D 127
>> >> >> >> configure: failed program was:
>> >> >> >> | /* confdefs.h */
>> >> >> >> | #define PACKAGE_NAME "GNU C Library"
>> >> >> >> | #define PACKAGE_TARNAME "glibc"
>> >> >> >> | #define PACKAGE_VERSION "(see version.h)"
>> >> >> >> | #define PACKAGE_STRING "GNU C Library (see version.h)"
>> >> >> >> | #define PACKAGE_BUGREPORT "https://sourceware.org/bugzilla/"
>> >> >> >> | #define PACKAGE_URL "http://www.gnu.org/software/glibc/"
>> >> >> >> | #define PKGVERSION "(GNU libc) "
>> >> >> >> | #define REPORT_BUGS_TO "<http://www.gnu.org/software/libc/bug=
s.html>"
>> >> >> >> | /* end confdefs.h.  */
>> >> >> >> |
>> >> >> >> | int
>> >> >> >> | main ()
>> >> >> >> | {
>> >> >> >> |
>> >> >> >> |   ;
>> >> >> >> |   return 0;
>> >> >> >> | }
>> >> >> >> configure:3154: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -ma=
rm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm=
926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -c -g  conf=
test.cpp >&5
>> >> >> >> ../git/configure: line 1633: arm-poky-linux-gnueabi-g++: comman=
d not found
>> >> >> >> configure:3154: $? =3D 127
>> >> >> >> configure: failed program was:
>> >> >> >> | /* confdefs.h */
>> >> >> >> | #define PACKAGE_NAME "GNU C Library"
>> >> >> >> | #define PACKAGE_TARNAME "glibc"
>> >> >> >> | #define PACKAGE_VERSION "(see version.h)"
>> >> >> >> | #define PACKAGE_STRING "GNU C Library (see version.h)"
>> >> >> >> | #define PACKAGE_BUGREPORT "https://sourceware.org/bugzilla/"
>> >> >> >> | #define PACKAGE_URL "http://www.gnu.org/software/glibc/"
>> >> >> >> | #define PKGVERSION "(GNU libc) "
>> >> >> >> | #define REPORT_BUGS_TO "<http://www.gnu.org/software/libc/bug=
s.html>"
>> >> >> >> | /* end confdefs.h.  */
>> >> >> >> |
>> >> >> >> | int
>> >> >> >> | main ()
>> >> >> >> | {
>> >> >> >> |
>> >> >> >> |   ;
>> >> >> >> |   return 0;
>> >> >> >> | }
>> >> >> >> configure:3164: result: no
>> >> >> >> configure:3189: checking whether arm-poky-linux-gnueabi-g++  -m=
arch=3Darmv5e -marm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/b=
uild/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sy=
sroot can link programs
>> >> >> >> configure:3212: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -ma=
rm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm=
926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -o conftest=
  -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/home/ma=
tt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.=
28-r0=3D/usr/src/debug/glibc-initial/2.28-r0 -fdebug-prefix-map=3D/home/mat=
t/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.2=
8-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp=
/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-na=
tive=3D  -fvisibility-inlines-hidden  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--=
as-needed  -Wl,-z,relro,-z,now conftest.cpp  >&5
>> >> >> >> ../git/configure: line 1671: arm-poky-linux-gnueabi-g++: comman=
d not found
>> >> >> >> configure:3212: $? =3D 127
>> >> >> >> configure: failed program was:
>> >> >> >> | /* confdefs.h */
>> >> >> >> | #define PACKAGE_NAME "GNU C Library"
>> >> >> >> | #define PACKAGE_TARNAME "glibc"
>> >> >> >> | #define PACKAGE_VERSION "(see version.h)"
>> >> >> >> | #define PACKAGE_STRING "GNU C Library (see version.h)"
>> >> >> >> | #define PACKAGE_BUGREPORT "https://sourceware.org/bugzilla/"
>> >> >> >> | #define PACKAGE_URL "http://www.gnu.org/software/glibc/"
>> >> >> >> | #define PKGVERSION "(GNU libc) "
>> >> >> >> | #define REPORT_BUGS_TO "<http://www.gnu.org/software/libc/bug=
s.html>"
>> >> >> >> | /* end confdefs.h.  */
>> >> >> >> |
>> >> >> >> | int
>> >> >> >> | main ()
>> >> >> >> | {
>> >> >> >> |
>> >> >> >> |   ;
>> >> >> >> |   return 0;
>> >> >> >> | }
>> >> >> >> configure:3235: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -ma=
rm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm=
926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -o conftest=
  -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/home/ma=
tt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.=
28-r0=3D/usr/src/debug/glibc-initial/2.28-r0 -fdebug-prefix-map=3D/home/mat=
t/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.2=
8-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp=
/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-na=
tive=3D  -fvisibility-inlines-hidden  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--=
as-needed  -Wl,-z,relro,-z,now -static conftest.cpp  >&5
>> >> >> >> ../git/configure: line 1671: arm-poky-linux-gnueabi-g++: comman=
d not found
>> >> >> >> configure:3235: $? =3D 127
>> >> >> >> configure: failed program was:
>> >> >> >> | /* confdefs.h */
>> >> >> >> | #define PACKAGE_NAME "GNU C Library"
>> >> >> >> | #define PACKAGE_TARNAME "glibc"
>> >> >> >> | #define PACKAGE_VERSION "(see version.h)"
>> >> >> >> | #define PACKAGE_STRING "GNU C Library (see version.h)"
>> >> >> >> | #define PACKAGE_BUGREPORT "https://sourceware.org/bugzilla/"
>> >> >> >> | #define PACKAGE_URL "http://www.gnu.org/software/glibc/"
>> >> >> >> | #define PKGVERSION "(GNU libc) "
>> >> >> >> | #define REPORT_BUGS_TO "<http://www.gnu.org/software/libc/bug=
s.html>"
>> >> >> >> | /* end confdefs.h.  */
>> >> >> >> |
>> >> >> >> | #include <iostream>
>> >> >> >> |
>> >> >> >> | int
>> >> >> >> | main()
>> >> >> >> | {
>> >> >> >> |   std::cout << "Hello, world!";
>> >> >> >> |   return 0;
>> >> >> >> | }
>> >> >> >> |
>> >> >> >> configure:3250: result: no
>> >> >> >> configure:3817: checking for sysdeps preconfigure fragments
>> >> >> >> configure:49: WARNING: arm/preconfigure: Did not find ARM archi=
tecture type; using default
>> >> >> >> configure:3824: result:
>> >> >> >> configure:3854: checking for use of fpu sysdeps directories
>> >> >> >> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=
=3Darmv5e switch
>> >> >> >> conftest.c:4:3: error: #error "no hardware floating point"
>> >> >> >>  # error "no hardware floating point"
>> >> >> >>    ^~~~~
>> >> >> >> configure:3873: result: no
>> >> >> >> configure:3877: checking for -fstack-protector
>> >> >> >> configure:3883: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -ma=
rm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm=
926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot  -O2 -pipe =
-g -feliminate-unused-debug-types -fdebug-prefix-map=3D/home/matt/renew_thu=
d/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0=3D/usr=
/src/debug/glibc-initial/2.28-r0 -fdebug-prefix-map=3D/home/matt/renew_thud=
/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-=
sysroot=3D -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926=
ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D  -fn=
o-unwind-tables  -Werror -fstack-protector -xc /dev/null -S -o /dev/null
>> >> >> >> cc1: error: switch -mcpu=3Darm926ej-s conflicts with -march=3Da=
rmv5e switch [-Werror]
>> >> >> >> cc1: all warnings being treated as errors
>> >> >> >> configure:3886: $? =3D 1
>> >> >> >> configure:3894: result: no
>> >> >> >> configure:3897: checking for -fstack-protector-strong
>> >> >> >> configure:3903: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -ma=
rm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm=
926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot  -O2 -pipe =
-g -feliminate-unused-debug-types -fdebug-prefix-map=3D/home/matt/renew_thu=
d/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0=3D/usr=
/src/debug/glibc-initial/2.28-r0 -fdebug-prefix-map=3D/home/matt/renew_thud=
/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-=
sysroot=3D -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926=
ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D  -fn=
o-unwind-tables  -Werror -fstack-protector-strong -xc /dev/null -S -o /dev/=
null
>> >> >> >> cc1: error: switch -mcpu=3Darm926ej-s conflicts with -march=3Da=
rmv5e switch [-Werror]
>> >> >> >> cc1: all warnings being treated as errors
>> >> >> >> configure:3906: $? =3D 1
>> >> >> >> configure:3914: result: no
>> >> >> >> configure:3917: checking for -fstack-protector-all
>> >> >> >> configure:3923: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -ma=
rm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm=
926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot  -O2 -pipe =
-g -feliminate-unused-debug-types -fdebug-prefix-map=3D/home/matt/renew_thu=
d/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0=3D/usr=
/src/debug/glibc-initial/2.28-r0 -fdebug-prefix-map=3D/home/matt/renew_thud=
/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-=
sysroot=3D -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926=
ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D  -fn=
o-unwind-tables  -Werror -fstack-protector-all -xc /dev/null -S -o /dev/nul=
l
>> >> >> >> cc1: error: switch -mcpu=3Darm926ej-s conflicts with -march=3Da=
rmv5e switch [-Werror]
>> >> >> >> cc1: all warnings being treated as errors
>> >> >> >> configure:3926: $? =3D 1
>> >> >> >> configure:3934: result: no
>> >> >> >> configure:3977: checking for assembler and linker STT_GNU_IFUNC=
 support
>> >> >> >> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=
=3Darmv5e switch
>> >> >> >>
>> >> >> >> Relocation section '.rel.dyn' at offset 0xd8 contains 1 entry:
>> >> >> >>  Offset     Info    Type            Sym.Value  Sym. Name
>> >> >> >> 00020ffc  000000a0 R_ARM_IRELATIVE
>> >> >> >> configure:4008: result: yes
>> >> >> >> configure:4012: checking for gcc attribute ifunc support
>> >> >> >> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=
=3Darmv5e switch
>> >> >> >> configure:4038: result: yes
>> >> >> >> configure:4042: checking if compiler warns about alias for func=
tion with incompatible types
>> >> >> >> cc1: error: switch -mcpu=3Darm926ej-s conflicts with -march=3Da=
rmv5e switch [-Werror]
>> >> >> >> conftest.c:9:34: error: 'foo_alias' alias between functions of =
incompatible types 'int(const void *, int)' and 'int (*(void))(const void *=
, int)' [-Werror=3Dattribute-alias]
>> >> >> >>  extern __typeof (__redirect_foo) foo_alias __attribute__ ((ali=
as ("foo")));
>> >> >> >>                                   ^~~~~~~~~
>> >> >> >> conftest.c:4:28: note: aliased declaration here
>> >> >> >>  __typeof (__redirect_foo) *foo_impl (void)
>> >> >> >>                             ^~~~~~~~
>> >> >> >> cc1: all warnings being treated as errors
>> >> >> >> configure:4064: result: yes
>> >> >> >> configure:4102: checking sysdep dirs
>> >> >> >> configure:4299: result: sysdeps/generic
>> >> >> >> configure:4319: checking for a BSD-compatible install
>> >> >> >> configure:4387: result: /home/matt/renew_thud/build/tmp/hosttoo=
ls/install -c
>> >> >> >> configure:4402: checking whether ln -s works
>> >> >> >> configure:4406: result: yes
>> >> >> >> configure:4432: checking whether /home/matt/renew_thud/build/tm=
p/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-n=
ative/usr/bin/arm-poky-linux-gnueabi.gcc-cross-initial-arm/../../libexec/ar=
m-poky-linux-gnueabi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0=
/as is GNU as
>> >> >> >> configure:4446: result: yes
>> >> >> >> configure:4451: checking whether /home/matt/renew_thud/build/tm=
p/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-n=
ative/usr/bin/arm-poky-linux-gnueabi.gcc-cross-initial-arm/../../libexec/ar=
m-poky-linux-gnueabi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0=
/ld is GNU ld
>> >> >> >> configure:4465: result: yes
>> >> >> >> configure:4475: checking for /home/matt/renew_thud/build/tmp/wo=
rk/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-nativ=
e/usr/bin/arm-poky-linux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-po=
ky-linux-gnueabi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/as
>> >> >> >> configure:4502: result: /home/matt/renew_thud/build/tmp/work/ar=
m926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr=
/bin/arm-poky-linux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-li=
nux-gnueabi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/as
>> >> >> >> configure:4517: checking version of /home/matt/renew_thud/build=
/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroo=
t-native/usr/bin/arm-poky-linux-gnueabi.gcc-cross-initial-arm/../../libexec=
/arm-poky-linux-gnueabi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.=
2.0/as
>> >> >> >> configure:4527: result: 2.31.1.20180818, ok
>> >> >> >> configure:4605: checking for /home/matt/renew_thud/build/tmp/wo=
rk/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-nativ=
e/usr/bin/arm-poky-linux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-po=
ky-linux-gnueabi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/ld
>> >> >> >> configure:4632: result: /home/matt/renew_thud/build/tmp/work/ar=
m926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr=
/bin/arm-poky-linux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-li=
nux-gnueabi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/ld
>> >> >> >> configure:4647: checking version of /home/matt/renew_thud/build=
/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroo=
t-native/usr/bin/arm-poky-linux-gnueabi.gcc-cross-initial-arm/../../libexec=
/arm-poky-linux-gnueabi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.=
2.0/ld
>> >> >> >> configure:4657: result: 2.31.1.20180818, ok
>> >> >> >> configure:4672: checking for gnumake
>> >> >> >> configure:4699: result: make
>> >> >> >> configure:4714: checking version of make
>> >> >> >> configure:4724: result: 4.2.1, ok
>> >> >> >> configure:4736: checking for gnumsgfmt
>> >> >> >> configure:4766: result: no
>> >> >> >> configure:4736: checking for gmsgfmt
>> >> >> >> configure:4766: result: no
>> >> >> >> configure:4736: checking for msgfmt
>> >> >> >> configure:4766: result: no
>> >> >> >> configure:4799: checking for makeinfo
>> >> >> >> configure:4815: found /home/matt/renew_thud/build/tmp/hosttools=
/makeinfo
>> >> >> >> configure:4826: result: makeinfo
>> >> >> >> configure:4841: checking version of makeinfo
>> >> >> >> configure:4851: result: 6.5, ok
>> >> >> >> configure:4862: checking for sed
>> >> >> >> configure:4878: found /home/matt/renew_thud/build/tmp/hosttools=
/sed
>> >> >> >> configure:4889: result: sed
>> >> >> >> configure:4904: checking version of sed
>> >> >> >> configure:4914: result: 4.5, ok
>> >> >> >> configure:4925: checking for gawk
>> >> >> >> configure:4941: found /home/matt/renew_thud/build/tmp/hosttools=
/gawk
>> >> >> >> configure:4952: result: gawk
>> >> >> >> configure:4967: checking version of gawk
>> >> >> >> configure:4977: result: 4.1.4, ok
>> >> >> >> configure:4988: checking for bison
>> >> >> >> configure:5004: found /home/matt/renew_thud/build/tmp/work/arm9=
26ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/b=
in/bison
>> >> >> >> configure:5015: result: bison
>> >> >> >> configure:5030: checking version of bison
>> >> >> >> configure:5040: result: 3.0.4, ok
>> >> >> >> configure:5048: checking if arm-poky-linux-gnueabi-gcc  -march=
=3Darmv5e -marm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build=
/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroo=
t is sufficient to build libc
>> >> >> >> configure:5068: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -ma=
rm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm=
926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -c  -O2 -pi=
pe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/home/matt/renew_=
thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0=3D/=
usr/src/debug/glibc-initial/2.28-r0 -fdebug-prefix-map=3D/home/matt/renew_t=
hud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/reci=
pe-sysroot=3D -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm=
926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D  =
-fno-unwind-tables  conftest.c >&5
>> >> >> >> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=
=3Darmv5e switch
>> >> >> >> configure:5068: $? =3D 0
>> >> >> >> configure:5075: result: yes
>> >> >> >> configure:5084: checking for arm-poky-linux-gnueabi-nm
>> >> >> >> configure:5111: result: arm-poky-linux-gnueabi-nm
>> >> >> >> configure:5249: checking for python3
>> >> >> >> configure:5265: found /home/matt/renew_thud/build/tmp/hosttools=
/python3
>> >> >> >> configure:5276: result: python3
>> >> >> >> configure:5307: WARNING:
>> >> >> >> *** These auxiliary programs are missing or incompatible versio=
ns: msgfmt
>> >> >> >> *** some features or tests will be disabled.
>> >> >> >> *** Check the INSTALL file for required versions.
>> >> >> >> configure:5358: checking LD_LIBRARY_PATH variable
>> >> >> >> configure:5368: result: ok
>> >> >> >> configure:5379: checking for bash
>> >> >> >> configure:5397: found /home/matt/renew_thud/build/tmp/hosttools=
/bash
>> >> >> >> configure:5410: result: /home/matt/renew_thud/build/tmp/hosttoo=
ls/bash
>> >> >> >> configure:5421: checking for perl
>> >> >> >> configure:5439: found /home/matt/renew_thud/build/tmp/hosttools=
/perl
>> >> >> >> configure:5452: result: /home/matt/renew_thud/build/tmp/hosttoo=
ls/perl
>> >> >> >> configure:5466: checking for install-info
>> >> >> >> configure:5485: found /usr/bin/install-info
>> >> >> >> configure:5498: result: /usr/bin/install-info
>> >> >> >> configure:5507: checking for .set assembler directive
>> >> >> >> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=
=3Darmv5e switch
>> >> >> >> configure:5533: result: yes
>> >> >> >> configure:5540: checking linker support for protected data symb=
ol
>> >> >> >> configure:5550: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -ma=
rm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm=
926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -nostdlib -=
nostartfiles -fno-stack-protector -fPIC -shared conftest.c -o conftest.so
>> >> >> >> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=
=3Darmv5e switch
>> >> >> >> configure:5553: $? =3D 0
>> >> >> >> configure:5560: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -ma=
rm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm=
926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -nostdlib -=
nostartfiles -fno-stack-protector conftest.c -o conftest conftest.so
>> >> >> >> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=
=3Darmv5e switch
>> >> >> >> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnue=
abi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnue=
abi.gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-in=
itial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/ld: warning: cannot find entry s=
ymbol _start; defaulting to 00000000000101dc
>> >> >> >> configure:5563: $? =3D 0
>> >> >> >> configure:5571: result: yes
>> >> >> >> configure:5575: checking linker support for INSERT in linker sc=
ript
>> >> >> >> configure:5593: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -ma=
rm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm=
926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -nostdlib -=
nostartfiles -fno-stack-protector -fPIC -shared conftest.c -Wl,-T,conftest.=
t -o conftest.so
>> >> >> >> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=
=3Darmv5e switch
>> >> >> >> configure:5596: $? =3D 0
>> >> >> >> configure:5603: result: yes
>> >> >> >> configure:5607: checking for broken __attribute__((alias()))
>> >> >> >> configure:5622: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -ma=
rm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm=
926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -Werror -S =
conftest.c -o conftest.s 1>&5
>> >> >> >> cc1: error: switch -mcpu=3Darm926ej-s conflicts with -march=3Da=
rmv5e switch [-Werror]
>> >> >> >> cc1: all warnings being treated as errors
>> >> >> >> configure:5625: $? =3D 1
>> >> >> >> configure:5635: result: yes
>> >> >> >> configure:5638: error: working alias attribute support required
>> >> >> >>
>> >> >> >> ## ---------------- ##
>> >> >> >> ## Cache variables. ##
>> >> >> >> ## ---------------- ##
>> >> >> >>
>> >> >> >> ac_cv_build=3Dx86_64-pc-linux-gnu
>> >> >> >> ac_cv_c_compiler_gnu=3Dyes
>> >> >> >> ac_cv_cxx_compiler_gnu=3Dno
>> >> >> >> ac_cv_env_CCC_set=3D
>> >> >> >> ac_cv_env_CCC_value=3D
>> >> >> >> ac_cv_env_CC_set=3Dset
>> >> >> >> ac_cv_env_CC_value=3D'arm-poky-linux-gnueabi-gcc  -march=3Darmv=
5e -marm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/wo=
rk/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot'
>> >> >> >> ac_cv_env_CFLAGS_set=3Dset
>> >> >> >> ac_cv_env_CFLAGS_value=3D' -O2 -pipe -g -feliminate-unused-debu=
g-types -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejs=
e-poky-linux-gnueabi/glibc-initial/2.28-r0=3D/usr/src/debug/glibc-initial/2=
.28-r0 -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse=
-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=3D -fdebug-prefix-=
map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/gl=
ibc-initial/2.28-r0/recipe-sysroot-native=3D '
>> >> >> >> ac_cv_env_CPPFLAGS_set=3Dset
>> >> >> >> ac_cv_env_CPPFLAGS_value=3D
>> >> >> >> ac_cv_env_CPP_set=3Dset
>> >> >> >> ac_cv_env_CPP_value=3D'arm-poky-linux-gnueabi-gcc -E --sysroot=
=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc=
-initial/2.28-r0/recipe-sysroot  -march=3Darmv5e -marm -mcpu=3Darm926ej-s '
>> >> >> >> ac_cv_env_CXXFLAGS_set=3Dset
>> >> >> >> ac_cv_env_CXXFLAGS_value=3D' -O2 -pipe -g -feliminate-unused-de=
bug-types -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926e=
jse-poky-linux-gnueabi/glibc-initial/2.28-r0=3D/usr/src/debug/glibc-initial=
/2.28-r0 -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ej=
se-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=3D -fdebug-prefi=
x-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/=
glibc-initial/2.28-r0/recipe-sysroot-native=3D  -fvisibility-inlines-hidden=
'
>> >> >> >> ac_cv_env_CXX_set=3Dset
>> >> >> >> ac_cv_env_CXX_value=3D'arm-poky-linux-gnueabi-g++  -march=3Darm=
v5e -marm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/w=
ork/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot'
>> >> >> >> ac_cv_env_LDFLAGS_set=3Dset
>> >> >> >> ac_cv_env_LDFLAGS_value=3D'-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,-=
-as-needed  -Wl,-z,relro,-z,now'
>> >> >> >> ac_cv_env_LIBS_set=3D
>> >> >> >> ac_cv_env_LIBS_value=3D
>> >> >> >> ac_cv_env_build_alias_set=3Dset
>> >> >> >> ac_cv_env_build_alias_value=3Dx86_64-linux
>> >> >> >> ac_cv_env_host_alias_set=3Dset
>> >> >> >> ac_cv_env_host_alias_value=3Darm-poky-linux-gnueabi
>> >> >> >> ac_cv_env_target_alias_set=3D
>> >> >> >> ac_cv_env_target_alias_value=3D
>> >> >> >> ac_cv_host=3Darm-poky-linux-gnueabi
>> >> >> >> ac_cv_objext=3Do
>> >> >> >> ac_cv_path_BASH_SHELL=3D/home/matt/renew_thud/build/tmp/hosttoo=
ls/bash
>> >> >> >> ac_cv_path_INSTALL_INFO=3D/usr/bin/install-info
>> >> >> >> ac_cv_path_PERL=3D/home/matt/renew_thud/build/tmp/hosttools/per=
l
>> >> >> >> ac_cv_path_install=3D'/home/matt/renew_thud/build/tmp/hosttools=
/install -c'
>> >> >> >> ac_cv_prog_AS=3D/home/matt/renew_thud/build/tmp/work/arm926ejse=
-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm=
-poky-linux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnue=
abi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/as
>> >> >> >> ac_cv_prog_AWK=3Dgawk
>> >> >> >> ac_cv_prog_BISON=3Dbison
>> >> >> >> ac_cv_prog_BUILD_CC=3D'gcc '
>> >> >> >> ac_cv_prog_CC=3D'arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -m=
arm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/ar=
m926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot'
>> >> >> >> ac_cv_prog_LD=3D/home/matt/renew_thud/build/tmp/work/arm926ejse=
-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm=
-poky-linux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnue=
abi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/ld
>> >> >> >> ac_cv_prog_MAKE=3Dmake
>> >> >> >> ac_cv_prog_MAKEINFO=3Dmakeinfo
>> >> >> >> ac_cv_prog_NM=3Darm-poky-linux-gnueabi-nm
>> >> >> >> ac_cv_prog_PYTHON_PROG=3Dpython3
>> >> >> >> ac_cv_prog_READELF=3Darm-poky-linux-gnueabi-readelf
>> >> >> >> ac_cv_prog_SED=3Dsed
>> >> >> >> ac_cv_prog_cc_g=3Dyes
>> >> >> >> ac_cv_prog_cxx_g=3Dno
>> >> >> >> libc_cv_asm_set_directive=3Dyes
>> >> >> >> libc_cv_broken_alias_attribute=3Dyes
>> >> >> >> libc_cv_compiler_ok=3Dyes
>> >> >> >> libc_cv_cxx_link_ok=3Dno
>> >> >> >> libc_cv_gcc_incompatible_alias=3Dyes
>> >> >> >> libc_cv_gcc_indirect_function=3Dyes
>> >> >> >> libc_cv_insert=3Dyes
>> >> >> >> libc_cv_ld_gnu_indirect_function=3Dyes
>> >> >> >> libc_cv_nss_crypt=3Dno
>> >> >> >> libc_cv_prog_as_gnu=3Dyes
>> >> >> >> libc_cv_prog_ld_gnu=3Dyes
>> >> >> >> libc_cv_protected_data=3Dyes
>> >> >> >> libc_cv_ssp=3Dno
>> >> >> >> libc_cv_ssp_all=3Dno
>> >> >> >> libc_cv_ssp_strong=3Dno
>> >> >> >> libc_cv_static_nss_crypt=3Dno
>> >> >> >> libc_cv_with_fp=3Dno
>> >> >> >> lt_cv_sys_lib_dlsearch_path_spec=3D'/usr/lib /lib'
>> >> >> >>
>> >> >> >> ## ----------------- ##
>> >> >> >> ## Output variables. ##
>> >> >> >> ## ----------------- ##
>> >> >> >>
>> >> >> >> AR=3D'/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linu=
x-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linu=
x-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cr=
oss-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/ar'
>> >> >> >> AS=3D'/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linu=
x-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linu=
x-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cr=
oss-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/as'
>> >> >> >> ASFLAGS_config=3D''
>> >> >> >> AUTOCONF=3D'no'
>> >> >> >> AWK=3D'gawk'
>> >> >> >> BASH_SHELL=3D'/home/matt/renew_thud/build/tmp/hosttools/bash'
>> >> >> >> BISON=3D'bison'
>> >> >> >> BUILD_CC=3D'gcc '
>> >> >> >> CC=3D'arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm -mcpu=
=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-=
poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot'
>> >> >> >> CFLAGS=3D' -O2 -pipe -g -feliminate-unused-debug-types -fdebug-=
prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnu=
eabi/glibc-initial/2.28-r0=3D/usr/src/debug/glibc-initial/2.28-r0 -fdebug-p=
refix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnue=
abi/glibc-initial/2.28-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/home/matt=
/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28=
-r0/recipe-sysroot-native=3D  -fno-unwind-tables'
>> >> >> >> CPP=3D'arm-poky-linux-gnueabi-gcc -E --sysroot=3D/home/matt/ren=
ew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/=
recipe-sysroot  -march=3Darmv5e -marm -mcpu=3Darm926ej-s '
>> >> >> >> CPPFLAGS=3D''
>> >> >> >> CPPUNDEFS=3D''
>> >> >> >> CXX=3D''
>> >> >> >> CXXFLAGS=3D' -O2 -pipe -g -feliminate-unused-debug-types -fdebu=
g-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-g=
nueabi/glibc-initial/2.28-r0=3D/usr/src/debug/glibc-initial/2.28-r0 -fdebug=
-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/home/ma=
tt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.=
28-r0/recipe-sysroot-native=3D  -fvisibility-inlines-hidden'
>> >> >> >> CXX_BITS_STD_ABS_H=3D''
>> >> >> >> CXX_CMATH_HEADER=3D''
>> >> >> >> CXX_CSTDLIB_HEADER=3D''
>> >> >> >> CXX_SYSINCLUDES=3D''
>> >> >> >> DEFINES=3D''
>> >> >> >> DEFS=3D''
>> >> >> >> ECHO_C=3D''
>> >> >> >> ECHO_N=3D'-n'
>> >> >> >> ECHO_T=3D''
>> >> >> >> GPROF=3D'gprof'
>> >> >> >> INSTALL_DATA=3D'${INSTALL} -m 644'
>> >> >> >> INSTALL_INFO=3D'/usr/bin/install-info'
>> >> >> >> INSTALL_PROGRAM=3D'${INSTALL}'
>> >> >> >> INSTALL_SCRIPT=3D'${INSTALL}'
>> >> >> >> LD=3D'/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linu=
x-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linu=
x-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cr=
oss-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/ld'
>> >> >> >> LDFLAGS=3D'-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed  -Wl,=
-z,relro,-z,now'
>> >> >> >> LIBGD=3D''
>> >> >> >> LIBOBJS=3D''
>> >> >> >> LIBS=3D''
>> >> >> >> LN_S=3D'ln -s'
>> >> >> >> LTLIBOBJS=3D''
>> >> >> >> MAKE=3D'make'
>> >> >> >> MAKEINFO=3D'makeinfo'
>> >> >> >> MSGFMT=3D':'
>> >> >> >> NM=3D'arm-poky-linux-gnueabi-nm'
>> >> >> >> OBJCOPY=3D'/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky=
-linux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueabi.g=
cc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/objcopy'
>> >> >> >> OBJDUMP=3D'/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky=
-linux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueabi.g=
cc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/objdump'
>> >> >> >> OBJEXT=3D'o'
>> >> >> >> PACKAGE_BUGREPORT=3D'https://sourceware.org/bugzilla/'
>> >> >> >> PACKAGE_NAME=3D'GNU C Library'
>> >> >> >> PACKAGE_STRING=3D'GNU C Library (see version.h)'
>> >> >> >> PACKAGE_TARNAME=3D'glibc'
>> >> >> >> PACKAGE_URL=3D'http://www.gnu.org/software/glibc/'
>> >> >> >> PACKAGE_VERSION=3D'(see version.h)'
>> >> >> >> PATH_SEPARATOR=3D':'
>> >> >> >> PERL=3D'/home/matt/renew_thud/build/tmp/hosttools/perl'
>> >> >> >> PKGVERSION=3D'(GNU libc) '
>> >> >> >> PKGVERSION_TEXI=3D'(GNU libc) '
>> >> >> >> PYTHON=3D'python3 -B'
>> >> >> >> PYTHON_PROG=3D'python3'
>> >> >> >> READELF=3D'arm-poky-linux-gnueabi-readelf'
>> >> >> >> RELEASE=3D''
>> >> >> >> REPORT_BUGS_TEXI=3D'@uref{http://www.gnu.org/software/libc/bugs=
.html}'
>> >> >> >> REPORT_BUGS_TO=3D'<http://www.gnu.org/software/libc/bugs.html>'
>> >> >> >> SED=3D'sed'
>> >> >> >> SHELL=3D'/bin/bash'
>> >> >> >> SYSINCLUDES=3D'-nostdinc -isystem /home/matt/renew_thud/build/t=
mp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-=
native/usr/bin/arm-poky-linux-gnueabi.gcc-cross-initial-arm/../../lib/arm-p=
oky-linux-gnueabi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/in=
clude -isystem /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-g=
nueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-g=
nueabi.gcc-cross-initial-arm/../../lib/arm-poky-linux-gnueabi.gcc-cross-ini=
tial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/include-fixed -isystem /home/matt=
/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28=
-r0/recipe-sysroot/usr/include'
>> >> >> >> VERSION=3D''
>> >> >> >> ac_ct_CC=3D''
>> >> >> >> ac_ct_CXX=3D''
>> >> >> >> all_warnings=3D''
>> >> >> >> base_machine=3D'arm'
>> >> >> >> bindir=3D'${exec_prefix}/bin'
>> >> >> >> bindnow=3D'no'
>> >> >> >> build=3D'x86_64-pc-linux-gnu'
>> >> >> >> build_alias=3D'x86_64-linux'
>> >> >> >> build_cpu=3D'x86_64'
>> >> >> >> build_crypt=3D'yes'
>> >> >> >> build_nscd=3D'default'
>> >> >> >> build_obsolete_nsl=3D'no'
>> >> >> >> build_os=3D'linux-gnu'
>> >> >> >> build_pt_chown=3D'no'
>> >> >> >> build_vendor=3D'pc'
>> >> >> >> cross_compiling=3D'yes'
>> >> >> >> datadir=3D'${datarootdir}'
>> >> >> >> datarootdir=3D'${prefix}/share'
>> >> >> >> docdir=3D'${datarootdir}/doc/${PACKAGE_TARNAME}'
>> >> >> >> dvidir=3D'${docdir}'
>> >> >> >> enable_timezone_tools=3D'yes'
>> >> >> >> enable_werror=3D'yes'
>> >> >> >> exec_prefix=3D'NONE'
>> >> >> >> experimental_malloc=3D'yes'
>> >> >> >> fno_unit_at_a_time=3D''
>> >> >> >> force_install=3D'yes'
>> >> >> >> hardcoded_path_in_tests=3D'no'
>> >> >> >> have_libaudit=3D''
>> >> >> >> have_libcap=3D''
>> >> >> >> have_selinux=3D''
>> >> >> >> have_tunables=3D'yes'
>> >> >> >> host=3D'arm-poky-linux-gnueabi'
>> >> >> >> host_alias=3D'arm-poky-linux-gnueabi'
>> >> >> >> host_cpu=3D'arm'
>> >> >> >> host_os=3D'linux-gnueabi'
>> >> >> >> host_vendor=3D'poky'
>> >> >> >> htmldir=3D'${docdir}'
>> >> >> >> includedir=3D'${prefix}/include'
>> >> >> >> infodir=3D'${datarootdir}/info'
>> >> >> >> ldd_rewrite_script=3D''
>> >> >> >> libc_cv_cc_loop_to_function=3D''
>> >> >> >> libc_cv_cc_nofma=3D''
>> >> >> >> libc_cv_cc_pie_default=3D''
>> >> >> >> libc_cv_cc_submachine=3D''
>> >> >> >> libc_cv_cc_with_libunwind=3D''
>> >> >> >> libc_cv_complocaledir=3D''
>> >> >> >> libc_cv_cxx_thread_local=3D''
>> >> >> >> libc_cv_fpie=3D''
>> >> >> >> libc_cv_gcc_unwind_find_fde=3D''
>> >> >> >> libc_cv_has_glob_dat=3D''
>> >> >> >> libc_cv_hashstyle=3D''
>> >> >> >> libc_cv_insert=3D'yes'
>> >> >> >> libc_cv_localstatedir=3D''
>> >> >> >> libc_cv_mtls_dialect_gnu2=3D''
>> >> >> >> libc_cv_multidir=3D''
>> >> >> >> libc_cv_nss_crypt=3D'no'
>> >> >> >> libc_cv_output_format=3D''
>> >> >> >> libc_cv_pic_default=3D''
>> >> >> >> libc_cv_pie_default=3D''
>> >> >> >> libc_cv_protected_data=3D'yes'
>> >> >> >> libc_cv_rootsbindir=3D''
>> >> >> >> libc_cv_rtlddir=3D''
>> >> >> >> libc_cv_slibdir=3D''
>> >> >> >> libc_cv_ssp=3D'no'
>> >> >> >> libc_cv_static_nss_crypt=3D'no'
>> >> >> >> libc_cv_sysconfdir=3D''
>> >> >> >> libc_cv_with_fp=3D'no'
>> >> >> >> libc_cv_z_combreloc=3D''
>> >> >> >> libc_cv_z_execstack=3D''
>> >> >> >> libc_extra_cflags=3D''
>> >> >> >> libc_extra_cppflags=3D''
>> >> >> >> libdir=3D'${exec_prefix}/lib'
>> >> >> >> libexecdir=3D'${exec_prefix}/libexec'
>> >> >> >> link_obsolete_rpc=3D'no'
>> >> >> >> localedir=3D'${datarootdir}/locale'
>> >> >> >> localstatedir=3D'${prefix}/var'
>> >> >> >> mach_interface_list=3D''
>> >> >> >> mandir=3D'${datarootdir}/man'
>> >> >> >> multi_arch=3D'no'
>> >> >> >> no_stack_protector=3D''
>> >> >> >> oldincludedir=3D'/usr/include'
>> >> >> >> pdfdir=3D'${docdir}'
>> >> >> >> prefix=3D'/usr'
>> >> >> >> profile=3D'no'
>> >> >> >> program_transform_name=3D's,x,x,'
>> >> >> >> psdir=3D'${docdir}'
>> >> >> >> sbindir=3D'${exec_prefix}/sbin'
>> >> >> >> shared=3D'yes'
>> >> >> >> sharedstatedir=3D'${prefix}/com'
>> >> >> >> stack_protector=3D'-fno-stack-protector'
>> >> >> >> static=3D''
>> >> >> >> static_nss=3D'no'
>> >> >> >> subdirs=3D' '
>> >> >> >> submachine=3D''
>> >> >> >> sysconfdir=3D'${prefix}/etc'
>> >> >> >> sysheaders=3D'/home/matt/renew_thud/build/tmp/work/arm926ejse-p=
oky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot/usr/include'
>> >> >> >> sysnames=3D' sysdeps/unix/sysv/linux/arm sysdeps/arm/nptl sysde=
ps/unix/sysv/linux sysdeps/nptl sysdeps/pthread sysdeps/gnu sysdeps/unix/in=
et sysdeps/unix/sysv sysdeps/unix/arm sysdeps/unix sysdeps/posix sysdeps/ar=
m/nofpu sysdeps/ieee754/soft-fp sysdeps/arm sysdeps/wordsize-32 sysdeps/iee=
e754/flt-32 sysdeps/ieee754/dbl-64 sysdeps/ieee754 sysdeps/generic'
>> >> >> >> target_alias=3D''
>> >> >> >> use_default_link=3D'default'
>> >> >> >> use_ldconfig=3D''
>> >> >> >> use_nscd=3D'yes'
>> >> >> >>
>> >> >> >> ## ----------- ##
>> >> >> >> ## confdefs.h. ##
>> >> >> >> ## ----------- ##
>> >> >> >>
>> >> >> >> /* confdefs.h */
>> >> >> >> #define PACKAGE_NAME "GNU C Library"
>> >> >> >> #define PACKAGE_TARNAME "glibc"
>> >> >> >> #define PACKAGE_VERSION "(see version.h)"
>> >> >> >> #define PACKAGE_STRING "GNU C Library (see version.h)"
>> >> >> >> #define PACKAGE_BUGREPORT "https://sourceware.org/bugzilla/"
>> >> >> >> #define PACKAGE_URL "http://www.gnu.org/software/glibc/"
>> >> >> >> #define PKGVERSION "(GNU libc) "
>> >> >> >> #define REPORT_BUGS_TO "<http://www.gnu.org/software/libc/bugs.=
html>"
>> >> >> >> #define HAVE_TUNABLES 1
>> >> >> >> #define STACK_PROTECTOR_LEVEL 0
>> >> >> >> #define HAVE_ASM_SET_DIRECTIVE 1
>> >> >> >>
>> >> >> >> configure: exit 1
>> >> >> >>
>> >> >> >>
>> >> >> >> On Wed, Jan 2, 2019 at 3:19 PM Khem Raj <raj.khem@gmail.com> wr=
ote:
>> >> >> >>>
>> >> >> >>> On Wed, Jan 2, 2019 at 12:37 PM Matthew Stanger
>> >> >> >>> <matthew_stanger@trimble.com> wrote:
>> >> >> >>> >
>> >> >> >>> > Hi,
>> >> >> >>> >
>> >> >> >>> > I'm getting a build failure under Thud when trying to use th=
e
>> >> >> >>> > following tune in my machine.conf:
>> >> >> >>> > #at91sam9.inc is from meta-atmel - at91sam9263 is ARM target
>> >> >> >>> > require conf/machine/include/at91sam9.inc
>> >> >> >>> > DEFAULTTUNE =3D "arm926ejs"
>> >> >> >>> >
>> >> >> >>> >
>> >> >> >>> > When doing a fresh build 'glibc-initial' config stage fail's=
 with:
>> >> >> >>> > | checking for broken __attribute__((alias()))... yes
>> >> >> >>> > | configure: error: working alias attribute support required
>> >> >> >>> > | WARNING: exit code 1 from a shell command.
>> >> >> >>> > | ERROR: Function failed: do_configure (log file is located =
at
>> >> >> >>> > /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-g=
nueabi/glibc-initial/2.28-r0/temp/log.do_configure.1177)
>> >> >> >>> > ERROR: Task (/home/matt/renew_thud/build/../oe/poky/meta/rec=
ipes-core/glibc/glibc-initial_2.28.bb:do_configure)
>> >> >> >>> > failed with exit code '1'
>> >> >> >>> > NOTE: Tasks Summary: Attempted 2173 tasks of which 0 didn't =
need to be
>> >> >> >>> > rerun and 1 failed.
>> >> >> >>> >
>> >> >> >>> > Summary: 1 task failed:
>> >> >> >>> >   /home/matt/renew_thud/build/../oe/poky/meta/recipes-core/g=
libc/glibc-initial_2.28.bb:do_configure
>> >> >> >>> >
>> >> >> >>> > Can give follow on config.log's and such as required.
>> >> >> >>>
>> >> >> >>> yes that would be helpful. Since gcc has become stricter with =
option
>> >> >> >>> checks, its possibly ending in some combination which either i=
s invalid
>> >> >> >>> or is wrongly computed by gcc from -mcpu
>> >> >> >>>
>> >> >> >>> >
>> >> >> >>> > If I edit 'poky/meta/conf/machine/include/tune-arm926ejs.inc=
' to
>> >> >> >>> > change the '-mcpu' back to 'mtune'(commit f29d642c) then gli=
bc builds
>> >> >> >>> > fine. GCC tuning is totally outside my expertise so I'm hopi=
ng someone
>> >> >> >>> > can confirm if '-mcpu' is really desired over '-mtune'? And =
also if
>> >> >> >>> > this look like a Poky issue or something else?
>> >> >> >>> >
>> >> >> >>> > Cheers,
>> >> >> >>> > Matt
>> >> >> >>> > --
>> >> >> >>> > _______________________________________________
>> >> >> >>> > poky mailing list
>> >> >> >>> > poky@yoctoproject.org
>> >> >> >>> > https://lists.yoctoproject.org/listinfo/poky
>> >> >> >>
>> >> >> >> --
>> >> >> >> _______________________________________________
>> >> >> >> poky mailing list
>> >> >> >> poky@yoctoproject.org
>> >> >> >> https://lists.yoctoproject.org/listinfo/poky

