Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61C0CE00CFB; Wed,  2 Jan 2019 21:53:34 -0800 (PST)
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
	*      [209.85.160.182 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
	[209.85.160.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F88FE00CED
	for <poky@yoctoproject.org>; Wed,  2 Jan 2019 21:53:31 -0800 (PST)
Received: by mail-qt1-f182.google.com with SMTP id i7so35851107qtj.10
	for <poky@yoctoproject.org>; Wed, 02 Jan 2019 21:53:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=da52rAuN7N6GXNFoqpk3TMeRRVxACyG0gWnJrXQmfSQ=;
	b=OV4igS97WKh7qakN4gnCfMWf6jZydMKn1utJHqB9Y4U7lDU7P0J9e4SBQY1TdTigOm
	xVjJ8Nplujt9ubGxIbLbUtsT9G4XwMP/A1mwaIHFi1GX5vdQGdtOqniNBlIOhFWwSxs6
	XnhdxdZfoidy10JMi3N9UXEcBNLHrObuC+ojpyUgTD7/7j/eH1GYEcTajgySoDyZMtJ2
	IK5cwjFJDsVh/0fnn39COyjUtiEoVcLXT3OjPPN9d844TXJ3vkZHSutgvXFskWU025yw
	UPDYhjUd1zPRCd1g7rntNyq57H/4cHCIy/Q2stj+PPKVfcjQT+PNyEc/N9QHuq+fLb5s
	YGcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=da52rAuN7N6GXNFoqpk3TMeRRVxACyG0gWnJrXQmfSQ=;
	b=l4ST6u3/lY11kz94PMwdMPoVPTlhcGE4mxAxqz1h/cM5c9qmHe6ZKEDmkIV29mKwaz
	0ooOmRpfFhagTQNHcE0X9/uryQR5lwTRl8yyQ/j7moaiuQlt/VgvwzDPvD2vPH5GRvmu
	fV2iT9+HiPdj2fw5Y+Q8Fkdj7mPtFOYFnhzbgQVSXslFK1qfsq4xmcoXwqblac/SaMd7
	2fWwP5Hd03c4I8nKnLvpVnQZRLmuDrnN1DY7UKaU99sTk4anPSDNc8+Pzcwrs581yWZ7
	7icqBBgQTOHRZi28JnHJ/uXhxIc3OjmoqOfEkUyOXdhEYuUCbfz7E5cCFvCysbA9jVbP
	n8vA==
X-Gm-Message-State: AJcUukfavU1cMCiY9mIFxSx+zbRRzvrB1H7J33C3mJdZkfYX9nFNWtyH
	e/3ddSpdUUypxwiXIGZbpK7ep1MTxiMGIjtE2vxV7Oa3EMs=
X-Google-Smtp-Source: ALg8bN7pmjcs5CDCs1CT+LAJXb5IApsuzqLMVWTC42ZdrRXpr84sO/Rqk+xCBhhCbIGyhRb/jMkT4Ff9nbcVRs7ilII=
X-Received: by 2002:ac8:36ba:: with SMTP id a55mr44207496qtc.236.1546494810136;
	Wed, 02 Jan 2019 21:53:30 -0800 (PST)
MIME-Version: 1.0
References: <CANr77M2NsGWUEeYobQFM_YChfK37KM06z=PUQSe6z8nQCqzQsw@mail.gmail.com>
	<CAMKF1sqogmNy0uRuiShQUP7ONpJjwgrpaTKFAAd378sQ7YWYwQ@mail.gmail.com>
	<CANr77M1a9Y9_JPzypFdyO=jrRa1b9=dWqHdpaijdMQ+RNRz_6w@mail.gmail.com>
In-Reply-To: <CANr77M1a9Y9_JPzypFdyO=jrRa1b9=dWqHdpaijdMQ+RNRz_6w@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 2 Jan 2019 21:53:03 -0800
Message-ID: <CAMKF1sodGrPmteGAvTUdBsZiA1kPeR+s8FHBxn-L-ZAPfMPHvQ@mail.gmail.com>
To: Matthew Stanger <matthew_stanger@trimble.com>
Cc: poky@yoctoproject.org
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
X-List-Received-Date: Thu, 03 Jan 2019 05:53:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Try something like this

diff --git a/meta/conf/machine/include/tune-arm926ejs.inc
b/meta/conf/machine/include/tune-arm926ejs.inc
index 81bcda339b..c7c25f8064 100644
--- a/meta/conf/machine/include/tune-arm926ejs.inc
+++ b/meta/conf/machine/include/tune-arm926ejs.inc
@@ -3,7 +3,7 @@ DEFAULTTUNE ?=3D "armv5te"
 require conf/machine/include/arm/arch-armv5-dsp.inc

 TUNEVALID[arm926ejs] =3D "Enable arm926ejs specific processor optimization=
s"
-TUNE_CCARGS .=3D "${@bb.utils.contains('TUNE_FEATURES', 'arm926ejs', '
-mcpu=3Darm926ej-s', '', d)}"
+TUNE_CCARGS .=3D "${@bb.utils.contains('TUNE_FEATURES', 'arm926ejs', '
-march=3Darmv5te -mcpu=3Darm926ej-s', '', d)}"

 AVAILTUNES +=3D "arm926ejs"
 ARMPKGARCH_tune-arm926ejs =3D "arm926ejs"


On Wed, Jan 2, 2019 at 2:32 PM Matthew Stanger
<matthew_stanger@trimble.com> wrote:
>>
>> yes that would be helpful. Since gcc has become stricter with option
>> checks, its possibly ending in some combination which either is invalid
>> or is wrongly computed by gcc from -mcpu
>
>
> ************************* GCC Config Output Below ***********************=
**
> This file contains any messages produced by compilers while
> running configure, to aid debugging if configure makes a mistake.
>
> It was created by GNU C Library configure (see version.h), which was
> generated by GNU Autoconf 2.69.  Invocation command line was
>
>   $ ../git/configure --host=3Darm-poky-linux-gnueabi --build=3Dx86_64-lin=
ux --prefix=3D/usr --disable-sanity-checks --with-headers=3D/home/matt/rene=
w_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/r=
ecipe-sysroot/usr/include --enable-hacker-mode
>
> ## --------- ##
> ## Platform. ##
> ## --------- ##
>
> hostname =3D matt-dev
> uname -m =3D x86_64
> uname -r =3D 4.18.0-13-generic
> uname -s =3D Linux
> uname -v =3D #14-Ubuntu SMP Wed Dec 5 09:04:24 UTC 2018
>
> /usr/bin/uname -p =3D unknown
> /bin/uname -X     =3D unknown
>
> /bin/arch              =3D unknown
> /usr/bin/arch -k       =3D unknown
> /usr/convex/getsysinfo =3D unknown
> /usr/bin/hostinfo      =3D unknown
> /bin/machine           =3D unknown
> /usr/bin/oslevel       =3D unknown
> /bin/universe          =3D unknown
>
> PATH: /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/=
glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.=
gcc-cross-initial-arm
> PATH: /home/matt/renew_thud/build/tmp/sysroots-uninative/x86_64-linux/usr=
/bin
> PATH: /home/matt/renew_thud/oe/poky/scripts
> PATH: /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/=
glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi
> PATH: /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/=
glibc-initial/2.28-r0/recipe-sysroot/usr/bin/crossscripts
> PATH: /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/=
glibc-initial/2.28-r0/recipe-sysroot-native/usr/sbin
> PATH: /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/=
glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin
> PATH: /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/=
glibc-initial/2.28-r0/recipe-sysroot-native/sbin
> PATH: /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/=
glibc-initial/2.28-r0/recipe-sysroot-native/bin
> PATH: /home/matt/renew_thud/oe/poky/bitbake/bin
> PATH: /home/matt/renew_thud/build/tmp/hosttools
>
>
> ## ----------- ##
> ## Core tests. ##
> ## ----------- ##
>
> configure:2213: checking build system type
> configure:2227: result: x86_64-pc-linux-gnu
> configure:2247: checking host system type
> configure:2260: result: arm-poky-linux-gnueabi
> configure:2289: checking for arm-poky-linux-gnueabi-gcc
> configure:2316: result: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm=
 -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm92=
6ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot
> configure:2585: checking for C compiler version
> configure:2594: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm -mcpu=
=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-=
poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot --version >&5
> arm-poky-linux-gnueabi-gcc (GCC) 8.2.0
> Copyright (C) 2018 Free Software Foundation, Inc.
> This is free software; see the source for copying conditions.  There is N=
O
> warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOS=
E.
>
> configure:2605: $? =3D 0
> configure:2594: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm -mcpu=
=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-=
poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -v >&5
> Using built-in specs.
> COLLECT_GCC=3Darm-poky-linux-gnueabi-gcc
> COLLECT_LTO_WRAPPER=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-pok=
y-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-pok=
y-linux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueabi.=
gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/lto-wrapper
> Target: arm-poky-linux-gnueabi
> Configured with: ../../../../../../work-shared/gcc-8.2.0-r0/gcc-8.2.0/con=
figure --build=3Dx86_64-linux --host=3Dx86_64-linux --target=3Darm-poky-lin=
ux-gnueabi --prefix=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/gcc=
-cross-initial-arm/8.2.0-r0/recipe-sysroot-native/usr --exec_prefix=3D/home=
/matt/renew_thud/build/tmp/work/x86_64-linux/gcc-cross-initial-arm/8.2.0-r0=
/recipe-sysroot-native/usr --bindir=3D/home/matt/renew_thud/build/tmp/work/=
x86_64-linux/gcc-cross-initial-arm/8.2.0-r0/recipe-sysroot-native/usr/bin/a=
rm-poky-linux-gnueabi.gcc-cross-initial-arm --sbindir=3D/home/matt/renew_th=
ud/build/tmp/work/x86_64-linux/gcc-cross-initial-arm/8.2.0-r0/recipe-sysroo=
t-native/usr/bin/arm-poky-linux-gnueabi.gcc-cross-initial-arm --libexecdir=
=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/gcc-cross-initial-arm/=
8.2.0-r0/recipe-sysroot-native/usr/libexec/arm-poky-linux-gnueabi.gcc-cross=
-initial-arm --datadir=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/=
gcc-cross-initial-arm/8.2.0-r0/recipe-sysroot-native/usr/share --sysconfdir=
=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/gcc-cross-initial-arm/=
8.2.0-r0/recipe-sysroot-native/etc --sharedstatedir=3D/home/matt/renew_thud=
/build/tmp/work/x86_64-linux/gcc-cross-initial-arm/8.2.0-r0/recipe-sysroot-=
native/com --localstatedir=3D/home/matt/renew_thud/build/tmp/work/x86_64-li=
nux/gcc-cross-initial-arm/8.2.0-r0/recipe-sysroot-native/var --libdir=3D/ho=
me/matt/renew_thud/build/tmp/work/x86_64-linux/gcc-cross-initial-arm/8.2.0-=
r0/recipe-sysroot-native/usr/lib/arm-poky-linux-gnueabi.gcc-cross-initial-a=
rm --includedir=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/gcc-cro=
ss-initial-arm/8.2.0-r0/recipe-sysroot-native/usr/include --oldincludedir=
=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/gcc-cross-initial-arm/=
8.2.0-r0/recipe-sysroot-native/usr/include --infodir=3D/home/matt/renew_thu=
d/build/tmp/work/x86_64-linux/gcc-cross-initial-arm/8.2.0-r0/recipe-sysroot=
-native/usr/share/info --mandir=3D/home/matt/renew_thud/build/tmp/work/x86_=
64-linux/gcc-cross-initial-arm/8.2.0-r0/recipe-sysroot-native/usr/share/man=
 --disable-silent-rules --disable-dependency-tracking --with-libtool-sysroo=
t=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/gcc-cross-initial-arm=
/8.2.0-r0/recipe-sysroot-native --with-newlib --without-headers --disable-s=
hared --disable-threads --disable-multilib --disable-__cxa_atexit --enable-=
languages=3Dc --program-prefix=3Darm-poky-linux-gnueabi- --with-sysroot=3D/=
not/exist --with-build-sysroot=3D/home/matt/renew_thud/build/tmp/work/x86_6=
4-linux/gcc-cross-initial-arm/8.2.0-r0/recipe-sysroot --disable-libmudflap =
--disable-libgomp --disable-libitm --disable-libquadmath --with-system-zlib=
 --disable-lto --disable-plugin --enable-linker-build-id --enable-decimal-f=
loat=3Dno --without-isl --disable-libssp --with-native-system-header-dir=3D=
/usr/include --disable-static --disable-nls --enable-initfini-array
> Thread model: single
> gcc version 8.2.0 (GCC)
> configure:2605: $? =3D 0
> configure:2594: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm -mcpu=
=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-=
poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -V >&5
> arm-poky-linux-gnueabi-gcc: error: unrecognized command line option '-V'
> arm-poky-linux-gnueabi-gcc: fatal error: no input files
> compilation terminated.
> configure:2605: $? =3D 1
> configure:2594: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm -mcpu=
=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-=
poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -qversion >&5
> arm-poky-linux-gnueabi-gcc: error: unrecognized command line option '-qve=
rsion'; did you mean '--version'?
> arm-poky-linux-gnueabi-gcc: fatal error: no input files
> compilation terminated.
> configure:2605: $? =3D 1
> configure:2610: checking for suffix of object files
> configure:2632: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm -mcpu=
=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-=
poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -c  -O2 -pipe -g -f=
eliminate-unused-debug-types -fdebug-prefix-map=3D/home/matt/renew_thud/bui=
ld/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0=3D/usr/src/=
debug/glibc-initial/2.28-r0 -fdebug-prefix-map=3D/home/matt/renew_thud/buil=
d/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysro=
ot=3D -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-=
poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D   conftes=
t.c >&5
> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e sw=
itch
> configure:2636: $? =3D 0
> configure:2657: result: o
> configure:2661: checking whether we are using the GNU C compiler
> configure:2680: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm -mcpu=
=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-=
poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -c  -O2 -pipe -g -f=
eliminate-unused-debug-types -fdebug-prefix-map=3D/home/matt/renew_thud/bui=
ld/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0=3D/usr/src/=
debug/glibc-initial/2.28-r0 -fdebug-prefix-map=3D/home/matt/renew_thud/buil=
d/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysro=
ot=3D -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-=
poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D   conftes=
t.c >&5
> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e sw=
itch
> configure:2680: $? =3D 0
> configure:2689: result: yes
> configure:2698: checking whether arm-poky-linux-gnueabi-gcc  -march=3Darm=
v5e -marm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/w=
ork/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot acce=
pts -g
> configure:2718: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm -mcpu=
=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-=
poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -c -g  conftest.c >=
&5
> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e sw=
itch
> configure:2718: $? =3D 0
> configure: failed program was:
> | /* confdefs.h */
> | #define PACKAGE_NAME "GNU C Library"
> | #define PACKAGE_TARNAME "glibc"
> | #define PACKAGE_VERSION "(see version.h)"
> | #define PACKAGE_STRING "GNU C Library (see version.h)"
> | #define PACKAGE_BUGREPORT "https://sourceware.org/bugzilla/"
> | #define PACKAGE_URL "http://www.gnu.org/software/glibc/"
> | #define PKGVERSION "(GNU libc) "
> | #define REPORT_BUGS_TO "<http://www.gnu.org/software/libc/bugs.html>"
> | /* end confdefs.h.  */
> |
> | int
> | main ()
> | {
> |
> |   ;
> |   return 0;
> | }
> configure:2733: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm -mcpu=
=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-=
poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -c   conftest.c >&5
> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e sw=
itch
> configure:2733: $? =3D 0
> configure: failed program was:
> | /* confdefs.h */
> | #define PACKAGE_NAME "GNU C Library"
> | #define PACKAGE_TARNAME "glibc"
> | #define PACKAGE_VERSION "(see version.h)"
> | #define PACKAGE_STRING "GNU C Library (see version.h)"
> | #define PACKAGE_BUGREPORT "https://sourceware.org/bugzilla/"
> | #define PACKAGE_URL "http://www.gnu.org/software/glibc/"
> | #define PKGVERSION "(GNU libc) "
> | #define REPORT_BUGS_TO "<http://www.gnu.org/software/libc/bugs.html>"
> | /* end confdefs.h.  */
> |
> | int
> | main ()
> | {
> |
> |   ;
> |   return 0;
> | }
> configure:2749: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm -mcpu=
=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-=
poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -c -g  conftest.c >=
&5
> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e sw=
itch
> configure:2749: $? =3D 0
> configure:2759: result: yes
> configure:2788: checking for gcc
> configure:2815: result: gcc
> configure:2839: checking for arm-poky-linux-gnueabi-readelf
> configure:2866: result: arm-poky-linux-gnueabi-readelf
> configure:3042: checking for C++ compiler version
> configure:3051: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -marm -mcpu=
=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-=
poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot --version >&5
> ../git/configure: line 3053: arm-poky-linux-gnueabi-g++: command not foun=
d
> configure:3062: $? =3D 127
> configure:3051: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -marm -mcpu=
=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-=
poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -v >&5
> ../git/configure: line 3053: arm-poky-linux-gnueabi-g++: command not foun=
d
> configure:3062: $? =3D 127
> configure:3051: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -marm -mcpu=
=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-=
poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -V >&5
> ../git/configure: line 3053: arm-poky-linux-gnueabi-g++: command not foun=
d
> configure:3062: $? =3D 127
> configure:3051: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -marm -mcpu=
=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-=
poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -qversion >&5
> ../git/configure: line 3053: arm-poky-linux-gnueabi-g++: command not foun=
d
> configure:3062: $? =3D 127
> configure:3066: checking whether we are using the GNU C++ compiler
> configure:3085: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -marm -mcpu=
=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-=
poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -c  -O2 -pipe -g -f=
eliminate-unused-debug-types -fdebug-prefix-map=3D/home/matt/renew_thud/bui=
ld/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0=3D/usr/src/=
debug/glibc-initial/2.28-r0 -fdebug-prefix-map=3D/home/matt/renew_thud/buil=
d/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysro=
ot=3D -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-=
poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D  -fvisibi=
lity-inlines-hidden  conftest.cpp >&5
> ../git/configure: line 1633: arm-poky-linux-gnueabi-g++: command not foun=
d
> configure:3085: $? =3D 127
> configure: failed program was:
> | /* confdefs.h */
> | #define PACKAGE_NAME "GNU C Library"
> | #define PACKAGE_TARNAME "glibc"
> | #define PACKAGE_VERSION "(see version.h)"
> | #define PACKAGE_STRING "GNU C Library (see version.h)"
> | #define PACKAGE_BUGREPORT "https://sourceware.org/bugzilla/"
> | #define PACKAGE_URL "http://www.gnu.org/software/glibc/"
> | #define PKGVERSION "(GNU libc) "
> | #define REPORT_BUGS_TO "<http://www.gnu.org/software/libc/bugs.html>"
> | /* end confdefs.h.  */
> |
> | int
> | main ()
> | {
> | #ifndef __GNUC__
> |        choke me
> | #endif
> |
> |   ;
> |   return 0;
> | }
> configure:3094: result: no
> configure:3103: checking whether arm-poky-linux-gnueabi-g++  -march=3Darm=
v5e -marm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/w=
ork/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot acce=
pts -g
> configure:3123: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -marm -mcpu=
=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-=
poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -c -g  conftest.cpp=
 >&5
> ../git/configure: line 1633: arm-poky-linux-gnueabi-g++: command not foun=
d
> configure:3123: $? =3D 127
> configure: failed program was:
> | /* confdefs.h */
> | #define PACKAGE_NAME "GNU C Library"
> | #define PACKAGE_TARNAME "glibc"
> | #define PACKAGE_VERSION "(see version.h)"
> | #define PACKAGE_STRING "GNU C Library (see version.h)"
> | #define PACKAGE_BUGREPORT "https://sourceware.org/bugzilla/"
> | #define PACKAGE_URL "http://www.gnu.org/software/glibc/"
> | #define PKGVERSION "(GNU libc) "
> | #define REPORT_BUGS_TO "<http://www.gnu.org/software/libc/bugs.html>"
> | /* end confdefs.h.  */
> |
> | int
> | main ()
> | {
> |
> |   ;
> |   return 0;
> | }
> configure:3138: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -marm -mcpu=
=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-=
poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -c   conftest.cpp >=
&5
> ../git/configure: line 1633: arm-poky-linux-gnueabi-g++: command not foun=
d
> configure:3138: $? =3D 127
> configure: failed program was:
> | /* confdefs.h */
> | #define PACKAGE_NAME "GNU C Library"
> | #define PACKAGE_TARNAME "glibc"
> | #define PACKAGE_VERSION "(see version.h)"
> | #define PACKAGE_STRING "GNU C Library (see version.h)"
> | #define PACKAGE_BUGREPORT "https://sourceware.org/bugzilla/"
> | #define PACKAGE_URL "http://www.gnu.org/software/glibc/"
> | #define PKGVERSION "(GNU libc) "
> | #define REPORT_BUGS_TO "<http://www.gnu.org/software/libc/bugs.html>"
> | /* end confdefs.h.  */
> |
> | int
> | main ()
> | {
> |
> |   ;
> |   return 0;
> | }
> configure:3154: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -marm -mcpu=
=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-=
poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -c -g  conftest.cpp=
 >&5
> ../git/configure: line 1633: arm-poky-linux-gnueabi-g++: command not foun=
d
> configure:3154: $? =3D 127
> configure: failed program was:
> | /* confdefs.h */
> | #define PACKAGE_NAME "GNU C Library"
> | #define PACKAGE_TARNAME "glibc"
> | #define PACKAGE_VERSION "(see version.h)"
> | #define PACKAGE_STRING "GNU C Library (see version.h)"
> | #define PACKAGE_BUGREPORT "https://sourceware.org/bugzilla/"
> | #define PACKAGE_URL "http://www.gnu.org/software/glibc/"
> | #define PKGVERSION "(GNU libc) "
> | #define REPORT_BUGS_TO "<http://www.gnu.org/software/libc/bugs.html>"
> | /* end confdefs.h.  */
> |
> | int
> | main ()
> | {
> |
> |   ;
> |   return 0;
> | }
> configure:3164: result: no
> configure:3189: checking whether arm-poky-linux-gnueabi-g++  -march=3Darm=
v5e -marm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/w=
ork/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot can =
link programs
> configure:3212: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -marm -mcpu=
=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-=
poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -o conftest  -O2 -p=
ipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/home/matt/renew=
_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0=3D=
/usr/src/debug/glibc-initial/2.28-r0 -fdebug-prefix-map=3D/home/matt/renew_=
thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/rec=
ipe-sysroot=3D -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/ar=
m926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D =
 -fvisibility-inlines-hidden  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d  -Wl,-z,relro,-z,now conftest.cpp  >&5
> ../git/configure: line 1671: arm-poky-linux-gnueabi-g++: command not foun=
d
> configure:3212: $? =3D 127
> configure: failed program was:
> | /* confdefs.h */
> | #define PACKAGE_NAME "GNU C Library"
> | #define PACKAGE_TARNAME "glibc"
> | #define PACKAGE_VERSION "(see version.h)"
> | #define PACKAGE_STRING "GNU C Library (see version.h)"
> | #define PACKAGE_BUGREPORT "https://sourceware.org/bugzilla/"
> | #define PACKAGE_URL "http://www.gnu.org/software/glibc/"
> | #define PKGVERSION "(GNU libc) "
> | #define REPORT_BUGS_TO "<http://www.gnu.org/software/libc/bugs.html>"
> | /* end confdefs.h.  */
> |
> | int
> | main ()
> | {
> |
> |   ;
> |   return 0;
> | }
> configure:3235: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -marm -mcpu=
=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-=
poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -o conftest  -O2 -p=
ipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/home/matt/renew=
_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0=3D=
/usr/src/debug/glibc-initial/2.28-r0 -fdebug-prefix-map=3D/home/matt/renew_=
thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/rec=
ipe-sysroot=3D -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/ar=
m926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D =
 -fvisibility-inlines-hidden  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d  -Wl,-z,relro,-z,now -static conftest.cpp  >&5
> ../git/configure: line 1671: arm-poky-linux-gnueabi-g++: command not foun=
d
> configure:3235: $? =3D 127
> configure: failed program was:
> | /* confdefs.h */
> | #define PACKAGE_NAME "GNU C Library"
> | #define PACKAGE_TARNAME "glibc"
> | #define PACKAGE_VERSION "(see version.h)"
> | #define PACKAGE_STRING "GNU C Library (see version.h)"
> | #define PACKAGE_BUGREPORT "https://sourceware.org/bugzilla/"
> | #define PACKAGE_URL "http://www.gnu.org/software/glibc/"
> | #define PKGVERSION "(GNU libc) "
> | #define REPORT_BUGS_TO "<http://www.gnu.org/software/libc/bugs.html>"
> | /* end confdefs.h.  */
> |
> | #include <iostream>
> |
> | int
> | main()
> | {
> |   std::cout << "Hello, world!";
> |   return 0;
> | }
> |
> configure:3250: result: no
> configure:3817: checking for sysdeps preconfigure fragments
> configure:49: WARNING: arm/preconfigure: Did not find ARM architecture ty=
pe; using default
> configure:3824: result:
> configure:3854: checking for use of fpu sysdeps directories
> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e sw=
itch
> conftest.c:4:3: error: #error "no hardware floating point"
>  # error "no hardware floating point"
>    ^~~~~
> configure:3873: result: no
> configure:3877: checking for -fstack-protector
> configure:3883: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm -mcpu=
=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-=
poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot  -O2 -pipe -g -feli=
minate-unused-debug-types -fdebug-prefix-map=3D/home/matt/renew_thud/build/=
tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0=3D/usr/src/deb=
ug/glibc-initial/2.28-r0 -fdebug-prefix-map=3D/home/matt/renew_thud/build/t=
mp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=
=3D -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-po=
ky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D  -fno-unwin=
d-tables  -Werror -fstack-protector -xc /dev/null -S -o /dev/null
> cc1: error: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e swit=
ch [-Werror]
> cc1: all warnings being treated as errors
> configure:3886: $? =3D 1
> configure:3894: result: no
> configure:3897: checking for -fstack-protector-strong
> configure:3903: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm -mcpu=
=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-=
poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot  -O2 -pipe -g -feli=
minate-unused-debug-types -fdebug-prefix-map=3D/home/matt/renew_thud/build/=
tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0=3D/usr/src/deb=
ug/glibc-initial/2.28-r0 -fdebug-prefix-map=3D/home/matt/renew_thud/build/t=
mp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=
=3D -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-po=
ky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D  -fno-unwin=
d-tables  -Werror -fstack-protector-strong -xc /dev/null -S -o /dev/null
> cc1: error: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e swit=
ch [-Werror]
> cc1: all warnings being treated as errors
> configure:3906: $? =3D 1
> configure:3914: result: no
> configure:3917: checking for -fstack-protector-all
> configure:3923: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm -mcpu=
=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-=
poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot  -O2 -pipe -g -feli=
minate-unused-debug-types -fdebug-prefix-map=3D/home/matt/renew_thud/build/=
tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0=3D/usr/src/deb=
ug/glibc-initial/2.28-r0 -fdebug-prefix-map=3D/home/matt/renew_thud/build/t=
mp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=
=3D -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-po=
ky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D  -fno-unwin=
d-tables  -Werror -fstack-protector-all -xc /dev/null -S -o /dev/null
> cc1: error: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e swit=
ch [-Werror]
> cc1: all warnings being treated as errors
> configure:3926: $? =3D 1
> configure:3934: result: no
> configure:3977: checking for assembler and linker STT_GNU_IFUNC support
> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e sw=
itch
>
> Relocation section '.rel.dyn' at offset 0xd8 contains 1 entry:
>  Offset     Info    Type            Sym.Value  Sym. Name
> 00020ffc  000000a0 R_ARM_IRELATIVE
> configure:4008: result: yes
> configure:4012: checking for gcc attribute ifunc support
> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e sw=
itch
> configure:4038: result: yes
> configure:4042: checking if compiler warns about alias for function with =
incompatible types
> cc1: error: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e swit=
ch [-Werror]
> conftest.c:9:34: error: 'foo_alias' alias between functions of incompatib=
le types 'int(const void *, int)' and 'int (*(void))(const void *, int)' [-=
Werror=3Dattribute-alias]
>  extern __typeof (__redirect_foo) foo_alias __attribute__ ((alias ("foo")=
));
>                                   ^~~~~~~~~
> conftest.c:4:28: note: aliased declaration here
>  __typeof (__redirect_foo) *foo_impl (void)
>                             ^~~~~~~~
> cc1: all warnings being treated as errors
> configure:4064: result: yes
> configure:4102: checking sysdep dirs
> configure:4299: result: sysdeps/generic
> configure:4319: checking for a BSD-compatible install
> configure:4387: result: /home/matt/renew_thud/build/tmp/hosttools/install=
 -c
> configure:4402: checking whether ln -s works
> configure:4406: result: yes
> configure:4432: checking whether /home/matt/renew_thud/build/tmp/work/arm=
926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/=
bin/arm-poky-linux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-lin=
ux-gnueabi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/as is GNU=
 as
> configure:4446: result: yes
> configure:4451: checking whether /home/matt/renew_thud/build/tmp/work/arm=
926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/=
bin/arm-poky-linux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-lin=
ux-gnueabi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/ld is GNU=
 ld
> configure:4465: result: yes
> configure:4475: checking for /home/matt/renew_thud/build/tmp/work/arm926e=
jse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/=
arm-poky-linux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-linux-g=
nueabi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/as
> configure:4502: result: /home/matt/renew_thud/build/tmp/work/arm926ejse-p=
oky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-p=
oky-linux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueab=
i.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/as
> configure:4517: checking version of /home/matt/renew_thud/build/tmp/work/=
arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/u=
sr/bin/arm-poky-linux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-=
linux-gnueabi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/as
> configure:4527: result: 2.31.1.20180818, ok
> configure:4605: checking for /home/matt/renew_thud/build/tmp/work/arm926e=
jse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/=
arm-poky-linux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-linux-g=
nueabi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/ld
> configure:4632: result: /home/matt/renew_thud/build/tmp/work/arm926ejse-p=
oky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-p=
oky-linux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueab=
i.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/ld
> configure:4647: checking version of /home/matt/renew_thud/build/tmp/work/=
arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/u=
sr/bin/arm-poky-linux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-=
linux-gnueabi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/ld
> configure:4657: result: 2.31.1.20180818, ok
> configure:4672: checking for gnumake
> configure:4699: result: make
> configure:4714: checking version of make
> configure:4724: result: 4.2.1, ok
> configure:4736: checking for gnumsgfmt
> configure:4766: result: no
> configure:4736: checking for gmsgfmt
> configure:4766: result: no
> configure:4736: checking for msgfmt
> configure:4766: result: no
> configure:4799: checking for makeinfo
> configure:4815: found /home/matt/renew_thud/build/tmp/hosttools/makeinfo
> configure:4826: result: makeinfo
> configure:4841: checking version of makeinfo
> configure:4851: result: 6.5, ok
> configure:4862: checking for sed
> configure:4878: found /home/matt/renew_thud/build/tmp/hosttools/sed
> configure:4889: result: sed
> configure:4904: checking version of sed
> configure:4914: result: 4.5, ok
> configure:4925: checking for gawk
> configure:4941: found /home/matt/renew_thud/build/tmp/hosttools/gawk
> configure:4952: result: gawk
> configure:4967: checking version of gawk
> configure:4977: result: 4.1.4, ok
> configure:4988: checking for bison
> configure:5004: found /home/matt/renew_thud/build/tmp/work/arm926ejse-pok=
y-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/bison
> configure:5015: result: bison
> configure:5030: checking version of bison
> configure:5040: result: 3.0.4, ok
> configure:5048: checking if arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -=
marm -mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/a=
rm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot is suffic=
ient to build libc
> configure:5068: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm -mcpu=
=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-=
poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -c  -O2 -pipe -g -f=
eliminate-unused-debug-types -fdebug-prefix-map=3D/home/matt/renew_thud/bui=
ld/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0=3D/usr/src/=
debug/glibc-initial/2.28-r0 -fdebug-prefix-map=3D/home/matt/renew_thud/buil=
d/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysro=
ot=3D -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-=
poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D  -fno-unw=
ind-tables  conftest.c >&5
> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e sw=
itch
> configure:5068: $? =3D 0
> configure:5075: result: yes
> configure:5084: checking for arm-poky-linux-gnueabi-nm
> configure:5111: result: arm-poky-linux-gnueabi-nm
> configure:5249: checking for python3
> configure:5265: found /home/matt/renew_thud/build/tmp/hosttools/python3
> configure:5276: result: python3
> configure:5307: WARNING:
> *** These auxiliary programs are missing or incompatible versions: msgfmt
> *** some features or tests will be disabled.
> *** Check the INSTALL file for required versions.
> configure:5358: checking LD_LIBRARY_PATH variable
> configure:5368: result: ok
> configure:5379: checking for bash
> configure:5397: found /home/matt/renew_thud/build/tmp/hosttools/bash
> configure:5410: result: /home/matt/renew_thud/build/tmp/hosttools/bash
> configure:5421: checking for perl
> configure:5439: found /home/matt/renew_thud/build/tmp/hosttools/perl
> configure:5452: result: /home/matt/renew_thud/build/tmp/hosttools/perl
> configure:5466: checking for install-info
> configure:5485: found /usr/bin/install-info
> configure:5498: result: /usr/bin/install-info
> configure:5507: checking for .set assembler directive
> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e sw=
itch
> configure:5533: result: yes
> configure:5540: checking linker support for protected data symbol
> configure:5550: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm -mcpu=
=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-=
poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -nostdlib -nostartf=
iles -fno-stack-protector -fPIC -shared conftest.c -o conftest.so
> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e sw=
itch
> configure:5553: $? =3D 0
> configure:5560: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm -mcpu=
=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-=
poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -nostdlib -nostartf=
iles -fno-stack-protector conftest.c -o conftest conftest.so
> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e sw=
itch
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.gcc-cr=
oss-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-initial-arm/=
gcc/arm-poky-linux-gnueabi/8.2.0/ld: warning: cannot find entry symbol _sta=
rt; defaulting to 00000000000101dc
> configure:5563: $? =3D 0
> configure:5571: result: yes
> configure:5575: checking linker support for INSERT in linker script
> configure:5593: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm -mcpu=
=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-=
poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -nostdlib -nostartf=
iles -fno-stack-protector -fPIC -shared conftest.c -Wl,-T,conftest.t -o con=
ftest.so
> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e sw=
itch
> configure:5596: $? =3D 0
> configure:5603: result: yes
> configure:5607: checking for broken __attribute__((alias()))
> configure:5622: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm -mcpu=
=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-=
poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -Werror -S conftest=
.c -o conftest.s 1>&5
> cc1: error: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e swit=
ch [-Werror]
> cc1: all warnings being treated as errors
> configure:5625: $? =3D 1
> configure:5635: result: yes
> configure:5638: error: working alias attribute support required
>
> ## ---------------- ##
> ## Cache variables. ##
> ## ---------------- ##
>
> ac_cv_build=3Dx86_64-pc-linux-gnu
> ac_cv_c_compiler_gnu=3Dyes
> ac_cv_cxx_compiler_gnu=3Dno
> ac_cv_env_CCC_set=3D
> ac_cv_env_CCC_value=3D
> ac_cv_env_CC_set=3Dset
> ac_cv_env_CC_value=3D'arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm -=
mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926e=
jse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot'
> ac_cv_env_CFLAGS_set=3Dset
> ac_cv_env_CFLAGS_value=3D' -O2 -pipe -g -feliminate-unused-debug-types -f=
debug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-lin=
ux-gnueabi/glibc-initial/2.28-r0=3D/usr/src/debug/glibc-initial/2.28-r0 -fd=
ebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linu=
x-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/hom=
e/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initia=
l/2.28-r0/recipe-sysroot-native=3D '
> ac_cv_env_CPPFLAGS_set=3Dset
> ac_cv_env_CPPFLAGS_value=3D
> ac_cv_env_CPP_set=3Dset
> ac_cv_env_CPP_value=3D'arm-poky-linux-gnueabi-gcc -E --sysroot=3D/home/ma=
tt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.=
28-r0/recipe-sysroot  -march=3Darmv5e -marm -mcpu=3Darm926ej-s '
> ac_cv_env_CXXFLAGS_set=3Dset
> ac_cv_env_CXXFLAGS_value=3D' -O2 -pipe -g -feliminate-unused-debug-types =
-fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-l=
inux-gnueabi/glibc-initial/2.28-r0=3D/usr/src/debug/glibc-initial/2.28-r0 -=
fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-li=
nux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/h=
ome/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-init=
ial/2.28-r0/recipe-sysroot-native=3D  -fvisibility-inlines-hidden'
> ac_cv_env_CXX_set=3Dset
> ac_cv_env_CXX_value=3D'arm-poky-linux-gnueabi-g++  -march=3Darmv5e -marm =
-mcpu=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926=
ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot'
> ac_cv_env_LDFLAGS_set=3Dset
> ac_cv_env_LDFLAGS_value=3D'-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
  -Wl,-z,relro,-z,now'
> ac_cv_env_LIBS_set=3D
> ac_cv_env_LIBS_value=3D
> ac_cv_env_build_alias_set=3Dset
> ac_cv_env_build_alias_value=3Dx86_64-linux
> ac_cv_env_host_alias_set=3Dset
> ac_cv_env_host_alias_value=3Darm-poky-linux-gnueabi
> ac_cv_env_target_alias_set=3D
> ac_cv_env_target_alias_value=3D
> ac_cv_host=3Darm-poky-linux-gnueabi
> ac_cv_objext=3Do
> ac_cv_path_BASH_SHELL=3D/home/matt/renew_thud/build/tmp/hosttools/bash
> ac_cv_path_INSTALL_INFO=3D/usr/bin/install-info
> ac_cv_path_PERL=3D/home/matt/renew_thud/build/tmp/hosttools/perl
> ac_cv_path_install=3D'/home/matt/renew_thud/build/tmp/hosttools/install -=
c'
> ac_cv_prog_AS=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linu=
x-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linu=
x-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cr=
oss-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/as
> ac_cv_prog_AWK=3Dgawk
> ac_cv_prog_BISON=3Dbison
> ac_cv_prog_BUILD_CC=3D'gcc '
> ac_cv_prog_CC=3D'arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm -mcpu=
=3Darm926ej-s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-=
poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot'
> ac_cv_prog_LD=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linu=
x-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linu=
x-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cr=
oss-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/ld
> ac_cv_prog_MAKE=3Dmake
> ac_cv_prog_MAKEINFO=3Dmakeinfo
> ac_cv_prog_NM=3Darm-poky-linux-gnueabi-nm
> ac_cv_prog_PYTHON_PROG=3Dpython3
> ac_cv_prog_READELF=3Darm-poky-linux-gnueabi-readelf
> ac_cv_prog_SED=3Dsed
> ac_cv_prog_cc_g=3Dyes
> ac_cv_prog_cxx_g=3Dno
> libc_cv_asm_set_directive=3Dyes
> libc_cv_broken_alias_attribute=3Dyes
> libc_cv_compiler_ok=3Dyes
> libc_cv_cxx_link_ok=3Dno
> libc_cv_gcc_incompatible_alias=3Dyes
> libc_cv_gcc_indirect_function=3Dyes
> libc_cv_insert=3Dyes
> libc_cv_ld_gnu_indirect_function=3Dyes
> libc_cv_nss_crypt=3Dno
> libc_cv_prog_as_gnu=3Dyes
> libc_cv_prog_ld_gnu=3Dyes
> libc_cv_protected_data=3Dyes
> libc_cv_ssp=3Dno
> libc_cv_ssp_all=3Dno
> libc_cv_ssp_strong=3Dno
> libc_cv_static_nss_crypt=3Dno
> libc_cv_with_fp=3Dno
> lt_cv_sys_lib_dlsearch_path_spec=3D'/usr/lib /lib'
>
> ## ----------------- ##
> ## Output variables. ##
> ## ----------------- ##
>
> AR=3D'/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/=
glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.=
gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-initia=
l-arm/gcc/arm-poky-linux-gnueabi/8.2.0/ar'
> AS=3D'/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/=
glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.=
gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-initia=
l-arm/gcc/arm-poky-linux-gnueabi/8.2.0/as'
> ASFLAGS_config=3D''
> AUTOCONF=3D'no'
> AWK=3D'gawk'
> BASH_SHELL=3D'/home/matt/renew_thud/build/tmp/hosttools/bash'
> BISON=3D'bison'
> BUILD_CC=3D'gcc '
> CC=3D'arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm -mcpu=3Darm926ej-=
s  --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-g=
nueabi/glibc-initial/2.28-r0/recipe-sysroot'
> CFLAGS=3D' -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=
=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc=
-initial/2.28-r0=3D/usr/src/debug/glibc-initial/2.28-r0 -fdebug-prefix-map=
=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc=
-initial/2.28-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/home/matt/renew_th=
ud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recip=
e-sysroot-native=3D  -fno-unwind-tables'
> CPP=3D'arm-poky-linux-gnueabi-gcc -E --sysroot=3D/home/matt/renew_thud/bu=
ild/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sys=
root  -march=3Darmv5e -marm -mcpu=3Darm926ej-s '
> CPPFLAGS=3D''
> CPPUNDEFS=3D''
> CXX=3D''
> CXXFLAGS=3D' -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-m=
ap=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/gli=
bc-initial/2.28-r0=3D/usr/src/debug/glibc-initial/2.28-r0 -fdebug-prefix-ma=
p=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glib=
c-initial/2.28-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/home/matt/renew_t=
hud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/reci=
pe-sysroot-native=3D  -fvisibility-inlines-hidden'
> CXX_BITS_STD_ABS_H=3D''
> CXX_CMATH_HEADER=3D''
> CXX_CSTDLIB_HEADER=3D''
> CXX_SYSINCLUDES=3D''
> DEFINES=3D''
> DEFS=3D''
> ECHO_C=3D''
> ECHO_N=3D'-n'
> ECHO_T=3D''
> GPROF=3D'gprof'
> INSTALL_DATA=3D'${INSTALL} -m 644'
> INSTALL_INFO=3D'/usr/bin/install-info'
> INSTALL_PROGRAM=3D'${INSTALL}'
> INSTALL_SCRIPT=3D'${INSTALL}'
> LD=3D'/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/=
glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.=
gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-initia=
l-arm/gcc/arm-poky-linux-gnueabi/8.2.0/ld'
> LDFLAGS=3D'-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed  -Wl,-z,relro,-=
z,now'
> LIBGD=3D''
> LIBOBJS=3D''
> LIBS=3D''
> LN_S=3D'ln -s'
> LTLIBOBJS=3D''
> MAKE=3D'make'
> MAKEINFO=3D'makeinfo'
> MSGFMT=3D':'
> NM=3D'arm-poky-linux-gnueabi-nm'
> OBJCOPY=3D'/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnu=
eabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnu=
eabi.gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-i=
nitial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/objcopy'
> OBJDUMP=3D'/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnu=
eabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnu=
eabi.gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-i=
nitial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/objdump'
> OBJEXT=3D'o'
> PACKAGE_BUGREPORT=3D'https://sourceware.org/bugzilla/'
> PACKAGE_NAME=3D'GNU C Library'
> PACKAGE_STRING=3D'GNU C Library (see version.h)'
> PACKAGE_TARNAME=3D'glibc'
> PACKAGE_URL=3D'http://www.gnu.org/software/glibc/'
> PACKAGE_VERSION=3D'(see version.h)'
> PATH_SEPARATOR=3D':'
> PERL=3D'/home/matt/renew_thud/build/tmp/hosttools/perl'
> PKGVERSION=3D'(GNU libc) '
> PKGVERSION_TEXI=3D'(GNU libc) '
> PYTHON=3D'python3 -B'
> PYTHON_PROG=3D'python3'
> READELF=3D'arm-poky-linux-gnueabi-readelf'
> RELEASE=3D''
> REPORT_BUGS_TEXI=3D'@uref{http://www.gnu.org/software/libc/bugs.html}'
> REPORT_BUGS_TO=3D'<http://www.gnu.org/software/libc/bugs.html>'
> SED=3D'sed'
> SHELL=3D'/bin/bash'
> SYSINCLUDES=3D'-nostdinc -isystem /home/matt/renew_thud/build/tmp/work/ar=
m926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr=
/bin/arm-poky-linux-gnueabi.gcc-cross-initial-arm/../../lib/arm-poky-linux-=
gnueabi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/include -isy=
stem /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/gli=
bc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.gcc=
-cross-initial-arm/../../lib/arm-poky-linux-gnueabi.gcc-cross-initial-arm/g=
cc/arm-poky-linux-gnueabi/8.2.0/include-fixed -isystem /home/matt/renew_thu=
d/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe=
-sysroot/usr/include'
> VERSION=3D''
> ac_ct_CC=3D''
> ac_ct_CXX=3D''
> all_warnings=3D''
> base_machine=3D'arm'
> bindir=3D'${exec_prefix}/bin'
> bindnow=3D'no'
> build=3D'x86_64-pc-linux-gnu'
> build_alias=3D'x86_64-linux'
> build_cpu=3D'x86_64'
> build_crypt=3D'yes'
> build_nscd=3D'default'
> build_obsolete_nsl=3D'no'
> build_os=3D'linux-gnu'
> build_pt_chown=3D'no'
> build_vendor=3D'pc'
> cross_compiling=3D'yes'
> datadir=3D'${datarootdir}'
> datarootdir=3D'${prefix}/share'
> docdir=3D'${datarootdir}/doc/${PACKAGE_TARNAME}'
> dvidir=3D'${docdir}'
> enable_timezone_tools=3D'yes'
> enable_werror=3D'yes'
> exec_prefix=3D'NONE'
> experimental_malloc=3D'yes'
> fno_unit_at_a_time=3D''
> force_install=3D'yes'
> hardcoded_path_in_tests=3D'no'
> have_libaudit=3D''
> have_libcap=3D''
> have_selinux=3D''
> have_tunables=3D'yes'
> host=3D'arm-poky-linux-gnueabi'
> host_alias=3D'arm-poky-linux-gnueabi'
> host_cpu=3D'arm'
> host_os=3D'linux-gnueabi'
> host_vendor=3D'poky'
> htmldir=3D'${docdir}'
> includedir=3D'${prefix}/include'
> infodir=3D'${datarootdir}/info'
> ldd_rewrite_script=3D''
> libc_cv_cc_loop_to_function=3D''
> libc_cv_cc_nofma=3D''
> libc_cv_cc_pie_default=3D''
> libc_cv_cc_submachine=3D''
> libc_cv_cc_with_libunwind=3D''
> libc_cv_complocaledir=3D''
> libc_cv_cxx_thread_local=3D''
> libc_cv_fpie=3D''
> libc_cv_gcc_unwind_find_fde=3D''
> libc_cv_has_glob_dat=3D''
> libc_cv_hashstyle=3D''
> libc_cv_insert=3D'yes'
> libc_cv_localstatedir=3D''
> libc_cv_mtls_dialect_gnu2=3D''
> libc_cv_multidir=3D''
> libc_cv_nss_crypt=3D'no'
> libc_cv_output_format=3D''
> libc_cv_pic_default=3D''
> libc_cv_pie_default=3D''
> libc_cv_protected_data=3D'yes'
> libc_cv_rootsbindir=3D''
> libc_cv_rtlddir=3D''
> libc_cv_slibdir=3D''
> libc_cv_ssp=3D'no'
> libc_cv_static_nss_crypt=3D'no'
> libc_cv_sysconfdir=3D''
> libc_cv_with_fp=3D'no'
> libc_cv_z_combreloc=3D''
> libc_cv_z_execstack=3D''
> libc_extra_cflags=3D''
> libc_extra_cppflags=3D''
> libdir=3D'${exec_prefix}/lib'
> libexecdir=3D'${exec_prefix}/libexec'
> link_obsolete_rpc=3D'no'
> localedir=3D'${datarootdir}/locale'
> localstatedir=3D'${prefix}/var'
> mach_interface_list=3D''
> mandir=3D'${datarootdir}/man'
> multi_arch=3D'no'
> no_stack_protector=3D''
> oldincludedir=3D'/usr/include'
> pdfdir=3D'${docdir}'
> prefix=3D'/usr'
> profile=3D'no'
> program_transform_name=3D's,x,x,'
> psdir=3D'${docdir}'
> sbindir=3D'${exec_prefix}/sbin'
> shared=3D'yes'
> sharedstatedir=3D'${prefix}/com'
> stack_protector=3D'-fno-stack-protector'
> static=3D''
> static_nss=3D'no'
> subdirs=3D' '
> submachine=3D''
> sysconfdir=3D'${prefix}/etc'
> sysheaders=3D'/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-=
gnueabi/glibc-initial/2.28-r0/recipe-sysroot/usr/include'
> sysnames=3D' sysdeps/unix/sysv/linux/arm sysdeps/arm/nptl sysdeps/unix/sy=
sv/linux sysdeps/nptl sysdeps/pthread sysdeps/gnu sysdeps/unix/inet sysdeps=
/unix/sysv sysdeps/unix/arm sysdeps/unix sysdeps/posix sysdeps/arm/nofpu sy=
sdeps/ieee754/soft-fp sysdeps/arm sysdeps/wordsize-32 sysdeps/ieee754/flt-3=
2 sysdeps/ieee754/dbl-64 sysdeps/ieee754 sysdeps/generic'
> target_alias=3D''
> use_default_link=3D'default'
> use_ldconfig=3D''
> use_nscd=3D'yes'
>
> ## ----------- ##
> ## confdefs.h. ##
> ## ----------- ##
>
> /* confdefs.h */
> #define PACKAGE_NAME "GNU C Library"
> #define PACKAGE_TARNAME "glibc"
> #define PACKAGE_VERSION "(see version.h)"
> #define PACKAGE_STRING "GNU C Library (see version.h)"
> #define PACKAGE_BUGREPORT "https://sourceware.org/bugzilla/"
> #define PACKAGE_URL "http://www.gnu.org/software/glibc/"
> #define PKGVERSION "(GNU libc) "
> #define REPORT_BUGS_TO "<http://www.gnu.org/software/libc/bugs.html>"
> #define HAVE_TUNABLES 1
> #define STACK_PROTECTOR_LEVEL 0
> #define HAVE_ASM_SET_DIRECTIVE 1
>
> configure: exit 1
>
>
> On Wed, Jan 2, 2019 at 3:19 PM Khem Raj <raj.khem@gmail.com> wrote:
>>
>> On Wed, Jan 2, 2019 at 12:37 PM Matthew Stanger
>> <matthew_stanger@trimble.com> wrote:
>> >
>> > Hi,
>> >
>> > I'm getting a build failure under Thud when trying to use the
>> > following tune in my machine.conf:
>> > #at91sam9.inc is from meta-atmel - at91sam9263 is ARM target
>> > require conf/machine/include/at91sam9.inc
>> > DEFAULTTUNE =3D "arm926ejs"
>> >
>> >
>> > When doing a fresh build 'glibc-initial' config stage fail's with:
>> > | checking for broken __attribute__((alias()))... yes
>> > | configure: error: working alias attribute support required
>> > | WARNING: exit code 1 from a shell command.
>> > | ERROR: Function failed: do_configure (log file is located at
>> > /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/gli=
bc-initial/2.28-r0/temp/log.do_configure.1177)
>> > ERROR: Task (/home/matt/renew_thud/build/../oe/poky/meta/recipes-core/=
glibc/glibc-initial_2.28.bb:do_configure)
>> > failed with exit code '1'
>> > NOTE: Tasks Summary: Attempted 2173 tasks of which 0 didn't need to be
>> > rerun and 1 failed.
>> >
>> > Summary: 1 task failed:
>> >   /home/matt/renew_thud/build/../oe/poky/meta/recipes-core/glibc/glibc=
-initial_2.28.bb:do_configure
>> >
>> > Can give follow on config.log's and such as required.
>>
>> yes that would be helpful. Since gcc has become stricter with option
>> checks, its possibly ending in some combination which either is invalid
>> or is wrongly computed by gcc from -mcpu
>>
>> >
>> > If I edit 'poky/meta/conf/machine/include/tune-arm926ejs.inc' to
>> > change the '-mcpu' back to 'mtune'(commit f29d642c) then glibc builds
>> > fine. GCC tuning is totally outside my expertise so I'm hoping someone
>> > can confirm if '-mcpu' is really desired over '-mtune'? And also if
>> > this look like a Poky issue or something else?
>> >
>> > Cheers,
>> > Matt
>> > --
>> > _______________________________________________
>> > poky mailing list
>> > poky@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/poky

