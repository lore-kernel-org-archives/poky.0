Return-Path: <cahoshing@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id D9E784C80A70
	for <poky@yoctoproject.org>; Tue, 12 Apr 2011 23:09:49 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gxk7 with SMTP id 7so145954gxk.35
	for <poky@yoctoproject.org>; Tue, 12 Apr 2011 21:09:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type;
	bh=//Ih89ND0VDB3Ep7Hn+B3S51ri16/3vVIZ5wy6F+gkk=;
	b=Ws0gdFUBvuuQbf+e0helThuPRjLOyRA+BpOtn29m2ylPZr6Bui99xC9SR/xuyaQxB0
	ukLg359xcck6texVRnOB0zugQRYlfqZdX1BTzQ9SYY9nKx0o5GQ2x5nBrtPYdbxzLcFI
	x5A3Ih6DzKdM6/7j9c26DF4rvj3kaYshtG3Gk=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type;
	b=bbJx9gomuOSx9E7hu3hkKe+CFSdnYdK6mogSrNY4bmsmXH/McFxH2WjsOFkzUgrafE
	3nuzebbSfIbLDWxP30nBofzr7N9kA3cppnz2AbQJJ0Sa7xWASMgrrm1yBXZgl63P1bCN
	NIaMKGOG4APmXTLPWFB/I+PDLDdit0sjRVgIk=
MIME-Version: 1.0
Received: by 10.236.111.19 with SMTP id v19mr9205454yhg.444.1302667789155;
	Tue, 12 Apr 2011 21:09:49 -0700 (PDT)
Received: by 10.147.172.18 with HTTP; Tue, 12 Apr 2011 21:09:49 -0700 (PDT)
In-Reply-To: <20110408140626.GE3180@jama.jama.net>
References: <AANLkTi=KYP7eC05UOX3as0A6xFZE31VQXPZL3ehrwzuh@mail.gmail.com>
	<4D96996C.7010601@intel.com> <20110402074649.GA27265@jama.jama.net>
	<4D96E6C5.5010800@intel.com>
	<BANLkTinY9yzN-uR1vK_em9hX2R_2is9E7A@mail.gmail.com>
	<BANLkTi=a3=uGk2Sd0TO1otDjj9NcJ0dY7g@mail.gmail.com>
	<20110408140626.GE3180@jama.jama.net>
Date: Wed, 13 Apr 2011 09:39:49 +0530
Message-ID: <BANLkTik_vEg+ex+xuSEec2+U3LZK8uV8ag@mail.gmail.com>
From: chinmaya hoshing <cahoshing@gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>, poky@yoctoproject.org
Subject: Re: Error while trying to pull xcb with X11
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
X-List-Received-Date: Wed, 13 Apr 2011 04:09:50 -0000
Content-Type: multipart/alternative; boundary=0023547c90dfd547e204a0c4faed

--0023547c90dfd547e204a0c4faed
Content-Type: text/plain; charset=ISO-8859-1

Hi,
I have modified the libX11.inc file with the correct syntax but still I am
getting the same error
Please can you help me out to find the solution

Error Log :--
checking for working mmap... (cached) yes
| checking for nl_langinfo... (cached) yes
| checking for X11... no
| configure: error: Package requirements (xproto >= 7.0.13 xextproto xtrans
xcb >= 1.1.92 kbproto inputproto) were not met:
|
| No package 'xcb' found
|
| Consider adjusting the PKG_CONFIG_PATH environment variable if you
| installed software in a non-standard prefix.
|
| Alternatively, you may set the environment variables X11_CFLAGS
| and X11_LIBS to avoid the need to call pkg-config.
| See the pkg-config man page for more details.
| FATAL: oe_runconf failed
| ERROR: Task failed: ('function do_configure failed',
'/home/laverne/laverne-4.0.1/build/tmp/work/core2-poky-linux/libx11-1_1.3.4-r0/temp/log.do_configure.11603')
NOTE: package libx11-1_1.3.4-r0: task do_configure: Failed
ERROR: Task 371 (/home/laverne/laverne-4.0.1/meta/recipes-graphics/xorg-lib/
libx11_1.3.4.bb, do_configure) failed with 1
Waiting for 3 active tasks to finish:
1: ncurses-5.4-r14 do_package (pid 20432)
2: glib-2.0-2.24.1-r0 do_compile (pid 11588)
3: acl-2.2.49-r0 do_configure (pid 17796)
Waiting for 2 active tasks to finish:
1: ncurses-5.4-r14 do_package (pid 20432)
2: acl-2.2.49-r0 do_configure (pid 17796)
NOTE: package glib-2.0-2.24.1-r0: task do_compile: Succeeded
Waiting for 1 active tasks to finish:
1: ncurses-5.4-r14 do_package (pid 20432)
NOTE: package acl-2.2.49-r0: task do_configure: Succeeded
NOTE: Multiple libraries (libmenu.so.5, libpanel.so.5, libncurses.so.5,
libform.so.5) found and LEAD_SONAME not defined
NOTE: DO PACKAGE QA
NOTE: Checking Package: ncurses-tools
NOTE: Checking Package: ncurses-dbg
NOTE: Checking Package: ncurses
NOTE: Checking Package: ncurses-doc
NOTE: Checking Package: ncurses-dev
NOTE: Checking Package: ncurses-locale
NOTE: Checking Package: ncurses-terminfo
NOTE: DONE with PACKAGE QA
NOTE: package ncurses-5.4-r14: task do_package: Succeeded
ERROR: '/home/laverne/laverne-4.0.1/meta/recipes-graphics/xorg-lib/
libx11_1.3.4.bb' failed

Chinmaya

On Fri, Apr 8, 2011 at 7:36 PM, Martin Jansa <martin.jansa@gmail.com> wrote:

> On Fri, Apr 08, 2011 at 07:16:52PM +0530, Akshat Saha wrote:
> > Hi,
> >
> > I am also facing the same error, I made the following changes in
> libx11.inc
> > as well as libx11_1.3.4.bb
> >
> > - EXTRA_OECONF += "--with-keysymdef=${STAGING_INCDIR}/X11/keysymdef.h"
> > + EXTRA_OECONF += "*--with-xcb *
> > --with-keysymdef=${STAGING_INCDIR}/X11/keysymdef.h"
> > *+ EXTRA_OECONF_native += "--without-xcb"
> > + EXTRA_OECONF_nativesdk += "--without-xcb*
>
> that's wrong syntax, right is:
> EXTRA_OECONF_virtclass-native
> EXTRA_OECONF_virtclass-nativesdk
> see
> http://git.openembedded.net/cgit.cgi/openembedded/tree/recipes/xorg-lib/libx11.inc
>
> but as I said before this is solution only for old libx11, better
> to add native to libxcb like here:
>
> http://git.openembedded.net/cgit.cgi/openembedded-core-contrib/commit/?h=shr&id=5862cadc7a68c7254357f54b2ca6a8c8608b22c8
>
> then you can also use newer libx11-1.4.3 from meta-shr layer
> http://git.shr-project.org/git/?p=meta-shr.git;a=summary
>
> Cheers,
>
> > *
> > *
> > But the error is still there, from the error log i observer that while
> > compiling for libx11-native instead of using *"EXTRA_OECONF_native"* as
> > expected, it is taking arguments from *"EXTRA_OECONF"* only.
> > The error log is as follows:
> >
> >
> > NOTE: Executing autoreconf --verbose --install --force
> --exclude=autopoint
> > -I
> >
> /home/sct/laverne-4.0.1/build/tmp/work/i686-linux/libx11-native-1_1.3.4-r0/libX11-1.3.4/m4/
> >
> -I/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/aclocal-1.11
> > -I
> /home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/aclocal
> > autoreconf: Entering directory `.'
> > autoreconf: configure.ac: not using Gettext
> > autoreconf: running: aclocal -I
> >
> /home/sct/laverne-4.0.1/build/tmp/work/i686-linux/libx11-native-1_1.3.4-r0/libX11-1.3.4/m4/
> > -I
> >
> /home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/aclocal-1.11
> > -I
> /home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/aclocal
> > -I
> >
> /home/sct/laverne-4.0.1/build/tmp/work/i686-linux/libx11-native-1_1.3.4-r0/libX11-1.3.4/m4/
> > -I
> >
> /home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/aclocal-1.11
> > -I
> /home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/aclocal
> > --force -I m4
> > autoreconf: configure.ac: tracing
> > autoreconf: running: libtoolize --copy --force
> > libtoolize: putting auxiliary files in `.'.
> > libtoolize: copying file `./ltmain.sh'
> > libtoolize: putting macros in AC_CONFIG_MACRO_DIR, `m4'.
> > libtoolize: copying file `m4/libtool.m4'
> > libtoolize: copying file `m4/ltoptions.m4'
> > libtoolize: copying file `m4/ltsugar.m4'
> > libtoolize: copying file `m4/ltversion.m4'
> > libtoolize: copying file `m4/lt~obsolete.m4'
> > autoreconf: running:
> > /home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/bin/autoconf
> >
> --include=/home/sct/laverne-4.0.1/build/tmp/work/i686-linux/libx11-native-1_1.3.4-r0/libX11-1.3.4/m4/
> >
> --include=/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/aclocal-1.11
> >
> --include=/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/aclocal
> > --force --warnings=cross
> > autoreconf: running:
> > /home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/bin/autoheader
> >
> --include=/home/sct/laverne-4.0.1/build/tmp/work/i686-linux/libx11-native-1_1.3.4-r0/libX11-1.3.4/m4/
> >
> --include=/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/aclocal-1.11
> >
> --include=/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/aclocal
> > --force --warnings=cross
> > autoreconf: running: automake --foreign --add-missing --copy
> --force-missing
> > --warnings=cross
> > automake: unknown warning category `cross'
> > autoreconf: running: gnu-configize
> > autoreconf: Leaving directory `.'
> > NOTE: Running
> >
> /home/sct/laverne-4.0.1/build/tmp/work/i686-linux/libx11-native-1_1.3.4-r0/libX11-1.3.4/configure
> >                  --build=i686-linux           --host=i686-linux
> > --target=i686-linux
> > --prefix=/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr
> > --exec_prefix=/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr
> >
> --bindir=/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/bin
> >
> > --sbindir=/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/sbin
> >
> >
> --libexecdir=/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/libexec
> >
> > --datadir=/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share
> >
> > --sysconfdir=/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/etc
> >
> >
> --sharedstatedir=/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/com
> >
> > --localstatedir=/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/var
> >
> > --libdir=/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/lib
> >
> >
> --includedir=/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/include
> >
> >
> --oldincludedir=/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/include
> >
> >
> --infodir=/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/info
> >
> >
> --mandir=/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/man
> >             --enable-malloc0returnsnull
> >
> --with-keysymdef=/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/include/X11/keysymdef.h
> > *--with-xcb*             ...
> > checking build system type... i686-pc-linux-gnu
> > checking host system type... i686-pc-linux-gnu
> > :
> > :
> > :
> > checking minix/config.h usability... no
> > checking minix/config.h presence... no
> > checking for minix/config.h... no
> > checking whether it is safe to define __EXTENSIONS__... yes
> > checking for gcc option to accept ISO C99... -std=gnu99
> > checking for i686-linux-pkg-config... no
> > checking for pkg-config...
> > /home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/bin/pkg-config
> > checking pkg-config is at least version 0.9.0... yes
> > checking for a sed that does not truncate output... /bin/sed
> > checking whether to build functional specifications... yes
> > checking for groff... /usr/bin/groff
> > checking for /usr/bin/groff -ms macros... no
> > checking for /usr/bin/groff -mm macros... no
> > checking for gs... /usr/bin/gs
> > checking for pnmtopng... no
> > checking for psselect... no
> > configure: WARNING: grohtml dependencies not found - HTML Documentation
> > skipped. Refer to grohtml man pages
> > :
> > :
> > *checking whether to use XCB... (cached) yes*
> > checking for i686-linux-pkg-config... (cached)
> > /home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/bin/pkg-config
> > checking pkg-config is at least version 0.9.0... yes
> > :
> > :
> > checking if loadable i18n module support should be enabled... no
> > checking if loadable Xcursor library support should be enabled... yes
> > checking for ANSI C header files... (cached) yes
> > checking sys/select.h usability... yes
> > checking sys/select.h presence... yes
> > checking for sys/select.h... yes
> > checking for strtol... yes
> > checking for issetugid... no
> > checking for getresuid... yes
> > checking for shmat... yes
> > checking for launchd... no
> > checking for getpwuid_r in -lc... yes
> > checking for pthread_self in -lc... yes
> > checking for poll... yes
> >
> /home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/include/X11/keysymdef.h
> > checking if XLOCALEDIR support should be enabled... yes
> > checking for BIGFONT... yes
> > checking for stdlib.h... (cached) yes
> > checking for unistd.h... (cached) yes
> > checking for sys/param.h... yes
> > checking for getpagesize... yes
> > checking for working mmap... yes
> > checking for nl_langinfo... yes
> > *checking for X11... no*
> > *configure: error: Package requirements (xproto >= 7.0.13 xextproto
> xtrans
> > xcb >= 1.1.92 kbproto inputproto) were not met:
> >
> > No package 'xcb' found
> > *
> > Consider adjusting the PKG_CONFIG_PATH environment variable if you
> > installed software in a non-standard prefix.
> >
> > Alternatively, you may set the environment variables X11_CFLAGS
> > and X11_LIBS to avoid the need to call pkg-config.
> > See the pkg-config man page for more details.
> > FATAL: oe_runconf failed
> > ERROR: Task failed: ('function do_configure failed',
> >
> '/home/sct/laverne-4.0.1/build/tmp/work/i686-linux/libx11-native-1_1.3.4-r0/temp/log.do_configure.24052')
> >
> > Can any one suggest, what am i doing wrong or how can this error be
> solved.
> >
> > On Tue, Apr 5, 2011 at 2:33 PM, chinmaya hoshing <cahoshing@gmail.com
> >wrote:
> >
> > > Hi,
> > >
> > > Thanks for the reply Yu Ke.I have made changes as per said by you,but
> still
> > > getting the same error
> > > Regarding the Error no xcb found in libx11 library
> > > Following is the my libx11 bb file : --
> > >
> > > +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
> > > require libx11.inc
> > >
> > > LICENSE = "MIT & MIT-style & BSD"
> > > LIC_FILES_CHKSUM =
> "file://COPYING;md5=bf75bfe4d05068311b5e6862d4b5f2c5"
> > >
> > > PE = "1"
> > > PR = "r0"
> > >
> > > SRC_URI += "file://x11_disable_makekeys.patch \
> > >             file://nodolt.patch \
> > >             file://include_fix.patch"
> > >
> > > DEPENDS += "bigreqsproto xproto xextproto xtrans libxau xcmiscproto \
> > >             libxdmcp xf86bigfontproto kbproto inputproto xproto-native
> > > gettext"
> > >
> > > EXTRA_OECONF += "--with-xcb"
> > > EXTRA_OECONF_native += "--without-xcb"
> > >
> > > BBCLASSEXTEND = "native nativesdk"
> > >
> > >
> +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
> > >
> > > But stiil getting the same error :--
> > >
> > > | checking for sys/param.h... yes
> > > | checking for getpagesize... yes
> > > | checking for working mmap... yes
> > > | checking for nl_langinfo... yes
> > > | checking for X11... no
> > > | configure: error: Package requirements (xproto >= 7.0.13 xextproto
> xtrans
> > > xcb >= 1.1.92 kbproto inputproto) were not met:
> > > |
> > > | No package 'xcb' found
> > > |
> > > | Consider adjusting the PKG_CONFIG_PATH environment variable if you
> > > | installed software in a non-standard prefix.
> > > |
> > > | Alternatively, you may set the environment variables X11_CFLAGS
> > > | and X11_LIBS to avoid the need to call pkg-config.
> > > | See the pkg-config man page for more details.
> > > | FATAL: oe_runconf failed
> > > | ERROR: Task failed: ('function do_configure failed',
> > >
> '/home/sct/laverne_git/laverne-4.0.1/build/tmp/work/x86_64-linux/libx11-native-1_1.3.4-r0/temp/log.do_configure.16900')
> > > NOTE: package libx11-native-1_1.3.4-r0: task do_configure: Failed
> > > ERROR: Task 20
> > >
> (virtual:native:/home/sct/laverne_git/laverne-4.0.1/meta/recipes-graphics/xorg-lib/
> > > libx11_1.3.4.bb, do_configure) failed with 1
> > > ERROR:
> > >
> 'virtual:native:/home/sct/laverne_git/laverne-4.0.1/meta/recipes-graphics/xorg-lib/
> > > libx11_1.3.4.bb' failed
> > >
> > > Chinmaya
> > >
> > > On Sat, Apr 2, 2011 at 2:35 PM, Yu Ke <ke.yu@intel.com> wrote:
> > >
> > >> on 2011-4-2 15:46, Martin Jansa wrote:
> > >>
> > >>> On Sat, Apr 02, 2011 at 11:35:08AM +0800, Yu Ke wrote:
> > >>>
> > >>>> on 2011-4-1 17:43, chinmaya hoshing wrote:
> > >>>>
> > >>>>> Hi,
> > >>>>>
> > >>>>> I am trying to get X11 with libxcb file so accordingly I changed in
> the
> > >>>>> bb file of libx11,also I have included libxcb and xcb-utils as
> runtime
> > >>>>> dependencies
> > >>>>>
> > >>>>> Initially it was in libx11 bb file :--
> > >>>>> EXTRA_OECONF += "--without-xcb"
> > >>>>> I changed it to
> > >>>>> EXTRA_OECONF += "--with-xcb"
> > >>>>>
> > >>>>> Following is the error I get :-
> > >>>>> checking for unistd.h... (cached) yes
> > >>>>> | checking for sys/param.h... yes
> > >>>>> | checking for getpagesize... yes
> > >>>>> | checking for working mmap... yes
> > >>>>> | checking for nl_langinfo... yes
> > >>>>> | checking for X11... no
> > >>>>> | configure: error: Package requirements (xproto>= 7.0.13 xextproto
> > >>>>> xtrans xcb>= 1.1.92 kbproto inputproto) were not met:
> > >>>>> |
> > >>>>> | No package 'xcb' found
> > >>>>> |
> > >>>>> | Consider adjusting the PKG_CONFIG_PATH environment variable if
> you
> > >>>>> | installed software in a non-standard prefix.
> > >>>>> |
> > >>>>> | Alternatively, you may set the environment variables X11_CFLAGS
> > >>>>> | and X11_LIBS to avoid the need to call pkg-config.
> > >>>>> | See the pkg-config man page for more details.
> > >>>>> | FATAL: oe_runconf failed
> > >>>>> | ERROR: Task failed: ('function do_configure failed',
> > >>>>>
> > >>>>>
> '/home/laverne-4.0.1/build/tmp/work/x86_64-linux/libx11-native-1_1.3.4-r0/temp/log.do_configure.13755')
> > >>>>> NOTE: package libx11-native-1_1.3.4-r0: task do_configure: Failed
> > >>>>> ERROR: Task 3573
> > >>>>> (virtual:native:/home/laverne-4.0.1/meta/recipes-graphics/xorg-lib/
> > >>>>> libx11_1.3.4.bb
> > >>>>> <http://libx11_1.3.4.bb>, do_configure) failed with 1
> > >>>>> ERROR:
> > >>>>> 'virtual:native:/home/laverne-4.0.1/meta/recipes-graphics/xorg-lib/
> > >>>>> libx11_1.3.4.bb
> > >>>>> <http://libx11_1.3.4.bb>' failed
> > >>>>>
> > >>>>> I have libxcb_1.6 version ,also xproto is libxproto_7.0.17
> > >>>>>
> > >>>>> Please can  you help me to find the solution for it.
> > >>>>>
> > >>>>> Chinmaya
> > >>>>>
> > >>>>>
> > >>>>>
> > >>>> I see it is libx11-native do_configure failure, and the xcb-native
> is
> > >>>> missing. that make sense because xcb recipes does not have
> BBCLASSEXTEND
> > >>>> = "native nativesdk", thus xcb is not built for native.
> > >>>>
> > >>>> I have tried to add BBCLASSEXTEND = "native" in xcb recipe, it turn
> out
> > >>>> requiring more dependent recipes to be built for native, which is a
> bit
> > >>>> way too far and undesirable.
> > >>>>
> > >>>> so let's try another way, since you only care about the runtime
> libx11
> > >>>> with xcb support, how about the following patches, with which only
> > >>>> native disable xcb, and the runtime libx11 will have xcb support.
> > >>>>
> > >>>
> > >>> Hi,
> > >>>
> > >>> for libx11-1.4.0 and newer --without-xcb is not an option anymore, so
> > >>> better to fix it with native xcb sooner than later, for details see
> > >>>
> > >>> d28cdb2d2e6c910afbaa14b17bd2c0003052df7d in openembedded/master
> > >>> and the rest of xorg/xcb recipes in openembedded :)
> > >>>
> > >>> Cheers,
> > >>>
> > >>>
> > >> In this case. your are right, native xcb should also be added. Will
> > >> upgrade it soon. Thanks for the info.
> > >>
> > >> Regards
> > >> Ke
> > >> _______________________________________________
> > >> poky mailing list
> > >> poky@yoctoproject.org
> > >> https://lists.yoctoproject.org/listinfo/poky
> > >>
> > >
> > >
> > > _______________________________________________
> > > poky mailing list
> > > poky@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/poky
> > >
> > >
> >
> >
> > --
> > Akshat
>
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
>
>
> --
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
>

--0023547c90dfd547e204a0c4faed
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div>I have modified the libX11.inc file wit=
h the correct syntax but still I am getting the same error</div><div>Please=
 can you help me out to find the solution</div><div><br></div><div>Error Lo=
g :--</div>
<div>checking for working mmap... (cached) yes</div><div>| checking for nl_=
langinfo... (cached) yes</div><div>| checking for X11... no</div><div>| con=
figure: error: Package requirements (xproto &gt;=3D 7.0.13 xextproto xtrans=
 xcb &gt;=3D 1.1.92 kbproto inputproto) were not met:</div>
<div>|=A0</div><div>| No package &#39;xcb&#39; found</div><div>|=A0</div><d=
iv>| Consider adjusting the PKG_CONFIG_PATH environment variable if you</di=
v><div>| installed software in a non-standard prefix.</div><div>|=A0</div><=
div>
| Alternatively, you may set the environment variables X11_CFLAGS</div><div=
>| and X11_LIBS to avoid the need to call pkg-config.</div><div>| See the p=
kg-config man page for more details.</div><div>| FATAL: oe_runconf failed</=
div>
<div>| ERROR: Task failed: (&#39;function do_configure failed&#39;, &#39;/h=
ome/laverne/laverne-4.0.1/build/tmp/work/core2-poky-linux/libx11-1_1.3.4-r0=
/temp/log.do_configure.11603&#39;)</div><div>NOTE: package libx11-1_1.3.4-r=
0: task do_configure: Failed</div>
<div>ERROR: Task 371 (/home/laverne/laverne-4.0.1/meta/recipes-graphics/xor=
g-lib/<a href=3D"http://libx11_1.3.4.bb">libx11_1.3.4.bb</a>, do_configure)=
 failed with 1</div><div>Waiting for 3 active tasks to finish:</div><div>
1: ncurses-5.4-r14 do_package (pid 20432)</div><div>2: glib-2.0-2.24.1-r0 d=
o_compile (pid 11588)</div><div>3: acl-2.2.49-r0 do_configure (pid 17796)</=
div><div>Waiting for 2 active tasks to finish:</div><div>1: ncurses-5.4-r14=
 do_package (pid 20432)</div>
<div>2: acl-2.2.49-r0 do_configure (pid 17796)</div><div>NOTE: package glib=
-2.0-2.24.1-r0: task do_compile: Succeeded</div><div>Waiting for 1 active t=
asks to finish:</div><div>1: ncurses-5.4-r14 do_package (pid 20432)</div>
<div>NOTE: package acl-2.2.49-r0: task do_configure: Succeeded</div><div>NO=
TE: Multiple libraries (libmenu.so.5, libpanel.so.5, libncurses.so.5, libfo=
rm.so.5) found and LEAD_SONAME not defined</div><div>NOTE: DO PACKAGE QA</d=
iv>
<div>NOTE: Checking Package: ncurses-tools</div><div>NOTE: Checking Package=
: ncurses-dbg</div><div>NOTE: Checking Package: ncurses</div><div>NOTE: Che=
cking Package: ncurses-doc</div><div>NOTE: Checking Package: ncurses-dev</d=
iv>
<div>NOTE: Checking Package: ncurses-locale</div><div>NOTE: Checking Packag=
e: ncurses-terminfo</div><div>NOTE: DONE with PACKAGE QA</div><div>NOTE: pa=
ckage ncurses-5.4-r14: task do_package: Succeeded</div><div>ERROR: &#39;/ho=
me/laverne/laverne-4.0.1/meta/recipes-graphics/xorg-lib/<a href=3D"http://l=
ibx11_1.3.4.bb">libx11_1.3.4.bb</a>&#39; failed</div>
<div><br></div><div>Chinmaya</div><br><div class=3D"gmail_quote">On Fri, Ap=
r 8, 2011 at 7:36 PM, Martin Jansa <span dir=3D"ltr">&lt;<a href=3D"mailto:=
martin.jansa@gmail.com">martin.jansa@gmail.com</a>&gt;</span> wrote:<br><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex;">
<div class=3D"im">On Fri, Apr 08, 2011 at 07:16:52PM +0530, Akshat Saha wro=
te:<br>
&gt; Hi,<br>
&gt;<br>
&gt; I am also facing the same error, I made the following changes in libx1=
1.inc<br>
&gt; as well as <a href=3D"http://libx11_1.3.4.bb" target=3D"_blank">libx11=
_1.3.4.bb</a><br>
&gt;<br>
&gt; - EXTRA_OECONF +=3D &quot;--with-keysymdef=3D${STAGING_INCDIR}/X11/key=
symdef.h&quot;<br>
&gt; + EXTRA_OECONF +=3D &quot;*--with-xcb *<br>
&gt; --with-keysymdef=3D${STAGING_INCDIR}/X11/keysymdef.h&quot;<br>
&gt; *+ EXTRA_OECONF_native +=3D &quot;--without-xcb&quot;<br>
</div>&gt; + EXTRA_OECONF_nativesdk +=3D &quot;--without-xcb*<br>
<br>
that&#39;s wrong syntax, right is:<br>
EXTRA_OECONF_virtclass-native<br>
EXTRA_OECONF_virtclass-nativesdk<br>
see <a href=3D"http://git.openembedded.net/cgit.cgi/openembedded/tree/recip=
es/xorg-lib/libx11.inc" target=3D"_blank">http://git.openembedded.net/cgit.=
cgi/openembedded/tree/recipes/xorg-lib/libx11.inc</a><br>
<br>
but as I said before this is solution only for old libx11, better<br>
to add native to libxcb like here:<br>
<a href=3D"http://git.openembedded.net/cgit.cgi/openembedded-core-contrib/c=
ommit/?h=3Dshr&amp;id=3D5862cadc7a68c7254357f54b2ca6a8c8608b22c8" target=3D=
"_blank">http://git.openembedded.net/cgit.cgi/openembedded-core-contrib/com=
mit/?h=3Dshr&amp;id=3D5862cadc7a68c7254357f54b2ca6a8c8608b22c8</a><br>

<br>
then you can also use newer libx11-1.4.3 from meta-shr layer<br>
<a href=3D"http://git.shr-project.org/git/?p=3Dmeta-shr.git;a=3Dsummary" ta=
rget=3D"_blank">http://git.shr-project.org/git/?p=3Dmeta-shr.git;a=3Dsummar=
y</a><br>
<br>
Cheers,<br>
<br>
&gt; *<br>
<div><div></div><div class=3D"h5">&gt; *<br>
&gt; But the error is still there, from the error log i observer that while=
<br>
&gt; compiling for libx11-native instead of using *&quot;EXTRA_OECONF_nativ=
e&quot;* as<br>
&gt; expected, it is taking arguments from *&quot;EXTRA_OECONF&quot;* only.=
<br>
&gt; The error log is as follows:<br>
&gt;<br>
&gt;<br>
&gt; NOTE: Executing autoreconf --verbose --install --force --exclude=3Daut=
opoint<br>
&gt; -I<br>
&gt; /home/sct/laverne-4.0.1/build/tmp/work/i686-linux/libx11-native-1_1.3.=
4-r0/libX11-1.3.4/m4/<br>
&gt; -I/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/aclo=
cal-1.11<br>
&gt; -I /home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/acl=
ocal<br>
&gt; autoreconf: Entering directory `.&#39;<br>
&gt; autoreconf: <a href=3D"http://configure.ac" target=3D"_blank">configur=
e.ac</a>: not using Gettext<br>
&gt; autoreconf: running: aclocal -I<br>
&gt; /home/sct/laverne-4.0.1/build/tmp/work/i686-linux/libx11-native-1_1.3.=
4-r0/libX11-1.3.4/m4/<br>
&gt; -I<br>
&gt; /home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/acloca=
l-1.11<br>
&gt; -I /home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/acl=
ocal<br>
&gt; -I<br>
&gt; /home/sct/laverne-4.0.1/build/tmp/work/i686-linux/libx11-native-1_1.3.=
4-r0/libX11-1.3.4/m4/<br>
&gt; -I<br>
&gt; /home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/acloca=
l-1.11<br>
&gt; -I /home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/acl=
ocal<br>
&gt; --force -I m4<br>
&gt; autoreconf: <a href=3D"http://configure.ac" target=3D"_blank">configur=
e.ac</a>: tracing<br>
&gt; autoreconf: running: libtoolize --copy --force<br>
&gt; libtoolize: putting auxiliary files in `.&#39;.<br>
&gt; libtoolize: copying file `./ltmain.sh&#39;<br>
&gt; libtoolize: putting macros in AC_CONFIG_MACRO_DIR, `m4&#39;.<br>
&gt; libtoolize: copying file `m4/libtool.m4&#39;<br>
&gt; libtoolize: copying file `m4/ltoptions.m4&#39;<br>
&gt; libtoolize: copying file `m4/ltsugar.m4&#39;<br>
&gt; libtoolize: copying file `m4/ltversion.m4&#39;<br>
&gt; libtoolize: copying file `m4/lt~obsolete.m4&#39;<br>
&gt; autoreconf: running:<br>
&gt; /home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/bin/autoconf=
<br>
&gt; --include=3D/home/sct/laverne-4.0.1/build/tmp/work/i686-linux/libx11-n=
ative-1_1.3.4-r0/libX11-1.3.4/m4/<br>
&gt; --include=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/=
share/aclocal-1.11<br>
&gt; --include=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/=
share/aclocal<br>
&gt; --force --warnings=3Dcross<br>
&gt; autoreconf: running:<br>
&gt; /home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/bin/autohead=
er<br>
&gt; --include=3D/home/sct/laverne-4.0.1/build/tmp/work/i686-linux/libx11-n=
ative-1_1.3.4-r0/libX11-1.3.4/m4/<br>
&gt; --include=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/=
share/aclocal-1.11<br>
&gt; --include=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/=
share/aclocal<br>
&gt; --force --warnings=3Dcross<br>
&gt; autoreconf: running: automake --foreign --add-missing --copy --force-m=
issing<br>
&gt; --warnings=3Dcross<br>
&gt; automake: unknown warning category `cross&#39;<br>
&gt; autoreconf: running: gnu-configize<br>
&gt; autoreconf: Leaving directory `.&#39;<br>
&gt; NOTE: Running<br>
&gt; /home/sct/laverne-4.0.1/build/tmp/work/i686-linux/libx11-native-1_1.3.=
4-r0/libX11-1.3.4/configure<br>
&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0--build=3Di686-linux =A0 =A0 =A0 =
=A0 =A0 --host=3Di686-linux<br>
&gt; --target=3Di686-linux<br>
&gt; --prefix=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr<b=
r>
&gt; --exec_prefix=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/=
usr<br>
&gt; =A0 =A0 =A0 --bindir=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686=
-linux/usr/bin<br>
&gt;<br>
&gt; --sbindir=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/=
sbin<br>
&gt;<br>
&gt; --libexecdir=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/u=
sr/libexec<br>
&gt;<br>
&gt; --datadir=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/=
share<br>
&gt;<br>
&gt; --sysconfdir=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/e=
tc<br>
&gt;<br>
&gt; --sharedstatedir=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-lin=
ux/com<br>
&gt;<br>
&gt; --localstatedir=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linu=
x/var<br>
&gt;<br>
&gt; --libdir=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/l=
ib<br>
&gt;<br>
&gt; --includedir=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/u=
sr/include<br>
&gt;<br>
&gt; --oldincludedir=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linu=
x/usr/include<br>
&gt;<br>
&gt; --infodir=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/=
share/info<br>
&gt;<br>
&gt; --mandir=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/s=
hare/man<br>
&gt; =A0 =A0 =A0 =A0 =A0 =A0 --enable-malloc0returnsnull<br>
&gt; --with-keysymdef=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-lin=
ux/usr/include/X11/keysymdef.h<br>
&gt; *--with-xcb* =A0 =A0 =A0 =A0 =A0 =A0 ...<br>
&gt; checking build system type... i686-pc-linux-gnu<br>
&gt; checking host system type... i686-pc-linux-gnu<br>
&gt; :<br>
&gt; :<br>
&gt; :<br>
&gt; checking minix/config.h usability... no<br>
&gt; checking minix/config.h presence... no<br>
&gt; checking for minix/config.h... no<br>
&gt; checking whether it is safe to define __EXTENSIONS__... yes<br>
&gt; checking for gcc option to accept ISO C99... -std=3Dgnu99<br>
&gt; checking for i686-linux-pkg-config... no<br>
&gt; checking for pkg-config...<br>
&gt; /home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/bin/pkg-conf=
ig<br>
&gt; checking pkg-config is at least version 0.9.0... yes<br>
&gt; checking for a sed that does not truncate output... /bin/sed<br>
&gt; checking whether to build functional specifications... yes<br>
&gt; checking for groff... /usr/bin/groff<br>
&gt; checking for /usr/bin/groff -ms macros... no<br>
&gt; checking for /usr/bin/groff -mm macros... no<br>
&gt; checking for gs... /usr/bin/gs<br>
&gt; checking for pnmtopng... no<br>
&gt; checking for psselect... no<br>
&gt; configure: WARNING: grohtml dependencies not found - HTML Documentatio=
n<br>
&gt; skipped. Refer to grohtml man pages<br>
&gt; :<br>
&gt; :<br>
&gt; *checking whether to use XCB... (cached) yes*<br>
&gt; checking for i686-linux-pkg-config... (cached)<br>
&gt; /home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/bin/pkg-conf=
ig<br>
&gt; checking pkg-config is at least version 0.9.0... yes<br>
&gt; :<br>
&gt; :<br>
&gt; checking if loadable i18n module support should be enabled... no<br>
&gt; checking if loadable Xcursor library support should be enabled... yes<=
br>
&gt; checking for ANSI C header files... (cached) yes<br>
&gt; checking sys/select.h usability... yes<br>
&gt; checking sys/select.h presence... yes<br>
&gt; checking for sys/select.h... yes<br>
&gt; checking for strtol... yes<br>
&gt; checking for issetugid... no<br>
&gt; checking for getresuid... yes<br>
&gt; checking for shmat... yes<br>
&gt; checking for launchd... no<br>
&gt; checking for getpwuid_r in -lc... yes<br>
&gt; checking for pthread_self in -lc... yes<br>
&gt; checking for poll... yes<br>
&gt; /home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/include/X11/=
keysymdef.h<br>
&gt; checking if XLOCALEDIR support should be enabled... yes<br>
&gt; checking for BIGFONT... yes<br>
&gt; checking for stdlib.h... (cached) yes<br>
&gt; checking for unistd.h... (cached) yes<br>
&gt; checking for sys/param.h... yes<br>
&gt; checking for getpagesize... yes<br>
&gt; checking for working mmap... yes<br>
&gt; checking for nl_langinfo... yes<br>
&gt; *checking for X11... no*<br>
&gt; *configure: error: Package requirements (xproto &gt;=3D 7.0.13 xextpro=
to xtrans<br>
&gt; xcb &gt;=3D 1.1.92 kbproto inputproto) were not met:<br>
&gt;<br>
&gt; No package &#39;xcb&#39; found<br>
&gt; *<br>
&gt; Consider adjusting the PKG_CONFIG_PATH environment variable if you<br>
&gt; installed software in a non-standard prefix.<br>
&gt;<br>
&gt; Alternatively, you may set the environment variables X11_CFLAGS<br>
&gt; and X11_LIBS to avoid the need to call pkg-config.<br>
&gt; See the pkg-config man page for more details.<br>
&gt; FATAL: oe_runconf failed<br>
&gt; ERROR: Task failed: (&#39;function do_configure failed&#39;,<br>
&gt; &#39;/home/sct/laverne-4.0.1/build/tmp/work/i686-linux/libx11-native-1=
_1.3.4-r0/temp/log.do_configure.24052&#39;)<br>
&gt;<br>
&gt; Can any one suggest, what am i doing wrong or how can this error be so=
lved.<br>
&gt;<br>
&gt; On Tue, Apr 5, 2011 at 2:33 PM, chinmaya hoshing &lt;<a href=3D"mailto=
:cahoshing@gmail.com">cahoshing@gmail.com</a>&gt;wrote:<br>
&gt;<br>
&gt; &gt; Hi,<br>
&gt; &gt;<br>
&gt; &gt; Thanks for the reply Yu Ke.I have made changes as per said by you=
,but still<br>
&gt; &gt; getting the same error<br>
&gt; &gt; Regarding the Error no xcb found in libx11 library<br>
&gt; &gt; Following is the my libx11 bb file : --<br>
&gt; &gt;<br>
&gt; &gt; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++=
++++<br>
&gt; &gt; require libx11.inc<br>
&gt; &gt;<br>
&gt; &gt; LICENSE =3D &quot;MIT &amp; MIT-style &amp; BSD&quot;<br>
&gt; &gt; LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Dbf75bfe4d05068311=
b5e6862d4b5f2c5&quot;<br>
&gt; &gt;<br>
&gt; &gt; PE =3D &quot;1&quot;<br>
&gt; &gt; PR =3D &quot;r0&quot;<br>
&gt; &gt;<br>
&gt; &gt; SRC_URI +=3D &quot;file://x11_disable_makekeys.patch \<br>
&gt; &gt; =A0 =A0 =A0 =A0 =A0 =A0 file://nodolt.patch \<br>
&gt; &gt; =A0 =A0 =A0 =A0 =A0 =A0 file://include_fix.patch&quot;<br>
&gt; &gt;<br>
&gt; &gt; DEPENDS +=3D &quot;bigreqsproto xproto xextproto xtrans libxau xc=
miscproto \<br>
&gt; &gt; =A0 =A0 =A0 =A0 =A0 =A0 libxdmcp xf86bigfontproto kbproto inputpr=
oto xproto-native<br>
&gt; &gt; gettext&quot;<br>
&gt; &gt;<br>
&gt; &gt; EXTRA_OECONF +=3D &quot;--with-xcb&quot;<br>
&gt; &gt; EXTRA_OECONF_native +=3D &quot;--without-xcb&quot;<br>
&gt; &gt;<br>
&gt; &gt; BBCLASSEXTEND =3D &quot;native nativesdk&quot;<br>
&gt; &gt;<br>
&gt; &gt; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++=
++++++++<br>
&gt; &gt;<br>
&gt; &gt; But stiil getting the same error :--<br>
&gt; &gt;<br>
&gt; &gt; | checking for sys/param.h... yes<br>
&gt; &gt; | checking for getpagesize... yes<br>
&gt; &gt; | checking for working mmap... yes<br>
&gt; &gt; | checking for nl_langinfo... yes<br>
&gt; &gt; | checking for X11... no<br>
&gt; &gt; | configure: error: Package requirements (xproto &gt;=3D 7.0.13 x=
extproto xtrans<br>
&gt; &gt; xcb &gt;=3D 1.1.92 kbproto inputproto) were not met:<br>
&gt; &gt; |<br>
&gt; &gt; | No package &#39;xcb&#39; found<br>
&gt; &gt; |<br>
&gt; &gt; | Consider adjusting the PKG_CONFIG_PATH environment variable if =
you<br>
&gt; &gt; | installed software in a non-standard prefix.<br>
&gt; &gt; |<br>
&gt; &gt; | Alternatively, you may set the environment variables X11_CFLAGS=
<br>
&gt; &gt; | and X11_LIBS to avoid the need to call pkg-config.<br>
&gt; &gt; | See the pkg-config man page for more details.<br>
&gt; &gt; | FATAL: oe_runconf failed<br>
&gt; &gt; | ERROR: Task failed: (&#39;function do_configure failed&#39;,<br=
>
&gt; &gt; &#39;/home/sct/laverne_git/laverne-4.0.1/build/tmp/work/x86_64-li=
nux/libx11-native-1_1.3.4-r0/temp/log.do_configure.16900&#39;)<br>
&gt; &gt; NOTE: package libx11-native-1_1.3.4-r0: task do_configure: Failed=
<br>
&gt; &gt; ERROR: Task 20<br>
&gt; &gt; (virtual:native:/home/sct/laverne_git/laverne-4.0.1/meta/recipes-=
graphics/xorg-lib/<br>
&gt; &gt; <a href=3D"http://libx11_1.3.4.bb" target=3D"_blank">libx11_1.3.4=
.bb</a>, do_configure) failed with 1<br>
&gt; &gt; ERROR:<br>
&gt; &gt; &#39;virtual:native:/home/sct/laverne_git/laverne-4.0.1/meta/reci=
pes-graphics/xorg-lib/<br>
&gt; &gt; <a href=3D"http://libx11_1.3.4.bb" target=3D"_blank">libx11_1.3.4=
.bb</a>&#39; failed<br>
&gt; &gt;<br>
&gt; &gt; Chinmaya<br>
&gt; &gt;<br>
&gt; &gt; On Sat, Apr 2, 2011 at 2:35 PM, Yu Ke &lt;<a href=3D"mailto:ke.yu=
@intel.com">ke.yu@intel.com</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt;&gt; on 2011-4-2 15:46, Martin Jansa wrote:<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;&gt; On Sat, Apr 02, 2011 at 11:35:08AM +0800, Yu Ke wrote:<br=
>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt; on 2011-4-1 17:43, chinmaya hoshing wrote:<br>
&gt; &gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt;&gt; Hi,<br>
&gt; &gt;&gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt;&gt; I am trying to get X11 with libxcb file so accord=
ingly I changed in the<br>
&gt; &gt;&gt;&gt;&gt;&gt; bb file of libx11,also I have included libxcb and=
 xcb-utils as runtime<br>
&gt; &gt;&gt;&gt;&gt;&gt; dependencies<br>
&gt; &gt;&gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt;&gt; Initially it was in libx11 bb file :--<br>
&gt; &gt;&gt;&gt;&gt;&gt; EXTRA_OECONF +=3D &quot;--without-xcb&quot;<br>
&gt; &gt;&gt;&gt;&gt;&gt; I changed it to<br>
&gt; &gt;&gt;&gt;&gt;&gt; EXTRA_OECONF +=3D &quot;--with-xcb&quot;<br>
&gt; &gt;&gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt;&gt; Following is the error I get :-<br>
&gt; &gt;&gt;&gt;&gt;&gt; checking for unistd.h... (cached) yes<br>
&gt; &gt;&gt;&gt;&gt;&gt; | checking for sys/param.h... yes<br>
&gt; &gt;&gt;&gt;&gt;&gt; | checking for getpagesize... yes<br>
&gt; &gt;&gt;&gt;&gt;&gt; | checking for working mmap... yes<br>
&gt; &gt;&gt;&gt;&gt;&gt; | checking for nl_langinfo... yes<br>
&gt; &gt;&gt;&gt;&gt;&gt; | checking for X11... no<br>
&gt; &gt;&gt;&gt;&gt;&gt; | configure: error: Package requirements (xproto&=
gt;=3D 7.0.13 xextproto<br>
&gt; &gt;&gt;&gt;&gt;&gt; xtrans xcb&gt;=3D 1.1.92 kbproto inputproto) were=
 not met:<br>
&gt; &gt;&gt;&gt;&gt;&gt; |<br>
&gt; &gt;&gt;&gt;&gt;&gt; | No package &#39;xcb&#39; found<br>
&gt; &gt;&gt;&gt;&gt;&gt; |<br>
&gt; &gt;&gt;&gt;&gt;&gt; | Consider adjusting the PKG_CONFIG_PATH environm=
ent variable if you<br>
&gt; &gt;&gt;&gt;&gt;&gt; | installed software in a non-standard prefix.<br=
>
&gt; &gt;&gt;&gt;&gt;&gt; |<br>
&gt; &gt;&gt;&gt;&gt;&gt; | Alternatively, you may set the environment vari=
ables X11_CFLAGS<br>
&gt; &gt;&gt;&gt;&gt;&gt; | and X11_LIBS to avoid the need to call pkg-conf=
ig.<br>
&gt; &gt;&gt;&gt;&gt;&gt; | See the pkg-config man page for more details.<b=
r>
&gt; &gt;&gt;&gt;&gt;&gt; | FATAL: oe_runconf failed<br>
&gt; &gt;&gt;&gt;&gt;&gt; | ERROR: Task failed: (&#39;function do_configure=
 failed&#39;,<br>
&gt; &gt;&gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt;&gt; &#39;/home/laverne-4.0.1/build/tmp/work/x86_64-li=
nux/libx11-native-1_1.3.4-r0/temp/log.do_configure.13755&#39;)<br>
&gt; &gt;&gt;&gt;&gt;&gt; NOTE: package libx11-native-1_1.3.4-r0: task do_c=
onfigure: Failed<br>
&gt; &gt;&gt;&gt;&gt;&gt; ERROR: Task 3573<br>
&gt; &gt;&gt;&gt;&gt;&gt; (virtual:native:/home/laverne-4.0.1/meta/recipes-=
graphics/xorg-lib/<br>
&gt; &gt;&gt;&gt;&gt;&gt; <a href=3D"http://libx11_1.3.4.bb" target=3D"_bla=
nk">libx11_1.3.4.bb</a><br>
&gt; &gt;&gt;&gt;&gt;&gt; &lt;<a href=3D"http://libx11_1.3.4.bb" target=3D"=
_blank">http://libx11_1.3.4.bb</a>&gt;, do_configure) failed with 1<br>
&gt; &gt;&gt;&gt;&gt;&gt; ERROR:<br>
&gt; &gt;&gt;&gt;&gt;&gt; &#39;virtual:native:/home/laverne-4.0.1/meta/reci=
pes-graphics/xorg-lib/<br>
&gt; &gt;&gt;&gt;&gt;&gt; <a href=3D"http://libx11_1.3.4.bb" target=3D"_bla=
nk">libx11_1.3.4.bb</a><br>
&gt; &gt;&gt;&gt;&gt;&gt; &lt;<a href=3D"http://libx11_1.3.4.bb" target=3D"=
_blank">http://libx11_1.3.4.bb</a>&gt;&#39; failed<br>
&gt; &gt;&gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt;&gt; I have libxcb_1.6 version ,also xproto is libxpro=
to_7.0.17<br>
&gt; &gt;&gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt;&gt; Please can =A0you help me to find the solution fo=
r it.<br>
&gt; &gt;&gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt;&gt; Chinmaya<br>
&gt; &gt;&gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt; I see it is libx11-native do_configure failure, and t=
he xcb-native is<br>
&gt; &gt;&gt;&gt;&gt; missing. that make sense because xcb recipes does not=
 have BBCLASSEXTEND<br>
&gt; &gt;&gt;&gt;&gt; =3D &quot;native nativesdk&quot;, thus xcb is not bui=
lt for native.<br>
&gt; &gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt; I have tried to add BBCLASSEXTEND =3D &quot;native&qu=
ot; in xcb recipe, it turn out<br>
&gt; &gt;&gt;&gt;&gt; requiring more dependent recipes to be built for nati=
ve, which is a bit<br>
&gt; &gt;&gt;&gt;&gt; way too far and undesirable.<br>
&gt; &gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;&gt; so let&#39;s try another way, since you only care abo=
ut the runtime libx11<br>
&gt; &gt;&gt;&gt;&gt; with xcb support, how about the following patches, wi=
th which only<br>
&gt; &gt;&gt;&gt;&gt; native disable xcb, and the runtime libx11 will have =
xcb support.<br>
&gt; &gt;&gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; Hi,<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; for libx11-1.4.0 and newer --without-xcb is not an option=
 anymore, so<br>
&gt; &gt;&gt;&gt; better to fix it with native xcb sooner than later, for d=
etails see<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; d28cdb2d2e6c910afbaa14b17bd2c0003052df7d in openembedded/=
master<br>
&gt; &gt;&gt;&gt; and the rest of xorg/xcb recipes in openembedded :)<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; Cheers,<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt; In this case. your are right, native xcb should also be added=
. Will<br>
&gt; &gt;&gt; upgrade it soon. Thanks for the info.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Regards<br>
&gt; &gt;&gt; Ke<br>
&gt; &gt;&gt; _______________________________________________<br>
&gt; &gt;&gt; poky mailing list<br>
&gt; &gt;&gt; <a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.or=
g</a><br>
&gt; &gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" targ=
et=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
&gt; &gt;&gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; poky mailing list<br>
&gt; &gt; <a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a=
><br>
&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=
=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; Akshat<br>
<br>
&gt; _______________________________________________<br>
&gt; poky mailing list<br>
&gt; <a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_bl=
ank">https://lists.yoctoproject.org/listinfo/poky</a><br>
<br>
<br>
</div></div><div><div></div><div class=3D"h5">--<br>
Martin &#39;JaMa&#39; Jansa =A0 =A0 jabber: <a href=3D"mailto:Martin.Jansa@=
gmail.com">Martin.Jansa@gmail.com</a><br>
</div></div></blockquote></div><br></div>

--0023547c90dfd547e204a0c4faed--
