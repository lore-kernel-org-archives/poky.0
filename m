Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2A5DE00CEE; Wed,  2 Jan 2019 14:42:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.50 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA048E00BE8
	for <poky@yoctoproject.org>; Wed,  2 Jan 2019 14:42:02 -0800 (PST)
Received: by mail-wr1-f50.google.com with SMTP id t6so31943066wrr.12
	for <poky@yoctoproject.org>; Wed, 02 Jan 2019 14:42:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=hMx4L8qHykSvNLVMpPZWe7L/8Gqp+pkAW0mFRZeJweY=;
	b=hnQY5LHJjJ/c0lf3ozzYz8v0cDswzlfZKCI4vh4c1FK74MBSTzPEftVA9IEXKWlzye
	+Y6Bpud7Tu5MQJoVBBvFZSlyr9k2Z5s/9iBjlW7v9L9cFSdP7JVpDS1LFi30ZkjxdErE
	6LKbyJW1RGSvT0fNZ0RPGOosxqEiz0RSb+J5A2IxmR4kAV2kqNrrwS0FAiZcUyac6uvi
	KtrDmKLzmvHVteXXRn4wlo/z342x5tZ6vor67gYo4y5CAc47TRYu3p1BMfk56mLIEIRH
	vOtqVJ2PbPUK6/d92mRX4CsY+4tSzToVkRDcjm5Sa8Ijhs+MLIQeyDMjvOj9SLVZEb5u
	eFTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=hMx4L8qHykSvNLVMpPZWe7L/8Gqp+pkAW0mFRZeJweY=;
	b=tPOAv2hddWPycZaSvvlhLi0Gy6fCgbkA+70ygrK15lpBqLW03H7hgEUnWWw3+Rb72r
	Fi49J8pj5bg9+xSqcjstoEjRNEn0I5f/rV6kwZ4qjYawseN+Hw12eYM3vkTPXLAyhx85
	Xt546WX74OdA9z5NcdBi7D7jtzf/34tjiHcESudXRuCWEXIAsTslfZMcbHmjJNzYVRBg
	T8Ii76SJtdCLfQOylgdIz37tJ7kBIJ5UNr9diVBXeyclEDr/JCOcOGVfsmsNwJ+iLecQ
	cKkCaCTEgQTyYLB05VxEH8QnX1lQAp4XusxsSUbEMMyAbX7zeWBJUen2prU4SGXzRsQI
	kC8w==
X-Gm-Message-State: AJcUukfsmeMAIgV3fvojo4LxmUsM8AaD/jVXzvjcKcSDHVrGZff6tLRZ
	Wg8TU3p1ZRtDrtaxdE7oTt/Az+S3gVxbGntz2UE=
X-Google-Smtp-Source: ALg8bN4rMcUBJ9Pqs5thgePnM3WLD/4Hk2HP9KVepPlkxuA2oPk3P6LPVvoAd5cNEAMRif05pfTeCao75xurGXoqLvE=
X-Received: by 2002:a5d:5111:: with SMTP id s17mr38644502wrt.43.1546468921568; 
	Wed, 02 Jan 2019 14:42:01 -0800 (PST)
MIME-Version: 1.0
References: <CANr77M2NsGWUEeYobQFM_YChfK37KM06z=PUQSe6z8nQCqzQsw@mail.gmail.com>
	<CAMKF1sqogmNy0uRuiShQUP7ONpJjwgrpaTKFAAd378sQ7YWYwQ@mail.gmail.com>
	<CANr77M1a9Y9_JPzypFdyO=jrRa1b9=dWqHdpaijdMQ+RNRz_6w@mail.gmail.com>
In-Reply-To: <CANr77M1a9Y9_JPzypFdyO=jrRa1b9=dWqHdpaijdMQ+RNRz_6w@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Wed, 2 Jan 2019 23:41:50 +0100
Message-ID: <CA+chaQdj6Eb0_FTgZxeroxZCYUbLY4+kGw06-fc0bmELC6r_ng@mail.gmail.com>
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
X-List-Received-Date: Wed, 02 Jan 2019 22:42:08 -0000
Content-Type: multipart/alternative; boundary="000000000000b9f30f057e815a24"

--000000000000b9f30f057e815a24
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e swit=
ch

Is IMHO the root cause, try enabling thumb for you DISTRO (set -march to
armv5te).

On Wed, Jan 2, 2019 at 11:33 PM Matthew Stanger <matthew_stanger@trimble.co=
m>
wrote:

> yes that would be helpful. Since gcc has become stricter with option
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
ux
> --prefix=3D/usr --disable-sanity-checks
> --with-headers=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-lin=
ux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot/usr/include
> --enable-hacker-mode
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
> PATH:
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.gcc-cr=
oss-initial-arm
> PATH:
> /home/matt/renew_thud/build/tmp/sysroots-uninative/x86_64-linux/usr/bin
> PATH: /home/matt/renew_thud/oe/poky/scripts
> PATH:
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi
> PATH:
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/recipe-sysroot/usr/bin/crossscripts
> PATH:
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/recipe-sysroot-native/usr/sbin
> PATH:
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/recipe-sysroot-native/usr/bin
> PATH:
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/recipe-sysroot-native/sbin
> PATH:
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/recipe-sysroot-native/bin
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
> configure:2316: result: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> configure:2585: checking for C compiler version
> configure:2594: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> --version >&5
> arm-poky-linux-gnueabi-gcc (GCC) 8.2.0
> Copyright (C) 2018 Free Software Foundation, Inc.
> This is free software; see the source for copying conditions.  There is N=
O
> warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOS=
E.
>
> configure:2605: $? =3D 0
> configure:2594: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -v >&5
> Using built-in specs.
> COLLECT_GCC=3Darm-poky-linux-gnueabi-gcc
>
> COLLECT_LTO_WRAPPER=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-pok=
y-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-pok=
y-linux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueabi.=
gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/lto-wrapper
> Target: arm-poky-linux-gnueabi
> Configured with:
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
> Thread model: single
> gcc version 8.2.0 (GCC)
> configure:2605: $? =3D 0
> configure:2594: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -V >&5
> arm-poky-linux-gnueabi-gcc: error: unrecognized command line option '-V'
> arm-poky-linux-gnueabi-gcc: fatal error: no input files
> compilation terminated.
> configure:2605: $? =3D 1
> configure:2594: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -qversion >&5
> arm-poky-linux-gnueabi-gcc: error: unrecognized command line option
> '-qversion'; did you mean '--version'?
> arm-poky-linux-gnueabi-gcc: fatal error: no input files
> compilation terminated.
> configure:2605: $? =3D 1
> configure:2610: checking for suffix of object files
> configure:2632: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
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
> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e sw=
itch
> configure:2636: $? =3D 0
> configure:2657: result: o
> configure:2661: checking whether we are using the GNU C compiler
> configure:2680: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
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
> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e sw=
itch
> configure:2680: $? =3D 0
> configure:2689: result: yes
> configure:2698: checking whether arm-poky-linux-gnueabi-gcc  -march=3Darm=
v5e
> -marm -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> accepts -g
> configure:2718: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -c -g  conftest.c >&5
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
> configure:2733: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -c   conftest.c >&5
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
> configure:2749: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -c -g  conftest.c >&5
> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e sw=
itch
> configure:2749: $? =3D 0
> configure:2759: result: yes
> configure:2788: checking for gcc
> configure:2815: result: gcc
> configure:2839: checking for arm-poky-linux-gnueabi-readelf
> configure:2866: result: arm-poky-linux-gnueabi-readelf
> configure:3042: checking for C++ compiler version
> configure:3051: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> --version >&5
> ../git/configure: line 3053: arm-poky-linux-gnueabi-g++: command not foun=
d
> configure:3062: $? =3D 127
> configure:3051: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -v >&5
> ../git/configure: line 3053: arm-poky-linux-gnueabi-g++: command not foun=
d
> configure:3062: $? =3D 127
> configure:3051: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -V >&5
> ../git/configure: line 3053: arm-poky-linux-gnueabi-g++: command not foun=
d
> configure:3062: $? =3D 127
> configure:3051: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -qversion >&5
> ../git/configure: line 3053: arm-poky-linux-gnueabi-g++: command not foun=
d
> configure:3062: $? =3D 127
> configure:3066: checking whether we are using the GNU C++ compiler
> configure:3085: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -marm
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
v5e
> -marm -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> accepts -g
> configure:3123: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -c -g  conftest.cpp >&5
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
> configure:3138: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -c   conftest.cpp >&5
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
> configure:3154: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -c -g  conftest.cpp >&5
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
v5e
> -marm -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> can link programs
> configure:3212: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -marm
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
> configure:3235: arm-poky-linux-gnueabi-g++  -march=3Darmv5e -marm
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
> configure:49: WARNING: arm/preconfigure: Did not find ARM architecture
> type; using default
> configure:3824: result:
> configure:3854: checking for use of fpu sysdeps directories
> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e sw=
itch
> conftest.c:4:3: error: #error "no hardware floating point"
>  # error "no hardware floating point"
>    ^~~~~
> configure:3873: result: no
> configure:3877: checking for -fstack-protector
> configure:3883: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
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
> cc1: error: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e swit=
ch
> [-Werror]
> cc1: all warnings being treated as errors
> configure:3886: $? =3D 1
> configure:3894: result: no
> configure:3897: checking for -fstack-protector-strong
> configure:3903: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
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
> cc1: error: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e swit=
ch
> [-Werror]
> cc1: all warnings being treated as errors
> configure:3906: $? =3D 1
> configure:3914: result: no
> configure:3917: checking for -fstack-protector-all
> configure:3923: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
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
> cc1: error: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e swit=
ch
> [-Werror]
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
> configure:4042: checking if compiler warns about alias for function with
> incompatible types
> cc1: error: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e swit=
ch
> [-Werror]
> conftest.c:9:34: error: 'foo_alias' alias between functions of
> incompatible types 'int(const void *, int)' and 'int (*(void))(const void
> *, int)' [-Werror=3Dattribute-alias]
>  extern __typeof (__redirect_foo) foo_alias __attribute__ ((alias
> ("foo")));
>                                   ^~~~~~~~~
> conftest.c:4:28: note: aliased declaration here
>  __typeof (__redirect_foo) *foo_impl (void)
>                             ^~~~~~~~
> cc1: all warnings being treated as errors
> configure:4064: result: yes
> configure:4102: checking sysdep dirs
> configure:4299: result: sysdeps/generic
> configure:4319: checking for a BSD-compatible install
> configure:4387: result: /home/matt/renew_thud/build/tmp/hosttools/install
> -c
> configure:4402: checking whether ln -s works
> configure:4406: result: yes
> configure:4432: checking whether
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.gcc-cr=
oss-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-initial-arm/=
gcc/arm-poky-linux-gnueabi/8.2.0/as
> is GNU as
> configure:4446: result: yes
> configure:4451: checking whether
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.gcc-cr=
oss-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-initial-arm/=
gcc/arm-poky-linux-gnueabi/8.2.0/ld
> is GNU ld
> configure:4465: result: yes
> configure:4475: checking for
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.gcc-cr=
oss-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-initial-arm/=
gcc/arm-poky-linux-gnueabi/8.2.0/as
> configure:4502: result:
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.gcc-cr=
oss-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-initial-arm/=
gcc/arm-poky-linux-gnueabi/8.2.0/as
> configure:4517: checking version of
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.gcc-cr=
oss-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-initial-arm/=
gcc/arm-poky-linux-gnueabi/8.2.0/as
> configure:4527: result: 2.31.1.20180818, ok
> configure:4605: checking for
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.gcc-cr=
oss-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-initial-arm/=
gcc/arm-poky-linux-gnueabi/8.2.0/ld
> configure:4632: result:
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.gcc-cr=
oss-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-initial-arm/=
gcc/arm-poky-linux-gnueabi/8.2.0/ld
> configure:4647: checking version of
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.gcc-cr=
oss-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-initial-arm/=
gcc/arm-poky-linux-gnueabi/8.2.0/ld
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
> configure:5004: found
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/recipe-sysroot-native/usr/bin/bison
> configure:5015: result: bison
> configure:5030: checking version of bison
> configure:5040: result: 3.0.4, ok
> configure:5048: checking if arm-poky-linux-gnueabi-gcc  -march=3Darmv5e
> -marm -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> is sufficient to build libc
> configure:5068: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
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
> configure:5550: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -nostdlib -nostartfiles -fno-stack-protector -fPIC -shared conftest.c -o
> conftest.so
> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e sw=
itch
> configure:5553: $? =3D 0
> configure:5560: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -nostdlib -nostartfiles -fno-stack-protector conftest.c -o conftest
> conftest.so
> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e sw=
itch
> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-=
initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.gcc-cr=
oss-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-initial-arm/=
gcc/arm-poky-linux-gnueabi/8.2.0/ld:
> warning: cannot find entry symbol _start; defaulting to 00000000000101dc
> configure:5563: $? =3D 0
> configure:5571: result: yes
> configure:5575: checking linker support for INSERT in linker script
> configure:5593: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -nostdlib -nostartfiles -fno-stack-protector -fPIC -shared conftest.c
> -Wl,-T,conftest.t -o conftest.so
> cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e sw=
itch
> configure:5596: $? =3D 0
> configure:5603: result: yes
> configure:5607: checking for broken __attribute__((alias()))
> configure:5622: arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -Werror -S conftest.c -o conftest.s 1>&5
> cc1: error: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e swit=
ch
> [-Werror]
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
> ac_cv_env_CC_value=3D'arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot'
> ac_cv_env_CFLAGS_set=3Dset
> ac_cv_env_CFLAGS_value=3D' -O2 -pipe -g -feliminate-unused-debug-types
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0=3D/usr/src/debug/glibc-initial/2.28-r0
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=3D
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D
> '
> ac_cv_env_CPPFLAGS_set=3Dset
> ac_cv_env_CPPFLAGS_value=3D
> ac_cv_env_CPP_set=3Dset
> ac_cv_env_CPP_value=3D'arm-poky-linux-gnueabi-gcc -E
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -march=3Darmv5e -marm -mcpu=3Darm926ej-s '
> ac_cv_env_CXXFLAGS_set=3Dset
> ac_cv_env_CXXFLAGS_value=3D' -O2 -pipe -g -feliminate-unused-debug-types
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0=3D/usr/src/debug/glibc-initial/2.28-r0
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=3D
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D
> -fvisibility-inlines-hidden'
> ac_cv_env_CXX_set=3Dset
> ac_cv_env_CXX_value=3D'arm-poky-linux-gnueabi-g++  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot'
> ac_cv_env_LDFLAGS_set=3Dset
> ac_cv_env_LDFLAGS_value=3D'-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed
> -Wl,-z,relro,-z,now'
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
>
> ac_cv_prog_AS=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linu=
x-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linu=
x-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cr=
oss-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/as
> ac_cv_prog_AWK=3Dgawk
> ac_cv_prog_BISON=3Dbison
> ac_cv_prog_BUILD_CC=3D'gcc '
> ac_cv_prog_CC=3D'arm-poky-linux-gnueabi-gcc  -march=3Darmv5e -marm
> -mcpu=3Darm926ej-s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot'
>
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
>
> AR=3D'/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/=
glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.=
gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-initia=
l-arm/gcc/arm-poky-linux-gnueabi/8.2.0/ar'
>
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
s
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot'
> CFLAGS=3D' -O2 -pipe -g -feliminate-unused-debug-types
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0=3D/usr/src/debug/glibc-initial/2.28-r0
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=3D
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D
> -fno-unwind-tables'
> CPP=3D'arm-poky-linux-gnueabi-gcc -E
> --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gn=
ueabi/glibc-initial/2.28-r0/recipe-sysroot
> -march=3Darmv5e -marm -mcpu=3Darm926ej-s '
> CPPFLAGS=3D''
> CPPUNDEFS=3D''
> CXX=3D''
> CXXFLAGS=3D' -O2 -pipe -g -feliminate-unused-debug-types
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0=3D/usr/src/debug/glibc-initial/2.28-r0
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=3D
> -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky=
-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D
> -fvisibility-inlines-hidden'
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
>
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
>
> OBJCOPY=3D'/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnu=
eabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnu=
eabi.gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-i=
nitial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/objcopy'
>
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
> SYSINCLUDES=3D'-nostdinc -isystem
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
>
> sysheaders=3D'/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-=
gnueabi/glibc-initial/2.28-r0/recipe-sysroot/usr/include'
> sysnames=3D' sysdeps/unix/sysv/linux/arm sysdeps/arm/nptl
> sysdeps/unix/sysv/linux sysdeps/nptl sysdeps/pthread sysdeps/gnu
> sysdeps/unix/inet sysdeps/unix/sysv sysdeps/unix/arm sysdeps/unix
> sysdeps/posix sysdeps/arm/nofpu sysdeps/ieee754/soft-fp sysdeps/arm
> sysdeps/wordsize-32 sysdeps/ieee754/flt-32 sysdeps/ieee754/dbl-64
> sysdeps/ieee754 sysdeps/generic'
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
>
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
>> >
>> /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc=
-initial/2.28-r0/temp/log.do_configure.1177)
>> > ERROR: Task
>> (/home/matt/renew_thud/build/../oe/poky/meta/recipes-core/glibc/glibc-in=
itial_2.28.bb:
>> do_configure)
>> > failed with exit code '1'
>> > NOTE: Tasks Summary: Attempted 2173 tasks of which 0 didn't need to be
>> > rerun and 1 failed.
>> >
>> > Summary: 1 task failed:
>> >
>>  /home/matt/renew_thud/build/../oe/poky/meta/recipes-core/glibc/glibc-in=
itial_2.28.bb:
>> do_configure
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
>>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--000000000000b9f30f057e815a24
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">cc1: warning: switch -mcpu=3Darm926ej-s conflicts with -ma=
rch=3Darmv5e switch=C2=A0<div><br></div><div>Is IMHO the root cause, try en=
abling thumb for you DISTRO (set -march to armv5te).=C2=A0<br></div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr">On Wed, Jan 2, 2019 at 11:33=
 PM Matthew Stanger &lt;<a href=3D"mailto:matthew_stanger@trimble.com">matt=
hew_stanger@trimble.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">yes that would be helpful.=
 Since gcc has become stricter with option<br>checks, its possibly ending i=
n some combination which either is invalid<br>or is wrongly computed by gcc=
 from -mcpu</blockquote><div><br></div><div>************************* GCC C=
onfig Output Below *************************</div><div><div>This file conta=
ins any messages produced by compilers while</div><div>running configure, t=
o aid debugging if configure makes a mistake.</div><div><br></div><div>It w=
as created by GNU C Library configure (see version.h), which was</div><div>=
generated by GNU Autoconf 2.69.=C2=A0 Invocation command line was</div><div=
><br></div><div>=C2=A0 $ ../git/configure --host=3Darm-poky-linux-gnueabi -=
-build=3Dx86_64-linux --prefix=3D/usr --disable-sanity-checks --with-header=
s=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glib=
c-initial/2.28-r0/recipe-sysroot/usr/include --enable-hacker-mode</div><div=
><br></div><div>## --------- ##</div><div>## Platform. ##</div><div>## ----=
----- ##</div><div><br></div><div>hostname =3D matt-dev</div><div>uname -m =
=3D x86_64</div><div>uname -r =3D 4.18.0-13-generic</div><div>uname -s =3D =
Linux</div><div>uname -v =3D #14-Ubuntu SMP Wed Dec 5 09:04:24 UTC 2018</di=
v><div><br></div><div>/usr/bin/uname -p =3D unknown</div><div>/bin/uname -X=
=C2=A0 =C2=A0 =C2=A0=3D unknown</div><div><br></div><div>/bin/arch=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D unknown</div><div>/usr/bin/ar=
ch -k=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D unknown</div><div>/usr/convex/getsysinf=
o =3D unknown</div><div>/usr/bin/hostinfo=C2=A0 =C2=A0 =C2=A0 =3D unknown</=
div><div>/bin/machine=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D unknown</=
div><div>/usr/bin/oslevel=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D unknown</div><div>/=
bin/universe=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D unknown</div><div><br></=
div><div>PATH: /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-g=
nueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-g=
nueabi.gcc-cross-initial-arm</div><div>PATH: /home/matt/renew_thud/build/tm=
p/sysroots-uninative/x86_64-linux/usr/bin</div><div>PATH: /home/matt/renew_=
thud/oe/poky/scripts</div><div>PATH: /home/matt/renew_thud/build/tmp/work/a=
rm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/us=
r/bin/arm-poky-linux-gnueabi</div><div>PATH: /home/matt/renew_thud/build/tm=
p/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot/u=
sr/bin/crossscripts</div><div>PATH: /home/matt/renew_thud/build/tmp/work/ar=
m926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr=
/sbin</div><div>PATH: /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-=
linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin</div><div=
>PATH: /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/g=
libc-initial/2.28-r0/recipe-sysroot-native/sbin</div><div>PATH: /home/matt/=
renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-=
r0/recipe-sysroot-native/bin</div><div>PATH: /home/matt/renew_thud/oe/poky/=
bitbake/bin</div><div>PATH: /home/matt/renew_thud/build/tmp/hosttools</div>=
<div><br></div><div><br></div><div>## ----------- ##</div><div>## Core test=
s. ##</div><div>## ----------- ##</div><div><br></div><div>configure:2213: =
checking build system type</div><div>configure:2227: result: x86_64-pc-linu=
x-gnu</div><div>configure:2247: checking host system type</div><div>configu=
re:2260: result: arm-poky-linux-gnueabi</div><div>configure:2289: checking =
for arm-poky-linux-gnueabi-gcc</div><div>configure:2316: result: arm-poky-l=
inux-gnueabi-gcc=C2=A0 -march=3Darmv5e -marm -mcpu=3Darm926ej-s=C2=A0 --sys=
root=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/g=
libc-initial/2.28-r0/recipe-sysroot</div><div>configure:2585: checking for =
C compiler version</div><div>configure:2594: arm-poky-linux-gnueabi-gcc=C2=
=A0 -march=3Darmv5e -marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/r=
enew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r=
0/recipe-sysroot --version &gt;&amp;5</div><div>arm-poky-linux-gnueabi-gcc =
(GCC) 8.2.0</div><div>Copyright (C) 2018 Free Software Foundation, Inc.</di=
v><div>This is free software; see the source for copying conditions.=C2=A0 =
There is NO</div><div>warranty; not even for MERCHANTABILITY or FITNESS FOR=
 A PARTICULAR PURPOSE.</div><div><br></div><div>configure:2605: $? =3D 0</d=
iv><div>configure:2594: arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv5e -m=
arm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/wo=
rk/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -v &g=
t;&amp;5</div><div>Using built-in specs.</div><div>COLLECT_GCC=3Darm-poky-l=
inux-gnueabi-gcc</div><div>COLLECT_LTO_WRAPPER=3D/home/matt/renew_thud/buil=
d/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysro=
ot-native/usr/bin/arm-poky-linux-gnueabi.gcc-cross-initial-arm/../../libexe=
c/arm-poky-linux-gnueabi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8=
.2.0/lto-wrapper</div><div>Target: arm-poky-linux-gnueabi</div><div>Configu=
red with: ../../../../../../work-shared/gcc-8.2.0-r0/gcc-8.2.0/configure --=
build=3Dx86_64-linux --host=3Dx86_64-linux --target=3Darm-poky-linux-gnueab=
i --prefix=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/gcc-cross-in=
itial-arm/8.2.0-r0/recipe-sysroot-native/usr --exec_prefix=3D/home/matt/ren=
ew_thud/build/tmp/work/x86_64-linux/gcc-cross-initial-arm/8.2.0-r0/recipe-s=
ysroot-native/usr --bindir=3D/home/matt/renew_thud/build/tmp/work/x86_64-li=
nux/gcc-cross-initial-arm/8.2.0-r0/recipe-sysroot-native/usr/bin/arm-poky-l=
inux-gnueabi.gcc-cross-initial-arm --sbindir=3D/home/matt/renew_thud/build/=
tmp/work/x86_64-linux/gcc-cross-initial-arm/8.2.0-r0/recipe-sysroot-native/=
usr/bin/arm-poky-linux-gnueabi.gcc-cross-initial-arm --libexecdir=3D/home/m=
att/renew_thud/build/tmp/work/x86_64-linux/gcc-cross-initial-arm/8.2.0-r0/r=
ecipe-sysroot-native/usr/libexec/arm-poky-linux-gnueabi.gcc-cross-initial-a=
rm --datadir=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/gcc-cross-=
initial-arm/8.2.0-r0/recipe-sysroot-native/usr/share --sysconfdir=3D/home/m=
att/renew_thud/build/tmp/work/x86_64-linux/gcc-cross-initial-arm/8.2.0-r0/r=
ecipe-sysroot-native/etc --sharedstatedir=3D/home/matt/renew_thud/build/tmp=
/work/x86_64-linux/gcc-cross-initial-arm/8.2.0-r0/recipe-sysroot-native/com=
 --localstatedir=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/gcc-cr=
oss-initial-arm/8.2.0-r0/recipe-sysroot-native/var --libdir=3D/home/matt/re=
new_thud/build/tmp/work/x86_64-linux/gcc-cross-initial-arm/8.2.0-r0/recipe-=
sysroot-native/usr/lib/arm-poky-linux-gnueabi.gcc-cross-initial-arm --inclu=
dedir=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/gcc-cross-initial=
-arm/8.2.0-r0/recipe-sysroot-native/usr/include --oldincludedir=3D/home/mat=
t/renew_thud/build/tmp/work/x86_64-linux/gcc-cross-initial-arm/8.2.0-r0/rec=
ipe-sysroot-native/usr/include --infodir=3D/home/matt/renew_thud/build/tmp/=
work/x86_64-linux/gcc-cross-initial-arm/8.2.0-r0/recipe-sysroot-native/usr/=
share/info --mandir=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/gcc=
-cross-initial-arm/8.2.0-r0/recipe-sysroot-native/usr/share/man --disable-s=
ilent-rules --disable-dependency-tracking --with-libtool-sysroot=3D/home/ma=
tt/renew_thud/build/tmp/work/x86_64-linux/gcc-cross-initial-arm/8.2.0-r0/re=
cipe-sysroot-native --with-newlib --without-headers --disable-shared --disa=
ble-threads --disable-multilib --disable-__cxa_atexit --enable-languages=3D=
c --program-prefix=3Darm-poky-linux-gnueabi- --with-sysroot=3D/not/exist --=
with-build-sysroot=3D/home/matt/renew_thud/build/tmp/work/x86_64-linux/gcc-=
cross-initial-arm/8.2.0-r0/recipe-sysroot --disable-libmudflap --disable-li=
bgomp --disable-libitm --disable-libquadmath --with-system-zlib --disable-l=
to --disable-plugin --enable-linker-build-id --enable-decimal-float=3Dno --=
without-isl --disable-libssp --with-native-system-header-dir=3D/usr/include=
 --disable-static --disable-nls --enable-initfini-array</div><div>Thread mo=
del: single</div><div>gcc version 8.2.0 (GCC)=C2=A0</div><div>configure:260=
5: $? =3D 0</div><div>configure:2594: arm-poky-linux-gnueabi-gcc=C2=A0 -mar=
ch=3Darmv5e -marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thu=
d/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe=
-sysroot -V &gt;&amp;5</div><div>arm-poky-linux-gnueabi-gcc: error: unrecog=
nized command line option &#39;-V&#39;</div><div>arm-poky-linux-gnueabi-gcc=
: fatal error: no input files</div><div>compilation terminated.</div><div>c=
onfigure:2605: $? =3D 1</div><div>configure:2594: arm-poky-linux-gnueabi-gc=
c=C2=A0 -march=3Darmv5e -marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/ma=
tt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.=
28-r0/recipe-sysroot -qversion &gt;&amp;5</div><div>arm-poky-linux-gnueabi-=
gcc: error: unrecognized command line option &#39;-qversion&#39;; did you m=
ean &#39;--version&#39;?</div><div>arm-poky-linux-gnueabi-gcc: fatal error:=
 no input files</div><div>compilation terminated.</div><div>configure:2605:=
 $? =3D 1</div><div>configure:2610: checking for suffix of object files</di=
v><div>configure:2632: arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv5e -ma=
rm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/wor=
k/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -c=C2=
=A0 -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/home/=
matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/=
2.28-r0=3D/usr/src/debug/glibc-initial/2.28-r0 -fdebug-prefix-map=3D/home/m=
att/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2=
.28-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/home/matt/renew_thud/build/t=
mp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-=
native=3D=C2=A0 =C2=A0conftest.c &gt;&amp;5</div><div>cc1: warning: switch =
-mcpu=3Darm926ej-s conflicts with -march=3Darmv5e switch</div><div>configur=
e:2636: $? =3D 0</div><div>configure:2657: result: o</div><div>configure:26=
61: checking whether we are using the GNU C compiler</div><div>configure:26=
80: arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv5e -marm -mcpu=3Darm926ej=
-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-l=
inux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -c=C2=A0 -O2 -pipe -g -fe=
liminate-unused-debug-types -fdebug-prefix-map=3D/home/matt/renew_thud/buil=
d/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0=3D/usr/src/d=
ebug/glibc-initial/2.28-r0 -fdebug-prefix-map=3D/home/matt/renew_thud/build=
/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroo=
t=3D -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-p=
oky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D=C2=A0 =C2=
=A0conftest.c &gt;&amp;5</div><div>cc1: warning: switch -mcpu=3Darm926ej-s =
conflicts with -march=3Darmv5e switch</div><div>configure:2680: $? =3D 0</d=
iv><div>configure:2689: result: yes</div><div>configure:2698: checking whet=
her arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv5e -marm -mcpu=3Darm926ej=
-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-l=
inux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot accepts -g</div><div>conf=
igure:2718: arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv5e -marm -mcpu=3D=
arm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejs=
e-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -c -g=C2=A0 conft=
est.c &gt;&amp;5</div><div>cc1: warning: switch -mcpu=3Darm926ej-s conflict=
s with -march=3Darmv5e switch</div><div>configure:2718: $? =3D 0</div><div>=
configure: failed program was:</div><div>| /* confdefs.h */</div><div>| #de=
fine PACKAGE_NAME &quot;GNU C Library&quot;</div><div>| #define PACKAGE_TAR=
NAME &quot;glibc&quot;</div><div>| #define PACKAGE_VERSION &quot;(see versi=
on.h)&quot;</div><div>| #define PACKAGE_STRING &quot;GNU C Library (see ver=
sion.h)&quot;</div><div>| #define PACKAGE_BUGREPORT &quot;<a href=3D"https:=
//sourceware.org/bugzilla/" target=3D"_blank">https://sourceware.org/bugzil=
la/</a>&quot;</div><div>| #define PACKAGE_URL &quot;<a href=3D"http://www.g=
nu.org/software/glibc/" target=3D"_blank">http://www.gnu.org/software/glibc=
/</a>&quot;</div><div>| #define PKGVERSION &quot;(GNU libc) &quot;</div><di=
v>| #define REPORT_BUGS_TO &quot;&lt;<a href=3D"http://www.gnu.org/software=
/libc/bugs.html" target=3D"_blank">http://www.gnu.org/software/libc/bugs.ht=
ml</a>&gt;&quot;</div><div>| /* end confdefs.h.=C2=A0 */</div><div>|=C2=A0<=
/div><div>| int</div><div>| main ()</div><div>| {</div><div>|=C2=A0</div><d=
iv>|=C2=A0 =C2=A0;</div><div>|=C2=A0 =C2=A0return 0;</div><div>| }</div><di=
v>configure:2733: arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv5e -marm -m=
cpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm=
926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -c=C2=A0 =
=C2=A0conftest.c &gt;&amp;5</div><div>cc1: warning: switch -mcpu=3Darm926ej=
-s conflicts with -march=3Darmv5e switch</div><div>configure:2733: $? =3D 0=
</div><div>configure: failed program was:</div><div>| /* confdefs.h */</div=
><div>| #define PACKAGE_NAME &quot;GNU C Library&quot;</div><div>| #define =
PACKAGE_TARNAME &quot;glibc&quot;</div><div>| #define PACKAGE_VERSION &quot=
;(see version.h)&quot;</div><div>| #define PACKAGE_STRING &quot;GNU C Libra=
ry (see version.h)&quot;</div><div>| #define PACKAGE_BUGREPORT &quot;<a hre=
f=3D"https://sourceware.org/bugzilla/" target=3D"_blank">https://sourceware=
.org/bugzilla/</a>&quot;</div><div>| #define PACKAGE_URL &quot;<a href=3D"h=
ttp://www.gnu.org/software/glibc/" target=3D"_blank">http://www.gnu.org/sof=
tware/glibc/</a>&quot;</div><div>| #define PKGVERSION &quot;(GNU libc) &quo=
t;</div><div>| #define REPORT_BUGS_TO &quot;&lt;<a href=3D"http://www.gnu.o=
rg/software/libc/bugs.html" target=3D"_blank">http://www.gnu.org/software/l=
ibc/bugs.html</a>&gt;&quot;</div><div>| /* end confdefs.h.=C2=A0 */</div><d=
iv>|=C2=A0</div><div>| int</div><div>| main ()</div><div>| {</div><div>|=C2=
=A0</div><div>|=C2=A0 =C2=A0;</div><div>|=C2=A0 =C2=A0return 0;</div><div>|=
 }</div><div>configure:2749: arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv=
5e -marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/t=
mp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot =
-c -g=C2=A0 conftest.c &gt;&amp;5</div><div>cc1: warning: switch -mcpu=3Dar=
m926ej-s conflicts with -march=3Darmv5e switch</div><div>configure:2749: $?=
 =3D 0</div><div>configure:2759: result: yes</div><div>configure:2788: chec=
king for gcc</div><div>configure:2815: result: gcc=C2=A0</div><div>configur=
e:2839: checking for arm-poky-linux-gnueabi-readelf</div><div>configure:286=
6: result: arm-poky-linux-gnueabi-readelf</div><div>configure:3042: checkin=
g for C++ compiler version</div><div>configure:3051: arm-poky-linux-gnueabi=
-g++=C2=A0 -march=3Darmv5e -marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home=
/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial=
/2.28-r0/recipe-sysroot --version &gt;&amp;5</div><div>../git/configure: li=
ne 3053: arm-poky-linux-gnueabi-g++: command not found</div><div>configure:=
3062: $? =3D 127</div><div>configure:3051: arm-poky-linux-gnueabi-g++=C2=A0=
 -march=3Darmv5e -marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/rene=
w_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/r=
ecipe-sysroot -v &gt;&amp;5</div><div>../git/configure: line 3053: arm-poky=
-linux-gnueabi-g++: command not found</div><div>configure:3062: $? =3D 127<=
/div><div>configure:3051: arm-poky-linux-gnueabi-g++=C2=A0 -march=3Darmv5e =
-marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/=
work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -V =
&gt;&amp;5</div><div>../git/configure: line 3053: arm-poky-linux-gnueabi-g+=
+: command not found</div><div>configure:3062: $? =3D 127</div><div>configu=
re:3051: arm-poky-linux-gnueabi-g++=C2=A0 -march=3Darmv5e -marm -mcpu=3Darm=
926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-p=
oky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -qversion &gt;&amp;5=
</div><div>../git/configure: line 3053: arm-poky-linux-gnueabi-g++: command=
 not found</div><div>configure:3062: $? =3D 127</div><div>configure:3066: c=
hecking whether we are using the GNU C++ compiler</div><div>configure:3085:=
 arm-poky-linux-gnueabi-g++=C2=A0 -march=3Darmv5e -marm -mcpu=3Darm926ej-s=
=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-lin=
ux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -c=C2=A0 -O2 -pipe -g -feli=
minate-unused-debug-types -fdebug-prefix-map=3D/home/matt/renew_thud/build/=
tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0=3D/usr/src/deb=
ug/glibc-initial/2.28-r0 -fdebug-prefix-map=3D/home/matt/renew_thud/build/t=
mp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=
=3D -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-po=
ky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D=C2=A0 -fvis=
ibility-inlines-hidden=C2=A0 conftest.cpp &gt;&amp;5</div><div>../git/confi=
gure: line 1633: arm-poky-linux-gnueabi-g++: command not found</div><div>co=
nfigure:3085: $? =3D 127</div><div>configure: failed program was:</div><div=
>| /* confdefs.h */</div><div>| #define PACKAGE_NAME &quot;GNU C Library&qu=
ot;</div><div>| #define PACKAGE_TARNAME &quot;glibc&quot;</div><div>| #defi=
ne PACKAGE_VERSION &quot;(see version.h)&quot;</div><div>| #define PACKAGE_=
STRING &quot;GNU C Library (see version.h)&quot;</div><div>| #define PACKAG=
E_BUGREPORT &quot;<a href=3D"https://sourceware.org/bugzilla/" target=3D"_b=
lank">https://sourceware.org/bugzilla/</a>&quot;</div><div>| #define PACKAG=
E_URL &quot;<a href=3D"http://www.gnu.org/software/glibc/" target=3D"_blank=
">http://www.gnu.org/software/glibc/</a>&quot;</div><div>| #define PKGVERSI=
ON &quot;(GNU libc) &quot;</div><div>| #define REPORT_BUGS_TO &quot;&lt;<a =
href=3D"http://www.gnu.org/software/libc/bugs.html" target=3D"_blank">http:=
//www.gnu.org/software/libc/bugs.html</a>&gt;&quot;</div><div>| /* end conf=
defs.h.=C2=A0 */</div><div>|=C2=A0</div><div>| int</div><div>| main ()</div=
><div>| {</div><div>| #ifndef __GNUC__</div><div>|=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 choke me</div><div>| #endif</div><div>|=C2=A0</div><div>|=C2=A0 =C2=A0;=
</div><div>|=C2=A0 =C2=A0return 0;</div><div>| }</div><div>configure:3094: =
result: no</div><div>configure:3103: checking whether arm-poky-linux-gnueab=
i-g++=C2=A0 -march=3Darmv5e -marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/hom=
e/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initia=
l/2.28-r0/recipe-sysroot accepts -g</div><div>configure:3123: arm-poky-linu=
x-gnueabi-g++=C2=A0 -march=3Darmv5e -marm -mcpu=3Darm926ej-s=C2=A0 --sysroo=
t=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glib=
c-initial/2.28-r0/recipe-sysroot -c -g=C2=A0 conftest.cpp &gt;&amp;5</div><=
div>../git/configure: line 1633: arm-poky-linux-gnueabi-g++: command not fo=
und</div><div>configure:3123: $? =3D 127</div><div>configure: failed progra=
m was:</div><div>| /* confdefs.h */</div><div>| #define PACKAGE_NAME &quot;=
GNU C Library&quot;</div><div>| #define PACKAGE_TARNAME &quot;glibc&quot;</=
div><div>| #define PACKAGE_VERSION &quot;(see version.h)&quot;</div><div>| =
#define PACKAGE_STRING &quot;GNU C Library (see version.h)&quot;</div><div>=
| #define PACKAGE_BUGREPORT &quot;<a href=3D"https://sourceware.org/bugzill=
a/" target=3D"_blank">https://sourceware.org/bugzilla/</a>&quot;</div><div>=
| #define PACKAGE_URL &quot;<a href=3D"http://www.gnu.org/software/glibc/" =
target=3D"_blank">http://www.gnu.org/software/glibc/</a>&quot;</div><div>| =
#define PKGVERSION &quot;(GNU libc) &quot;</div><div>| #define REPORT_BUGS_=
TO &quot;&lt;<a href=3D"http://www.gnu.org/software/libc/bugs.html" target=
=3D"_blank">http://www.gnu.org/software/libc/bugs.html</a>&gt;&quot;</div><=
div>| /* end confdefs.h.=C2=A0 */</div><div>|=C2=A0</div><div>| int</div><d=
iv>| main ()</div><div>| {</div><div>|=C2=A0</div><div>|=C2=A0 =C2=A0;</div=
><div>|=C2=A0 =C2=A0return 0;</div><div>| }</div><div>configure:3138: arm-p=
oky-linux-gnueabi-g++=C2=A0 -march=3Darmv5e -marm -mcpu=3Darm926ej-s=C2=A0 =
--sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnue=
abi/glibc-initial/2.28-r0/recipe-sysroot -c=C2=A0 =C2=A0conftest.cpp &gt;&a=
mp;5</div><div>../git/configure: line 1633: arm-poky-linux-gnueabi-g++: com=
mand not found</div><div>configure:3138: $? =3D 127</div><div>configure: fa=
iled program was:</div><div>| /* confdefs.h */</div><div>| #define PACKAGE_=
NAME &quot;GNU C Library&quot;</div><div>| #define PACKAGE_TARNAME &quot;gl=
ibc&quot;</div><div>| #define PACKAGE_VERSION &quot;(see version.h)&quot;</=
div><div>| #define PACKAGE_STRING &quot;GNU C Library (see version.h)&quot;=
</div><div>| #define PACKAGE_BUGREPORT &quot;<a href=3D"https://sourceware.=
org/bugzilla/" target=3D"_blank">https://sourceware.org/bugzilla/</a>&quot;=
</div><div>| #define PACKAGE_URL &quot;<a href=3D"http://www.gnu.org/softwa=
re/glibc/" target=3D"_blank">http://www.gnu.org/software/glibc/</a>&quot;</=
div><div>| #define PKGVERSION &quot;(GNU libc) &quot;</div><div>| #define R=
EPORT_BUGS_TO &quot;&lt;<a href=3D"http://www.gnu.org/software/libc/bugs.ht=
ml" target=3D"_blank">http://www.gnu.org/software/libc/bugs.html</a>&gt;&qu=
ot;</div><div>| /* end confdefs.h.=C2=A0 */</div><div>|=C2=A0</div><div>| i=
nt</div><div>| main ()</div><div>| {</div><div>|=C2=A0</div><div>|=C2=A0 =
=C2=A0;</div><div>|=C2=A0 =C2=A0return 0;</div><div>| }</div><div>configure=
:3154: arm-poky-linux-gnueabi-g++=C2=A0 -march=3Darmv5e -marm -mcpu=3Darm92=
6ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-pok=
y-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -c -g=C2=A0 conftest.c=
pp &gt;&amp;5</div><div>../git/configure: line 1633: arm-poky-linux-gnueabi=
-g++: command not found</div><div>configure:3154: $? =3D 127</div><div>conf=
igure: failed program was:</div><div>| /* confdefs.h */</div><div>| #define=
 PACKAGE_NAME &quot;GNU C Library&quot;</div><div>| #define PACKAGE_TARNAME=
 &quot;glibc&quot;</div><div>| #define PACKAGE_VERSION &quot;(see version.h=
)&quot;</div><div>| #define PACKAGE_STRING &quot;GNU C Library (see version=
.h)&quot;</div><div>| #define PACKAGE_BUGREPORT &quot;<a href=3D"https://so=
urceware.org/bugzilla/" target=3D"_blank">https://sourceware.org/bugzilla/<=
/a>&quot;</div><div>| #define PACKAGE_URL &quot;<a href=3D"http://www.gnu.o=
rg/software/glibc/" target=3D"_blank">http://www.gnu.org/software/glibc/</a=
>&quot;</div><div>| #define PKGVERSION &quot;(GNU libc) &quot;</div><div>| =
#define REPORT_BUGS_TO &quot;&lt;<a href=3D"http://www.gnu.org/software/lib=
c/bugs.html" target=3D"_blank">http://www.gnu.org/software/libc/bugs.html</=
a>&gt;&quot;</div><div>| /* end confdefs.h.=C2=A0 */</div><div>|=C2=A0</div=
><div>| int</div><div>| main ()</div><div>| {</div><div>|=C2=A0</div><div>|=
=C2=A0 =C2=A0;</div><div>|=C2=A0 =C2=A0return 0;</div><div>| }</div><div>co=
nfigure:3164: result: no</div><div>configure:3189: checking whether arm-pok=
y-linux-gnueabi-g++=C2=A0 -march=3Darmv5e -marm -mcpu=3Darm926ej-s=C2=A0 --=
sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueab=
i/glibc-initial/2.28-r0/recipe-sysroot can link programs</div><div>configur=
e:3212: arm-poky-linux-gnueabi-g++=C2=A0 -march=3Darmv5e -marm -mcpu=3Darm9=
26ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-po=
ky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -o conftest=C2=A0 -O2=
 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/home/matt/re=
new_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0=
=3D/usr/src/debug/glibc-initial/2.28-r0 -fdebug-prefix-map=3D/home/matt/ren=
ew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/=
recipe-sysroot=3D -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work=
/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=
=3D=C2=A0 -fvisibility-inlines-hidden=C2=A0 -Wl,-O1 -Wl,--hash-style=3Dgnu =
-Wl,--as-needed=C2=A0 -Wl,-z,relro,-z,now conftest.cpp=C2=A0 &gt;&amp;5</di=
v><div>../git/configure: line 1671: arm-poky-linux-gnueabi-g++: command not=
 found</div><div>configure:3212: $? =3D 127</div><div>configure: failed pro=
gram was:</div><div>| /* confdefs.h */</div><div>| #define PACKAGE_NAME &qu=
ot;GNU C Library&quot;</div><div>| #define PACKAGE_TARNAME &quot;glibc&quot=
;</div><div>| #define PACKAGE_VERSION &quot;(see version.h)&quot;</div><div=
>| #define PACKAGE_STRING &quot;GNU C Library (see version.h)&quot;</div><d=
iv>| #define PACKAGE_BUGREPORT &quot;<a href=3D"https://sourceware.org/bugz=
illa/" target=3D"_blank">https://sourceware.org/bugzilla/</a>&quot;</div><d=
iv>| #define PACKAGE_URL &quot;<a href=3D"http://www.gnu.org/software/glibc=
/" target=3D"_blank">http://www.gnu.org/software/glibc/</a>&quot;</div><div=
>| #define PKGVERSION &quot;(GNU libc) &quot;</div><div>| #define REPORT_BU=
GS_TO &quot;&lt;<a href=3D"http://www.gnu.org/software/libc/bugs.html" targ=
et=3D"_blank">http://www.gnu.org/software/libc/bugs.html</a>&gt;&quot;</div=
><div>| /* end confdefs.h.=C2=A0 */</div><div>|=C2=A0</div><div>| int</div>=
<div>| main ()</div><div>| {</div><div>|=C2=A0</div><div>|=C2=A0 =C2=A0;</d=
iv><div>|=C2=A0 =C2=A0return 0;</div><div>| }</div><div>configure:3235: arm=
-poky-linux-gnueabi-g++=C2=A0 -march=3Darmv5e -marm -mcpu=3Darm926ej-s=C2=
=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-=
gnueabi/glibc-initial/2.28-r0/recipe-sysroot -o conftest=C2=A0 -O2 -pipe -g=
 -feliminate-unused-debug-types -fdebug-prefix-map=3D/home/matt/renew_thud/=
build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0=3D/usr/s=
rc/debug/glibc-initial/2.28-r0 -fdebug-prefix-map=3D/home/matt/renew_thud/b=
uild/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sy=
sroot=3D -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ej=
se-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D=C2=A0 =
-fvisibility-inlines-hidden=C2=A0 -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-n=
eeded=C2=A0 -Wl,-z,relro,-z,now -static conftest.cpp=C2=A0 &gt;&amp;5</div>=
<div>../git/configure: line 1671: arm-poky-linux-gnueabi-g++: command not f=
ound</div><div>configure:3235: $? =3D 127</div><div>configure: failed progr=
am was:</div><div>| /* confdefs.h */</div><div>| #define PACKAGE_NAME &quot=
;GNU C Library&quot;</div><div>| #define PACKAGE_TARNAME &quot;glibc&quot;<=
/div><div>| #define PACKAGE_VERSION &quot;(see version.h)&quot;</div><div>|=
 #define PACKAGE_STRING &quot;GNU C Library (see version.h)&quot;</div><div=
>| #define PACKAGE_BUGREPORT &quot;<a href=3D"https://sourceware.org/bugzil=
la/" target=3D"_blank">https://sourceware.org/bugzilla/</a>&quot;</div><div=
>| #define PACKAGE_URL &quot;<a href=3D"http://www.gnu.org/software/glibc/"=
 target=3D"_blank">http://www.gnu.org/software/glibc/</a>&quot;</div><div>|=
 #define PKGVERSION &quot;(GNU libc) &quot;</div><div>| #define REPORT_BUGS=
_TO &quot;&lt;<a href=3D"http://www.gnu.org/software/libc/bugs.html" target=
=3D"_blank">http://www.gnu.org/software/libc/bugs.html</a>&gt;&quot;</div><=
div>| /* end confdefs.h.=C2=A0 */</div><div>|=C2=A0</div><div>| #include &l=
t;iostream&gt;</div><div>|=C2=A0</div><div>| int</div><div>| main()</div><d=
iv>| {</div><div>|=C2=A0 =C2=A0std::cout &lt;&lt; &quot;Hello, world!&quot;=
;</div><div>|=C2=A0 =C2=A0return 0;</div><div>| }</div><div>|=C2=A0</div><d=
iv>configure:3250: result: no</div><div>configure:3817: checking for sysdep=
s preconfigure fragments</div><div>configure:49: WARNING: arm/preconfigure:=
 Did not find ARM architecture type; using default</div><div>configure:3824=
: result:=C2=A0</div><div>configure:3854: checking for use of fpu sysdeps d=
irectories</div><div>cc1: warning: switch -mcpu=3Darm926ej-s conflicts with=
 -march=3Darmv5e switch</div><div>conftest.c:4:3: error: #error &quot;no ha=
rdware floating point&quot;</div><div>=C2=A0# error &quot;no hardware float=
ing point&quot;</div><div>=C2=A0 =C2=A0^~~~~</div><div>configure:3873: resu=
lt: no</div><div>configure:3877: checking for -fstack-protector</div><div>c=
onfigure:3883: arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv5e -marm -mcpu=
=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926=
ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=C2=A0 -O2 -pip=
e -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/home/matt/renew_t=
hud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0=3D/u=
sr/src/debug/glibc-initial/2.28-r0 -fdebug-prefix-map=3D/home/matt/renew_th=
ud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recip=
e-sysroot=3D -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm9=
26ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D=C2=
=A0 -fno-unwind-tables=C2=A0 -Werror -fstack-protector -xc /dev/null -S -o =
/dev/null</div><div>cc1: error: switch -mcpu=3Darm926ej-s conflicts with -m=
arch=3Darmv5e switch [-Werror]</div><div>cc1: all warnings being treated as=
 errors</div><div>configure:3886: $? =3D 1</div><div>configure:3894: result=
: no</div><div>configure:3897: checking for -fstack-protector-strong</div><=
div>configure:3903: arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv5e -marm =
-mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/work/a=
rm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=C2=A0 -O2=
 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/home/matt/re=
new_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0=
=3D/usr/src/debug/glibc-initial/2.28-r0 -fdebug-prefix-map=3D/home/matt/ren=
ew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/=
recipe-sysroot=3D -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work=
/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=
=3D=C2=A0 -fno-unwind-tables=C2=A0 -Werror -fstack-protector-strong -xc /de=
v/null -S -o /dev/null</div><div>cc1: error: switch -mcpu=3Darm926ej-s conf=
licts with -march=3Darmv5e switch [-Werror]</div><div>cc1: all warnings bei=
ng treated as errors</div><div>configure:3906: $? =3D 1</div><div>configure=
:3914: result: no</div><div>configure:3917: checking for -fstack-protector-=
all</div><div>configure:3923: arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darm=
v5e -marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/=
tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=
=C2=A0 -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/ho=
me/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initi=
al/2.28-r0=3D/usr/src/debug/glibc-initial/2.28-r0 -fdebug-prefix-map=3D/hom=
e/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initia=
l/2.28-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/home/matt/renew_thud/buil=
d/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysro=
ot-native=3D=C2=A0 -fno-unwind-tables=C2=A0 -Werror -fstack-protector-all -=
xc /dev/null -S -o /dev/null</div><div>cc1: error: switch -mcpu=3Darm926ej-=
s conflicts with -march=3Darmv5e switch [-Werror]</div><div>cc1: all warnin=
gs being treated as errors</div><div>configure:3926: $? =3D 1</div><div>con=
figure:3934: result: no</div><div>configure:3977: checking for assembler an=
d linker STT_GNU_IFUNC support</div><div>cc1: warning: switch -mcpu=3Darm92=
6ej-s conflicts with -march=3Darmv5e switch</div><div><br></div><div>Reloca=
tion section &#39;.rel.dyn&#39; at offset 0xd8 contains 1 entry:</div><div>=
=C2=A0Offset=C2=A0 =C2=A0 =C2=A0Info=C2=A0 =C2=A0 Type=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 Sym.Value=C2=A0 Sym. Name</div><div>00020ffc=C2=A0 000=
000a0 R_ARM_IRELATIVE=C2=A0=C2=A0</div><div>configure:4008: result: yes</di=
v><div>configure:4012: checking for gcc attribute ifunc support</div><div>c=
c1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e switc=
h</div><div>configure:4038: result: yes</div><div>configure:4042: checking =
if compiler warns about alias for function with incompatible types</div><di=
v>cc1: error: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e swit=
ch [-Werror]</div><div>conftest.c:9:34: error: &#39;foo_alias&#39; alias be=
tween functions of incompatible types &#39;int(const void *, int)&#39; and =
&#39;int (*(void))(const void *, int)&#39; [-Werror=3Dattribute-alias]</div=
><div>=C2=A0extern __typeof (__redirect_foo) foo_alias __attribute__ ((alia=
s (&quot;foo&quot;)));</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 ^~~~~~~~~</div><div>conftest.c:4:28: note: aliased declaration here</di=
v><div>=C2=A0__typeof (__redirect_foo) *foo_impl (void)</div><div>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 ^~~~~~~~</div><div>cc1: all warnings being treated as err=
ors</div><div>configure:4064: result: yes</div><div>configure:4102: checkin=
g sysdep dirs</div><div>configure:4299: result: sysdeps/generic</div><div>c=
onfigure:4319: checking for a BSD-compatible install</div><div>configure:43=
87: result: /home/matt/renew_thud/build/tmp/hosttools/install -c</div><div>=
configure:4402: checking whether ln -s works</div><div>configure:4406: resu=
lt: yes</div><div>configure:4432: checking whether /home/matt/renew_thud/bu=
ild/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sys=
root-native/usr/bin/arm-poky-linux-gnueabi.gcc-cross-initial-arm/../../libe=
xec/arm-poky-linux-gnueabi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi=
/8.2.0/as is GNU as</div><div>configure:4446: result: yes</div><div>configu=
re:4451: checking whether /home/matt/renew_thud/build/tmp/work/arm926ejse-p=
oky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-p=
oky-linux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueab=
i.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/ld is GNU ld</div>=
<div>configure:4465: result: yes</div><div>configure:4475: checking for /ho=
me/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initi=
al/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.gcc-cross-i=
nitial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-initial-arm/gcc/a=
rm-poky-linux-gnueabi/8.2.0/as</div><div>configure:4502: result: /home/matt=
/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28=
-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.gcc-cross-initial-=
arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-initial-arm/gcc/arm-poky=
-linux-gnueabi/8.2.0/as</div><div>configure:4517: checking version of /home=
/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial=
/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.gcc-cross-ini=
tial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-initial-arm/gcc/arm=
-poky-linux-gnueabi/8.2.0/as</div><div>configure:4527: result: 2.31.1.20180=
818, ok</div><div>configure:4605: checking for /home/matt/renew_thud/build/=
tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=
-native/usr/bin/arm-poky-linux-gnueabi.gcc-cross-initial-arm/../../libexec/=
arm-poky-linux-gnueabi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2=
.0/ld</div><div>configure:4632: result: /home/matt/renew_thud/build/tmp/wor=
k/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=
/usr/bin/arm-poky-linux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-pok=
y-linux-gnueabi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/ld</=
div><div>configure:4647: checking version of /home/matt/renew_thud/build/tm=
p/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-n=
ative/usr/bin/arm-poky-linux-gnueabi.gcc-cross-initial-arm/../../libexec/ar=
m-poky-linux-gnueabi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0=
/ld</div><div>configure:4657: result: 2.31.1.20180818, ok</div><div>configu=
re:4672: checking for gnumake</div><div>configure:4699: result: make</div><=
div>configure:4714: checking version of make</div><div>configure:4724: resu=
lt: 4.2.1, ok</div><div>configure:4736: checking for gnumsgfmt</div><div>co=
nfigure:4766: result: no</div><div>configure:4736: checking for gmsgfmt</di=
v><div>configure:4766: result: no</div><div>configure:4736: checking for ms=
gfmt</div><div>configure:4766: result: no</div><div>configure:4799: checkin=
g for makeinfo</div><div>configure:4815: found /home/matt/renew_thud/build/=
tmp/hosttools/makeinfo</div><div>configure:4826: result: makeinfo</div><div=
>configure:4841: checking version of makeinfo</div><div>configure:4851: res=
ult: 6.5, ok</div><div>configure:4862: checking for sed</div><div>configure=
:4878: found /home/matt/renew_thud/build/tmp/hosttools/sed</div><div>config=
ure:4889: result: sed</div><div>configure:4904: checking version of sed</di=
v><div>configure:4914: result: 4.5, ok</div><div>configure:4925: checking f=
or gawk</div><div>configure:4941: found /home/matt/renew_thud/build/tmp/hos=
ttools/gawk</div><div>configure:4952: result: gawk</div><div>configure:4967=
: checking version of gawk</div><div>configure:4977: result: 4.1.4, ok</div=
><div>configure:4988: checking for bison</div><div>configure:5004: found /h=
ome/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-init=
ial/2.28-r0/recipe-sysroot-native/usr/bin/bison</div><div>configure:5015: r=
esult: bison</div><div>configure:5030: checking version of bison</div><div>=
configure:5040: result: 3.0.4, ok</div><div>configure:5048: checking if arm=
-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv5e -marm -mcpu=3Darm926ej-s=C2=
=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-=
gnueabi/glibc-initial/2.28-r0/recipe-sysroot is sufficient to build libc</d=
iv><div>configure:5068: arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv5e -m=
arm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/wo=
rk/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -c=C2=
=A0 -O2 -pipe -g -feliminate-unused-debug-types -fdebug-prefix-map=3D/home/=
matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/=
2.28-r0=3D/usr/src/debug/glibc-initial/2.28-r0 -fdebug-prefix-map=3D/home/m=
att/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2=
.28-r0/recipe-sysroot=3D -fdebug-prefix-map=3D/home/matt/renew_thud/build/t=
mp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-=
native=3D=C2=A0 -fno-unwind-tables=C2=A0 conftest.c &gt;&amp;5</div><div>cc=
1: warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e switch=
</div><div>configure:5068: $? =3D 0</div><div>configure:5075: result: yes</=
div><div>configure:5084: checking for arm-poky-linux-gnueabi-nm</div><div>c=
onfigure:5111: result: arm-poky-linux-gnueabi-nm</div><div>configure:5249: =
checking for python3</div><div>configure:5265: found /home/matt/renew_thud/=
build/tmp/hosttools/python3</div><div>configure:5276: result: python3</div>=
<div>configure:5307: WARNING:</div><div>*** These auxiliary programs are mi=
ssing or incompatible versions: msgfmt</div><div>*** some features or tests=
 will be disabled.</div><div>*** Check the INSTALL file for required versio=
ns.</div><div>configure:5358: checking LD_LIBRARY_PATH variable</div><div>c=
onfigure:5368: result: ok</div><div>configure:5379: checking for bash</div>=
<div>configure:5397: found /home/matt/renew_thud/build/tmp/hosttools/bash</=
div><div>configure:5410: result: /home/matt/renew_thud/build/tmp/hosttools/=
bash</div><div>configure:5421: checking for perl</div><div>configure:5439: =
found /home/matt/renew_thud/build/tmp/hosttools/perl</div><div>configure:54=
52: result: /home/matt/renew_thud/build/tmp/hosttools/perl</div><div>config=
ure:5466: checking for install-info</div><div>configure:5485: found /usr/bi=
n/install-info</div><div>configure:5498: result: /usr/bin/install-info</div=
><div>configure:5507: checking for .set assembler directive</div><div>cc1: =
warning: switch -mcpu=3Darm926ej-s conflicts with -march=3Darmv5e switch</d=
iv><div>configure:5533: result: yes</div><div>configure:5540: checking link=
er support for protected data symbol</div><div>configure:5550: arm-poky-lin=
ux-gnueabi-gcc=C2=A0 -march=3Darmv5e -marm -mcpu=3Darm926ej-s=C2=A0 --sysro=
ot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/gli=
bc-initial/2.28-r0/recipe-sysroot -nostdlib -nostartfiles -fno-stack-protec=
tor -fPIC -shared conftest.c -o conftest.so</div><div>cc1: warning: switch =
-mcpu=3Darm926ej-s conflicts with -march=3Darmv5e switch</div><div>configur=
e:5553: $? =3D 0</div><div>configure:5560: arm-poky-linux-gnueabi-gcc=C2=A0=
 -march=3Darmv5e -marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/rene=
w_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/r=
ecipe-sysroot -nostdlib -nostartfiles -fno-stack-protector conftest.c -o co=
nftest conftest.so</div><div>cc1: warning: switch -mcpu=3Darm926ej-s confli=
cts with -march=3Darmv5e switch</div><div>/home/matt/renew_thud/build/tmp/w=
ork/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-nati=
ve/usr/bin/arm-poky-linux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-p=
oky-linux-gnueabi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/ld=
: warning: cannot find entry symbol _start; defaulting to 00000000000101dc<=
/div><div>configure:5563: $? =3D 0</div><div>configure:5571: result: yes</d=
iv><div>configure:5575: checking linker support for INSERT in linker script=
</div><div>configure:5593: arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv5e=
 -marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp=
/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot -n=
ostdlib -nostartfiles -fno-stack-protector -fPIC -shared conftest.c -Wl,-T,=
conftest.t -o conftest.so</div><div>cc1: warning: switch -mcpu=3Darm926ej-s=
 conflicts with -march=3Darmv5e switch</div><div>configure:5596: $? =3D 0</=
div><div>configure:5603: result: yes</div><div>configure:5607: checking for=
 broken __attribute__((alias()))</div><div>configure:5622: arm-poky-linux-g=
nueabi-gcc=C2=A0 -march=3Darmv5e -marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=
=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc=
-initial/2.28-r0/recipe-sysroot -Werror -S conftest.c -o conftest.s 1&gt;&a=
mp;5</div><div>cc1: error: switch -mcpu=3Darm926ej-s conflicts with -march=
=3Darmv5e switch [-Werror]</div><div>cc1: all warnings being treated as err=
ors</div><div>configure:5625: $? =3D 1</div><div>configure:5635: result: ye=
s</div><div>configure:5638: error: working alias attribute support required=
</div><div><br></div><div>## ---------------- ##</div><div>## Cache variabl=
es. ##</div><div>## ---------------- ##</div><div><br></div><div>ac_cv_buil=
d=3Dx86_64-pc-linux-gnu</div><div>ac_cv_c_compiler_gnu=3Dyes</div><div>ac_c=
v_cxx_compiler_gnu=3Dno</div><div>ac_cv_env_CCC_set=3D</div><div>ac_cv_env_=
CCC_value=3D</div><div>ac_cv_env_CC_set=3Dset</div><div>ac_cv_env_CC_value=
=3D&#39;arm-poky-linux-gnueabi-gcc=C2=A0 -march=3Darmv5e -marm -mcpu=3Darm9=
26ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-po=
ky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot&#39;</div><div>ac_cv_=
env_CFLAGS_set=3Dset</div><div>ac_cv_env_CFLAGS_value=3D&#39; -O2 -pipe -g =
-feliminate-unused-debug-types -fdebug-prefix-map=3D/home/matt/renew_thud/b=
uild/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0=3D/usr/sr=
c/debug/glibc-initial/2.28-r0 -fdebug-prefix-map=3D/home/matt/renew_thud/bu=
ild/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sys=
root=3D -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejs=
e-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D &#39;</=
div><div>ac_cv_env_CPPFLAGS_set=3Dset</div><div>ac_cv_env_CPPFLAGS_value=3D=
</div><div>ac_cv_env_CPP_set=3Dset</div><div>ac_cv_env_CPP_value=3D&#39;arm=
-poky-linux-gnueabi-gcc -E --sysroot=3D/home/matt/renew_thud/build/tmp/work=
/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=C2=A0 -=
march=3Darmv5e -marm -mcpu=3Darm926ej-s &#39;</div><div>ac_cv_env_CXXFLAGS_=
set=3Dset</div><div>ac_cv_env_CXXFLAGS_value=3D&#39; -O2 -pipe -g -felimina=
te-unused-debug-types -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/=
work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0=3D/usr/src/debug/g=
libc-initial/2.28-r0 -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/w=
ork/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=3D -=
fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-li=
nux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D=C2=A0 -fvisibili=
ty-inlines-hidden&#39;</div><div>ac_cv_env_CXX_set=3Dset</div><div>ac_cv_en=
v_CXX_value=3D&#39;arm-poky-linux-gnueabi-g++=C2=A0 -march=3Darmv5e -marm -=
mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/build/tmp/work/ar=
m926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot&#39;</div>=
<div>ac_cv_env_LDFLAGS_set=3Dset</div><div>ac_cv_env_LDFLAGS_value=3D&#39;-=
Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=C2=A0 -Wl,-z,relro,-z,now&#39=
;</div><div>ac_cv_env_LIBS_set=3D</div><div>ac_cv_env_LIBS_value=3D</div><d=
iv>ac_cv_env_build_alias_set=3Dset</div><div>ac_cv_env_build_alias_value=3D=
x86_64-linux</div><div>ac_cv_env_host_alias_set=3Dset</div><div>ac_cv_env_h=
ost_alias_value=3Darm-poky-linux-gnueabi</div><div>ac_cv_env_target_alias_s=
et=3D</div><div>ac_cv_env_target_alias_value=3D</div><div>ac_cv_host=3Darm-=
poky-linux-gnueabi</div><div>ac_cv_objext=3Do</div><div>ac_cv_path_BASH_SHE=
LL=3D/home/matt/renew_thud/build/tmp/hosttools/bash</div><div>ac_cv_path_IN=
STALL_INFO=3D/usr/bin/install-info</div><div>ac_cv_path_PERL=3D/home/matt/r=
enew_thud/build/tmp/hosttools/perl</div><div>ac_cv_path_install=3D&#39;/hom=
e/matt/renew_thud/build/tmp/hosttools/install -c&#39;</div><div>ac_cv_prog_=
AS=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/gli=
bc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.gcc=
-cross-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-initial-a=
rm/gcc/arm-poky-linux-gnueabi/8.2.0/as</div><div>ac_cv_prog_AWK=3Dgawk</div=
><div>ac_cv_prog_BISON=3Dbison</div><div>ac_cv_prog_BUILD_CC=3D&#39;gcc &#3=
9;</div><div>ac_cv_prog_CC=3D&#39;arm-poky-linux-gnueabi-gcc=C2=A0 -march=
=3Darmv5e -marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=3D/home/matt/renew_thud/=
build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-s=
ysroot&#39;</div><div>ac_cv_prog_LD=3D/home/matt/renew_thud/build/tmp/work/=
arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/u=
sr/bin/arm-poky-linux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-=
linux-gnueabi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/ld</di=
v><div>ac_cv_prog_MAKE=3Dmake</div><div>ac_cv_prog_MAKEINFO=3Dmakeinfo</div=
><div>ac_cv_prog_NM=3Darm-poky-linux-gnueabi-nm</div><div>ac_cv_prog_PYTHON=
_PROG=3Dpython3</div><div>ac_cv_prog_READELF=3Darm-poky-linux-gnueabi-reade=
lf</div><div>ac_cv_prog_SED=3Dsed</div><div>ac_cv_prog_cc_g=3Dyes</div><div=
>ac_cv_prog_cxx_g=3Dno</div><div>libc_cv_asm_set_directive=3Dyes</div><div>=
libc_cv_broken_alias_attribute=3Dyes</div><div>libc_cv_compiler_ok=3Dyes</d=
iv><div>libc_cv_cxx_link_ok=3Dno</div><div>libc_cv_gcc_incompatible_alias=
=3Dyes</div><div>libc_cv_gcc_indirect_function=3Dyes</div><div>libc_cv_inse=
rt=3Dyes</div><div>libc_cv_ld_gnu_indirect_function=3Dyes</div><div>libc_cv=
_nss_crypt=3Dno</div><div>libc_cv_prog_as_gnu=3Dyes</div><div>libc_cv_prog_=
ld_gnu=3Dyes</div><div>libc_cv_protected_data=3Dyes</div><div>libc_cv_ssp=
=3Dno</div><div>libc_cv_ssp_all=3Dno</div><div>libc_cv_ssp_strong=3Dno</div=
><div>libc_cv_static_nss_crypt=3Dno</div><div>libc_cv_with_fp=3Dno</div><di=
v>lt_cv_sys_lib_dlsearch_path_spec=3D&#39;/usr/lib /lib&#39;</div><div><br>=
</div><div>## ----------------- ##</div><div>## Output variables. ##</div><=
div>## ----------------- ##</div><div><br></div><div>AR=3D&#39;/home/matt/r=
enew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r=
0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.gcc-cross-initial-ar=
m/../../libexec/arm-poky-linux-gnueabi.gcc-cross-initial-arm/gcc/arm-poky-l=
inux-gnueabi/8.2.0/ar&#39;</div><div>AS=3D&#39;/home/matt/renew_thud/build/=
tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot=
-native/usr/bin/arm-poky-linux-gnueabi.gcc-cross-initial-arm/../../libexec/=
arm-poky-linux-gnueabi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2=
.0/as&#39;</div><div>ASFLAGS_config=3D&#39;&#39;</div><div>AUTOCONF=3D&#39;=
no&#39;</div><div>AWK=3D&#39;gawk&#39;</div><div>BASH_SHELL=3D&#39;/home/ma=
tt/renew_thud/build/tmp/hosttools/bash&#39;</div><div>BISON=3D&#39;bison&#3=
9;</div><div>BUILD_CC=3D&#39;gcc &#39;</div><div>CC=3D&#39;arm-poky-linux-g=
nueabi-gcc=C2=A0 -march=3Darmv5e -marm -mcpu=3Darm926ej-s=C2=A0 --sysroot=
=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc=
-initial/2.28-r0/recipe-sysroot&#39;</div><div>CFLAGS=3D&#39; -O2 -pipe -g =
-feliminate-unused-debug-types -fdebug-prefix-map=3D/home/matt/renew_thud/b=
uild/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0=3D/usr/sr=
c/debug/glibc-initial/2.28-r0 -fdebug-prefix-map=3D/home/matt/renew_thud/bu=
ild/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sys=
root=3D -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926ejs=
e-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D=C2=A0 -=
fno-unwind-tables&#39;</div><div>CPP=3D&#39;arm-poky-linux-gnueabi-gcc -E -=
-sysroot=3D/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnuea=
bi/glibc-initial/2.28-r0/recipe-sysroot=C2=A0 -march=3Darmv5e -marm -mcpu=
=3Darm926ej-s &#39;</div><div>CPPFLAGS=3D&#39;&#39;</div><div>CPPUNDEFS=3D&=
#39;&#39;</div><div>CXX=3D&#39;&#39;</div><div>CXXFLAGS=3D&#39; -O2 -pipe -=
g -feliminate-unused-debug-types -fdebug-prefix-map=3D/home/matt/renew_thud=
/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0=3D/usr/=
src/debug/glibc-initial/2.28-r0 -fdebug-prefix-map=3D/home/matt/renew_thud/=
build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-s=
ysroot=3D -fdebug-prefix-map=3D/home/matt/renew_thud/build/tmp/work/arm926e=
jse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native=3D=C2=A0=
 -fvisibility-inlines-hidden&#39;</div><div>CXX_BITS_STD_ABS_H=3D&#39;&#39;=
</div><div>CXX_CMATH_HEADER=3D&#39;&#39;</div><div>CXX_CSTDLIB_HEADER=3D&#3=
9;&#39;</div><div>CXX_SYSINCLUDES=3D&#39;&#39;</div><div>DEFINES=3D&#39;&#3=
9;</div><div>DEFS=3D&#39;&#39;</div><div>ECHO_C=3D&#39;&#39;</div><div>ECHO=
_N=3D&#39;-n&#39;</div><div>ECHO_T=3D&#39;&#39;</div><div>GPROF=3D&#39;gpro=
f&#39;</div><div>INSTALL_DATA=3D&#39;${INSTALL} -m 644&#39;</div><div>INSTA=
LL_INFO=3D&#39;/usr/bin/install-info&#39;</div><div>INSTALL_PROGRAM=3D&#39;=
${INSTALL}&#39;</div><div>INSTALL_SCRIPT=3D&#39;${INSTALL}&#39;</div><div>L=
D=3D&#39;/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi=
/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi=
.gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnueabi.gcc-cross-initi=
al-arm/gcc/arm-poky-linux-gnueabi/8.2.0/ld&#39;</div><div>LDFLAGS=3D&#39;-W=
l,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=C2=A0 -Wl,-z,relro,-z,now&#39;=
</div><div>LIBGD=3D&#39;&#39;</div><div>LIBOBJS=3D&#39;&#39;</div><div>LIBS=
=3D&#39;&#39;</div><div>LN_S=3D&#39;ln -s&#39;</div><div>LTLIBOBJS=3D&#39;&=
#39;</div><div>MAKE=3D&#39;make&#39;</div><div>MAKEINFO=3D&#39;makeinfo&#39=
;</div><div>MSGFMT=3D&#39;:&#39;</div><div>NM=3D&#39;arm-poky-linux-gnueabi=
-nm&#39;</div><div>OBJCOPY=3D&#39;/home/matt/renew_thud/build/tmp/work/arm9=
26ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/b=
in/arm-poky-linux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-linu=
x-gnueabi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/objcopy&#3=
9;</div><div>OBJDUMP=3D&#39;/home/matt/renew_thud/build/tmp/work/arm926ejse=
-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-native/usr/bin/arm=
-poky-linux-gnueabi.gcc-cross-initial-arm/../../libexec/arm-poky-linux-gnue=
abi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/objdump&#39;</di=
v><div>OBJEXT=3D&#39;o&#39;</div><div>PACKAGE_BUGREPORT=3D&#39;<a href=3D"h=
ttps://sourceware.org/bugzilla/" target=3D"_blank">https://sourceware.org/b=
ugzilla/</a>&#39;</div><div>PACKAGE_NAME=3D&#39;GNU C Library&#39;</div><di=
v>PACKAGE_STRING=3D&#39;GNU C Library (see version.h)&#39;</div><div>PACKAG=
E_TARNAME=3D&#39;glibc&#39;</div><div>PACKAGE_URL=3D&#39;<a href=3D"http://=
www.gnu.org/software/glibc/" target=3D"_blank">http://www.gnu.org/software/=
glibc/</a>&#39;</div><div>PACKAGE_VERSION=3D&#39;(see version.h)&#39;</div>=
<div>PATH_SEPARATOR=3D&#39;:&#39;</div><div>PERL=3D&#39;/home/matt/renew_th=
ud/build/tmp/hosttools/perl&#39;</div><div>PKGVERSION=3D&#39;(GNU libc) &#3=
9;</div><div>PKGVERSION_TEXI=3D&#39;(GNU libc) &#39;</div><div>PYTHON=3D&#3=
9;python3 -B&#39;</div><div>PYTHON_PROG=3D&#39;python3&#39;</div><div>READE=
LF=3D&#39;arm-poky-linux-gnueabi-readelf&#39;</div><div>RELEASE=3D&#39;&#39=
;</div><div>REPORT_BUGS_TEXI=3D&#39;@uref{<a href=3D"http://www.gnu.org/sof=
tware/libc/bugs.html" target=3D"_blank">http://www.gnu.org/software/libc/bu=
gs.html</a>}&#39;</div><div>REPORT_BUGS_TO=3D&#39;&lt;<a href=3D"http://www=
.gnu.org/software/libc/bugs.html" target=3D"_blank">http://www.gnu.org/soft=
ware/libc/bugs.html</a>&gt;&#39;</div><div>SED=3D&#39;sed&#39;</div><div>SH=
ELL=3D&#39;/bin/bash&#39;</div><div>SYSINCLUDES=3D&#39;-nostdinc -isystem /=
home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/glibc-ini=
tial/2.28-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi.gcc-cross=
-initial-arm/../../lib/arm-poky-linux-gnueabi.gcc-cross-initial-arm/gcc/arm=
-poky-linux-gnueabi/8.2.0/include -isystem /home/matt/renew_thud/build/tmp/=
work/arm926ejse-poky-linux-gnueabi/glibc-initial/2.28-r0/recipe-sysroot-nat=
ive/usr/bin/arm-poky-linux-gnueabi.gcc-cross-initial-arm/../../lib/arm-poky=
-linux-gnueabi.gcc-cross-initial-arm/gcc/arm-poky-linux-gnueabi/8.2.0/inclu=
de-fixed -isystem /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linu=
x-gnueabi/glibc-initial/2.28-r0/recipe-sysroot/usr/include&#39;</div><div>V=
ERSION=3D&#39;&#39;</div><div>ac_ct_CC=3D&#39;&#39;</div><div>ac_ct_CXX=3D&=
#39;&#39;</div><div>all_warnings=3D&#39;&#39;</div><div>base_machine=3D&#39=
;arm&#39;</div><div>bindir=3D&#39;${exec_prefix}/bin&#39;</div><div>bindnow=
=3D&#39;no&#39;</div><div>build=3D&#39;x86_64-pc-linux-gnu&#39;</div><div>b=
uild_alias=3D&#39;x86_64-linux&#39;</div><div>build_cpu=3D&#39;x86_64&#39;<=
/div><div>build_crypt=3D&#39;yes&#39;</div><div>build_nscd=3D&#39;default&#=
39;</div><div>build_obsolete_nsl=3D&#39;no&#39;</div><div>build_os=3D&#39;l=
inux-gnu&#39;</div><div>build_pt_chown=3D&#39;no&#39;</div><div>build_vendo=
r=3D&#39;pc&#39;</div><div>cross_compiling=3D&#39;yes&#39;</div><div>datadi=
r=3D&#39;${datarootdir}&#39;</div><div>datarootdir=3D&#39;${prefix}/share&#=
39;</div><div>docdir=3D&#39;${datarootdir}/doc/${PACKAGE_TARNAME}&#39;</div=
><div>dvidir=3D&#39;${docdir}&#39;</div><div>enable_timezone_tools=3D&#39;y=
es&#39;</div><div>enable_werror=3D&#39;yes&#39;</div><div>exec_prefix=3D&#3=
9;NONE&#39;</div><div>experimental_malloc=3D&#39;yes&#39;</div><div>fno_uni=
t_at_a_time=3D&#39;&#39;</div><div>force_install=3D&#39;yes&#39;</div><div>=
hardcoded_path_in_tests=3D&#39;no&#39;</div><div>have_libaudit=3D&#39;&#39;=
</div><div>have_libcap=3D&#39;&#39;</div><div>have_selinux=3D&#39;&#39;</di=
v><div>have_tunables=3D&#39;yes&#39;</div><div>host=3D&#39;arm-poky-linux-g=
nueabi&#39;</div><div>host_alias=3D&#39;arm-poky-linux-gnueabi&#39;</div><d=
iv>host_cpu=3D&#39;arm&#39;</div><div>host_os=3D&#39;linux-gnueabi&#39;</di=
v><div>host_vendor=3D&#39;poky&#39;</div><div>htmldir=3D&#39;${docdir}&#39;=
</div><div>includedir=3D&#39;${prefix}/include&#39;</div><div>infodir=3D&#3=
9;${datarootdir}/info&#39;</div><div>ldd_rewrite_script=3D&#39;&#39;</div><=
div>libc_cv_cc_loop_to_function=3D&#39;&#39;</div><div>libc_cv_cc_nofma=3D&=
#39;&#39;</div><div>libc_cv_cc_pie_default=3D&#39;&#39;</div><div>libc_cv_c=
c_submachine=3D&#39;&#39;</div><div>libc_cv_cc_with_libunwind=3D&#39;&#39;<=
/div><div>libc_cv_complocaledir=3D&#39;&#39;</div><div>libc_cv_cxx_thread_l=
ocal=3D&#39;&#39;</div><div>libc_cv_fpie=3D&#39;&#39;</div><div>libc_cv_gcc=
_unwind_find_fde=3D&#39;&#39;</div><div>libc_cv_has_glob_dat=3D&#39;&#39;</=
div><div>libc_cv_hashstyle=3D&#39;&#39;</div><div>libc_cv_insert=3D&#39;yes=
&#39;</div><div>libc_cv_localstatedir=3D&#39;&#39;</div><div>libc_cv_mtls_d=
ialect_gnu2=3D&#39;&#39;</div><div>libc_cv_multidir=3D&#39;&#39;</div><div>=
libc_cv_nss_crypt=3D&#39;no&#39;</div><div>libc_cv_output_format=3D&#39;&#3=
9;</div><div>libc_cv_pic_default=3D&#39;&#39;</div><div>libc_cv_pie_default=
=3D&#39;&#39;</div><div>libc_cv_protected_data=3D&#39;yes&#39;</div><div>li=
bc_cv_rootsbindir=3D&#39;&#39;</div><div>libc_cv_rtlddir=3D&#39;&#39;</div>=
<div>libc_cv_slibdir=3D&#39;&#39;</div><div>libc_cv_ssp=3D&#39;no&#39;</div=
><div>libc_cv_static_nss_crypt=3D&#39;no&#39;</div><div>libc_cv_sysconfdir=
=3D&#39;&#39;</div><div>libc_cv_with_fp=3D&#39;no&#39;</div><div>libc_cv_z_=
combreloc=3D&#39;&#39;</div><div>libc_cv_z_execstack=3D&#39;&#39;</div><div=
>libc_extra_cflags=3D&#39;&#39;</div><div>libc_extra_cppflags=3D&#39;&#39;<=
/div><div>libdir=3D&#39;${exec_prefix}/lib&#39;</div><div>libexecdir=3D&#39=
;${exec_prefix}/libexec&#39;</div><div>link_obsolete_rpc=3D&#39;no&#39;</di=
v><div>localedir=3D&#39;${datarootdir}/locale&#39;</div><div>localstatedir=
=3D&#39;${prefix}/var&#39;</div><div>mach_interface_list=3D&#39;&#39;</div>=
<div>mandir=3D&#39;${datarootdir}/man&#39;</div><div>multi_arch=3D&#39;no&#=
39;</div><div>no_stack_protector=3D&#39;&#39;</div><div>oldincludedir=3D&#3=
9;/usr/include&#39;</div><div>pdfdir=3D&#39;${docdir}&#39;</div><div>prefix=
=3D&#39;/usr&#39;</div><div>profile=3D&#39;no&#39;</div><div>program_transf=
orm_name=3D&#39;s,x,x,&#39;</div><div>psdir=3D&#39;${docdir}&#39;</div><div=
>sbindir=3D&#39;${exec_prefix}/sbin&#39;</div><div>shared=3D&#39;yes&#39;</=
div><div>sharedstatedir=3D&#39;${prefix}/com&#39;</div><div>stack_protector=
=3D&#39;-fno-stack-protector&#39;</div><div>static=3D&#39;&#39;</div><div>s=
tatic_nss=3D&#39;no&#39;</div><div>subdirs=3D&#39; &#39;</div><div>submachi=
ne=3D&#39;&#39;</div><div>sysconfdir=3D&#39;${prefix}/etc&#39;</div><div>sy=
sheaders=3D&#39;/home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-=
gnueabi/glibc-initial/2.28-r0/recipe-sysroot/usr/include&#39;</div><div>sys=
names=3D&#39; sysdeps/unix/sysv/linux/arm sysdeps/arm/nptl sysdeps/unix/sys=
v/linux sysdeps/nptl sysdeps/pthread sysdeps/gnu sysdeps/unix/inet sysdeps/=
unix/sysv sysdeps/unix/arm sysdeps/unix sysdeps/posix sysdeps/arm/nofpu sys=
deps/ieee754/soft-fp sysdeps/arm sysdeps/wordsize-32 sysdeps/ieee754/flt-32=
 sysdeps/ieee754/dbl-64 sysdeps/ieee754 sysdeps/generic&#39;</div><div>targ=
et_alias=3D&#39;&#39;</div><div>use_default_link=3D&#39;default&#39;</div><=
div>use_ldconfig=3D&#39;&#39;</div><div>use_nscd=3D&#39;yes&#39;</div><div>=
<br></div><div>## ----------- ##</div><div>## confdefs.h. ##</div><div>## -=
---------- ##</div><div><br></div><div>/* confdefs.h */</div><div>#define P=
ACKAGE_NAME &quot;GNU C Library&quot;</div><div>#define PACKAGE_TARNAME &qu=
ot;glibc&quot;</div><div>#define PACKAGE_VERSION &quot;(see version.h)&quot=
;</div><div>#define PACKAGE_STRING &quot;GNU C Library (see version.h)&quot=
;</div><div>#define PACKAGE_BUGREPORT &quot;<a href=3D"https://sourceware.o=
rg/bugzilla/" target=3D"_blank">https://sourceware.org/bugzilla/</a>&quot;<=
/div><div>#define PACKAGE_URL &quot;<a href=3D"http://www.gnu.org/software/=
glibc/" target=3D"_blank">http://www.gnu.org/software/glibc/</a>&quot;</div=
><div>#define PKGVERSION &quot;(GNU libc) &quot;</div><div>#define REPORT_B=
UGS_TO &quot;&lt;<a href=3D"http://www.gnu.org/software/libc/bugs.html" tar=
get=3D"_blank">http://www.gnu.org/software/libc/bugs.html</a>&gt;&quot;</di=
v><div>#define HAVE_TUNABLES 1</div><div>#define STACK_PROTECTOR_LEVEL 0</d=
iv><div>#define HAVE_ASM_SET_DIRECTIVE 1</div><div><br></div><div>configure=
: exit 1</div></div><div><br></div></div></div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr">On Wed, Jan 2, 2019 at 3:19 PM Khem Raj &lt;<a hr=
ef=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Wed=
, Jan 2, 2019 at 12:37 PM Matthew Stanger<br>
&lt;<a href=3D"mailto:matthew_stanger@trimble.com" target=3D"_blank">matthe=
w_stanger@trimble.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; I&#39;m getting a build failure under Thud when trying to use the<br>
&gt; following tune in my machine.conf:<br>
&gt; #at91sam9.inc is from meta-atmel - at91sam9263 is ARM target<br>
&gt; require conf/machine/include/at91sam9.inc<br>
&gt; DEFAULTTUNE =3D &quot;arm926ejs&quot;<br>
&gt;<br>
&gt;<br>
&gt; When doing a fresh build &#39;glibc-initial&#39; config stage fail&#39=
;s with:<br>
&gt; | checking for broken __attribute__((alias()))... yes<br>
&gt; | configure: error: working alias attribute support required<br>
&gt; | WARNING: exit code 1 from a shell command.<br>
&gt; | ERROR: Function failed: do_configure (log file is located at<br>
&gt; /home/matt/renew_thud/build/tmp/work/arm926ejse-poky-linux-gnueabi/gli=
bc-initial/2.28-r0/temp/log.do_configure.1177)<br>
&gt; ERROR: Task (/home/matt/renew_thud/build/../oe/poky/meta/recipes-core/=
glibc/glibc-initial_2.28.bb:do_configure)<br>
&gt; failed with exit code &#39;1&#39;<br>
&gt; NOTE: Tasks Summary: Attempted 2173 tasks of which 0 didn&#39;t need t=
o be<br>
&gt; rerun and 1 failed.<br>
&gt;<br>
&gt; Summary: 1 task failed:<br>
&gt;=C2=A0 =C2=A0/home/matt/renew_thud/build/../oe/poky/meta/recipes-core/g=
libc/glibc-initial_2.28.bb:do_configure<br>
&gt;<br>
&gt; Can give follow on config.log&#39;s and such as required.<br>
<br>
yes that would be helpful. Since gcc has become stricter with option<br>
checks, its possibly ending in some combination which either is invalid<br>
or is wrongly computed by gcc from -mcpu<br>
<br>
&gt;<br>
&gt; If I edit &#39;poky/meta/conf/machine/include/tune-arm926ejs.inc&#39; =
to<br>
&gt; change the &#39;-mcpu&#39; back to &#39;mtune&#39;(commit f29d642c) th=
en glibc builds<br>
&gt; fine. GCC tuning is totally outside my expertise so I&#39;m hoping som=
eone<br>
&gt; can confirm if &#39;-mcpu&#39; is really desired over &#39;-mtune&#39;=
? And also if<br>
&gt; this look like a Poky issue or something else?<br>
&gt;<br>
&gt; Cheers,<br>
&gt; Matt<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; poky mailing list<br>
&gt; <a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctop=
roject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"norefe=
rrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br=
>
</blockquote></div>
-- <br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
</blockquote></div>

--000000000000b9f30f057e815a24--
