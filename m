Return-Path: <rajkumar@embeddedwireless.com>
Received: from gw01.embeddedwireless.com (gw01.embeddedwireless.com
	[210.19.225.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A802BE00744
	for <poky@yoctoproject.org>; Wed, 14 Dec 2011 17:46:05 -0800 (PST)
Received: from MailMarshal ([192.168.7.209])
	by gw01.embeddedwireless.com (8.14.4/8.14.4) with ESMTP id
	pBF1k37C005235
	for <poky@yoctoproject.org>; Thu, 15 Dec 2011 09:46:03 +0800
Received: from exchange.ewl.local (Not Verified[192.168.7.190]) by MailMarshal
	with MailMarshal (v6, 8, 3, 9481)
	id <B4ee951510000>; Thu, 15 Dec 2011 09:45:53 +0800
Received: from EXCHANGE.ewl.local ([fe80::5dd5:2145:56c4:d48d]) by
	exchange.ewl.local ([fe80::5dd5:2145:56c4:d48d%10]) with mapi id
	14.01.0218.012; Thu, 15 Dec 2011 09:46:40 +0800
From: Rajkumar Arjunan <rajkumar@embeddedwireless.com>
To: "'poky@yoctoproject.org'" <poky@yoctoproject.org>
Thread-Topic: build issue with pthread
Thread-Index: Acy6y07PAmKNsQMUTbqaZT+Mb/iX8Q==
Date: Thu, 15 Dec 2011 01:46:40 +0000
Message-ID: <2CAE6214820FEA4A9FEB26C2710C44F43EA05076@exchange.ewl.local>
Accept-Language: en-MY, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.7.118]
MIME-Version: 1.0
Subject: build issue with pthread
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 15 Dec 2011 01:46:10 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_2CAE6214820FEA4A9FEB26C2710C44F43EA05076exchangeewlloca_"

--_000_2CAE6214820FEA4A9FEB26C2710C44F43EA05076exchangeewlloca_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am very new to Yacto project.
I am getting compilation error as "undefined reference to `pthread_create'"=
  during build.
I have added -lpthread libraray in my makefile to build. Still I have issue=
.
Please explain how to add library in poky build environment.

I have added 3G.bb file and the build output for reference below.

Note:-No error  If I compile the same source by my desktop Ubuntu native co=
mpiler "/usr/bin/gcc"


MY 3G.bb file:-

SUMMARY =3D "3G API library and Application"
DESCRIPTION =3D " "
DEPENDS =3D ""
RDEPENDS_${PN}-dev =3D ""

LICENSE =3D "GPLv2+"
LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D2d5025d4aa3495befef8f17206a5b0a1=
"

SRCREV =3D "e9078f6e99dde4a90828fa16978ef76897e721a1"

SRC_URI =3D "file://3G-1.1.tar.gz"
S =3D "${WORKDIR}/3G-1.1/"
EXTRA_OEMAKE =3D "'CC=3D${CC}' 'CFLAGS=3D${CFLAGS} -I${S}/include -DWITHOUT=
_XATTR' 'BUILDDIR=3D${S}'"


do_compile() {
                oe_runmake -f pkgs.mak
}


do_install () {
                oe_runmake install DESTDIR=3D${D} SBINDIR=3D${sbindir}

}



ewl@ubuntu-118:~/workspace/poky/build$ bitbake -v -c compile 3G
Loading cache: 100% |######################################################=
###########################################################################=
##########################################| ETA:  00:00:00
Loaded 1042 entries from dependency cache.

OE Build Configuration:
BB_VERSION        =3D "1.13.3"
TARGET_ARCH       =3D "powerpc"
TARGET_OS         =3D "linux"
MACHINE           =3D "mpc8315e-rdb"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.1"
TUNE_FEATURES     =3D "m32 fpu-hard ppc603e"
TARGET_FPU        =3D ""
meta
meta-yocto        =3D "edison:1924f52cc894d4dd6b9d9c1a2248b32fc0a24c8c"

NOTE: Resolving any missing task queue dependencies
NOTE: selecting pseudo-native to satisfy virtual/fakeroot-native due to PRE=
FERRED_PROVIDERS
NOTE: selecting gcc-cross to satisfy virtual/powerpc-poky-linux-gcc due to =
PREFERRED_PROVIDERS
NOTE: selecting gcc-runtime to satisfy virtual/powerpc-poky-linux-compilerl=
ibs due to PREFERRED_PROVIDERS
NOTE: selecting eglibc to satisfy virtual/libc due to PREFERRED_PROVIDERS
NOTE: selecting eglibc to satisfy runtime libsegfault due to PREFERRED_PROV=
IDER_virtual/libc =3D eglibc
NOTE: selecting eglibc to satisfy runtime eglibc due to PREFERRED_PROVIDER_=
virtual/libc =3D eglibc
NOTE: selecting binutils-cross to satisfy virtual/powerpc-poky-linux-binuti=
ls due to PREFERRED_PROVIDERS
NOTE: selecting eglibc to satisfy virtual/powerpc-poky-linux-libc-for-gcc d=
ue to PREFERRED_PROVIDERS
NOTE: selecting gcc-cross to satisfy virtual/powerpc-poky-linux-g++ due to =
PREFERRED_PROVIDERS
NOTE: selecting libgcc to satisfy libgcc due to PREFERRED_PROVIDERS
NOTE: selecting gcc-cross-intermediate to satisfy virtual/powerpc-poky-linu=
x-gcc-intermediate due to PREFERRED_PROVIDERS
NOTE: selecting linux-libc-headers to satisfy linux-libc-headers due to PRE=
FERRED_PROVIDERS
NOTE: selecting gettext to satisfy virtual/gettext due to PREFERRED_PROVIDE=
RS
NOTE: selecting libgcc to satisfy runtime libgcc due to PREFERRED_PROVIDER_=
libgcc =3D libgcc
NOTE: selecting linux-libc-headers to satisfy runtime linux-libc-headers-de=
v due to PREFERRED_PROVIDER_linux-libc-headers =3D linux-libc-headers
NOTE: selecting gettext to satisfy runtime gettext-dev due to PREFERRED_PRO=
VIDER_virtual/gettext =3D gettext
NOTE: selecting gettext to satisfy runtime gettext due to PREFERRED_PROVIDE=
R_virtual/gettext =3D gettext
NOTE: selecting eglibc-initial to satisfy virtual/powerpc-poky-linux-libc-i=
nitial due to PREFERRED_PROVIDERS
NOTE: selecting eglibc to satisfy virtual/libiconv due to PREFERRED_PROVIDE=
RS
NOTE: selecting gcc-cross-initial to satisfy virtual/powerpc-poky-linux-gcc=
-initial due to PREFERRED_PROVIDERS
NOTE: Preparing runqueue
NOTE: Marking Active Tasks
NOTE: Pruned 1500 inactive tasks, 242 left
NOTE: Assign Weightings
NOTE: Compute totals (have 1 endpoint(s))
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Running task 242 of 242 (ID: 4, /home/ewl/workspace/poky/meta/recipes=
-extended/3G/3G_1.1.bb, do_compile)
NOTE: package 3G-1.1-r0: task do_compile: Started
+ export prefix=3D/usr
+ prefix=3D/usr
+ export STAGING_SIPDIR=3D/home/ewl/workspace/poky/build/tmp/sysroots/i686-=
linux/usr/share/sip
+ STAGING_SIPDIR=3D/home/ewl/workspace/poky/build/tmp/sysroots/i686-linux/u=
sr/share/sip
+ export localstatedir=3D/var
+ localstatedir=3D/var
+ export BUILD_CC=3Dgcc
+ BUILD_CC=3Dgcc
+ export USER=3Dewl
+ USER=3Dewl
+ export libexecdir=3D/usr/libexec
+ libexecdir=3D/usr/libexec
+ export QTDIR=3D/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb/q=
t2
+ QTDIR=3D/home/ewl/workspace/poky/build/tmp/sysro
ots/mpc8315e-rdb/qt2
+ export datadir=3D/usr/share
+ datadir=3D/usr/share
+ export STRIP=3Dpowerpc-poky-linux-strip
+ STRIP=3Dpowerpc-poky-linux-strip
+ export BUILD_CXX=3Dg++
+ BUILD_CXX=3Dg++
+ export 'LD=3Dpowerpc-poky-linux-ld --sysroot=3D/home/ewl/workspace/poky/b=
uild/tmp/sysroots/mpc8315e-rdb'
+ LD=3D'powerpc-poky-linux-ld --sysroot=3D/home/ewl/workspace/poky/build/tm=
p/sysroots/mpc8315e-rdb'
+ export 'LDFLAGS=3D-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed'
+ LDFLAGS=3D'-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed'
+ export b
indir=3D/usr/bin
+ bindir=3D/usr/bin
+ export 'TARGET_CXXFLAGS=3D-O2 -pipe -g -feliminate-unused-debug-types -fp=
ermissive'
+ TARGET_CXXFLAGS=3D'-O2 -pipe -g -feliminate-unused-debug-types -fpermissi=
ve'
+ export MAKE=3Dmake
+ MAKE=3Dmake
+ export includedir=3D/usr/include
+ includedir=3D/usr/include
+ export 'BUILD_LDFLAGS=3D-L/home/ewl/workspace/poky/build/tmp/sysroots/i68=
6-linux/usr/lib -Wl,-rpath-link,/home/ewl/workspace/poky/build/tmp/sysroots=
/i686-linux/usr/lib -Wl,-rpath,/home/ewl/workspace/poky/build/tmp/sysroots/=
i686-
linux/usr/lib -Wl,-O1'
+ BUILD_LDFLAGS=3D'-L/home/ewl/workspace/poky/build/tmp/sysroots/i686-linux=
/usr/lib -Wl,-rpath-link,/home/ewl/workspace/poky/build/tmp/sysroots/i686-l=
inux/usr/lib -Wl,-rpath,/home/ewl/workspace/poky/build/tmp/sysroots/i686-li=
nux/usr/lib -Wl,-O1'
+ export BUILD_F77=3Dg77
+ BUILD_F77=3Dg77
+ export CCACHE_DIR=3D/home/ewl/workspace/poky/build/tmp/ccache/powerpc-pok=
y-linux/3G
+ CCACHE_DIR=3D/home/ewl/workspace/poky/build/tmp/ccache/powerpc-poky-linux=
/3G
+ export BUILD_LD=3Dld
+ BUILD_LD=3Dld
+ export o
ldincludedir=3D/usr/include
+ oldincludedir=3D/usr/include
+ export SHELLCMDS=3Dbash
+ SHELLCMDS=3Dbash
+ export QPEDIR=3D/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb
+ QPEDIR=3D/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb
+ export BUILD_CCLD=3Dgcc
+ BUILD_CCLD=3Dgcc
+ export 'BUILD_CFLAGS=3D-isystem/home/ewl/workspace/poky/build/tmp/sysroot=
s/i686-linux/usr/include -O2 -pipe'
+ BUILD_CFLAGS=3D'-isystem/home/ewl/workspace/poky/build/tmp/sysroots/i686-=
linux/usr/include -O2 -pipe'
+ export QMAKE_MKSPEC_PAT
H=3D/home/ewl/workspace/poky/build/tmp/sysroots/i686-linux/usr/share/qmake
+ QMAKE_MKSPEC_PATH=3D/home/ewl/workspace/poky/build/tmp/sysroots/i686-linu=
x/usr/share/qmake
+ export docdir=3D/usr/share/doc
+ docdir=3D/usr/share/doc
+ export infodir=3D/usr/share/info
+ infodir=3D/usr/share/info
+ export 'CC=3Dpowerpc-poky-linux-gcc  -m32 -mhard-float  -mcpu=3D603e --sy=
sroot=3D/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb'
+ CC=3D'powerpc-poky-linux-gcc  -m32 -mhard-float  -mcpu=3D603e --sysroot=
=3D/home/ewl/workspace/poky/buil
d/tmp/sysroots/mpc8315e-rdb'
+ export TERM=3Dxterm
+ TERM=3Dxterm
+ export BUILD_CPP=3Dcpp
+ BUILD_CPP=3Dcpp
+ export RANLIB=3Dpowerpc-poky-linux-ranlib
+ RANLIB=3Dpowerpc-poky-linux-ranlib
+ export base_sbindir=3D/sbin
+ base_sbindir=3D/sbin
+ export 'CXX=3Dpowerpc-poky-linux-g++  -m32 -mhard-float  -mcpu=3D603e --s=
ysroot=3D/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb'
+ CXX=3D'powerpc-poky-linux-g++  -m32 -mhard-float  -mcpu=3D603e --sysroot=
=3D/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb'
+ export BUILD_RANLI
B=3Dranlib
+ BUILD_RANLIB=3Dranlib
+ export PKG_CONFIG_PATH=3D/home/ewl/workspace/poky/build/tmp/sysroots/mpc8=
315e-rdb//usr/lib/pkgconfig:/home/ewl/workspace/poky/build/tmp/sysroots/mpc=
8315e-rdb/usr/share/pkgconfig
+ PKG_CONFIG_PATH=3D/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rd=
b//usr/lib/pkgconfig:/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-r=
db/usr/share/pkgconfig
+ export BUILD_NM=3Dnm
+ BUILD_NM=3Dnm
+ export AS=3Dpowerpc-poky-linux-as
+ AS=3Dpowerpc-poky-linux-as
+ export BUILD_CPPFLAGS=3D-isystem/hom
e/ewl/workspace/poky/build/tmp/sysroots/i686-linux/usr/include
+ BUILD_CPPFLAGS=3D-isystem/home/ewl/workspace/poky/build/tmp/sysroots/i686=
-linux/usr/include
+ export BUILD_AS=3Das
+ BUILD_AS=3Das
+ export 'CPP=3Dpowerpc-poky-linux-gcc -E --sysroot=3D/home/ewl/workspace/p=
oky/build/tmp/sysroots/mpc8315e-rdb  -m32 -mhard-float  -mcpu=3D603e'
+ CPP=3D'powerpc-poky-linux-gcc -E --sysroot=3D/home/ewl/workspace/poky/bui=
ld/tmp/sysroots/mpc8315e-rdb  -m32 -mhard-float  -mcpu=3D603e'
+ export mandir=3D/usr/share/man
+ mandir=3D/usr/share/
man
+ export PKG_CONFIG_SYSROOT_DIR=3D/home/ewl/workspace/poky/build/tmp/sysroo=
ts/mpc8315e-rdb
+ PKG_CONFIG_SYSROOT_DIR=3D/home/ewl/workspace/poky/build/tmp/sysroots/mpc8=
315e-rdb
+ export 'BUILD_CXXFLAGS=3D-isystem/home/ewl/workspace/poky/build/tmp/sysro=
ots/i686-linux/usr/include -O2 -pipe -fpermissive'
+ BUILD_CXXFLAGS=3D'-isystem/home/ewl/workspace/poky/build/tmp/sysroots/i68=
6-linux/usr/include -O2 -pipe -fpermissive'
+ export OBJCOPY=3Dpowerpc-poky-linux-objcopy
+ OBJCOPY=3Dpowerpc-poky-linux-objcopy
+ export servic
edir=3D/srv
+ servicedir=3D/srv
+ export HOME=3D/home/ewl
+ HOME=3D/home/ewl
+ export USERNAME=3Dewl
+ USERNAME=3Dewl
+ export PKG_CONFIG_DIR=3D/home/ewl/workspace/poky/build/tmp/sysroots/mpc83=
15e-rdb//usr/lib/pkgconfig
+ PKG_CONFIG_DIR=3D/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb=
//usr/lib/pkgconfig
+ export sysconfdir=3D/etc
+ sysconfdir=3D/etc
+ export 'CCLD=3Dpowerpc-poky-linux-gcc  -m32 -mhard-float  -mcpu=3D603e --=
sysroot=3D/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb'
+ CCLD=3D'powerpc-poky-linux-gcc  -
m32 -mhard-float  -mcpu=3D603e --sysroot=3D/home/ewl/workspace/poky/build/t=
mp/sysroots/mpc8315e-rdb'
+ export LC_ALL=3DC
+ LC_ALL=3DC
+ export base_libdir=3D/lib
+ base_libdir=3D/lib
+ export STAGING_IDLDIR=3D/home/ewl/workspace/poky/build/tmp/sysroots/mpc83=
15e-rdb/usr/share/idl
+ STAGING_IDLDIR=3D/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb=
/usr/share/idl
+ export LOGNAME=3Dewl
+ LOGNAME=3Dewl
+ export PATH=3D/home/ewl/workspace/poky/build/tmp/sysroots/i686-linux/usr/=
bin/ppc603e-poky-linux:/home/ewl/workspace/poky/bu
ild/tmp/sysroots/mpc8315e-rdb/usr/bin/crossscripts:/home/ewl/workspace/poky=
/build/tmp/sysroots/i686-linux/usr/sbin:/home/ewl/workspace/poky/build/tmp/=
sysroots/i686-linux/usr/bin:/home/ewl/workspace/poky/build/tmp/sysroots/i68=
6-linux/sbin:/home/ewl/workspace/poky/build/tmp/sysroots/i686-linux//bin:/h=
ome/ewl/workspace/poky/scripts:/home/ewl/workspace/poky/bitbake/bin/:/usr/l=
ocal/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/ewl=
/workspace/poky/scripts
+ PATH=3D/home/ewl/workspace/poky/build/
tmp/sysroots/i686-linux/usr/bin/ppc603e-poky-linux:/home/ewl/workspace/poky=
/build/tmp/sysroots/mpc8315e-rdb/usr/bin/crossscripts:/home/ewl/workspace/p=
oky/build/tmp/sysroots/i686-linux/usr/sbin:/home/ewl/workspace/poky/build/t=
mp/sysroots/i686-linux/usr/bin:/home/ewl/workspace/poky/build/tmp/sysroots/=
i686-linux/sbin:/home/ewl/workspace/poky/build/tmp/sysroots/i686-linux//bin=
:/home/ewl/workspace/poky/scripts:/home/ewl/workspace/poky/bitbake/bin/:/us=
r/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr
/games:/home/ewl/workspace/poky/scripts
+ export 'TARGET_CFLAGS=3D-O2 -pipe -g -feliminate-unused-debug-types'
+ TARGET_CFLAGS=3D'-O2 -pipe -g -feliminate-unused-debug-types'
+ export base_bindir=3D/bin
+ base_bindir=3D/bin
+ export PKG_CONFIG_LIBDIR=3D/home/ewl/workspace/poky/build/tmp/sysroots/mp=
c8315e-rdb//usr/lib/pkgconfig
+ PKG_CONFIG_LIBDIR=3D/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-=
rdb//usr/lib/pkgconfig
+ unset MACHINE
+ export sbindir=3D/usr/sbin
+ sbindir=3D/usr/sbin
+ export 'CFLAGS=3D-O2 -pipe -g -fel
iminate-unused-debug-types'
+ CFLAGS=3D'-O2 -pipe -g -feliminate-unused-debug-types'
+ export BUILD_AR=3Dar
+ BUILD_AR=3Dar
+ export sharedstatedir=3D/com
+ sharedstatedir=3D/com
+ export 'F77=3Dpowerpc-poky-linux-g77  -m32 -mhard-float  -mcpu=3D603e --s=
ysroot=3D/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb'
+ F77=3D'powerpc-poky-linux-g77  -m32 -mhard-float  -mcpu=3D603e --sysroot=
=3D/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb'
+ export OBJDUMP=3Dpowerpc-poky-linux-objdump
+ OBJDUMP=3Dpowerpc-poky-linux-objdu
mp
+ unset DISTRO
+ export exec_prefix=3D/usr
+ exec_prefix=3D/usr
+ export 'TARGET_LDFLAGS=3D-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed'
+ TARGET_LDFLAGS=3D'-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed'
+ export PKG_CONFIG_DISABLE_UNINSTALLED=3Dyes
+ PKG_CONFIG_DISABLE_UNINSTALLED=3Dyes
+ export libdir=3D/usr/lib
+ libdir=3D/usr/lib
+ export OPIEDIR=3D/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb
+ OPIEDIR=3D/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb
+ export PSEUDO_DISABLED=3D1
+ PSEUDO_DISABLED=3D1
+
unset TARGET_ARCH
+ export SHELL=3D/bin/bash
+ SHELL=3D/bin/bash
+ export palmqtdir=3D/usr/lib/opie
+ palmqtdir=3D/usr/lib/opie
+ export palmtopdir=3D/usr/lib/opie
+ palmtopdir=3D/usr/lib/opie
+ export AR=3Dpowerpc-poky-linux-ar
+ AR=3Dpowerpc-poky-linux-ar
+ export PATCH_GET=3D0
+ PATCH_GET=3D0
+ export 'CXXFLAGS=3D-O2 -pipe -g -feliminate-unused-debug-types -fpermissi=
ve -fvisibility-inlines-hidden'
+ CXXFLAGS=3D'-O2 -pipe -g -feliminate-unused-debug-types -fpermissive -fvi=
sibility-inlines-hidden'
+ export NM=3Dpowerpc-poky-linux-n
m
+ NM=3Dpowerpc-poky-linux-nm
+ export BUILD_STRIP=3Dstrip
+ BUILD_STRIP=3Dstrip
+ cd /home/ewl/workspace/poky/build/tmp/work/ppc603e-poky-linux/3G-1.1-r0/3=
G-1.1/
+ do_compile
+ oe_runmake -f pkgs.mak CPU=3Dpowerpc
+ '[' xmake =3D x ']'
+ bbnote make -j 4 'CC=3Dpowerpc-poky-linux-gcc  -m32 -mhard-float  -mcpu=
=3D603e --sysroot=3D/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rd=
b' 'CFLAGS=3D -O2 -pipe -g -feliminate-unused-debug-types -I/home/ewl/works=
pace/poky/build/tmp/work/ppc603e-poky-linux/3G-1.1-r0/3G-1.1/include
-L/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb/usr/lib -DWITHOU=
T_XATTR' BUILDDIR=3D/home/ewl/workspace/poky/build/tmp/work/ppc603e-poky-li=
nux/3G-1.1-r0/3G-1.1/ -f pkgs.mak CPU=3Dpowerpc
+ echo 'NOTE: make -j 4 CC=3Dpowerpc-poky-linux-gcc  -m32 -mhard-float  -mc=
pu=3D603e --sysroot=3D/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-=
rdb CFLAGS=3D -O2 -pipe -g -feliminate-unused-debug-types -I/home/ewl/works=
pace/poky/build/tmp/work/ppc603e-poky-linux/3G-1.1-r0/3G-1.1/include -L/hom=
e/ewl/workspace/poky/build
/tmp/sysroots/mpc8315e-rdb/usr/lib -DWITHOUT_XATTR BUILDDIR=3D/home/ewl/wor=
kspace/poky/build/tmp/work/ppc603e-poky-linux/3G-1.1-r0/3G-1.1/ -f pkgs.mak=
 CPU=3Dpowerpc'
NOTE: make -j 4 CC=3Dpowerpc-poky-linux-gcc  -m32 -mhard-float  -mcpu=3D603=
e --sysroot=3D/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb CFLA=
GS=3D -O2 -pipe -g -feliminate-unused-debug-types -I/home/ewl/workspace/pok=
y/build/tmp/work/ppc603e-poky-linux/3G-1.1-r0/3G-1.1/include -L/home/ewl/wo=
rkspace/poky/build/tmp/sysroots/mpc8315e-rdb/usr/lib -DWIT
HOUT_XATTR BUILDDIR=3D/home/ewl/workspace/poky/build/tmp/work/ppc603e-poky-=
linux/3G-1.1-r0/3G-1.1/ -f pkgs.mak CPU=3Dpowerpc
+ make -j 4 'CC=3Dpowerpc-poky-linux-gcc  -m32 -mhard-float  -mcpu=3D603e -=
-sysroot=3D/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb' 'CFLAG=
S=3D -O2 -pipe -g -feliminate-unused-debug-types -I/home/ewl/workspace/poky=
/build/tmp/work/ppc603e-poky-linux/3G-1.1-r0/3G-1.1/include -L/home/ewl/wor=
kspace/poky/build/tmp/sysroots/mpc8315e-rdb/usr/lib -DWITHOUT_XATTR' BUILDD=
IR=3D/home/ewl/workspace/p
oky/build/tmp/work/ppc603e-poky-linux/3G-1.1-r0/3G-1.1/ -f pkgs.mak CPU=3Dp=
owerpc

#######################################
###        BUILDING ALL TARGETS     ###
#######################################

# sleep is required for dependency to work since build
# happens so fast, the time compare fails
for i in os mm er sl ql pi dl ic us ci hd cn dd am ds su hp dr ui sdk ap ap=
dx apui  ; do    \
               ( cd $i ; make -f $i.mak ; sleep 1) ;       \
                done
make[1]: Entering directory `/home/ewl/workspace/pok
y/build/tmp/work/ppc603e-poky-linux/3G-1.1-r0/3G-1.1/os'
-I.. -L/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb/usr/lib -st=
atic -lrt -lpthread
-I.. -L/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb/usr/lib -st=
atic -lrt -lpthread
-I.. -L/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb/usr/lib -st=
atic -lrt -lpthread
-I.. -L/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb/usr/lib -st=
atic -lrt -lpthread
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
--- Building  os
for powerpc...
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
--- Building  os for powerpc...
----------------------------
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
--- Building  os for powerpc...
----------------------------
exists...
powerpc-poky-linux-gcc  -m32 -mhard-float  -mcpu=3D603e --sysroot=3D/home/e=
wl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb -O2 -pipe -g -feliminate-=
unused-debug-types -I/home/ewl/workspace/poky/build/tmp/work/ppc603e-poky-l=
inux/3G-1.1-r0/3G-1.1/include -L/home/ewl/workspace/poky/build/tmp/sysroots=
/mpc8315e-
rdb/usr/lib -DWITHOUT_XATTR -D UMTS -I..   -L/home/ewl/workspace/poky/build=
/tmp/sysroots/mpc8315e-rdb/usr/lib -L/home/ewl/workspace/poky/build/tmp/sys=
roots/mpc8315e-rdb/usr/lib swi_osapi.c swi_ossdk.c swi_ossdkcheck.c
--- Building  os for powerpc...
----------------------------
exists...
powerpc-poky-linux-gcc  -m32 -mhard-float  -mcpu=3D603e --sysroot=3D/home/e=
wl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb -O2 -pipe -g -feliminate-=
unused-debug-types -I/home/ewl/workspace/poky/build/tmp/work/ppc603e-poky-l=
i
nux/3G-1.1-r0/3G-1.1/include -L/home/ewl/workspace/poky/build/tmp/sysroots/=
mpc8315e-rdb/usr/lib -DWITHOUT_XATTR -D UMTS -I..   -L/home/ewl/workspace/p=
oky/build/tmp/sysroots/mpc8315e-rdb/usr/lib -L/home/ewl/workspace/poky/buil=
d/tmp/sysroots/mpc8315e-rdb/usr/lib swi_osapi.c swi_ossdk.c swi_ossdkcheck.=
c
----------------------------
exists...
powerpc-poky-linux-gcc  -m32 -mhard-float  -mcpu=3D603e --sysroot=3D/home/e=
wl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb -O2 -pipe -g -feliminate-=
unused-debug-types -I/ho
me/ewl/workspace/poky/build/tmp/work/ppc603e-poky-linux/3G-1.1-r0/3G-1.1/in=
clude -L/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb/usr/lib -D=
WITHOUT_XATTR -D UMTS -I..   -L/home/ewl/workspace/poky/build/tmp/sysroots/=
mpc8315e-rdb/usr/lib -L/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e=
-rdb/usr/lib swi_osapi.c swi_ossdk.c swi_ossdkcheck.c
exists...
powerpc-poky-linux-gcc  -m32 -mhard-float  -mcpu=3D603e --sysroot=3D/home/e=
wl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb -O2 -pipe -g -feliminate-=
u
nused-debug-types -I/home/ewl/workspace/poky/build/tmp/work/ppc603e-poky-li=
nux/3G-1.1-r0/3G-1.1/include -L/home/ewl/workspace/poky/build/tmp/sysroots/=
mpc8315e-rdb/usr/lib -DWITHOUT_XATTR -D UMTS -I..   -L/home/ewl/workspace/p=
oky/build/tmp/sysroots/mpc8315e-rdb/usr/lib -L/home/ewl/workspace/poky/buil=
d/tmp/sysroots/mpc8315e-rdb/usr/lib swi_osapi.c swi_ossdk.c swi_ossdkcheck.=
c
/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb/usr/lib/crt1.o:(.r=
odata+0x4): undefined reference to `main'
/tmp/ccVadGQx.o: I
n function `swi_ossdkthreadcreate':
/home/ewl/workspace/poky/build/tmp/work/ppc603e-poky-linux/3G-1.1-r0/3G-1.1=
/os/swi_ossdk.c:520: undefined reference to `pthread_create'
/tmp/ccVadGQx.o: In function `swi_ossdkwaiterwait':
/home/ewl/workspace/poky/build/tmp/work/ppc603e-poky-linux/3G-1.1-r0/3G-1.1=
/os/swi_ossdk.c:669: undefined reference to `clock_gettime'
/tmp/ccK2KX2A.o: In function `swi_osapithreadcreate':
/home/ewl/workspace/poky/build/tmp/work/ppc603e-poky-linux/3G-1.1-r0/3G-1.1=
/os/swi_osapi.c:824: und
efined reference to `pthread_create'
collect2: ld returned 1 exit status
make[1]: *** [objpowerpc/swi_ossdkcheck.o] Error 1
make[1]: *** Waiting for unfinished jobs....
/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb/usr/lib/crt1.o:(.r=
odata+0x4): undefined reference to `main'
/tmp/cct6CpNx.o: In function `swi_ossdkthreadcreate':
/home/ewl/workspace/poky/build/tmp/work/ppc603e-poky-linux/3G-1.1-r0/3G-1.1=
/os/swi_ossdk.c:520: undefined reference to `pthread_create'
/tmp/cct6CpNx.o: In function `swi_os
sdkwaiterwait':
/home/ewl/workspace/poky/build/tmp/work/ppc603e-poky-linux/3G-1.1-r0/3G-1.1=
/os/swi_ossdk.c:669: undefined reference to `clock_gettime'
/tmp/ccP8YAQA.o: In function `swi_osapithreadcreate':
/home/ewl/workspace/poky/build/tmp/work/ppc603e-poky-linux/3G-1.1-r0/3G-1.1=
/os/swi_osapi.c:824: undefined reference to `pthread_create'
collect2: ld returned 1 exit status
make[1]: *** [objpowerpc/swi_osstubs.o] Error 1
/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb/usr/lib/crt1.o:(.r=
odata+0x4):
undefined reference to `main'
/tmp/ccAN9cXx.o: In function `swi_ossdkthreadcreate':
/home/ewl/workspace/poky/build/tmp/work/ppc603e-poky-linux/3G-1.1-r0/3G-1.1=
/os/swi_ossdk.c:520: undefined reference to `pthread_create'
/tmp/ccAN9cXx.o: In function `swi_ossdkwaiterwait':
/home/ewl/workspace/poky/build/tmp/work/ppc603e-poky-linux/3G-1.1-r0/3G-1.1=
/os/swi_ossdk.c:669: undefined reference to `clock_gettime'
/tmp/ccuC7pYA.o: In function `swi_osapithreadcreate':
/home/ewl/workspace/poky/build/tmp/work/ppc603e-pok
y-linux/3G-1.1-r0/3G-1.1/os/swi_osapi.c:824: undefined reference to `pthrea=
d_create'
collect2: ld returned 1 exit status
/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb/usr/lib/crt1.o:(.r=
odata+0x4): undefined reference to `main'
/tmp/ccPg00ky.o: In function `swi_ossdkthreadcreate':
/home/ewl/workspace/poky/build/tmp/work/ppc603e-poky-linux/3G-1.1-r0/3G-1.1=
/os/swi_ossdk.c:520: undefined reference to `pthread_create'
/tmp/ccPg00ky.o: In function `swi_ossdkwaiterwait':
/home/ewl/workspace/poky/build/t
mp/work/ppc603e-poky-linux/3G-1.1-r0/3G-1.1/os/swi_ossdk.c:669: undefined r=
eference to `clock_gettime'
/tmp/cccoxyqB.o: In function `swi_osapithreadcreate':
/home/ewl/workspace/poky/build/tmp/work/ppc603e-poky-linux/3G-1.1-r0/3G-1.1=
/os/swi_osapi.c:824: undefined reference to `pthread_create'
collect2: ld returned 1 exit status
make[1]: *** [objpowerpc/swi_ossdk.o] Error 1
make[1]: *** [objpowerpc/swi_osapi.o] Error 1
make[1]: Leaving directory `/home/ewl/workspace/poky/build/tmp/work/ppc603e=
-poky-linux/3G-1
.1-r0/3G-1.1/os


--_000_2CAE6214820FEA4A9FEB26C2710C44F43EA05076exchangeewlloca_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am very new to Yacto project.<o:p></o:p></p>
<p class=3D"MsoNormal">I am getting compilation error as &#8220;<b>undefine=
d reference to `pthread_create'&#8221; &nbsp;</b>during build.<b><o:p></o:p=
></b></p>
<p class=3D"MsoNormal">I have added -<b>lpthread</b> libraray in my makefil=
e to build. Still I have issue.<o:p></o:p></p>
<p class=3D"MsoNormal">Please explain how to add library in poky build envi=
ronment.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have added 3G.bb file and the build output for ref=
erence below.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>Note:-</b>No error &nbsp;If I compile the same so=
urce by my desktop Ubuntu native compiler
<b>&#8221;/usr/bin/gcc&#8221;</b><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>MY 3G.bb file:-<o:p></o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">SUMMARY =3D &quot;3G API library and Application&quo=
t;<o:p></o:p></p>
<p class=3D"MsoNormal">DESCRIPTION =3D &quot; &quot;<o:p></o:p></p>
<p class=3D"MsoNormal">DEPENDS =3D &quot;&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">RDEPENDS_${PN}-dev =3D &quot;&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">LICENSE =3D &quot;GPLv2&#43;&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D2d50=
25d4aa3495befef8f17206a5b0a1&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">SRCREV =3D &quot;e9078f6e99dde4a90828fa16978ef76897e=
721a1&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">SRC_URI =3D &quot;file://3G-1.1.tar.gz&quot;<o:p></o=
:p></p>
<p class=3D"MsoNormal">S =3D &quot;${WORKDIR}/3G-1.1/&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">EXTRA_OEMAKE =3D &quot;'CC=3D${CC}' 'CFLAGS=3D${CFLA=
GS} -I${S}/include -DWITHOUT_XATTR' 'BUILDDIR=3D${S}'&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">do_compile() {<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; oe_runmake -f pkgs.mak <o:p></o:p></p>
<p class=3D"MsoNormal">}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">do_install () {<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; oe_runmake install DESTDIR=3D${D} SB=
INDIR=3D${sbindir}
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">}<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>ewl@ubuntu-118:~/</b>workspace/poky/build$ bitbak=
e -v -c compile 3G<o:p></o:p></p>
<p class=3D"MsoNormal">Loading cache: 100% |###############################=
###########################################################################=
#################################################################| ETA:&nbs=
p; 00:00:00<o:p></o:p></p>
<p class=3D"MsoNormal">Loaded 1042 entries from dependency cache.<o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">OE Build Configuration:<o:p></o:p></p>
<p class=3D"MsoNormal">BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 =3D &quot;1.13.3&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">TARGET_ARCH&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
&quot;powerpc&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">TARGET_OS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; =3D &quot;linux&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =3D &quot;mpc8315e-rdb&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; =3D &quot;poky&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">DISTRO_VERSION&nbsp;&nbsp;&nbsp; =3D &quot;1.1&quot;=
<o:p></o:p></p>
<p class=3D"MsoNormal">TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;m32 =
fpu-hard ppc603e&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 =3D &quot;&quot;<o:p></o:p></p>
<p class=3D"MsoNormal">meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></p>
<p class=3D"MsoNormal">meta-yocto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 =3D &quot;edison:1924f52cc894d4dd6b9d9c1a2248b32fc0a24c8c&quot;<o:p></o:p>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">NOTE: Resolving any missing task queue dependencies<=
o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: selecting pseudo-native to satisfy virtual/fak=
eroot-native due to PREFERRED_PROVIDERS<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: selecting gcc-cross to satisfy virtual/powerpc=
-poky-linux-gcc due to PREFERRED_PROVIDERS<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: selecting gcc-runtime to satisfy virtual/power=
pc-poky-linux-compilerlibs due to PREFERRED_PROVIDERS<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: selecting eglibc to satisfy virtual/libc due t=
o PREFERRED_PROVIDERS<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: selecting eglibc to satisfy runtime libsegfaul=
t due to PREFERRED_PROVIDER_virtual/libc =3D eglibc<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: selecting eglibc to satisfy runtime eglibc due=
 to PREFERRED_PROVIDER_virtual/libc =3D eglibc<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: selecting binutils-cross to satisfy virtual/po=
werpc-poky-linux-binutils due to PREFERRED_PROVIDERS<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: selecting eglibc to satisfy virtual/powerpc-po=
ky-linux-libc-for-gcc due to PREFERRED_PROVIDERS<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: selecting gcc-cross to satisfy virtual/powerpc=
-poky-linux-g&#43;&#43; due to PREFERRED_PROVIDERS<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: selecting libgcc to satisfy libgcc due to PREF=
ERRED_PROVIDERS<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: selecting gcc-cross-intermediate to satisfy vi=
rtual/powerpc-poky-linux-gcc-intermediate due to PREFERRED_PROVIDERS<o:p></=
o:p></p>
<p class=3D"MsoNormal">NOTE: selecting linux-libc-headers to satisfy linux-=
libc-headers due to PREFERRED_PROVIDERS<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: selecting gettext to satisfy virtual/gettext d=
ue to PREFERRED_PROVIDERS<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: selecting libgcc to satisfy runtime libgcc due=
 to PREFERRED_PROVIDER_libgcc =3D libgcc<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: selecting linux-libc-headers to satisfy runtim=
e linux-libc-headers-dev due to PREFERRED_PROVIDER_linux-libc-headers =3D l=
inux-libc-headers<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: selecting gettext to satisfy runtime gettext-d=
ev due to PREFERRED_PROVIDER_virtual/gettext =3D gettext<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: selecting gettext to satisfy runtime gettext d=
ue to PREFERRED_PROVIDER_virtual/gettext =3D gettext<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: selecting eglibc-initial to satisfy virtual/po=
werpc-poky-linux-libc-initial due to PREFERRED_PROVIDERS<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: selecting eglibc to satisfy virtual/libiconv d=
ue to PREFERRED_PROVIDERS<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: selecting gcc-cross-initial to satisfy virtual=
/powerpc-poky-linux-gcc-initial due to PREFERRED_PROVIDERS<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Preparing runqueue<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Marking Active Tasks<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Pruned 1500 inactive tasks, 242 left<o:p></o:p=
></p>
<p class=3D"MsoNormal">NOTE: Assign Weightings<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Compute totals (have 1 endpoint(s))<o:p></o:p>=
</p>
<p class=3D"MsoNormal">NOTE: Executing SetScene Tasks<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Executing RunQueue Tasks<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Running task 242 of 242 (ID: 4, /home/ewl/work=
space/poky/meta/recipes-extended/3G/3G_1.1.bb, do_compile)<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: package 3G-1.1-r0: task do_compile: Started<o:=
p></o:p></p>
<p class=3D"MsoNormal">&#43; export prefix=3D/usr<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; prefix=3D/usr<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export STAGING_SIPDIR=3D/home/ewl/workspace/po=
ky/build/tmp/sysroots/i686-linux/usr/share/sip<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; STAGING_SIPDIR=3D/home/ewl/workspace/poky/buil=
d/tmp/sysroots/i686-linux/usr/share/sip<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export localstatedir=3D/var<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; localstatedir=3D/var<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export BUILD_CC=3Dgcc<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; BUILD_CC=3Dgcc<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export USER=3Dewl<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; USER=3Dewl<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export libexecdir=3D/usr/libexec<o:p></o:p></p=
>
<p class=3D"MsoNormal">&#43; libexecdir=3D/usr/libexec<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export QTDIR=3D/home/ewl/workspace/poky/build/=
tmp/sysroots/mpc8315e-rdb/qt2<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; QTDIR=3D/home/ewl/workspace/poky/build/tmp/sys=
ro<o:p></o:p></p>
<p class=3D"MsoNormal">ots/mpc8315e-rdb/qt2<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export datadir=3D/usr/share<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; datadir=3D/usr/share<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export STRIP=3Dpowerpc-poky-linux-strip<o:p></=
o:p></p>
<p class=3D"MsoNormal">&#43; STRIP=3Dpowerpc-poky-linux-strip<o:p></o:p></p=
>
<p class=3D"MsoNormal">&#43; export BUILD_CXX=3Dg&#43;&#43;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; BUILD_CXX=3Dg&#43;&#43;<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export 'LD=3Dpowerpc-poky-linux-ld --sysroot=
=3D/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb'<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; LD=3D'powerpc-poky-linux-ld --sysroot=3D/home/=
ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb'<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export 'LDFLAGS=3D-Wl,-O1 -Wl,--hash-style=3Dg=
nu -Wl,--as-needed'<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; LDFLAGS=3D'-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,=
--as-needed'<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export b<o:p></o:p></p>
<p class=3D"MsoNormal">indir=3D/usr/bin<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; bindir=3D/usr/bin<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export 'TARGET_CXXFLAGS=3D-O2 -pipe -g -felimi=
nate-unused-debug-types -fpermissive'<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; TARGET_CXXFLAGS=3D'-O2 -pipe -g -feliminate-un=
used-debug-types -fpermissive'<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export MAKE=3Dmake<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; MAKE=3Dmake<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export includedir=3D/usr/include<o:p></o:p></p=
>
<p class=3D"MsoNormal">&#43; includedir=3D/usr/include<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export 'BUILD_LDFLAGS=3D-L/home/ewl/workspace/=
poky/build/tmp/sysroots/i686-linux/usr/lib -Wl,-rpath-link,/home/ewl/worksp=
ace/poky/build/tmp/sysroots/i686-linux/usr/lib -Wl,-rpath,/home/ewl/workspa=
ce/poky/build/tmp/sysroots/i686-<o:p></o:p></p>
<p class=3D"MsoNormal">linux/usr/lib -Wl,-O1'<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; BUILD_LDFLAGS=3D'-L/home/ewl/workspace/poky/bu=
ild/tmp/sysroots/i686-linux/usr/lib -Wl,-rpath-link,/home/ewl/workspace/pok=
y/build/tmp/sysroots/i686-linux/usr/lib -Wl,-rpath,/home/ewl/workspace/poky=
/build/tmp/sysroots/i686-linux/usr/lib -Wl,-O1'<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export BUILD_F77=3Dg77<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; BUILD_F77=3Dg77<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export CCACHE_DIR=3D/home/ewl/workspace/poky/b=
uild/tmp/ccache/powerpc-poky-linux/3G<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; CCACHE_DIR=3D/home/ewl/workspace/poky/build/tm=
p/ccache/powerpc-poky-linux/3G<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export BUILD_LD=3Dld<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; BUILD_LD=3Dld<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export o<o:p></o:p></p>
<p class=3D"MsoNormal">ldincludedir=3D/usr/include<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; oldincludedir=3D/usr/include<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export SHELLCMDS=3Dbash<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; SHELLCMDS=3Dbash<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export QPEDIR=3D/home/ewl/workspace/poky/build=
/tmp/sysroots/mpc8315e-rdb<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; QPEDIR=3D/home/ewl/workspace/poky/build/tmp/sy=
sroots/mpc8315e-rdb<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export BUILD_CCLD=3Dgcc<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; BUILD_CCLD=3Dgcc<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export 'BUILD_CFLAGS=3D-isystem/home/ewl/works=
pace/poky/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe'<o:p></o:p></=
p>
<p class=3D"MsoNormal">&#43; BUILD_CFLAGS=3D'-isystem/home/ewl/workspace/po=
ky/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe'<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export QMAKE_MKSPEC_PAT<o:p></o:p></p>
<p class=3D"MsoNormal">H=3D/home/ewl/workspace/poky/build/tmp/sysroots/i686=
-linux/usr/share/qmake<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; QMAKE_MKSPEC_PATH=3D/home/ewl/workspace/poky/b=
uild/tmp/sysroots/i686-linux/usr/share/qmake<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export docdir=3D/usr/share/doc<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; docdir=3D/usr/share/doc<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export infodir=3D/usr/share/info<o:p></o:p></p=
>
<p class=3D"MsoNormal">&#43; infodir=3D/usr/share/info<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export 'CC=3Dpowerpc-poky-linux-gcc&nbsp; -m32=
 -mhard-float&nbsp; -mcpu=3D603e --sysroot=3D/home/ewl/workspace/poky/build=
/tmp/sysroots/mpc8315e-rdb'<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; CC=3D'powerpc-poky-linux-gcc&nbsp; -m32 -mhard=
-float&nbsp; -mcpu=3D603e --sysroot=3D/home/ewl/workspace/poky/buil<o:p></o=
:p></p>
<p class=3D"MsoNormal">d/tmp/sysroots/mpc8315e-rdb'<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export TERM=3Dxterm<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; TERM=3Dxterm<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export BUILD_CPP=3Dcpp<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; BUILD_CPP=3Dcpp<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export RANLIB=3Dpowerpc-poky-linux-ranlib<o:p>=
</o:p></p>
<p class=3D"MsoNormal">&#43; RANLIB=3Dpowerpc-poky-linux-ranlib<o:p></o:p><=
/p>
<p class=3D"MsoNormal">&#43; export base_sbindir=3D/sbin<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; base_sbindir=3D/sbin<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export 'CXX=3Dpowerpc-poky-linux-g&#43;&#43;&n=
bsp; -m32 -mhard-float&nbsp; -mcpu=3D603e --sysroot=3D/home/ewl/workspace/p=
oky/build/tmp/sysroots/mpc8315e-rdb'<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; CXX=3D'powerpc-poky-linux-g&#43;&#43;&nbsp; -m=
32 -mhard-float&nbsp; -mcpu=3D603e --sysroot=3D/home/ewl/workspace/poky/bui=
ld/tmp/sysroots/mpc8315e-rdb'<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export BUILD_RANLI<o:p></o:p></p>
<p class=3D"MsoNormal">B=3Dranlib<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; BUILD_RANLIB=3Dranlib<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export PKG_CONFIG_PATH=3D/home/ewl/workspace/p=
oky/build/tmp/sysroots/mpc8315e-rdb//usr/lib/pkgconfig:/home/ewl/workspace/=
poky/build/tmp/sysroots/mpc8315e-rdb/usr/share/pkgconfig<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; PKG_CONFIG_PATH=3D/home/ewl/workspace/poky/bui=
ld/tmp/sysroots/mpc8315e-rdb//usr/lib/pkgconfig:/home/ewl/workspace/poky/bu=
ild/tmp/sysroots/mpc8315e-rdb/usr/share/pkgconfig<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export BUILD_NM=3Dnm<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; BUILD_NM=3Dnm<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export AS=3Dpowerpc-poky-linux-as<o:p></o:p></=
p>
<p class=3D"MsoNormal">&#43; AS=3Dpowerpc-poky-linux-as<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export BUILD_CPPFLAGS=3D-isystem/hom<o:p></o:p=
></p>
<p class=3D"MsoNormal">e/ewl/workspace/poky/build/tmp/sysroots/i686-linux/u=
sr/include<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; BUILD_CPPFLAGS=3D-isystem/home/ewl/workspace/p=
oky/build/tmp/sysroots/i686-linux/usr/include<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export BUILD_AS=3Das<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; BUILD_AS=3Das<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export 'CPP=3Dpowerpc-poky-linux-gcc -E --sysr=
oot=3D/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb&nbsp; -m32 -=
mhard-float&nbsp; -mcpu=3D603e'<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; CPP=3D'powerpc-poky-linux-gcc -E --sysroot=3D/=
home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb&nbsp; -m32 -mhard-f=
loat&nbsp; -mcpu=3D603e'<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export mandir=3D/usr/share/man<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; mandir=3D/usr/share/<o:p></o:p></p>
<p class=3D"MsoNormal">man<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export PKG_CONFIG_SYSROOT_DIR=3D/home/ewl/work=
space/poky/build/tmp/sysroots/mpc8315e-rdb<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; PKG_CONFIG_SYSROOT_DIR=3D/home/ewl/workspace/p=
oky/build/tmp/sysroots/mpc8315e-rdb<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export 'BUILD_CXXFLAGS=3D-isystem/home/ewl/wor=
kspace/poky/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe -fpermissiv=
e'<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; BUILD_CXXFLAGS=3D'-isystem/home/ewl/workspace/=
poky/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe -fpermissive'<o:p>=
</o:p></p>
<p class=3D"MsoNormal">&#43; export OBJCOPY=3Dpowerpc-poky-linux-objcopy<o:=
p></o:p></p>
<p class=3D"MsoNormal">&#43; OBJCOPY=3Dpowerpc-poky-linux-objcopy<o:p></o:p=
></p>
<p class=3D"MsoNormal">&#43; export servic<o:p></o:p></p>
<p class=3D"MsoNormal">edir=3D/srv<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; servicedir=3D/srv<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export HOME=3D/home/ewl<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; HOME=3D/home/ewl<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export USERNAME=3Dewl<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; USERNAME=3Dewl<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export PKG_CONFIG_DIR=3D/home/ewl/workspace/po=
ky/build/tmp/sysroots/mpc8315e-rdb//usr/lib/pkgconfig<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; PKG_CONFIG_DIR=3D/home/ewl/workspace/poky/buil=
d/tmp/sysroots/mpc8315e-rdb//usr/lib/pkgconfig<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export sysconfdir=3D/etc<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; sysconfdir=3D/etc<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export 'CCLD=3Dpowerpc-poky-linux-gcc&nbsp; -m=
32 -mhard-float&nbsp; -mcpu=3D603e --sysroot=3D/home/ewl/workspace/poky/bui=
ld/tmp/sysroots/mpc8315e-rdb'<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; CCLD=3D'powerpc-poky-linux-gcc&nbsp; -<o:p></o=
:p></p>
<p class=3D"MsoNormal">m32 -mhard-float&nbsp; -mcpu=3D603e --sysroot=3D/hom=
e/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb'<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export LC_ALL=3DC<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; LC_ALL=3DC<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export base_libdir=3D/lib<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; base_libdir=3D/lib<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export STAGING_IDLDIR=3D/home/ewl/workspace/po=
ky/build/tmp/sysroots/mpc8315e-rdb/usr/share/idl<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; STAGING_IDLDIR=3D/home/ewl/workspace/poky/buil=
d/tmp/sysroots/mpc8315e-rdb/usr/share/idl<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export LOGNAME=3Dewl<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; LOGNAME=3Dewl<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export PATH=3D/home/ewl/workspace/poky/build/t=
mp/sysroots/i686-linux/usr/bin/ppc603e-poky-linux:/home/ewl/workspace/poky/=
bu<o:p></o:p></p>
<p class=3D"MsoNormal">ild/tmp/sysroots/mpc8315e-rdb/usr/bin/crossscripts:/=
home/ewl/workspace/poky/build/tmp/sysroots/i686-linux/usr/sbin:/home/ewl/wo=
rkspace/poky/build/tmp/sysroots/i686-linux/usr/bin:/home/ewl/workspace/poky=
/build/tmp/sysroots/i686-linux/sbin:/home/ewl/workspace/poky/build/tmp/sysr=
oots/i686-linux//bin:/home/ewl/workspace/poky/scripts:/home/ewl/workspace/p=
oky/bitbake/bin/:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/b=
in:/usr/games:/home/ewl/workspace/poky/scripts<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; PATH=3D/home/ewl/workspace/poky/build/<o:p></o=
:p></p>
<p class=3D"MsoNormal">tmp/sysroots/i686-linux/usr/bin/ppc603e-poky-linux:/=
home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb/usr/bin/crossscript=
s:/home/ewl/workspace/poky/build/tmp/sysroots/i686-linux/usr/sbin:/home/ewl=
/workspace/poky/build/tmp/sysroots/i686-linux/usr/bin:/home/ewl/workspace/p=
oky/build/tmp/sysroots/i686-linux/sbin:/home/ewl/workspace/poky/build/tmp/s=
ysroots/i686-linux//bin:/home/ewl/workspace/poky/scripts:/home/ewl/workspac=
e/poky/bitbake/bin/:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin=
:/bin:/usr<o:p></o:p></p>
<p class=3D"MsoNormal">/games:/home/ewl/workspace/poky/scripts<o:p></o:p></=
p>
<p class=3D"MsoNormal">&#43; export 'TARGET_CFLAGS=3D-O2 -pipe -g -felimina=
te-unused-debug-types'<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; TARGET_CFLAGS=3D'-O2 -pipe -g -feliminate-unus=
ed-debug-types'<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export base_bindir=3D/bin<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; base_bindir=3D/bin<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export PKG_CONFIG_LIBDIR=3D/home/ewl/workspace=
/poky/build/tmp/sysroots/mpc8315e-rdb//usr/lib/pkgconfig<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; PKG_CONFIG_LIBDIR=3D/home/ewl/workspace/poky/b=
uild/tmp/sysroots/mpc8315e-rdb//usr/lib/pkgconfig<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; unset MACHINE<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export sbindir=3D/usr/sbin<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; sbindir=3D/usr/sbin<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export 'CFLAGS=3D-O2 -pipe -g -fel<o:p></o:p><=
/p>
<p class=3D"MsoNormal">iminate-unused-debug-types'<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; CFLAGS=3D'-O2 -pipe -g -feliminate-unused-debu=
g-types'<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export BUILD_AR=3Dar<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; BUILD_AR=3Dar<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export sharedstatedir=3D/com<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; sharedstatedir=3D/com<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export 'F77=3Dpowerpc-poky-linux-g77&nbsp; -m3=
2 -mhard-float&nbsp; -mcpu=3D603e --sysroot=3D/home/ewl/workspace/poky/buil=
d/tmp/sysroots/mpc8315e-rdb'<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; F77=3D'powerpc-poky-linux-g77&nbsp; -m32 -mhar=
d-float&nbsp; -mcpu=3D603e --sysroot=3D/home/ewl/workspace/poky/build/tmp/s=
ysroots/mpc8315e-rdb'<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export OBJDUMP=3Dpowerpc-poky-linux-objdump<o:=
p></o:p></p>
<p class=3D"MsoNormal">&#43; OBJDUMP=3Dpowerpc-poky-linux-objdu<o:p></o:p><=
/p>
<p class=3D"MsoNormal">mp<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; unset DISTRO<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export exec_prefix=3D/usr<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; exec_prefix=3D/usr<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export 'TARGET_LDFLAGS=3D-Wl,-O1 -Wl,--hash-st=
yle=3Dgnu -Wl,--as-needed'<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; TARGET_LDFLAGS=3D'-Wl,-O1 -Wl,--hash-style=3Dg=
nu -Wl,--as-needed'<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export PKG_CONFIG_DISABLE_UNINSTALLED=3Dyes<o:=
p></o:p></p>
<p class=3D"MsoNormal">&#43; PKG_CONFIG_DISABLE_UNINSTALLED=3Dyes<o:p></o:p=
></p>
<p class=3D"MsoNormal">&#43; export libdir=3D/usr/lib<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; libdir=3D/usr/lib<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export OPIEDIR=3D/home/ewl/workspace/poky/buil=
d/tmp/sysroots/mpc8315e-rdb<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; OPIEDIR=3D/home/ewl/workspace/poky/build/tmp/s=
ysroots/mpc8315e-rdb<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export PSEUDO_DISABLED=3D1<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; PSEUDO_DISABLED=3D1<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; <o:p></o:p></p>
<p class=3D"MsoNormal">unset TARGET_ARCH<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export SHELL=3D/bin/bash<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; SHELL=3D/bin/bash<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export palmqtdir=3D/usr/lib/opie<o:p></o:p></p=
>
<p class=3D"MsoNormal">&#43; palmqtdir=3D/usr/lib/opie<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export palmtopdir=3D/usr/lib/opie<o:p></o:p></=
p>
<p class=3D"MsoNormal">&#43; palmtopdir=3D/usr/lib/opie<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export AR=3Dpowerpc-poky-linux-ar<o:p></o:p></=
p>
<p class=3D"MsoNormal">&#43; AR=3Dpowerpc-poky-linux-ar<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export PATCH_GET=3D0<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; PATCH_GET=3D0<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export 'CXXFLAGS=3D-O2 -pipe -g -feliminate-un=
used-debug-types -fpermissive -fvisibility-inlines-hidden'<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; CXXFLAGS=3D'-O2 -pipe -g -feliminate-unused-de=
bug-types -fpermissive -fvisibility-inlines-hidden'<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export NM=3Dpowerpc-poky-linux-n<o:p></o:p></p=
>
<p class=3D"MsoNormal">m<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; NM=3Dpowerpc-poky-linux-nm<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; export BUILD_STRIP=3Dstrip<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; BUILD_STRIP=3Dstrip<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; cd /home/ewl/workspace/poky/build/tmp/work/ppc=
603e-poky-linux/3G-1.1-r0/3G-1.1/<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; do_compile<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; oe_runmake -f pkgs.mak CPU=3Dpowerpc<o:p></o:p=
></p>
<p class=3D"MsoNormal">&#43; '[' xmake =3D x ']'<o:p></o:p></p>
<p class=3D"MsoNormal">&#43; bbnote make -j 4 'CC=3Dpowerpc-poky-linux-gcc&=
nbsp; -m32 -mhard-float&nbsp; -mcpu=3D603e --sysroot=3D/home/ewl/workspace/=
poky/build/tmp/sysroots/mpc8315e-rdb' 'CFLAGS=3D -O2 -pipe -g -feliminate-u=
nused-debug-types -I/home/ewl/workspace/poky/build/tmp/work/ppc603e-poky-li=
nux/3G-1.1-r0/3G-1.1/include
<o:p></o:p></p>
<p class=3D"MsoNormal">-L/home/ewl/workspace/poky/build/tmp/sysroots/mpc831=
5e-rdb/usr/lib -DWITHOUT_XATTR' BUILDDIR=3D/home/ewl/workspace/poky/build/t=
mp/work/ppc603e-poky-linux/3G-1.1-r0/3G-1.1/ -f pkgs.mak CPU=3Dpowerpc<o:p>=
</o:p></p>
<p class=3D"MsoNormal">&#43; echo 'NOTE: make -j 4 CC=3Dpowerpc-poky-linux-=
gcc&nbsp; -m32 -mhard-float&nbsp; -mcpu=3D603e --sysroot=3D/home/ewl/worksp=
ace/poky/build/tmp/sysroots/mpc8315e-rdb CFLAGS=3D -O2 -pipe -g -feliminate=
-unused-debug-types -I/home/ewl/workspace/poky/build/tmp/work/ppc603e-poky-=
linux/3G-1.1-r0/3G-1.1/include
 -L/home/ewl/workspace/poky/build<o:p></o:p></p>
<p class=3D"MsoNormal">/tmp/sysroots/mpc8315e-rdb/usr/lib -DWITHOUT_XATTR B=
UILDDIR=3D/home/ewl/workspace/poky/build/tmp/work/ppc603e-poky-linux/3G-1.1=
-r0/3G-1.1/ -f pkgs.mak CPU=3Dpowerpc'<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: make -j 4 CC=3Dpowerpc-poky-linux-gcc&nbsp; -m=
32 -mhard-float&nbsp; -mcpu=3D603e --sysroot=3D/home/ewl/workspace/poky/bui=
ld/tmp/sysroots/mpc8315e-rdb CFLAGS=3D -O2 -pipe -g -feliminate-unused-debu=
g-types -I/home/ewl/workspace/poky/build/tmp/work/ppc603e-poky-linux/3G-1.1=
-r0/3G-1.1/include
 -L/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb/usr/lib -DWIT<o=
:p></o:p></p>
<p class=3D"MsoNormal">HOUT_XATTR BUILDDIR=3D/home/ewl/workspace/poky/build=
/tmp/work/ppc603e-poky-linux/3G-1.1-r0/3G-1.1/ -f pkgs.mak CPU=3Dpowerpc<o:=
p></o:p></p>
<p class=3D"MsoNormal">&#43; make -j 4 'CC=3Dpowerpc-poky-linux-gcc&nbsp; -=
m32 -mhard-float&nbsp; -mcpu=3D603e --sysroot=3D/home/ewl/workspace/poky/bu=
ild/tmp/sysroots/mpc8315e-rdb' 'CFLAGS=3D -O2 -pipe -g -feliminate-unused-d=
ebug-types -I/home/ewl/workspace/poky/build/tmp/work/ppc603e-poky-linux/3G-=
1.1-r0/3G-1.1/include
 -L/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb/usr/lib -DWITHO=
UT_XATTR' BUILDDIR=3D/home/ewl/workspace/p<o:p></o:p></p>
<p class=3D"MsoNormal">oky/build/tmp/work/ppc603e-poky-linux/3G-1.1-r0/3G-1=
.1/ -f pkgs.mak CPU=3Dpowerpc<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">#######################################<o:p></o:p></=
p>
<p class=3D"MsoNormal">###&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BUILDI=
NG ALL TARGETS&nbsp;&nbsp;&nbsp;&nbsp; ###<o:p></o:p></p>
<p class=3D"MsoNormal">#######################################<o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"># sleep is required for dependency to work since bui=
ld<o:p></o:p></p>
<p class=3D"MsoNormal"># happens so fast, the time compare fails<o:p></o:p>=
</p>
<p class=3D"MsoNormal">for i in os mm er sl ql pi dl ic us ci hd cn dd am d=
s su hp dr ui sdk ap apdx apui&nbsp; ; do&nbsp;&nbsp;&nbsp; \<o:p></o:p></p=
>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ( cd $i ; make -f $i.mak ; sleep 1) ;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; done<o:p></o:p></p>
<p class=3D"MsoNormal">make[1]: Entering directory `/home/ewl/workspace/pok=
<o:p></o:p></p>
<p class=3D"MsoNormal">y/build/tmp/work/ppc603e-poky-linux/3G-1.1-r0/3G-1.1=
/os'<o:p></o:p></p>
<p class=3D"MsoNormal"><b>-I.. -L/home/ewl/workspace/poky/build/tmp/sysroot=
s/mpc8315e-rdb/usr/lib -static -lrt -lpthread<o:p></o:p></b></p>
<p class=3D"MsoNormal"><b>-I.. -L/home/ewl/workspace/poky/build/tmp/sysroot=
s/mpc8315e-rdb/usr/lib -static -lrt -lpthread<o:p></o:p></b></p>
<p class=3D"MsoNormal"><b>-I.. -L/home/ewl/workspace/poky/build/tmp/sysroot=
s/mpc8315e-rdb/usr/lib -static -lrt -lpthread<o:p></o:p></b></p>
<p class=3D"MsoNormal"><b>-I.. -L/home/ewl/workspace/poky/build/tmp/sysroot=
s/mpc8315e-rdb/usr/lib -static -lrt -lpthread<o:p></o:p></b></p>
<p class=3D"MsoNormal">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></p>
<p class=3D"MsoNormal">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></p>
<p class=3D"MsoNormal">--- Building&nbsp; os <o:p></o:p></p>
<p class=3D"MsoNormal">for powerpc...<o:p></o:p></p>
<p class=3D"MsoNormal">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></p>
<p class=3D"MsoNormal">--- Building&nbsp; os for powerpc...<o:p></o:p></p>
<p class=3D"MsoNormal">----------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></p>
<p class=3D"MsoNormal">--- Building&nbsp; os for powerpc...<o:p></o:p></p>
<p class=3D"MsoNormal">----------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">exists...<o:p></o:p></p>
<p class=3D"MsoNormal">powerpc-poky-linux-gcc&nbsp; -m32 -mhard-float&nbsp;=
 -mcpu=3D603e --sysroot=3D/home/ewl/workspace/poky/build/tmp/sysroots/mpc83=
15e-rdb -O2 -pipe -g -feliminate-unused-debug-types -I/home/ewl/workspace/p=
oky/build/tmp/work/ppc603e-poky-linux/3G-1.1-r0/3G-1.1/include
 -L/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-<o:p></o:p></p>
<p class=3D"MsoNormal">rdb/usr/lib -DWITHOUT_XATTR -D UMTS -I..&nbsp;&nbsp;=
 -L/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb/usr/lib -L/home=
/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb/usr/lib swi_osapi.c swi=
_ossdk.c swi_ossdkcheck.c<o:p></o:p></p>
<p class=3D"MsoNormal">--- Building&nbsp; os for powerpc...<o:p></o:p></p>
<p class=3D"MsoNormal">----------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">exists...<o:p></o:p></p>
<p class=3D"MsoNormal">powerpc-poky-linux-gcc&nbsp; -m32 -mhard-float&nbsp;=
 -mcpu=3D603e --sysroot=3D/home/ewl/workspace/poky/build/tmp/sysroots/mpc83=
15e-rdb -O2 -pipe -g -feliminate-unused-debug-types -I/home/ewl/workspace/p=
oky/build/tmp/work/ppc603e-poky-li<o:p></o:p></p>
<p class=3D"MsoNormal">nux/3G-1.1-r0/3G-1.1/include -L/home/ewl/workspace/p=
oky/build/tmp/sysroots/mpc8315e-rdb/usr/lib -DWITHOUT_XATTR -D UMTS -I..&nb=
sp;&nbsp; -L/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb/usr/li=
b -L/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb/usr/lib
 swi_osapi.c swi_ossdk.c swi_ossdkcheck.c<o:p></o:p></p>
<p class=3D"MsoNormal">----------------------------<o:p></o:p></p>
<p class=3D"MsoNormal">exists...<o:p></o:p></p>
<p class=3D"MsoNormal">powerpc-poky-linux-gcc&nbsp; -m32 -mhard-float&nbsp;=
 -mcpu=3D603e --sysroot=3D/home/ewl/workspace/poky/build/tmp/sysroots/mpc83=
15e-rdb -O2 -pipe -g -feliminate-unused-debug-types -I/ho<o:p></o:p></p>
<p class=3D"MsoNormal">me/ewl/workspace/poky/build/tmp/work/ppc603e-poky-li=
nux/3G-1.1-r0/3G-1.1/include -L/home/ewl/workspace/poky/build/tmp/sysroots/=
mpc8315e-rdb/usr/lib -DWITHOUT_XATTR -D UMTS -I..&nbsp;&nbsp; -L/home/ewl/w=
orkspace/poky/build/tmp/sysroots/mpc8315e-rdb/usr/lib
 -L/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb/usr/lib swi_osa=
pi.c swi_ossdk.c swi_ossdkcheck.c<o:p></o:p></p>
<p class=3D"MsoNormal">exists...<o:p></o:p></p>
<p class=3D"MsoNormal">powerpc-poky-linux-gcc&nbsp; -m32 -mhard-float&nbsp;=
 -mcpu=3D603e --sysroot=3D/home/ewl/workspace/poky/build/tmp/sysroots/mpc83=
15e-rdb -O2 -pipe -g -feliminate-u<o:p></o:p></p>
<p class=3D"MsoNormal">nused-debug-types -I/home/ewl/workspace/poky/build/t=
mp/work/ppc603e-poky-linux/3G-1.1-r0/3G-1.1/include -L/home/ewl/workspace/p=
oky/build/tmp/sysroots/mpc8315e-rdb/usr/lib -DWITHOUT_XATTR -D UMTS -I..&nb=
sp;&nbsp; -L/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb/usr/li=
b
 -L/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e-rdb/usr/lib swi_osa=
pi.c swi_ossdk.c swi_ossdkcheck.c<o:p></o:p></p>
<p class=3D"MsoNormal"><b>/home/ewl/workspace/poky/build/tmp/sysroots/mpc83=
15e-rdb/usr/lib/crt1.o:(.rodata&#43;0x4): undefined reference to `main'<o:p=
></o:p></b></p>
<p class=3D"MsoNormal">/tmp/ccVadGQx.o: I<o:p></o:p></p>
<p class=3D"MsoNormal">n function `swi_ossdkthreadcreate':<o:p></o:p></p>
<p class=3D"MsoNormal">/home/ewl/workspace/poky/build/tmp/work/ppc603e-poky=
-linux/3G-1.1-r0/3G-1.1/os/swi_ossdk.c:520:
<b>undefined reference to `pthread_create'</b><o:p></o:p></p>
<p class=3D"MsoNormal">/tmp/ccVadGQx.o: In function `swi_ossdkwaiterwait':<=
o:p></o:p></p>
<p class=3D"MsoNormal">/home/ewl/workspace/poky/build/tmp/work/ppc603e-poky=
-linux/3G-1.1-r0/3G-1.1/os/swi_ossdk.c:669:
<b>undefined reference to `clock_gettime'<o:p></o:p></b></p>
<p class=3D"MsoNormal">/tmp/ccK2KX2A.o: In function `swi_osapithreadcreate'=
:<o:p></o:p></p>
<p class=3D"MsoNormal">/home/ewl/workspace/poky/build/tmp/work/ppc603e-poky=
-linux/3G-1.1-r0/3G-1.1/os/swi_osapi.c:824: und<o:p></o:p></p>
<p class=3D"MsoNormal">efined reference to `pthread_create'<o:p></o:p></p>
<p class=3D"MsoNormal">collect2: ld returned 1 exit status<o:p></o:p></p>
<p class=3D"MsoNormal">make[1]: *** [objpowerpc/swi_ossdkcheck.o] Error 1<o=
:p></o:p></p>
<p class=3D"MsoNormal">make[1]: *** Waiting for unfinished jobs....<o:p></o=
:p></p>
<p class=3D"MsoNormal">/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e=
-rdb/usr/lib/crt1.o:(.rodata&#43;0x4): undefined reference to `main'<o:p></=
o:p></p>
<p class=3D"MsoNormal">/tmp/cct6CpNx.o: In function `swi_ossdkthreadcreate'=
:<o:p></o:p></p>
<p class=3D"MsoNormal">/home/ewl/workspace/poky/build/tmp/work/ppc603e-poky=
-linux/3G-1.1-r0/3G-1.1/os/swi_ossdk.c:520:
<b>undefined reference to `pthread_create'</b><o:p></o:p></p>
<p class=3D"MsoNormal">/tmp/cct6CpNx.o: In function `swi_os<o:p></o:p></p>
<p class=3D"MsoNormal">sdkwaiterwait':<o:p></o:p></p>
<p class=3D"MsoNormal">/home/ewl/workspace/poky/build/tmp/work/ppc603e-poky=
-linux/3G-1.1-r0/3G-1.1/os/swi_ossdk.c:669:
<b>undefined reference to `clock_gettime'<o:p></o:p></b></p>
<p class=3D"MsoNormal">/tmp/ccP8YAQA.o: In function `swi_osapithreadcreate'=
:<o:p></o:p></p>
<p class=3D"MsoNormal">/home/ewl/workspace/poky/build/tmp/work/ppc603e-poky=
-linux/3G-1.1-r0/3G-1.1/os/swi_osapi.c:824:
<b>undefined reference to `pthread_create'</b><o:p></o:p></p>
<p class=3D"MsoNormal">collect2: ld returned 1 exit status<o:p></o:p></p>
<p class=3D"MsoNormal">make[1]: *** [objpowerpc/swi_osstubs.o] Error 1<o:p>=
</o:p></p>
<p class=3D"MsoNormal">/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e=
-rdb/usr/lib/crt1.o:(.rodata&#43;0x4):
<o:p></o:p></p>
<p class=3D"MsoNormal">undefined reference to `main'<o:p></o:p></p>
<p class=3D"MsoNormal">/tmp/ccAN9cXx.o: In function `swi_ossdkthreadcreate'=
:<o:p></o:p></p>
<p class=3D"MsoNormal">/home/ewl/workspace/poky/build/tmp/work/ppc603e-poky=
-linux/3G-1.1-r0/3G-1.1/os/swi_ossdk.c:520: undefined reference to `pthread=
_create'<o:p></o:p></p>
<p class=3D"MsoNormal">/tmp/ccAN9cXx.o: In function `swi_ossdkwaiterwait':<=
o:p></o:p></p>
<p class=3D"MsoNormal">/home/ewl/workspace/poky/build/tmp/work/ppc603e-poky=
-linux/3G-1.1-r0/3G-1.1/os/swi_ossdk.c:669: undefined reference to `clock_g=
ettime'<o:p></o:p></p>
<p class=3D"MsoNormal">/tmp/ccuC7pYA.o: In function `swi_osapithreadcreate'=
:<o:p></o:p></p>
<p class=3D"MsoNormal">/home/ewl/workspace/poky/build/tmp/work/ppc603e-pok<=
o:p></o:p></p>
<p class=3D"MsoNormal">y-linux/3G-1.1-r0/3G-1.1/os/swi_osapi.c:824: undefin=
ed reference to `pthread_create'<o:p></o:p></p>
<p class=3D"MsoNormal">collect2: ld returned 1 exit status<o:p></o:p></p>
<p class=3D"MsoNormal">/home/ewl/workspace/poky/build/tmp/sysroots/mpc8315e=
-rdb/usr/lib/crt1.o:(.rodata&#43;0x4): undefined reference to `main'<o:p></=
o:p></p>
<p class=3D"MsoNormal">/tmp/ccPg00ky.o: In function `swi_ossdkthreadcreate'=
:<o:p></o:p></p>
<p class=3D"MsoNormal">/home/ewl/workspace/poky/build/tmp/work/ppc603e-poky=
-linux/3G-1.1-r0/3G-1.1/os/swi_ossdk.c:520: undefined reference to `pthread=
_create'<o:p></o:p></p>
<p class=3D"MsoNormal">/tmp/ccPg00ky.o: In function `swi_ossdkwaiterwait':<=
o:p></o:p></p>
<p class=3D"MsoNormal">/home/ewl/workspace/poky/build/t<o:p></o:p></p>
<p class=3D"MsoNormal">mp/work/ppc603e-poky-linux/3G-1.1-r0/3G-1.1/os/swi_o=
ssdk.c:669: undefined reference to `clock_gettime'<o:p></o:p></p>
<p class=3D"MsoNormal">/tmp/cccoxyqB.o: In function `swi_osapithreadcreate'=
:<o:p></o:p></p>
<p class=3D"MsoNormal">/home/ewl/workspace/poky/build/tmp/work/ppc603e-poky=
-linux/3G-1.1-r0/3G-1.1/os/swi_osapi.c:824: undefined reference to `pthread=
_create'<o:p></o:p></p>
<p class=3D"MsoNormal">collect2: ld returned 1 exit status<o:p></o:p></p>
<p class=3D"MsoNormal">make[1]: *** [objpowerpc/swi_ossdk.o] Error 1<o:p></=
o:p></p>
<p class=3D"MsoNormal">make[1]: *** [objpowerpc/swi_osapi.o] Error 1<o:p></=
o:p></p>
<p class=3D"MsoNormal">make[1]: Leaving directory `/home/ewl/workspace/poky=
/build/tmp/work/ppc603e-poky-linux/3G-1<o:p></o:p></p>
<p class=3D"MsoNormal">.1-r0/3G-1.1/os<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_2CAE6214820FEA4A9FEB26C2710C44F43EA05076exchangeewlloca_--
