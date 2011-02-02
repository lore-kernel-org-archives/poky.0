Return-Path: <akshat.saha@spectracoretech.com>
Received: from mail-ew0-f48.google.com (mail-ew0-f48.google.com
	[209.85.215.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1460F4C8008C
	for <poky@yoctoproject.org>; Wed,  2 Feb 2011 03:18:48 -0600 (CST)
Received: by ewy20 with SMTP id 20so3576863ewy.35
	for <poky@yoctoproject.org>; Wed, 02 Feb 2011 01:18:48 -0800 (PST)
Received: by 10.14.10.208 with SMTP id 56mr2053053eev.31.1296638328197; Wed,
	02 Feb 2011 01:18:48 -0800 (PST)
MIME-Version: 1.0
Received: by 10.14.22.79 with HTTP; Wed, 2 Feb 2011 01:16:13 -0800 (PST)
X-Originating-IP: [115.111.25.162]
From: Akshat Saha <akshat.saha@spectracoretech.com>
Date: Wed, 2 Feb 2011 14:46:13 +0530
Message-ID: <AANLkTi=rooisMrYS=N6GmL38siorVezxkE23g5OU697b@mail.gmail.com>
To: poky@yoctoproject.org
Subject: Error Compiling Poky-Green-3.3
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
X-List-Received-Date: Wed, 02 Feb 2011 09:18:49 -0000
Content-Type: multipart/alternative; boundary=0016364c7d71f454a2049b49229e

--0016364c7d71f454a2049b49229e
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi All,

I have downloaded the stable poky-green-3.3.1 and trying to compile it
for MACHINE ?=3D "netbook". Any help/suggestion/advice is truly appreciated=
.

Commands used:

   1. $ source poky-init-build-env.... (Working Directory changes to build)
   2. then commented MACHINE ?=3D "qemux86" in local.conf and
   uncommented MACHINE ?=3D "netbook"
   3. $ bitbake -DDD poky-image-minimal-live

Error faced:

gconvert.c:55:2: error: #error GNU libiconv not in use but included iconv.h
is from libiconv

Error Log:

+ export
localstatedir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64=
-linux/var
+
localstatedir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64=
-linux/var
+ export
prefix=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/=
usr
+
prefix=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/=
usr
+ export 'CPP=3Dgcc -E'
+ CPP=3D'gcc -E'
+ export
mandir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/=
usr/share/man
+
mandir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/=
usr/share/man
+ export MANDATORY_PATH=3D/usr/share/gconf/une.mandatory.path
+ MANDATORY_PATH=3D/usr/share/gconf/une.mandatory.path
+ export
STAGING_SIPDIR=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_6=
4-linux/usr/share/sip
+
STAGING_SIPDIR=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_6=
4-linux/usr/share/sip
+ export ORBIT_SOCKETDIR=3D/tmp/orbit-akshat
+ ORBIT_SOCKETDIR=3D/tmp/orbit-akshat
+ export BUILD_CC=3Dgcc
+ BUILD_CC=3Dgcc
+ export
'BUILD_CXXFLAGS=3D-isystem/home/akshat/work/poky/poky-green/build/tmp/sysro=
ots/x86_64-linux/usr/include
-O2 -fpermissive'
+
BUILD_CXXFLAGS=3D'-isystem/home/akshat/work/poky/poky-green/build/tmp/sysro=
ots/x86_64-linux/usr/include
-O2 -fpermissive'
+ export OBJCOPY=3Dobjcopy
+ OBJCOPY=3Dobjcopy
+ export GNOME_DESKTOP_SESSION_ID=3Dthis-is-deprecated
+ GNOME_DESKTOP_SESSION_ID=3Dthis-is-deprecated
+ export COLORTERM=3Dgnome-terminal
+ COLORTERM=3Dgnome-terminal
+ export F77=3Dg77
+ F77=3Dg77
+ export 'LESSOPEN=3D| /usr/bin/lesspipe %s'
+ LESSOPEN=3D'| /usr/bin/lesspipe %s'
+ export USER=3Dakshat
+ USER=3Dakshat
+ export SESSION_MANAGER=3Dlocal/sct-desktop:@
/tmp/.ICE-unix/1639,unix/sct-desktop:/tmp/.ICE-unix/1639
+ SESSION_MANAGER=3Dlocal/sct-desktop:@
/tmp/.ICE-unix/1639,unix/sct-desktop:/tmp/.ICE-unix/1639
+ export
PKG_CONFIG_PATH=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_=
64-linux/usr/lib/pkgconfig:/home/akshat/work/poky/poky-green/build/tmp/sysr=
oots/x86_64-linux/usr/share/pkgconfig
+
PKG_CONFIG_PATH=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_=
64-linux/usr/lib/pkgconfig:/home/akshat/work/poky/poky-green/build/tmp/sysr=
oots/x86_64-linux/usr/share/pkgconfig
+ export PSTAGING_ACTIVE=3D1
+ PSTAGING_ACTIVE=3D1
+ export
libexecdir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-li=
nux/usr/libexec
+
libexecdir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-li=
nux/usr/libexec
+ export
servicedir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-li=
nux/srv
+
servicedir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-li=
nux/srv
+ export
datadir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux=
/usr/share
+
datadir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux=
/usr/share
+ export USERNAME=3Dakshat
+ USERNAME=3Dakshat
+ export OEROOT=3D/home/akshat/work/poky/poky-green
+ OEROOT=3D/home/akshat/work/poky/poky-green
+ export STRIP=3Dstrip
+ STRIP=3Dstrip
+ export DEFAULTS_PATH=3D/usr/share/gconf/une.default.path
+ DEFAULTS_PATH=3D/usr/share/gconf/une.default.path
+ export BUILD_CXX=3Dg++
+ BUILD_CXX=3Dg++
+ export LD=3Dld
+ LD=3Dld
+ export EXTRA_OEMAKE=3D
+ EXTRA_OEMAKE=3D
+ export
'LDFLAGS=3D-L/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-li=
nux/usr/lib
-Wl,-rpath-link,/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64=
-linux/usr/lib
-Wl,-rpath,/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linu=
x/usr/lib
-Wl,-O1'
+
LDFLAGS=3D'-L/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-li=
nux/usr/lib
-Wl,-rpath-link,/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64=
-linux/usr/lib
-Wl,-rpath,/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linu=
x/usr/lib
-Wl,-O1'
+ export
bindir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/=
usr/bin
+
bindir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/=
usr/bin
+ export 'TARGET_CXXFLAGS=3D-fexpensive-optimizations -fomit-frame-pointer
-frename-registers -O2 -ggdb -feliminate-unused-debug-types -fpermissive'
+ TARGET_CXXFLAGS=3D'-fexpensive-optimizations -fomit-frame-pointer
-frename-registers -O2 -ggdb -feliminate-unused-debug-types -fpermissive'
+ export OLDPWD=3D/home/akshat/work/poky/poky-green
+ OLDPWD=3D/home/akshat/work/poky/poky-green
+ export
includedir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-li=
nux/usr/include
+
includedir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-li=
nux/usr/include
+ export
exec_prefix=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-l=
inux/usr
+
exec_prefix=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-l=
inux/usr
+ export
'BUILD_LDFLAGS=3D-L/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86=
_64-linux/usr/lib
-Wl,-rpath-link,/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64=
-linux/usr/lib
-Wl,-rpath,/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linu=
x/usr/lib
-Wl,-O1'
+
BUILD_LDFLAGS=3D'-L/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86=
_64-linux/usr/lib
-Wl,-rpath-link,/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64=
-linux/usr/lib
-Wl,-rpath,/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linu=
x/usr/lib
-Wl,-O1'
+ unset TARGET_ARCH
+ export DESKTOP_SESSION=3Dune
+ DESKTOP_SESSION=3Dune
+ export BUILD_SYS=3Dx86_64-linux
+ BUILD_SYS=3Dx86_64-linux
+ export 'BB_ENV_EXTRAWHITE=3DMACHINE DISTRO POKYMODE POKYLIBC OEROOT
http_proxy ftp_proxy SSH_AGENT_PID SSH_AUTH_SOCK BB_SRCREV_POLICY SDKMACHIN=
E
BB_NUMBER_THREADS'
+ BB_ENV_EXTRAWHITE=3D'MACHINE DISTRO POKYMODE POKYLIBC OEROOT http_proxy
ftp_proxy SSH_AGENT_PID SSH_AUTH_SOCK BB_SRCREV_POLICY SDKMACHINE
BB_NUMBER_THREADS'
+ export SHLVL=3D2
+ SHLVL=3D2
+ export WINDOWID=3D88080389
+ WINDOWID=3D88080389
+ export HOME=3D/home/akshat
+ HOME=3D/home/akshat
+ export GDMSESSION=3Dune
+ GDMSESSION=3Dune
+ export
oldincludedir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64=
-linux/usr/include
+
oldincludedir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64=
-linux/usr/include
+ export CCLD=3Dgcc
+ CCLD=3Dgcc
+ export GDM_KEYBOARD_LAYOUT=3Dus
+ GDM_KEYBOARD_LAYOUT=3Dus
+ export SHELLCMDS=3Dbash
+ SHELLCMDS=3Dbash
+ export LANG=3DC
+ LANG=3DC
+ export BUILD_CCLD=3Dgcc
+ BUILD_CCLD=3Dgcc
+ export
BBPATH=3D/home/akshat/work/poky/poky-green/build:/home/akshat/.poky:/home/a=
kshat/.oe:/home/akshat/work/poky/poky-green/meta-gnome:/home/akshat/work/po=
ky/poky-green/meta-moblin:/home/akshat/work/poky/poky-green/meta:/home/aksh=
at/work/poky/poky-green/bitbake:/home/akshat/work/poky/poky-green/meta/home=
/akshat/work/poky/poky-green/meta-moblin
+
BBPATH=3D/home/akshat/work/poky/poky-green/build:/home/akshat/.poky:/home/a=
kshat/.oe:/home/akshat/work/poky/poky-green/meta-gnome:/home/akshat/work/po=
ky/poky-green/meta-moblin:/home/akshat/work/poky/poky-green/meta:/home/aksh=
at/work/poky/poky-green/bitbake:/home/akshat/work/poky/poky-green/meta/home=
/akshat/work/poky/poky-green/meta-moblin
+ export MAKE=3Dmake
+ MAKE=3Dmake
+ export LOGNAME=3Dakshat
+ LOGNAME=3Dakshat
+ export
PATH=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/us=
r/bin:/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/usr=
/sbin:/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/usr=
/bin:/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/sbin=
:/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux//bin:/ho=
me/akshat/work/poky/poky-green/bitbake//bin/:/home/akshat/work/poky/poky-gr=
een/scripts:/home/akshat/work/poky/poky-green/bitbake//bin/:/home/akshat/wo=
rk/poky/poky-green/scripts:/home/akshat/work/poky/poky-green/bitbake//bin/:=
/home/akshat/work/poky/poky-green/scripts:/home/akshat/bin:/usr/local/sbin:=
/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/akshat/bin:/h=
ome/akshat/tools/arm-2009q3/bin
+
PATH=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/us=
r/bin:/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/usr=
/sbin:/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/usr=
/bin:/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/sbin=
:/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux//bin:/ho=
me/akshat/work/poky/poky-green/bitbake//bin/:/home/akshat/work/poky/poky-gr=
een/scripts:/home/akshat/work/poky/poky-green/bitbake//bin/:/home/akshat/wo=
rk/poky/poky-green/scripts:/home/akshat/work/poky/poky-green/bitbake//bin/:=
/home/akshat/work/poky/poky-green/scripts:/home/akshat/bin:/usr/local/sbin:=
/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/akshat/bin:/h=
ome/akshat/tools/arm-2009q3/bin
+ export 'TARGET_CFLAGS=3D-fexpensive-optimizations -fomit-frame-pointer
-frename-registers -O2 -ggdb -feliminate-unused-debug-types'
+ TARGET_CFLAGS=3D'-fexpensive-optimizations -fomit-frame-pointer
-frename-registers -O2 -ggdb -feliminate-unused-debug-types'
+ export
base_bindir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-l=
inux/bin
+
base_bindir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-l=
inux/bin
+ export BUILD_CPP=3Dcpp
+ BUILD_CPP=3Dcpp
+ unset MACHINE
+ export
sbindir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux=
/usr/sbin
+
sbindir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux=
/usr/sbin
+ export
'CFLAGS=3D-isystem/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_=
64-linux/usr/include
-O2'
+
CFLAGS=3D'-isystem/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_=
64-linux/usr/include
-O2'
+ export BUILD_AR=3Dar
+ BUILD_AR=3Dar
+ export
sharedstatedir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_6=
4-linux/com
+
sharedstatedir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_6=
4-linux/com
+ export XDG_DATA_DIRS=3D/usr/share/gnome:/usr/local/share/:/usr/share/
+ XDG_DATA_DIRS=3D/usr/share/gnome:/usr/local/share/:/usr/share/
+ export
DBUS_SESSION_BUS_ADDRESS=3Dunix:abstract=3D/tmp/dbus-pIKmns3QDa,guid=3D8c43=
f6ac48e61741f6eb7bc44d48dde4
+
DBUS_SESSION_BUS_ADDRESS=3Dunix:abstract=3D/tmp/dbus-pIKmns3QDa,guid=3D8c43=
f6ac48e61741f6eb7bc44d48dde4
+ export BUILDDIR=3D/home/akshat/work/poky/poky-green/build
+ BUILDDIR=3D/home/akshat/work/poky/poky-green/build
+ export OBJDUMP=3Dobjdump
+ OBJDUMP=3Dobjdump
+ export
'BUILD_CFLAGS=3D-isystem/home/akshat/work/poky/poky-green/build/tmp/sysroot=
s/x86_64-linux/usr/include
-O2'
+
BUILD_CFLAGS=3D'-isystem/home/akshat/work/poky/poky-green/build/tmp/sysroot=
s/x86_64-linux/usr/include
-O2'
+ export QTDIR=3D/qt2
+ QTDIR=3D/qt2
+ export
base_libdir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-l=
inux/lib
+
base_libdir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-l=
inux/lib
+ export XAUTHORITY=3D/var/run/gdm/auth-for-akshat-ScO8c5/database
+ XAUTHORITY=3D/var/run/gdm/auth-for-akshat-ScO8c5/database
+ unset DISTRO
+ export
STAGING_IDLDIR=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_6=
4-linux/usr/share/idl
+
STAGING_IDLDIR=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_6=
4-linux/usr/share/idl
+ export SHELL=3D/bin/bash
+ SHELL=3D/bin/bash
+ export
QMAKE_MKSPEC_PATH=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x8=
6_64-linux/usr/share/qmake
+
QMAKE_MKSPEC_PATH=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x8=
6_64-linux/usr/share/qmake
+ export XDG_CONFIG_DIRS=3D/etc/xdg/xdg-une:/etc/xdg
+ XDG_CONFIG_DIRS=3D/etc/xdg/xdg-une:/etc/xdg
+ export
PKG_CONFIG_DIR=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_6=
4-linux/usr/lib/pkgconfig
+
PKG_CONFIG_DIR=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_6=
4-linux/usr/lib/pkgconfig
+ export
palmtopdir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-li=
nux/usr/lib/opie
+
palmtopdir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-li=
nux/usr/lib/opie
+ export
infodir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux=
/usr/share/info
+
infodir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux=
/usr/share/info
+ export
libdir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/=
usr/lib
+
libdir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/=
usr/lib
+ export
base_prefix=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-l=
inux
+
base_prefix=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-l=
inux
+ export CC=3Dgcc
+ CC=3Dgcc
+ export 'LESSCLOSE=3D/usr/bin/lesspipe %s %s'
+ LESSCLOSE=3D'/usr/bin/lesspipe %s %s'
+ export GNOME_KEYRING_CONTROL=3D/tmp/keyring-PwTIXU
+ GNOME_KEYRING_CONTROL=3D/tmp/keyring-PwTIXU
+ export 'TARGET_LDFLAGS=3D-Wl,-O1 -Wl,--as-needed'
+ TARGET_LDFLAGS=3D'-Wl,-O1 -Wl,--as-needed'
+ export TERM=3Dxterm
+ TERM=3Dxterm
+ export
XDG_SESSION_COOKIE=3D7dcc14fffe292a285dcbfd514c6d79a9-1296621028.312877-173=
3634939
+
XDG_SESSION_COOKIE=3D7dcc14fffe292a285dcbfd514c6d79a9-1296621028.312877-173=
3634939
+ export BUILD_F77=3Dg77
+ BUILD_F77=3Dg77
+ export RANLIB=3Dranlib
+ RANLIB=3Dranlib
+ export PWD=3D/home/akshat/work/poky/poky-green/build
+ PWD=3D/home/akshat/work/poky/poky-green/build
+ export
CPPFLAGS=3D-isystem/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86=
_64-linux/usr/include
+
CPPFLAGS=3D-isystem/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86=
_64-linux/usr/include
+ export
docdir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/=
usr/share/doc
+
docdir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/=
usr/share/doc
+ export
palmqtdir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-lin=
ux/usr/lib/opie
+
palmqtdir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-lin=
ux/usr/lib/opie
+ export GTK_MODULES=3Dcanberra-gtk-module
+ GTK_MODULES=3Dcanberra-gtk-module
+ export
base_sbindir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-=
linux/sbin
+
base_sbindir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-=
linux/sbin
+ export CXX=3Dg++
+ CXX=3Dg++
+ export PKG_CONFIG_DISABLE_UNINSTALLED=3Dyes
+ PKG_CONFIG_DISABLE_UNINSTALLED=3Dyes
+ export _=3D/home/akshat/work/poky/poky-green/bitbake//bin/bitbake
+ _=3D/home/akshat/work/poky/poky-green/bitbake//bin/bitbake
+ export
'LS_COLORS=3Drs=3D0:di=3D01;34:ln=3D01;36:hl=3D44;37:pi=3D40;33:so=3D01;35:=
do=3D01;35:bd=3D40;33;01:cd=3D40;33;01:or=3D40;31;01:su=3D37;41:sg=3D30;43:=
ca=3D30;41:tw=3D30;42:ow=3D34;42:st=3D37;44:ex=3D01;32:*.tar=3D01;31:*.tgz=
=3D01;31:*.arj=3D01;31:*.taz=3D01;31:*.lzh=3D01;31:*.lzma=3D01;31:*.zip=3D0=
1;31:*.z=3D01;31:*.Z=3D01;31:*.dz=3D01;31:*.gz=3D01;31:*.bz2=3D01;31:*.bz=
=3D01;31:*.tbz2=3D01;31:*.tz=3D01;31:*.deb=3D01;31:*.rpm=3D01;31:*.jar=3D01=
;31:*.rar=3D01;31:*.ace=3D01;31:*.zoo=3D01;31:*.cpio=3D01;31:*.7z=3D01;31:*=
.rz=3D01;31:*.jpg=3D01;35:*.jpeg=3D01;35:*.gif=3D01;35:*.bmp=3D01;35:*.pbm=
=3D01;35:*.pgm=3D01;35:*.ppm=3D01;35:*.tga=3D01;35:*.xbm=3D01;35:*.xpm=3D01=
;35:*.tif=3D01;35:*.tiff=3D01;35:*.png=3D01;35:*.svg=3D01;35:*.svgz=3D01;35=
:*.mng=3D01;35:*.pcx=3D01;35:*.mov=3D01;35:*.mpg=3D01;35:*.mpeg=3D01;35:*.m=
2v=3D01;35:*.mkv=3D01;35:*.ogm=3D01;35:*.mp4=3D01;35:*.m4v=3D01;35:*.mp4v=
=3D01;35:*.vob=3D01;35:*.qt=3D01;35:*.nuv=3D01;35:*.wmv=3D01;35:*.asf=3D01;=
35:*.rm=3D01;35:*.rmvb=3D01;35:*.flc=3D01;35:*.avi=3D01;35:*.fli=3D01;35:*.=
flv=3D01;35:*.gl=3D01;35:*.dl=3D01;35:*.xcf=3D01;35:*.xwd=3D01;35:*.yuv=3D0=
1;35:*.axv=3D01;35:*.anx=3D01;35:*.ogv=3D01;35:*.ogx=3D01;35:*.aac=3D00;36:=
*.au=3D00;36:*.flac=3D00;36:*.mid=3D00;36:*.midi=3D00;36:*.mka=3D00;36:*.mp=
3=3D00;36:*.mpc=3D00;36:*.ogg=3D00;36:*.ra=3D00;36:*.wav=3D00;36:*.axa=3D00=
;36:*.oga=3D00;36:*.spx=3D00;36:*.xspf=3D00;36:'
+
LS_COLORS=3D'rs=3D0:di=3D01;34:ln=3D01;36:hl=3D44;37:pi=3D40;33:so=3D01;35:=
do=3D01;35:bd=3D40;33;01:cd=3D40;33;01:or=3D40;31;01:su=3D37;41:sg=3D30;43:=
ca=3D30;41:tw=3D30;42:ow=3D34;42:st=3D37;44:ex=3D01;32:*.tar=3D01;31:*.tgz=
=3D01;31:*.arj=3D01;31:*.taz=3D01;31:*.lzh=3D01;31:*.lzma=3D01;31:*.zip=3D0=
1;31:*.z=3D01;31:*.Z=3D01;31:*.dz=3D01;31:*.gz=3D01;31:*.bz2=3D01;31:*.bz=
=3D01;31:*.tbz2=3D01;31:*.tz=3D01;31:*.deb=3D01;31:*.rpm=3D01;31:*.jar=3D01=
;31:*.rar=3D01;31:*.ace=3D01;31:*.zoo=3D01;31:*.cpio=3D01;31:*.7z=3D01;31:*=
.rz=3D01;31:*.jpg=3D01;35:*.jpeg=3D01;35:*.gif=3D01;35:*.bmp=3D01;35:*.pbm=
=3D01;35:*.pgm=3D01;35:*.ppm=3D01;35:*.tga=3D01;35:*.xbm=3D01;35:*.xpm=3D01=
;35:*.tif=3D01;35:*.tiff=3D01;35:*.png=3D01;35:*.svg=3D01;35:*.svgz=3D01;35=
:*.mng=3D01;35:*.pcx=3D01;35:*.mov=3D01;35:*.mpg=3D01;35:*.mpeg=3D01;35:*.m=
2v=3D01;35:*.mkv=3D01;35:*.ogm=3D01;35:*.mp4=3D01;35:*.m4v=3D01;35:*.mp4v=
=3D01;35:*.vob=3D01;35:*.qt=3D01;35:*.nuv=3D01;35:*.wmv=3D01;35:*.asf=3D01;=
35:*.rm=3D01;35:*.rmvb=3D01;35:*.flc=3D01;35:*.avi=3D01;35:*.fli=3D01;35:*.=
flv=3D01;35:*.gl=3D01;35:*.dl=3D01;35:*.xcf=3D01;35:*.xwd=3D01;35:*.yuv=3D0=
1;35:*.axv=3D01;35:*.anx=3D01;35:*.ogv=3D01;35:*.ogx=3D01;35:*.aac=3D00;36:=
*.au=3D00;36:*.flac=3D00;36:*.mid=3D00;36:*.midi=3D00;36:*.mka=3D00;36:*.mp=
3=3D00;36:*.mpc=3D00;36:*.ogg=3D00;36:*.ra=3D00;36:*.wav=3D00;36:*.axa=3D00=
;36:*.oga=3D00;36:*.spx=3D00;36:*.xspf=3D00;36:'
+ export AR=3Dar
+ AR=3Dar
+ export
BUILD_CPPFLAGS=3D-isystem/home/akshat/work/poky/poky-green/build/tmp/sysroo=
ts/x86_64-linux/usr/include
+
BUILD_CPPFLAGS=3D-isystem/home/akshat/work/poky/poky-green/build/tmp/sysroo=
ts/x86_64-linux/usr/include
+ export PATCH_GET=3D0
+ PATCH_GET=3D0
+ export
'CXXFLAGS=3D-isystem/home/akshat/work/poky/poky-green/build/tmp/sysroots/x8=
6_64-linux/usr/include
-O2'
+
CXXFLAGS=3D'-isystem/home/akshat/work/poky/poky-green/build/tmp/sysroots/x8=
6_64-linux/usr/include
-O2'
+ export DISPLAY=3D:0.0
+ DISPLAY=3D:0.0
+ export BUILD_STRIP=3Dstrip
+ BUILD_STRIP=3Dstrip
+ export BUILD_LD=3Dld
+ BUILD_LD=3Dld
+ export GDM_LANG=3Den_IN
+ GDM_LANG=3Den_IN
+ export SSH_AGENT_PID=3D1676
+ SSH_AGENT_PID=3D1676
+ export SSH_AUTH_SOCK=3D/tmp/keyring-PwTIXU/ssh
+ SSH_AUTH_SOCK=3D/tmp/keyring-PwTIXU/ssh
+ export AS=3Das
+ AS=3Das
+ export BUILD_RANLIB=3Dranlib
+ BUILD_RANLIB=3Dranlib
+ export
sysconfdir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-li=
nux/etc
+
sysconfdir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-li=
nux/etc
+ export SPEECHD_PORT=3D7561
+ SPEECHD_PORT=3D7561
+ cd
/home/akshat/work/poky/poky-green/build/tmp/work/x86_64-linux/glib-2.0-nati=
ve-2.22.3-r1/glib-2.22.3
+ do_compile
+ base_do_compile
+ '[' -e Makefile -o -e makefile ']'
+ oe_runmake
+ '[' xmake =3D x ']'
+ oenote make
+ echo NOTE: make
NOTE: make
+ make
make  all-recursive
make[1]: Entering directory
`/home/akshat/work/poky/poky-green/build/tmp/work/x86_64-linux/glib-2.0-nat=
ive-2.22.3-r1/glib-2.22.3'
Making all in .
make[2]: Entering directory
`/home/akshat/work/poky/poky-green/build/tmp/work/x86_64-linux/glib-2.0-nat=
ive-2.22.3-r1/glib-2.22.3'
make[2]: Leaving directory
`/home/akshat/work/poky/poky-green/build/tmp/work/x86_64-linux/glib-2.0-nat=
ive-2.22.3-r1/glib-2.22.3'
Making all in m4macros
make[2]: Entering directory
`/home/akshat/work/poky/poky-green/build/tmp/work/x86_64-linux/glib-2.0-nat=
ive-2.22.3-r1/glib-2.22.3/m4macros'
make[2]: Nothing to be done for `all'.
make[2]: Leaving directory
`/home/akshat/work/poky/poky-green/build/tmp/work/x86_64-linux/glib-2.0-nat=
ive-2.22.3-r1/glib-2.22.3/m4macros'
Making all in glib
make[2]: Entering directory
`/home/akshat/work/poky/poky-green/build/tmp/work/x86_64-linux/glib-2.0-nat=
ive-2.22.3-r1/glib-2.22.3/glib'
make  all-recursive
make[3]: Entering directory
`/home/akshat/work/poky/poky-green/build/tmp/work/x86_64-linux/glib-2.0-nat=
ive-2.22.3-r1/glib-2.22.3/glib'
Making all in libcharset
make[4]: Entering directory
`/home/akshat/work/poky/poky-green/build/tmp/work/x86_64-linux/glib-2.0-nat=
ive-2.22.3-r1/glib-2.22.3/glib/libcharset'
make[4]: Nothing to be done for `all'.
make[4]: Leaving directory
`/home/akshat/work/poky/poky-green/build/tmp/work/x86_64-linux/glib-2.0-nat=
ive-2.22.3-r1/glib-2.22.3/glib/libcharset'
Making all in pcre
make[4]: Entering directory
`/home/akshat/work/poky/poky-green/build/tmp/work/x86_64-linux/glib-2.0-nat=
ive-2.22.3-r1/glib-2.22.3/glib/pcre'
make[4]: Nothing to be done for `all'.
make[4]: Leaving directory
`/home/akshat/work/poky/poky-green/build/tmp/work/x86_64-linux/glib-2.0-nat=
ive-2.22.3-r1/glib-2.22.3/glib/pcre'
Making all in update-pcre
make[4]: Entering directory
`/home/akshat/work/poky/poky-green/build/tmp/work/x86_64-linux/glib-2.0-nat=
ive-2.22.3-r1/glib-2.22.3/glib/update-pcre'
make[4]: Nothing to be done for `all'.
make[4]: Leaving directory
`/home/akshat/work/poky/poky-green/build/tmp/work/x86_64-linux/glib-2.0-nat=
ive-2.22.3-r1/glib-2.22.3/glib/update-pcre'
Making all in .
make[4]: Entering directory
`/home/akshat/work/poky/poky-green/build/tmp/work/x86_64-linux/glib-2.0-nat=
ive-2.22.3-r1/glib-2.22.3/glib'
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile gcc
-DHAVE_CONFIG_H -I. -I..  -I..  -DG_LOG_DOMAIN=3D\"GLib\"
-DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION
-DPCRE_STATIC
-isystem/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/u=
sr/include
-DG_DISABLE_SINGLE_INCLUDES -pthread
 -isystem/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/=
usr/include
-O2 -Wall -MT gconvert.lo -MD -MP -MF .deps/gconvert.Tpo -c -o gconvert.lo
gconvert.c
x86_64-linux-libtool: compile:  gcc -DHAVE_CONFIG_H -I. -I.. -I..
-DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED
-DGLIB_COMPILATION -DPCRE_STATIC
-isystem/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/u=
sr/include
-DG_DISABLE_SINGLE_INCLUDES -pthread
-isystem/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/u=
sr/include
-O2 -Wall -MT gconvert.lo -MD -MP -MF .deps/gconvert.Tpo -c gconvert.c
 -fPIC -DPIC -o .libs/gconvert.o
gconvert.c:55:2: error: #error GNU libiconv not in use but included iconv.h
is from libiconv
make[4]: *** [gconvert.lo] Error 1
make[4]: Leaving directory
`/home/akshat/work/poky/poky-green/build/tmp/work/x86_64-linux/glib-2.0-nat=
ive-2.22.3-r1/glib-2.22.3/glib'
make[3]: *** [all-recursive] Error 1
make[3]: Leaving directory
`/home/akshat/work/poky/poky-green/build/tmp/work/x86_64-linux/glib-2.0-nat=
ive-2.22.3-r1/glib-2.22.3/glib'
make[2]: *** [all] Error 2
make[2]: Leaving directory
`/home/akshat/work/poky/poky-green/build/tmp/work/x86_64-linux/glib-2.0-nat=
ive-2.22.3-r1/glib-2.22.3/glib'
make[1]: *** [all-recursive] Error 1
make[1]: Leaving directory
`/home/akshat/work/poky/poky-green/build/tmp/work/x86_64-linux/glib-2.0-nat=
ive-2.22.3-r1/glib-2.22.3'
make: *** [all] Error 2
+ die 'oe_runmake failed'
+ oefatal 'oe_runmake failed'
+ echo FATAL: 'oe_runmake failed'
FATAL: oe_runmake failed
+ exit 1

--=20
Thanks and Regards,

Akshat Saha

--0016364c7d71f454a2049b49229e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi All,<div><br></div><div>I have downloaded the stable poky-green-3.3.1 an=
d trying to compile it for=A0MACHINE ?=3D &quot;netbook&quot;. Any help/sug=
gestion/advice is truly appreciated.</div><div><br></div><div>Commands used=
:</div>

<div><ol><li>$ source poky-init-build-env.... (Working Directory changes to=
 build)</li><li>then commented MACHINE ?=3D &quot;qemux86&quot; in local.co=
nf and uncommented=A0MACHINE ?=3D &quot;netbook&quot;</li><li>$ bitbake -DD=
D poky-image-minimal-live=A0</li>

</ol></div><div><div>Error faced:</div><div><br></div><div><div>gconvert.c:=
55:2: error: #error GNU libiconv not in use but included iconv.h is from li=
biconv</div></div><div><br></div><div>Error Log:</div><div><br></div><div>

<div>+ export localstatedir=3D/home/akshat/work/poky/poky-green/build/tmp/s=
ysroots/x86_64-linux/var</div><div>+ localstatedir=3D/home/akshat/work/poky=
/poky-green/build/tmp/sysroots/x86_64-linux/var</div><div>+ export prefix=
=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/usr</d=
iv>

<div>+ prefix=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64=
-linux/usr</div><div>+ export &#39;CPP=3Dgcc -E&#39;</div><div>+ CPP=3D&#39=
;gcc -E&#39;</div><div>+ export mandir=3D/home/akshat/work/poky/poky-green/=
build/tmp/sysroots/x86_64-linux/usr/share/man</div>

<div>+ mandir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64=
-linux/usr/share/man</div><div>+ export MANDATORY_PATH=3D/usr/share/gconf/u=
ne.mandatory.path</div><div>+ MANDATORY_PATH=3D/usr/share/gconf/une.mandato=
ry.path</div>

<div>+ export STAGING_SIPDIR=3D/home/akshat/work/poky/poky-green/build/tmp/=
sysroots/x86_64-linux/usr/share/sip</div><div>+ STAGING_SIPDIR=3D/home/aksh=
at/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/usr/share/sip</div>

<div>+ export ORBIT_SOCKETDIR=3D/tmp/orbit-akshat</div><div>+ ORBIT_SOCKETD=
IR=3D/tmp/orbit-akshat</div><div>+ export BUILD_CC=3Dgcc</div><div>+ BUILD_=
CC=3Dgcc</div><div>+ export &#39;BUILD_CXXFLAGS=3D-isystem/home/akshat/work=
/poky/poky-green/build/tmp/sysroots/x86_64-linux/usr/include -O2 -fpermissi=
ve&#39;</div>

<div>+ BUILD_CXXFLAGS=3D&#39;-isystem/home/akshat/work/poky/poky-green/buil=
d/tmp/sysroots/x86_64-linux/usr/include -O2 -fpermissive&#39;</div><div>+ e=
xport OBJCOPY=3Dobjcopy</div><div>+ OBJCOPY=3Dobjcopy</div><div>+ export GN=
OME_DESKTOP_SESSION_ID=3Dthis-is-deprecated</div>

<div>+ GNOME_DESKTOP_SESSION_ID=3Dthis-is-deprecated</div><div>+ export COL=
ORTERM=3Dgnome-terminal</div><div>+ COLORTERM=3Dgnome-terminal</div><div>+ =
export F77=3Dg77</div><div>+ F77=3Dg77</div><div>+ export &#39;LESSOPEN=3D|=
 /usr/bin/lesspipe %s&#39;</div>

<div>+ LESSOPEN=3D&#39;| /usr/bin/lesspipe %s&#39;</div><div>+ export USER=
=3Dakshat</div><div>+ USER=3Dakshat</div><div>+ export SESSION_MANAGER=3Dlo=
cal/sct-desktop:@/tmp/.ICE-unix/1639,unix/sct-desktop:/tmp/.ICE-unix/1639</=
div>
<div>
+ SESSION_MANAGER=3Dlocal/sct-desktop:@/tmp/.ICE-unix/1639,unix/sct-desktop=
:/tmp/.ICE-unix/1639</div><div>+ export PKG_CONFIG_PATH=3D/home/akshat/work=
/poky/poky-green/build/tmp/sysroots/x86_64-linux/usr/lib/pkgconfig:/home/ak=
shat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/usr/share/pkgconf=
ig</div>

<div>+ PKG_CONFIG_PATH=3D/home/akshat/work/poky/poky-green/build/tmp/sysroo=
ts/x86_64-linux/usr/lib/pkgconfig:/home/akshat/work/poky/poky-green/build/t=
mp/sysroots/x86_64-linux/usr/share/pkgconfig</div><div>+ export PSTAGING_AC=
TIVE=3D1</div>

<div>+ PSTAGING_ACTIVE=3D1</div><div>+ export libexecdir=3D/home/akshat/wor=
k/poky/poky-green/build/tmp/sysroots/x86_64-linux/usr/libexec</div><div>+ l=
ibexecdir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-lin=
ux/usr/libexec</div>

<div>+ export servicedir=3D/home/akshat/work/poky/poky-green/build/tmp/sysr=
oots/x86_64-linux/srv</div><div>+ servicedir=3D/home/akshat/work/poky/poky-=
green/build/tmp/sysroots/x86_64-linux/srv</div><div>+ export datadir=3D/hom=
e/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/usr/share</di=
v>

<div>+ datadir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_6=
4-linux/usr/share</div><div>+ export USERNAME=3Dakshat</div><div>+ USERNAME=
=3Dakshat</div><div>+ export OEROOT=3D/home/akshat/work/poky/poky-green</di=
v><div>

+ OEROOT=3D/home/akshat/work/poky/poky-green</div><div>+ export STRIP=3Dstr=
ip</div><div>+ STRIP=3Dstrip</div><div>+ export DEFAULTS_PATH=3D/usr/share/=
gconf/une.default.path</div><div>+ DEFAULTS_PATH=3D/usr/share/gconf/une.def=
ault.path</div>

<div>+ export BUILD_CXX=3Dg++</div><div>+ BUILD_CXX=3Dg++</div><div>+ expor=
t LD=3Dld</div><div>+ LD=3Dld</div><div>+ export EXTRA_OEMAKE=3D</div><div>=
+ EXTRA_OEMAKE=3D</div><div>+ export &#39;LDFLAGS=3D-L/home/akshat/work/pok=
y/poky-green/build/tmp/sysroots/x86_64-linux/usr/lib -Wl,-rpath-link,/home/=
akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/usr/lib -Wl,-rp=
ath,/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/usr/l=
ib -Wl,-O1&#39;</div>

<div>+ LDFLAGS=3D&#39;-L/home/akshat/work/poky/poky-green/build/tmp/sysroot=
s/x86_64-linux/usr/lib -Wl,-rpath-link,/home/akshat/work/poky/poky-green/bu=
ild/tmp/sysroots/x86_64-linux/usr/lib -Wl,-rpath,/home/akshat/work/poky/pok=
y-green/build/tmp/sysroots/x86_64-linux/usr/lib -Wl,-O1&#39;</div>

<div>+ export bindir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots=
/x86_64-linux/usr/bin</div><div>+ bindir=3D/home/akshat/work/poky/poky-gree=
n/build/tmp/sysroots/x86_64-linux/usr/bin</div><div>+ export &#39;TARGET_CX=
XFLAGS=3D-fexpensive-optimizations -fomit-frame-pointer -frename-registers =
-O2 -ggdb -feliminate-unused-debug-types -fpermissive&#39;</div>

<div>+ TARGET_CXXFLAGS=3D&#39;-fexpensive-optimizations -fomit-frame-pointe=
r -frename-registers -O2 -ggdb -feliminate-unused-debug-types -fpermissive&=
#39;</div><div>+ export OLDPWD=3D/home/akshat/work/poky/poky-green</div><di=
v>

+ OLDPWD=3D/home/akshat/work/poky/poky-green</div><div>+ export includedir=
=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/usr/in=
clude</div><div>+ includedir=3D/home/akshat/work/poky/poky-green/build/tmp/=
sysroots/x86_64-linux/usr/include</div>

<div>+ export exec_prefix=3D/home/akshat/work/poky/poky-green/build/tmp/sys=
roots/x86_64-linux/usr</div><div>+ exec_prefix=3D/home/akshat/work/poky/pok=
y-green/build/tmp/sysroots/x86_64-linux/usr</div><div>+ export &#39;BUILD_L=
DFLAGS=3D-L/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linu=
x/usr/lib -Wl,-rpath-link,/home/akshat/work/poky/poky-green/build/tmp/sysro=
ots/x86_64-linux/usr/lib -Wl,-rpath,/home/akshat/work/poky/poky-green/build=
/tmp/sysroots/x86_64-linux/usr/lib -Wl,-O1&#39;</div>

<div>+ BUILD_LDFLAGS=3D&#39;-L/home/akshat/work/poky/poky-green/build/tmp/s=
ysroots/x86_64-linux/usr/lib -Wl,-rpath-link,/home/akshat/work/poky/poky-gr=
een/build/tmp/sysroots/x86_64-linux/usr/lib -Wl,-rpath,/home/akshat/work/po=
ky/poky-green/build/tmp/sysroots/x86_64-linux/usr/lib -Wl,-O1&#39;</div>

<div>+ unset TARGET_ARCH</div><div>+ export DESKTOP_SESSION=3Dune</div><div=
>+ DESKTOP_SESSION=3Dune</div><div>+ export BUILD_SYS=3Dx86_64-linux</div><=
div>+ BUILD_SYS=3Dx86_64-linux</div><div>+ export &#39;BB_ENV_EXTRAWHITE=3D=
MACHINE DISTRO POKYMODE POKYLIBC OEROOT http_proxy ftp_proxy SSH_AGENT_PID =
SSH_AUTH_SOCK BB_SRCREV_POLICY SDKMACHINE BB_NUMBER_THREADS&#39;</div>

<div>+ BB_ENV_EXTRAWHITE=3D&#39;MACHINE DISTRO POKYMODE POKYLIBC OEROOT htt=
p_proxy ftp_proxy SSH_AGENT_PID SSH_AUTH_SOCK BB_SRCREV_POLICY SDKMACHINE B=
B_NUMBER_THREADS&#39;</div><div>+ export SHLVL=3D2</div><div>+ SHLVL=3D2</d=
iv>

<div>+ export WINDOWID=3D88080389</div><div>+ WINDOWID=3D88080389</div><div=
>+ export HOME=3D/home/akshat</div><div>+ HOME=3D/home/akshat</div><div>+ e=
xport GDMSESSION=3Dune</div><div>+ GDMSESSION=3Dune</div><div>+ export oldi=
ncludedir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-lin=
ux/usr/include</div>

<div>+ oldincludedir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots=
/x86_64-linux/usr/include</div><div>+ export CCLD=3Dgcc</div><div>+ CCLD=3D=
gcc</div><div>+ export GDM_KEYBOARD_LAYOUT=3Dus</div><div>+ GDM_KEYBOARD_LA=
YOUT=3Dus</div>

<div>+ export SHELLCMDS=3Dbash</div><div>+ SHELLCMDS=3Dbash</div><div>+ exp=
ort LANG=3DC</div><div>+ LANG=3DC</div><div>+ export BUILD_CCLD=3Dgcc</div>=
<div>+ BUILD_CCLD=3Dgcc</div><div>+ export BBPATH=3D/home/akshat/work/poky/=
poky-green/build:/home/akshat/.poky:/home/akshat/.oe:/home/akshat/work/poky=
/poky-green/meta-gnome:/home/akshat/work/poky/poky-green/meta-moblin:/home/=
akshat/work/poky/poky-green/meta:/home/akshat/work/poky/poky-green/bitbake:=
/home/akshat/work/poky/poky-green/meta/home/akshat/work/poky/poky-green/met=
a-moblin</div>

<div>+ BBPATH=3D/home/akshat/work/poky/poky-green/build:/home/akshat/.poky:=
/home/akshat/.oe:/home/akshat/work/poky/poky-green/meta-gnome:/home/akshat/=
work/poky/poky-green/meta-moblin:/home/akshat/work/poky/poky-green/meta:/ho=
me/akshat/work/poky/poky-green/bitbake:/home/akshat/work/poky/poky-green/me=
ta/home/akshat/work/poky/poky-green/meta-moblin</div>

<div>+ export MAKE=3Dmake</div><div>+ MAKE=3Dmake</div><div>+ export LOGNAM=
E=3Dakshat</div><div>+ LOGNAME=3Dakshat</div><div>+ export PATH=3D/home/aks=
hat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/usr/bin:/home/aksh=
at/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/usr/sbin:/home/aksh=
at/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/usr/bin:/home/aksha=
t/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/sbin:/home/akshat/wo=
rk/poky/poky-green/build/tmp/sysroots/x86_64-linux//bin:/home/akshat/work/p=
oky/poky-green/bitbake//bin/:/home/akshat/work/poky/poky-green/scripts:/hom=
e/akshat/work/poky/poky-green/bitbake//bin/:/home/akshat/work/poky/poky-gre=
en/scripts:/home/akshat/work/poky/poky-green/bitbake//bin/:/home/akshat/wor=
k/poky/poky-green/scripts:/home/akshat/bin:/usr/local/sbin:/usr/local/bin:/=
usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/akshat/bin:/home/akshat/tools=
/arm-2009q3/bin</div>

<div>+ PATH=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-l=
inux/usr/bin:/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-li=
nux/usr/sbin:/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-li=
nux/usr/bin:/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-lin=
ux/sbin:/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux//=
bin:/home/akshat/work/poky/poky-green/bitbake//bin/:/home/akshat/work/poky/=
poky-green/scripts:/home/akshat/work/poky/poky-green/bitbake//bin/:/home/ak=
shat/work/poky/poky-green/scripts:/home/akshat/work/poky/poky-green/bitbake=
//bin/:/home/akshat/work/poky/poky-green/scripts:/home/akshat/bin:/usr/loca=
l/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/akshat=
/bin:/home/akshat/tools/arm-2009q3/bin</div>

<div>+ export &#39;TARGET_CFLAGS=3D-fexpensive-optimizations -fomit-frame-p=
ointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types&#39;</di=
v><div>+ TARGET_CFLAGS=3D&#39;-fexpensive-optimizations -fomit-frame-pointe=
r -frename-registers -O2 -ggdb -feliminate-unused-debug-types&#39;</div>

<div>+ export base_bindir=3D/home/akshat/work/poky/poky-green/build/tmp/sys=
roots/x86_64-linux/bin</div><div>+ base_bindir=3D/home/akshat/work/poky/pok=
y-green/build/tmp/sysroots/x86_64-linux/bin</div><div>+ export BUILD_CPP=3D=
cpp</div>

<div>+ BUILD_CPP=3Dcpp</div><div>+ unset MACHINE</div><div>+ export sbindir=
=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/usr/sb=
in</div><div>+ sbindir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroo=
ts/x86_64-linux/usr/sbin</div>

<div>+ export &#39;CFLAGS=3D-isystem/home/akshat/work/poky/poky-green/build=
/tmp/sysroots/x86_64-linux/usr/include -O2&#39;</div><div>+ CFLAGS=3D&#39;-=
isystem/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/us=
r/include -O2&#39;</div>

<div>+ export BUILD_AR=3Dar</div><div>+ BUILD_AR=3Dar</div><div>+ export sh=
aredstatedir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-=
linux/com</div><div>+ sharedstatedir=3D/home/akshat/work/poky/poky-green/bu=
ild/tmp/sysroots/x86_64-linux/com</div>

<div>+ export XDG_DATA_DIRS=3D/usr/share/gnome:/usr/local/share/:/usr/share=
/</div><div>+ XDG_DATA_DIRS=3D/usr/share/gnome:/usr/local/share/:/usr/share=
/</div><div>+ export DBUS_SESSION_BUS_ADDRESS=3Dunix:abstract=3D/tmp/dbus-p=
IKmns3QDa,guid=3D8c43f6ac48e61741f6eb7bc44d48dde4</div>

<div>+ DBUS_SESSION_BUS_ADDRESS=3Dunix:abstract=3D/tmp/dbus-pIKmns3QDa,guid=
=3D8c43f6ac48e61741f6eb7bc44d48dde4</div><div>+ export BUILDDIR=3D/home/aks=
hat/work/poky/poky-green/build</div><div>+ BUILDDIR=3D/home/akshat/work/pok=
y/poky-green/build</div>

<div>+ export OBJDUMP=3Dobjdump</div><div>+ OBJDUMP=3Dobjdump</div><div>+ e=
xport &#39;BUILD_CFLAGS=3D-isystem/home/akshat/work/poky/poky-green/build/t=
mp/sysroots/x86_64-linux/usr/include -O2&#39;</div><div>+ BUILD_CFLAGS=3D&#=
39;-isystem/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linu=
x/usr/include -O2&#39;</div>

<div>+ export QTDIR=3D/qt2</div><div>+ QTDIR=3D/qt2</div><div>+ export base=
_libdir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux=
/lib</div><div>+ base_libdir=3D/home/akshat/work/poky/poky-green/build/tmp/=
sysroots/x86_64-linux/lib</div>

<div>+ export XAUTHORITY=3D/var/run/gdm/auth-for-akshat-ScO8c5/database</di=
v><div>+ XAUTHORITY=3D/var/run/gdm/auth-for-akshat-ScO8c5/database</div><di=
v>+ unset DISTRO</div><div>+ export STAGING_IDLDIR=3D/home/akshat/work/poky=
/poky-green/build/tmp/sysroots/x86_64-linux/usr/share/idl</div>

<div>+ STAGING_IDLDIR=3D/home/akshat/work/poky/poky-green/build/tmp/sysroot=
s/x86_64-linux/usr/share/idl</div><div>+ export SHELL=3D/bin/bash</div><div=
>+ SHELL=3D/bin/bash</div><div>+ export QMAKE_MKSPEC_PATH=3D/home/akshat/wo=
rk/poky/poky-green/build/tmp/sysroots/x86_64-linux/usr/share/qmake</div>

<div>+ QMAKE_MKSPEC_PATH=3D/home/akshat/work/poky/poky-green/build/tmp/sysr=
oots/x86_64-linux/usr/share/qmake</div><div>+ export XDG_CONFIG_DIRS=3D/etc=
/xdg/xdg-une:/etc/xdg</div><div>+ XDG_CONFIG_DIRS=3D/etc/xdg/xdg-une:/etc/x=
dg</div>

<div>+ export PKG_CONFIG_DIR=3D/home/akshat/work/poky/poky-green/build/tmp/=
sysroots/x86_64-linux/usr/lib/pkgconfig</div><div>+ PKG_CONFIG_DIR=3D/home/=
akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/usr/lib/pkgconf=
ig</div>

<div>+ export palmtopdir=3D/home/akshat/work/poky/poky-green/build/tmp/sysr=
oots/x86_64-linux/usr/lib/opie</div><div>+ palmtopdir=3D/home/akshat/work/p=
oky/poky-green/build/tmp/sysroots/x86_64-linux/usr/lib/opie</div><div>+ exp=
ort infodir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-l=
inux/usr/share/info</div>

<div>+ infodir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_6=
4-linux/usr/share/info</div><div>+ export libdir=3D/home/akshat/work/poky/p=
oky-green/build/tmp/sysroots/x86_64-linux/usr/lib</div><div>+ libdir=3D/hom=
e/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/usr/lib</div>

<div>+ export base_prefix=3D/home/akshat/work/poky/poky-green/build/tmp/sys=
roots/x86_64-linux</div><div>+ base_prefix=3D/home/akshat/work/poky/poky-gr=
een/build/tmp/sysroots/x86_64-linux</div><div>+ export CC=3Dgcc</div><div>+=
 CC=3Dgcc</div>

<div>+ export &#39;LESSCLOSE=3D/usr/bin/lesspipe %s %s&#39;</div><div>+ LES=
SCLOSE=3D&#39;/usr/bin/lesspipe %s %s&#39;</div><div>+ export GNOME_KEYRING=
_CONTROL=3D/tmp/keyring-PwTIXU</div><div>+ GNOME_KEYRING_CONTROL=3D/tmp/key=
ring-PwTIXU</div>

<div>+ export &#39;TARGET_LDFLAGS=3D-Wl,-O1 -Wl,--as-needed&#39;</div><div>=
+ TARGET_LDFLAGS=3D&#39;-Wl,-O1 -Wl,--as-needed&#39;</div><div>+ export TER=
M=3Dxterm</div><div>+ TERM=3Dxterm</div><div>+ export XDG_SESSION_COOKIE=3D=
7dcc14fffe292a285dcbfd514c6d79a9-1296621028.312877-1733634939</div>

<div>+ XDG_SESSION_COOKIE=3D7dcc14fffe292a285dcbfd514c6d79a9-1296621028.312=
877-1733634939</div><div>+ export BUILD_F77=3Dg77</div><div>+ BUILD_F77=3Dg=
77</div><div>+ export RANLIB=3Dranlib</div><div>+ RANLIB=3Dranlib</div><div=
>+ export PWD=3D/home/akshat/work/poky/poky-green/build</div>

<div>+ PWD=3D/home/akshat/work/poky/poky-green/build</div><div>+ export CPP=
FLAGS=3D-isystem/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64=
-linux/usr/include</div><div>+ CPPFLAGS=3D-isystem/home/akshat/work/poky/po=
ky-green/build/tmp/sysroots/x86_64-linux/usr/include</div>

<div>+ export docdir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots=
/x86_64-linux/usr/share/doc</div><div>+ docdir=3D/home/akshat/work/poky/pok=
y-green/build/tmp/sysroots/x86_64-linux/usr/share/doc</div><div>+ export pa=
lmqtdir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux=
/usr/lib/opie</div>

<div>+ palmqtdir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86=
_64-linux/usr/lib/opie</div><div>+ export GTK_MODULES=3Dcanberra-gtk-module=
</div><div>+ GTK_MODULES=3Dcanberra-gtk-module</div><div>+ export base_sbin=
dir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/sbi=
n</div>

<div>+ base_sbindir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/=
x86_64-linux/sbin</div><div>+ export CXX=3Dg++</div><div>+ CXX=3Dg++</div><=
div>+ export PKG_CONFIG_DISABLE_UNINSTALLED=3Dyes</div><div>+ PKG_CONFIG_DI=
SABLE_UNINSTALLED=3Dyes</div>

<div>+ export _=3D/home/akshat/work/poky/poky-green/bitbake//bin/bitbake</d=
iv><div>+ _=3D/home/akshat/work/poky/poky-green/bitbake//bin/bitbake</div><=
div>+ export &#39;LS_COLORS=3Drs=3D0:di=3D01;34:ln=3D01;36:hl=3D44;37:pi=3D=
40;33:so=3D01;35:do=3D01;35:bd=3D40;33;01:cd=3D40;33;01:or=3D40;31;01:su=3D=
37;41:sg=3D30;43:ca=3D30;41:tw=3D30;42:ow=3D34;42:st=3D37;44:ex=3D01;32:*.t=
ar=3D01;31:*.tgz=3D01;31:*.arj=3D01;31:*.taz=3D01;31:*.lzh=3D01;31:*.lzma=
=3D01;31:*.zip=3D01;31:*.z=3D01;31:*.Z=3D01;31:*.dz=3D01;31:*.gz=3D01;31:*.=
bz2=3D01;31:*.bz=3D01;31:*.tbz2=3D01;31:*.tz=3D01;31:*.deb=3D01;31:*.rpm=3D=
01;31:*.jar=3D01;31:*.rar=3D01;31:*.ace=3D01;31:*.zoo=3D01;31:*.cpio=3D01;3=
1:*.7z=3D01;31:*.rz=3D01;31:*.jpg=3D01;35:*.jpeg=3D01;35:*.gif=3D01;35:*.bm=
p=3D01;35:*.pbm=3D01;35:*.pgm=3D01;35:*.ppm=3D01;35:*.tga=3D01;35:*.xbm=3D0=
1;35:*.xpm=3D01;35:*.tif=3D01;35:*.tiff=3D01;35:*.png=3D01;35:*.svg=3D01;35=
:*.svgz=3D01;35:*.mng=3D01;35:*.pcx=3D01;35:*.mov=3D01;35:*.mpg=3D01;35:*.m=
peg=3D01;35:*.m2v=3D01;35:*.mkv=3D01;35:*.ogm=3D01;35:*.mp4=3D01;35:*.m4v=
=3D01;35:*.mp4v=3D01;35:*.vob=3D01;35:*.qt=3D01;35:*.nuv=3D01;35:*.wmv=3D01=
;35:*.asf=3D01;35:*.rm=3D01;35:*.rmvb=3D01;35:*.flc=3D01;35:*.avi=3D01;35:*=
.fli=3D01;35:*.flv=3D01;35:*.gl=3D01;35:*.dl=3D01;35:*.xcf=3D01;35:*.xwd=3D=
01;35:*.yuv=3D01;35:*.axv=3D01;35:*.anx=3D01;35:*.ogv=3D01;35:*.ogx=3D01;35=
:*.aac=3D00;36:*.au=3D00;36:*.flac=3D00;36:*.mid=3D00;36:*.midi=3D00;36:*.m=
ka=3D00;36:*.mp3=3D00;36:*.mpc=3D00;36:*.ogg=3D00;36:*.ra=3D00;36:*.wav=3D0=
0;36:*.axa=3D00;36:*.oga=3D00;36:*.spx=3D00;36:*.xspf=3D00;36:&#39;</div>

<div>+ LS_COLORS=3D&#39;rs=3D0:di=3D01;34:ln=3D01;36:hl=3D44;37:pi=3D40;33:=
so=3D01;35:do=3D01;35:bd=3D40;33;01:cd=3D40;33;01:or=3D40;31;01:su=3D37;41:=
sg=3D30;43:ca=3D30;41:tw=3D30;42:ow=3D34;42:st=3D37;44:ex=3D01;32:*.tar=3D0=
1;31:*.tgz=3D01;31:*.arj=3D01;31:*.taz=3D01;31:*.lzh=3D01;31:*.lzma=3D01;31=
:*.zip=3D01;31:*.z=3D01;31:*.Z=3D01;31:*.dz=3D01;31:*.gz=3D01;31:*.bz2=3D01=
;31:*.bz=3D01;31:*.tbz2=3D01;31:*.tz=3D01;31:*.deb=3D01;31:*.rpm=3D01;31:*.=
jar=3D01;31:*.rar=3D01;31:*.ace=3D01;31:*.zoo=3D01;31:*.cpio=3D01;31:*.7z=
=3D01;31:*.rz=3D01;31:*.jpg=3D01;35:*.jpeg=3D01;35:*.gif=3D01;35:*.bmp=3D01=
;35:*.pbm=3D01;35:*.pgm=3D01;35:*.ppm=3D01;35:*.tga=3D01;35:*.xbm=3D01;35:*=
.xpm=3D01;35:*.tif=3D01;35:*.tiff=3D01;35:*.png=3D01;35:*.svg=3D01;35:*.svg=
z=3D01;35:*.mng=3D01;35:*.pcx=3D01;35:*.mov=3D01;35:*.mpg=3D01;35:*.mpeg=3D=
01;35:*.m2v=3D01;35:*.mkv=3D01;35:*.ogm=3D01;35:*.mp4=3D01;35:*.m4v=3D01;35=
:*.mp4v=3D01;35:*.vob=3D01;35:*.qt=3D01;35:*.nuv=3D01;35:*.wmv=3D01;35:*.as=
f=3D01;35:*.rm=3D01;35:*.rmvb=3D01;35:*.flc=3D01;35:*.avi=3D01;35:*.fli=3D0=
1;35:*.flv=3D01;35:*.gl=3D01;35:*.dl=3D01;35:*.xcf=3D01;35:*.xwd=3D01;35:*.=
yuv=3D01;35:*.axv=3D01;35:*.anx=3D01;35:*.ogv=3D01;35:*.ogx=3D01;35:*.aac=
=3D00;36:*.au=3D00;36:*.flac=3D00;36:*.mid=3D00;36:*.midi=3D00;36:*.mka=3D0=
0;36:*.mp3=3D00;36:*.mpc=3D00;36:*.ogg=3D00;36:*.ra=3D00;36:*.wav=3D00;36:*=
.axa=3D00;36:*.oga=3D00;36:*.spx=3D00;36:*.xspf=3D00;36:&#39;</div>

<div>+ export AR=3Dar</div><div>+ AR=3Dar</div><div>+ export BUILD_CPPFLAGS=
=3D-isystem/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linu=
x/usr/include</div><div>+ BUILD_CPPFLAGS=3D-isystem/home/akshat/work/poky/p=
oky-green/build/tmp/sysroots/x86_64-linux/usr/include</div>

<div>+ export PATCH_GET=3D0</div><div>+ PATCH_GET=3D0</div><div>+ export &#=
39;CXXFLAGS=3D-isystem/home/akshat/work/poky/poky-green/build/tmp/sysroots/=
x86_64-linux/usr/include -O2&#39;</div><div>+ CXXFLAGS=3D&#39;-isystem/home=
/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-linux/usr/include -O=
2&#39;</div>

<div>+ export DISPLAY=3D:0.0</div><div>+ DISPLAY=3D:0.0</div><div>+ export =
BUILD_STRIP=3Dstrip</div><div>+ BUILD_STRIP=3Dstrip</div><div>+ export BUIL=
D_LD=3Dld</div><div>+ BUILD_LD=3Dld</div><div>+ export GDM_LANG=3Den_IN</di=
v><div>+ GDM_LANG=3Den_IN</div>

<div>+ export SSH_AGENT_PID=3D1676</div><div>+ SSH_AGENT_PID=3D1676</div><d=
iv>+ export SSH_AUTH_SOCK=3D/tmp/keyring-PwTIXU/ssh</div><div>+ SSH_AUTH_SO=
CK=3D/tmp/keyring-PwTIXU/ssh</div><div>+ export AS=3Das</div><div>+ AS=3Das=
</div><div>

+ export BUILD_RANLIB=3Dranlib</div><div>+ BUILD_RANLIB=3Dranlib</div><div>=
+ export sysconfdir=3D/home/akshat/work/poky/poky-green/build/tmp/sysroots/=
x86_64-linux/etc</div><div>+ sysconfdir=3D/home/akshat/work/poky/poky-green=
/build/tmp/sysroots/x86_64-linux/etc</div>

<div>+ export SPEECHD_PORT=3D7561</div><div>+ SPEECHD_PORT=3D7561</div><div=
>+ cd /home/akshat/work/poky/poky-green/build/tmp/work/x86_64-linux/glib-2.=
0-native-2.22.3-r1/glib-2.22.3</div><div>+ do_compile</div><div>+ base_do_c=
ompile</div>

<div>+ &#39;[&#39; -e Makefile -o -e makefile &#39;]&#39;</div><div>+ oe_ru=
nmake</div><div>+ &#39;[&#39; xmake =3D x &#39;]&#39;</div><div>+ oenote ma=
ke</div><div>+ echo NOTE: make</div><div>NOTE: make</div><div>+ make</div>

<div>make =A0all-recursive</div><div>make[1]: Entering directory `/home/aks=
hat/work/poky/poky-green/build/tmp/work/x86_64-linux/glib-2.0-native-2.22.3=
-r1/glib-2.22.3&#39;</div><div>Making all in .</div><div>make[2]: Entering =
directory `/home/akshat/work/poky/poky-green/build/tmp/work/x86_64-linux/gl=
ib-2.0-native-2.22.3-r1/glib-2.22.3&#39;</div>

<div>make[2]: Leaving directory `/home/akshat/work/poky/poky-green/build/tm=
p/work/x86_64-linux/glib-2.0-native-2.22.3-r1/glib-2.22.3&#39;</div><div>Ma=
king all in m4macros</div><div>make[2]: Entering directory `/home/akshat/wo=
rk/poky/poky-green/build/tmp/work/x86_64-linux/glib-2.0-native-2.22.3-r1/gl=
ib-2.22.3/m4macros&#39;</div>

<div>make[2]: Nothing to be done for `all&#39;.</div><div>make[2]: Leaving =
directory `/home/akshat/work/poky/poky-green/build/tmp/work/x86_64-linux/gl=
ib-2.0-native-2.22.3-r1/glib-2.22.3/m4macros&#39;</div><div>Making all in g=
lib</div>

<div>make[2]: Entering directory `/home/akshat/work/poky/poky-green/build/t=
mp/work/x86_64-linux/glib-2.0-native-2.22.3-r1/glib-2.22.3/glib&#39;</div><=
div>make =A0all-recursive</div><div>make[3]: Entering directory `/home/aksh=
at/work/poky/poky-green/build/tmp/work/x86_64-linux/glib-2.0-native-2.22.3-=
r1/glib-2.22.3/glib&#39;</div>

<div>Making all in libcharset</div><div>make[4]: Entering directory `/home/=
akshat/work/poky/poky-green/build/tmp/work/x86_64-linux/glib-2.0-native-2.2=
2.3-r1/glib-2.22.3/glib/libcharset&#39;</div><div>make[4]: Nothing to be do=
ne for `all&#39;.</div>

<div>make[4]: Leaving directory `/home/akshat/work/poky/poky-green/build/tm=
p/work/x86_64-linux/glib-2.0-native-2.22.3-r1/glib-2.22.3/glib/libcharset&#=
39;</div><div>Making all in pcre</div><div>make[4]: Entering directory `/ho=
me/akshat/work/poky/poky-green/build/tmp/work/x86_64-linux/glib-2.0-native-=
2.22.3-r1/glib-2.22.3/glib/pcre&#39;</div>

<div>make[4]: Nothing to be done for `all&#39;.</div><div>make[4]: Leaving =
directory `/home/akshat/work/poky/poky-green/build/tmp/work/x86_64-linux/gl=
ib-2.0-native-2.22.3-r1/glib-2.22.3/glib/pcre&#39;</div><div>Making all in =
update-pcre</div>

<div>make[4]: Entering directory `/home/akshat/work/poky/poky-green/build/t=
mp/work/x86_64-linux/glib-2.0-native-2.22.3-r1/glib-2.22.3/glib/update-pcre=
&#39;</div><div>make[4]: Nothing to be done for `all&#39;.</div><div>make[4=
]: Leaving directory `/home/akshat/work/poky/poky-green/build/tmp/work/x86_=
64-linux/glib-2.0-native-2.22.3-r1/glib-2.22.3/glib/update-pcre&#39;</div>

<div>Making all in .</div><div>make[4]: Entering directory `/home/akshat/wo=
rk/poky/poky-green/build/tmp/work/x86_64-linux/glib-2.0-native-2.22.3-r1/gl=
ib-2.22.3/glib&#39;</div><div>/bin/sh ../x86_64-linux-libtool =A0--tag=3DCC=
 =A0 --mode=3Dcompile gcc -DHAVE_CONFIG_H -I. -I.. =A0-I.. =A0-DG_LOG_DOMAI=
N=3D\&quot;GLib\&quot; -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLI=
B_COMPILATION -DPCRE_STATIC -isystem/home/akshat/work/poky/poky-green/build=
/tmp/sysroots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread=
 =A0-isystem/home/akshat/work/poky/poky-green/build/tmp/sysroots/x86_64-lin=
ux/usr/include -O2 -Wall -MT gconvert.lo -MD -MP -MF .deps/gconvert.Tpo -c =
-o gconvert.lo gconvert.c</div>

<div>x86_64-linux-libtool: compile: =A0gcc -DHAVE_CONFIG_H -I. -I.. -I.. -D=
G_LOG_DOMAIN=3D\&quot;GLib\&quot; -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRE=
CATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/akshat/work/poky/poky-=
green/build/tmp/sysroots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUD=
ES -pthread -isystem/home/akshat/work/poky/poky-green/build/tmp/sysroots/x8=
6_64-linux/usr/include -O2 -Wall -MT gconvert.lo -MD -MP -MF .deps/gconvert=
.Tpo -c gconvert.c =A0-fPIC -DPIC -o .libs/gconvert.o</div>

<div>gconvert.c:55:2: error: #error GNU libiconv not in use but included ic=
onv.h is from libiconv</div><div>make[4]: *** [gconvert.lo] Error 1</div><d=
iv>make[4]: Leaving directory `/home/akshat/work/poky/poky-green/build/tmp/=
work/x86_64-linux/glib-2.0-native-2.22.3-r1/glib-2.22.3/glib&#39;</div>

<div>make[3]: *** [all-recursive] Error 1</div><div>make[3]: Leaving direct=
ory `/home/akshat/work/poky/poky-green/build/tmp/work/x86_64-linux/glib-2.0=
-native-2.22.3-r1/glib-2.22.3/glib&#39;</div><div>make[2]: *** [all] Error =
2</div>

<div>make[2]: Leaving directory `/home/akshat/work/poky/poky-green/build/tm=
p/work/x86_64-linux/glib-2.0-native-2.22.3-r1/glib-2.22.3/glib&#39;</div><d=
iv>make[1]: *** [all-recursive] Error 1</div><div>make[1]: Leaving director=
y `/home/akshat/work/poky/poky-green/build/tmp/work/x86_64-linux/glib-2.0-n=
ative-2.22.3-r1/glib-2.22.3&#39;</div>

<div>make: *** [all] Error 2</div><div>+ die &#39;oe_runmake failed&#39;</d=
iv><div>+ oefatal &#39;oe_runmake failed&#39;</div><div>+ echo FATAL: &#39;=
oe_runmake failed&#39;</div><div>FATAL: oe_runmake failed</div><div>+ exit =
1</div>

</div><div><br></div>-- <br><font color=3D"#333333">Thanks and Regards,=A0<=
/font><div><font color=3D"#333333"><br></font></div><div><font color=3D"#33=
3333">Akshat Saha</font></div><br>
</div>

--0016364c7d71f454a2049b49229e--
