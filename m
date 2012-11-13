Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 351ADE011AC
	for <poky@yoctoproject.org>; Tue, 13 Nov 2012 08:26:10 -0800 (PST)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Tue, 13 Nov 2012 11:26:09 -0500
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Tue, 13 Nov 2012 11:26:08 -0500
Thread-Topic: Errors attempting to build AT91SAM9x5 BSP
Thread-Index: Ac2+p/HJGF/PFlj+S0eIOlKPBBI7JwDEiHfQ
Message-ID: <91586D499ADFD74FBCFB8425266A5DE4012C7CF327A4@pluto.melinkcorp.local>
References: <91586D499ADFD74FBCFB8425266A5DE4012C7CE153F8@pluto.melinkcorp.local>
In-Reply-To: <91586D499ADFD74FBCFB8425266A5DE4012C7CE153F8@pluto.melinkcorp.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 00C7DB9300368800C7DCE0
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Errors attempting to build AT91SAM9x5 BSP
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
X-List-Received-Date: Tue, 13 Nov 2012 16:26:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

I decided to start over with the stable danny tarball instead of using the =
Git repository.  I've been able to build a core-image-minimal QEMU image an=
d run it in QEMU.  After that I created my new BSP using the yocto-bsp scri=
pt and added my new BSP to the build/conf/bblayers.conf file as directed in=
 the BSP Guide.  However, now whenever I try to use bitbake for anything I =
get the error message "NOTE: Your conf/bblayers.conf has been automatically=
 updated. Please re-run bitbake."  I've tried incrementing the LCONF_VERSIO=
N variable in conf/bblayers.conf and incrementing the CONF_VERSION in conf/=
local.conf.  I've also tried issuing "bitbake -f -c clean core-image-minima=
l" and I get the same error.  The only way I've been able to use bitbake ag=
ain is to remove the line for my new BSP from the BBLAYERS variable in conf=
/bblayers.conf.  What am I doing wrong?

Thanks,
Bryan

-----Original Message-----
From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] =
On Behalf Of Bryan Evenson
Sent: Friday, November 09, 2012 1:28 PM
To: poky@yoctoproject.org
Subject: [poky] Errors attempting to build AT91SAM9x5 BSP

All,

I am using an Atmel AT91SAM9G25 board and have been using the OpenEmbedded =
Classic development tree (2011.03-maintenance branch) to build images for m=
y board.  This setup is on Linux kernel 2.6.39 and uses a special patch fro=
m Atmel to add SAM9x5 support.  There are some kernel fixes starting at ker=
nel 3.2 that are applicable to my setup that I would like to incorporate in=
to my image.  After reading the Yocto Project documentation, I thought the =
best approach to take would be to use the Yocto Project tools to build a BS=
P for my AT91SAM9G25 board.  So far I have been unsuccessful and I am looki=
ng for help.

What I've done so far:
1.  Followed the instructions in Section 2.2 of the Development Manual to o=
btain the latest Yocto project release, Yocto Project kernel and poky extra=
s from Git.  Associated commit hashes are:
poky: e421e95de0ce430cc2c6db9b0712a66ab96288a1 (on branch master)
linux-yocto-3.4-git: 7eb5fbf903d9db90c3cf371b65e1f2a68d5676d7 (on branch ma=
ster)
poky-extras: 33714938c2b246e4894225b3170cb8972a389618 (on branch master)

Build configuration as announced by Bitbake:
Build Configuration:
BB_VERSION        =3D "1.16.0"
TARGET_ARCH       =3D "arm"
TARGET_OS         =3D "linux-gnueabi"
MACHINE           =3D "qemuarm"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.3+snapshot-20121109"
TUNE_FEATURES     =3D "armv5 dsp thumb arm926ejs"
TARGET_FPU        =3D "soft"
meta             =20
meta-yocto       =20
meta-yocto-bsp    =3D "master:e421e95de0ce430cc2c6db9b0712a66ab96288a1"

2. Modified the local.conf file for an arm setup in hopes of building a qem=
uarm image first with a modified kernel.

3. bitbake -c menuconfig virtual/kernel, and then modified the kernel confi=
guration to fit my needs for a SAM9G25.
4. bitbake virtual/kernel
5. bitbake core-image-sato, which then fails.  It is failing on compiling t=
he util-linux package with the following log from log.do_compile:
DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'common-linux',=
 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
DEBUG: Executing shell function do_compile
NOTE: make -j 2 ARCH=3Darm CPU=3D CPUOPT=3D OPT=3D -O2 -pipe -g -feliminate=
-unused-debug-types make  all-recursive
make[1]: Entering directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-=
poky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2'
Making all in include
make[2]: Entering directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-=
poky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/include'
make[2]: Nothing to be done for `all'.
make[2]: Leaving directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-p=
oky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/include'
Making all in disk-utils
make[2]: Entering directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-=
poky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/disk-utils'
make[2]: Nothing to be done for `all'.
make[2]: Leaving directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-p=
oky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/disk-utils'
Making all in fdisk
make[2]: Entering directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-=
poky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/fdisk'
make[2]: Nothing to be done for `all'.
make[2]: Leaving directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-p=
oky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/fdisk'
Making all in getopt
make[2]: Entering directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-=
poky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/getopt'
make[2]: Nothing to be done for `all'.
make[2]: Leaving directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-p=
oky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/getopt'
Making all in lib
make[2]: Entering directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-=
poky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/lib'
make[2]: Nothing to be done for `all'.
make[2]: Leaving directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-p=
oky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/lib'
Making all in libuuid
make[2]: Entering directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-=
poky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/libuuid'
Making all in src
make[3]: Entering directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-=
poky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/libuuid/src'
make[3]: Nothing to be done for `all'.
make[3]: Leaving directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-p=
oky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/libuuid/src'
Making all in man
make[3]: Entering directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-=
poky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/libuuid/man'
make[3]: Nothing to be done for `all'.
make[3]: Leaving directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-p=
oky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/libuuid/man'
make[3]: Entering directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-=
poky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/libuuid'
make[3]: Nothing to be done for `all-am'.
make[3]: Leaving directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-p=
oky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/libuuid'
make[2]: Leaving directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-p=
oky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/libuuid'
Making all in libblkid
make[2]: Entering directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-=
poky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/libblkid'
Making all in src
make[3]: Entering directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-=
poky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/libblkid/src'
Making all in superblocks
make[4]: Entering directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-=
poky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/libblkid/src/supe=
rblocks'
make[4]: Nothing to be done for `all'.
make[4]: Leaving directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-p=
oky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/libblkid/src/super=
blocks'
Making all in topology
make[4]: Entering directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-=
poky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/libblkid/src/topo=
logy'
make[4]: Nothing to be done for `all'.
make[4]: Leaving directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-p=
oky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/libblkid/src/topol=
ogy'
Making all in partitions
make[4]: Entering directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-=
poky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/libblkid/src/part=
itions'
make[4]: Nothing to be done for `all'.
make[4]: Leaving directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-p=
oky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/libblkid/src/parti=
tions'
Making all in .
make[4]: Entering directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-=
poky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/libblkid/src'
make[4]: Nothing to be done for `all-am'.
make[4]: Leaving directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-p=
oky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/libblkid/src'
make[3]: Leaving directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-p=
oky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/libblkid/src'
Making all in samples
make[3]: Entering directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-=
poky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/libblkid/samples'
make[3]: Nothing to be done for `all'.
make[3]: Leaving directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-p=
oky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/libblkid/samples'
make[3]: Entering directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-=
poky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/libblkid'
make[3]: Nothing to be done for `all-am'.
make[3]: Leaving directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-p=
oky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/libblkid'
make[2]: Leaving directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-p=
oky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/libblkid'
Making all in libmount
make[2]: Entering directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-=
poky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/libmount'
Making all in src
make[3]: Entering directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-=
poky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/libmount/src'
make[3]: Nothing to be done for `all'.
make[3]: Leaving directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-p=
oky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/libmount/src'
make[3]: Entering directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-=
poky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/libmount'
make[3]: Nothing to be done for `all-am'.
make[3]: Leaving directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-p=
oky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/libmount'
make[2]: Leaving directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-p=
oky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/libmount'
Making all in man/ru
make[2]: Entering directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-=
poky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/man/ru'
make[2]: Nothing to be done for `all'.
make[2]: Leaving directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-p=
oky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/man/ru'
Making all in login-utils
make[2]: Entering directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-=
poky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/login-utils'
make[2]: Nothing to be done for `all'.
make[2]: Leaving directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-p=
oky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/login-utils'
Making all in misc-utils
make[2]: Entering directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-=
poky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/misc-utils'
make[2]: Nothing to be done for `all'.
make[2]: Leaving directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-p=
oky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/misc-utils'
Making all in po
make[2]: Entering directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-=
poky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/po'
make[2]: *** No rule to make target `all'.  Stop.
make[2]: Leaving directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-p=
oky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2/po'
make[1]: *** [all-recursive] Error 1
make[1]: Leaving directory `/media/sda3/yocto/poky-build/tmp/work/armv5te-p=
oky-linux-gnueabi/util-linux-2.21.2-r6/util-linux-2.21.2'
make: *** [all] Error 2
ERROR: oe_runmake failed
ERROR: Function failed: do_compile (see /media/sda3/yocto/poky-build/tmp/wo=
rk/armv5te-poky-linux-gnueabi/util-linux-2.21.2-r6/temp/log.do_compile.3192=
5 for further information)

6. I thought there might be e piece in the toolchain that was missing, so I=
 did a "bitbake meta-toolchain", which resulted in the following error duri=
ng the compilation of the nativesdk-gdbm package:
DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common', 'common-linux'=
, 'common-glibc', 'i686-linux', 'common']
DEBUG: Executing shell function do_compile
NOTE: make -j 2
make  all-recursive
make[1]: Entering directory `/media/sda3/yocto/poky-build/tmp/work/i686-nat=
ivesdk-pokysdk-linux/nativesdk-gdbm-1.10-r3/gdbm-1.10'
Making all in po
make[2]: Entering directory `/media/sda3/yocto/poky-build/tmp/work/i686-nat=
ivesdk-pokysdk-linux/nativesdk-gdbm-1.10-r3/gdbm-1.10/po'
make[2]: *** No rule to make target `all'.  Stop.
make[2]: Leaving directory `/media/sda3/yocto/poky-build/tmp/work/i686-nati=
vesdk-pokysdk-linux/nativesdk-gdbm-1.10-r3/gdbm-1.10/po'
make[1]: *** [all-recursive] Error 1
make[1]: Leaving directory `/media/sda3/yocto/poky-build/tmp/work/i686-nati=
vesdk-pokysdk-linux/nativesdk-gdbm-1.10-r3/gdbm-1.10'
make: *** [all] Error 2
ERROR: oe_runmake failed
ERROR: Function failed: do_compile (see /media/sda3/yocto/poky-build/tmp/wo=
rk/i686-nativesdk-pokysdk-linux/nativesdk-gdbm-1.10-r3/temp/log.do_compile.=
26132 for further information)

At this point I'm not sure why I'm seeing these errors and what is going wr=
ong.  I'd welcome any suggestions that would help me get the build to compl=
ete.

Thanks,
Bryan Evenson

_______________________________________________
poky mailing list
poky@yoctoproject.org
https://lists.yoctoproject.org/listinfo/poky

