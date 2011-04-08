Return-Path: <martin.jansa@gmail.com>
Received: from mail-bw0-f48.google.com (mail-bw0-f48.google.com
	[209.85.214.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id F2AA14C802F2
	for <poky@yoctoproject.org>; Fri,  8 Apr 2011 09:06:31 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by bwz8 with SMTP id 8so4535834bwz.35
	for <poky@yoctoproject.org>; Fri, 08 Apr 2011 07:06:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=vofdm1acuvSAlQb1hlq2b51sF20DJMMZ8wolc666J4k=;
	b=wem9EeA+oO2OG7SQZlgszjDV4uOlKPs/W+Fq6r4TprWQ9LKcRnnLMaK3ORgpocm0wo
	NLTYw2BjhbkjoUo2A+TAs1vX/90OKw2+cuBxIwYYZQOvHShFEiKxpZe00YoGukN05VYB
	7gYDXpZHNaJ7WTpwn7n6G9mCUNlho6YINuJ34=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	b=hQ1eZ7dtPxecnsZ7lzZAmMGpq0Rb4VLHh6c6Q1MOrOVwlwPRalVLUOBa3WNvrG9LXQ
	LLOMoCKGm5NmK+GejVIQOUZPXNk/Sla/iaUgFwXnF5CQv/nbpUa+19gPgAKmKrRyMqpM
	oIORwQiip6rfE1OTsyokFVQngLeq1AjJYeA1Q=
Received: by 10.204.154.74 with SMTP id n10mr2022524bkw.33.1302271590686;
	Fri, 08 Apr 2011 07:06:30 -0700 (PDT)
Received: from localhost (161-24.13.24.78.awnet.cz [78.24.13.161])
	by mx.google.com with ESMTPS id x6sm1669085bkv.12.2011.04.08.07.06.27
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 08 Apr 2011 07:06:28 -0700 (PDT)
Date: Fri, 8 Apr 2011 16:06:26 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Akshat Saha <akshat.embedded@gmail.com>
Message-ID: <20110408140626.GE3180@jama.jama.net>
References: <AANLkTi=KYP7eC05UOX3as0A6xFZE31VQXPZL3ehrwzuh@mail.gmail.com>
	<4D96996C.7010601@intel.com> <20110402074649.GA27265@jama.jama.net>
	<4D96E6C5.5010800@intel.com>
	<BANLkTinY9yzN-uR1vK_em9hX2R_2is9E7A@mail.gmail.com>
	<BANLkTi=a3=uGk2Sd0TO1otDjj9NcJ0dY7g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <BANLkTi=a3=uGk2Sd0TO1otDjj9NcJ0dY7g@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: poky@yoctoproject.org, chinmaya hoshing <cahoshing@gmail.com>
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
X-List-Received-Date: Fri, 08 Apr 2011 14:06:32 -0000
X-Groupsio-MsgNum: 5213
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="19uQFt6ulqmgNgg1"
Content-Disposition: inline

--19uQFt6ulqmgNgg1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 08, 2011 at 07:16:52PM +0530, Akshat Saha wrote:
> Hi,
>=20
> I am also facing the same error, I made the following changes in libx11.i=
nc
> as well as libx11_1.3.4.bb
>=20
> - EXTRA_OECONF +=3D "--with-keysymdef=3D${STAGING_INCDIR}/X11/keysymdef.h"
> + EXTRA_OECONF +=3D "*--with-xcb *
> --with-keysymdef=3D${STAGING_INCDIR}/X11/keysymdef.h"
> *+ EXTRA_OECONF_native +=3D "--without-xcb"
> + EXTRA_OECONF_nativesdk +=3D "--without-xcb*

that's wrong syntax, right is:
EXTRA_OECONF_virtclass-native
EXTRA_OECONF_virtclass-nativesdk
see http://git.openembedded.net/cgit.cgi/openembedded/tree/recipes/xorg-lib=
/libx11.inc

but as I said before this is solution only for old libx11, better=20
to add native to libxcb like here:
http://git.openembedded.net/cgit.cgi/openembedded-core-contrib/commit/?h=3D=
shr&id=3D5862cadc7a68c7254357f54b2ca6a8c8608b22c8

then you can also use newer libx11-1.4.3 from meta-shr layer
http://git.shr-project.org/git/?p=3Dmeta-shr.git;a=3Dsummary

Cheers,

> *
> *
> But the error is still there, from the error log i observer that while
> compiling for libx11-native instead of using *"EXTRA_OECONF_native"* as
> expected, it is taking arguments from *"EXTRA_OECONF"* only.
> The error log is as follows:
>=20
>=20
> NOTE: Executing autoreconf --verbose --install --force --exclude=3Dautopo=
int
> -I
> /home/sct/laverne-4.0.1/build/tmp/work/i686-linux/libx11-native-1_1.3.4-r=
0/libX11-1.3.4/m4/
> -I/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/aclocal=
-1.11
> -I /home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/aclocal
> autoreconf: Entering directory `.'
> autoreconf: configure.ac: not using Gettext
> autoreconf: running: aclocal -I
> /home/sct/laverne-4.0.1/build/tmp/work/i686-linux/libx11-native-1_1.3.4-r=
0/libX11-1.3.4/m4/
> -I
> /home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/aclocal-1=
=2E11
> -I /home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/aclocal
> -I
> /home/sct/laverne-4.0.1/build/tmp/work/i686-linux/libx11-native-1_1.3.4-r=
0/libX11-1.3.4/m4/
> -I
> /home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/aclocal-1=
=2E11
> -I /home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/aclocal
> --force -I m4
> autoreconf: configure.ac: tracing
> autoreconf: running: libtoolize --copy --force
> libtoolize: putting auxiliary files in `.'.
> libtoolize: copying file `./ltmain.sh'
> libtoolize: putting macros in AC_CONFIG_MACRO_DIR, `m4'.
> libtoolize: copying file `m4/libtool.m4'
> libtoolize: copying file `m4/ltoptions.m4'
> libtoolize: copying file `m4/ltsugar.m4'
> libtoolize: copying file `m4/ltversion.m4'
> libtoolize: copying file `m4/lt~obsolete.m4'
> autoreconf: running:
> /home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/bin/autoconf
> --include=3D/home/sct/laverne-4.0.1/build/tmp/work/i686-linux/libx11-nati=
ve-1_1.3.4-r0/libX11-1.3.4/m4/
> --include=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/sha=
re/aclocal-1.11
> --include=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/sha=
re/aclocal
> --force --warnings=3Dcross
> autoreconf: running:
> /home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/bin/autoheader
> --include=3D/home/sct/laverne-4.0.1/build/tmp/work/i686-linux/libx11-nati=
ve-1_1.3.4-r0/libX11-1.3.4/m4/
> --include=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/sha=
re/aclocal-1.11
> --include=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/sha=
re/aclocal
> --force --warnings=3Dcross
> autoreconf: running: automake --foreign --add-missing --copy --force-miss=
ing
> --warnings=3Dcross
> automake: unknown warning category `cross'
> autoreconf: running: gnu-configize
> autoreconf: Leaving directory `.'
> NOTE: Running
> /home/sct/laverne-4.0.1/build/tmp/work/i686-linux/libx11-native-1_1.3.4-r=
0/libX11-1.3.4/configure
>                  --build=3Di686-linux           --host=3Di686-linux
> --target=3Di686-linux
> --prefix=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr
> --exec_prefix=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr
>       --bindir=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/us=
r/bin
>=20
> --sbindir=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/sbin
>=20
> --libexecdir=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/=
libexec
>=20
> --datadir=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/sha=
re
>=20
> --sysconfdir=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/etc
>=20
> --sharedstatedir=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/=
com
>=20
> --localstatedir=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/v=
ar
>=20
> --libdir=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/lib
>=20
> --includedir=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/=
include
>=20
> --oldincludedir=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/u=
sr/include
>=20
> --infodir=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/sha=
re/info
>=20
> --mandir=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/shar=
e/man
>             --enable-malloc0returnsnull
> --with-keysymdef=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/=
usr/include/X11/keysymdef.h
> *--with-xcb*             ...
> checking build system type... i686-pc-linux-gnu
> checking host system type... i686-pc-linux-gnu
> :
> :
> :
> checking minix/config.h usability... no
> checking minix/config.h presence... no
> checking for minix/config.h... no
> checking whether it is safe to define __EXTENSIONS__... yes
> checking for gcc option to accept ISO C99... -std=3Dgnu99
> checking for i686-linux-pkg-config... no
> checking for pkg-config...
> /home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/bin/pkg-config
> checking pkg-config is at least version 0.9.0... yes
> checking for a sed that does not truncate output... /bin/sed
> checking whether to build functional specifications... yes
> checking for groff... /usr/bin/groff
> checking for /usr/bin/groff -ms macros... no
> checking for /usr/bin/groff -mm macros... no
> checking for gs... /usr/bin/gs
> checking for pnmtopng... no
> checking for psselect... no
> configure: WARNING: grohtml dependencies not found - HTML Documentation
> skipped. Refer to grohtml man pages
> :
> :
> *checking whether to use XCB... (cached) yes*
> checking for i686-linux-pkg-config... (cached)
> /home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/bin/pkg-config
> checking pkg-config is at least version 0.9.0... yes
> :
> :
> checking if loadable i18n module support should be enabled... no
> checking if loadable Xcursor library support should be enabled... yes
> checking for ANSI C header files... (cached) yes
> checking sys/select.h usability... yes
> checking sys/select.h presence... yes
> checking for sys/select.h... yes
> checking for strtol... yes
> checking for issetugid... no
> checking for getresuid... yes
> checking for shmat... yes
> checking for launchd... no
> checking for getpwuid_r in -lc... yes
> checking for pthread_self in -lc... yes
> checking for poll... yes
> /home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/include/X11/key=
symdef.h
> checking if XLOCALEDIR support should be enabled... yes
> checking for BIGFONT... yes
> checking for stdlib.h... (cached) yes
> checking for unistd.h... (cached) yes
> checking for sys/param.h... yes
> checking for getpagesize... yes
> checking for working mmap... yes
> checking for nl_langinfo... yes
> *checking for X11... no*
> *configure: error: Package requirements (xproto >=3D 7.0.13 xextproto xtr=
ans
> xcb >=3D 1.1.92 kbproto inputproto) were not met:
>=20
> No package 'xcb' found
> *
> Consider adjusting the PKG_CONFIG_PATH environment variable if you
> installed software in a non-standard prefix.
>=20
> Alternatively, you may set the environment variables X11_CFLAGS
> and X11_LIBS to avoid the need to call pkg-config.
> See the pkg-config man page for more details.
> FATAL: oe_runconf failed
> ERROR: Task failed: ('function do_configure failed',
> '/home/sct/laverne-4.0.1/build/tmp/work/i686-linux/libx11-native-1_1.3.4-=
r0/temp/log.do_configure.24052')
>=20
> Can any one suggest, what am i doing wrong or how can this error be solve=
d.
>=20
> On Tue, Apr 5, 2011 at 2:33 PM, chinmaya hoshing <cahoshing@gmail.com>wro=
te:
>=20
> > Hi,
> >
> > Thanks for the reply Yu Ke.I have made changes as per said by you,but s=
till
> > getting the same error
> > Regarding the Error no xcb found in libx11 library
> > Following is the my libx11 bb file : --
> >
> > +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
> > require libx11.inc
> >
> > LICENSE =3D "MIT & MIT-style & BSD"
> > LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dbf75bfe4d05068311b5e6862d4b5=
f2c5"
> >
> > PE =3D "1"
> > PR =3D "r0"
> >
> > SRC_URI +=3D "file://x11_disable_makekeys.patch \
> >             file://nodolt.patch \
> >             file://include_fix.patch"
> >
> > DEPENDS +=3D "bigreqsproto xproto xextproto xtrans libxau xcmiscproto \
> >             libxdmcp xf86bigfontproto kbproto inputproto xproto-native
> > gettext"
> >
> > EXTRA_OECONF +=3D "--with-xcb"
> > EXTRA_OECONF_native +=3D "--without-xcb"
> >
> > BBCLASSEXTEND =3D "native nativesdk"
> >
> > +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++=
++
> >
> > But stiil getting the same error :--
> >
> > | checking for sys/param.h... yes
> > | checking for getpagesize... yes
> > | checking for working mmap... yes
> > | checking for nl_langinfo... yes
> > | checking for X11... no
> > | configure: error: Package requirements (xproto >=3D 7.0.13 xextproto =
xtrans
> > xcb >=3D 1.1.92 kbproto inputproto) were not met:
> > |
> > | No package 'xcb' found
> > |
> > | Consider adjusting the PKG_CONFIG_PATH environment variable if you
> > | installed software in a non-standard prefix.
> > |
> > | Alternatively, you may set the environment variables X11_CFLAGS
> > | and X11_LIBS to avoid the need to call pkg-config.
> > | See the pkg-config man page for more details.
> > | FATAL: oe_runconf failed
> > | ERROR: Task failed: ('function do_configure failed',
> > '/home/sct/laverne_git/laverne-4.0.1/build/tmp/work/x86_64-linux/libx11=
-native-1_1.3.4-r0/temp/log.do_configure.16900')
> > NOTE: package libx11-native-1_1.3.4-r0: task do_configure: Failed
> > ERROR: Task 20
> > (virtual:native:/home/sct/laverne_git/laverne-4.0.1/meta/recipes-graphi=
cs/xorg-lib/
> > libx11_1.3.4.bb, do_configure) failed with 1
> > ERROR:
> > 'virtual:native:/home/sct/laverne_git/laverne-4.0.1/meta/recipes-graphi=
cs/xorg-lib/
> > libx11_1.3.4.bb' failed
> >
> > Chinmaya
> >
> > On Sat, Apr 2, 2011 at 2:35 PM, Yu Ke <ke.yu@intel.com> wrote:
> >
> >> on 2011-4-2 15:46, Martin Jansa wrote:
> >>
> >>> On Sat, Apr 02, 2011 at 11:35:08AM +0800, Yu Ke wrote:
> >>>
> >>>> on 2011-4-1 17:43, chinmaya hoshing wrote:
> >>>>
> >>>>> Hi,
> >>>>>
> >>>>> I am trying to get X11 with libxcb file so accordingly I changed in=
 the
> >>>>> bb file of libx11,also I have included libxcb and xcb-utils as runt=
ime
> >>>>> dependencies
> >>>>>
> >>>>> Initially it was in libx11 bb file :--
> >>>>> EXTRA_OECONF +=3D "--without-xcb"
> >>>>> I changed it to
> >>>>> EXTRA_OECONF +=3D "--with-xcb"
> >>>>>
> >>>>> Following is the error I get :-
> >>>>> checking for unistd.h... (cached) yes
> >>>>> | checking for sys/param.h... yes
> >>>>> | checking for getpagesize... yes
> >>>>> | checking for working mmap... yes
> >>>>> | checking for nl_langinfo... yes
> >>>>> | checking for X11... no
> >>>>> | configure: error: Package requirements (xproto>=3D 7.0.13 xextpro=
to
> >>>>> xtrans xcb>=3D 1.1.92 kbproto inputproto) were not met:
> >>>>> |
> >>>>> | No package 'xcb' found
> >>>>> |
> >>>>> | Consider adjusting the PKG_CONFIG_PATH environment variable if you
> >>>>> | installed software in a non-standard prefix.
> >>>>> |
> >>>>> | Alternatively, you may set the environment variables X11_CFLAGS
> >>>>> | and X11_LIBS to avoid the need to call pkg-config.
> >>>>> | See the pkg-config man page for more details.
> >>>>> | FATAL: oe_runconf failed
> >>>>> | ERROR: Task failed: ('function do_configure failed',
> >>>>>
> >>>>> '/home/laverne-4.0.1/build/tmp/work/x86_64-linux/libx11-native-1_1.=
3.4-r0/temp/log.do_configure.13755')
> >>>>> NOTE: package libx11-native-1_1.3.4-r0: task do_configure: Failed
> >>>>> ERROR: Task 3573
> >>>>> (virtual:native:/home/laverne-4.0.1/meta/recipes-graphics/xorg-lib/
> >>>>> libx11_1.3.4.bb
> >>>>> <http://libx11_1.3.4.bb>, do_configure) failed with 1
> >>>>> ERROR:
> >>>>> 'virtual:native:/home/laverne-4.0.1/meta/recipes-graphics/xorg-lib/
> >>>>> libx11_1.3.4.bb
> >>>>> <http://libx11_1.3.4.bb>' failed
> >>>>>
> >>>>> I have libxcb_1.6 version ,also xproto is libxproto_7.0.17
> >>>>>
> >>>>> Please can  you help me to find the solution for it.
> >>>>>
> >>>>> Chinmaya
> >>>>>
> >>>>>
> >>>>>
> >>>> I see it is libx11-native do_configure failure, and the xcb-native is
> >>>> missing. that make sense because xcb recipes does not have BBCLASSEX=
TEND
> >>>> =3D "native nativesdk", thus xcb is not built for native.
> >>>>
> >>>> I have tried to add BBCLASSEXTEND =3D "native" in xcb recipe, it tur=
n out
> >>>> requiring more dependent recipes to be built for native, which is a =
bit
> >>>> way too far and undesirable.
> >>>>
> >>>> so let's try another way, since you only care about the runtime libx=
11
> >>>> with xcb support, how about the following patches, with which only
> >>>> native disable xcb, and the runtime libx11 will have xcb support.
> >>>>
> >>>
> >>> Hi,
> >>>
> >>> for libx11-1.4.0 and newer --without-xcb is not an option anymore, so
> >>> better to fix it with native xcb sooner than later, for details see
> >>>
> >>> d28cdb2d2e6c910afbaa14b17bd2c0003052df7d in openembedded/master
> >>> and the rest of xorg/xcb recipes in openembedded :)
> >>>
> >>> Cheers,
> >>>
> >>>
> >> In this case. your are right, native xcb should also be added. Will
> >> upgrade it soon. Thanks for the info.
> >>
> >> Regards
> >> Ke
> >> _______________________________________________
> >> poky mailing list
> >> poky@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/poky
> >>
> >
> >
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
> >
> >
>=20
>=20
> --=20
> Akshat

> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--19uQFt6ulqmgNgg1
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.17 (GNU/Linux)

iEYEARECAAYFAk2fFmIACgkQN1Ujt2V2gBzaDQCeKXN0RnLWjt+VfnY7TyPeft6A
GBcAn2ik3XGuQ4f/vYPWHnu3v9UmogtY
=a1B8
-----END PGP SIGNATURE-----

--19uQFt6ulqmgNgg1--
