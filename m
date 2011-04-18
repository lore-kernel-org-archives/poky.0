Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 321F34C8016A
	for <poky@yoctoproject.org>; Mon, 18 Apr 2011 01:41:51 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 17 Apr 2011 23:41:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,231,1301900400"; d="scan'208";a="421025127"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 17 Apr 2011 23:41:50 -0700
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 18 Apr 2011 14:40:51 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 18 Apr 2011 14:40:50 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Mon, 18 Apr 2011 14:40:40 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: "Wold, Saul" <saul.wold@intel.com>
Date: Mon, 18 Apr 2011 14:40:38 +0800
Thread-Topic: [poky] [PATCH 08/14] alsa-utils: upgrade to version 1.0.24.2
Thread-Index: Acv7/mxr0GtLTvpMQpGaNOwtSd5X/wBi9GCg
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A507A9EBA@shsmsx501.ccr.corp.intel.com>
References: <cover.1302845703.git.dongxiao.xu@intel.com>
	<51fdeef3e7bece8d6fd371b34d44d9b085681b33.1302845703.git.dongxiao.xu@intel.com>
	<4DA93539.9090904@intel.com>
In-Reply-To: <4DA93539.9090904@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 08/14] alsa-utils: upgrade to version 1.0.24.2
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
X-List-Received-Date: Mon, 18 Apr 2011 06:41:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Saul,

On which platform do you meet the compile error with this patch?

I just re-checked the 4 architecture and they build all well.

Thanks,
Dongxiao

> -----Original Message-----
> From: Wold, Saul
> Sent: Saturday, April 16, 2011 2:21 PM
> To: Xu, Dongxiao
> Cc: poky@yoctoproject.org
> Subject: Re: [poky] [PATCH 08/14] alsa-utils: upgrade to version 1.0.24.2
>=20
>=20
> There seems to be a problem with this patch, I was not able to compile it
> correctly, it had undefined functions that I tracked to a newer version o=
f
> libsamplerate0.  Please correct this issue.
>=20
> Thanks
> 	Sau!
>=20
>=20
> On 04/14/2011 10:36 PM, Dongxiao Xu wrote:
> > From: Dongxiao Xu<dongxiao.xu@intel.com>
> >
> > Signed-off-by: Dongxiao Xu<dongxiao.xu@intel.com>
> > ---
> >   .../ncursesfix.patch                               |   22
> ++++++++++---------
> >   ...alsa-utils_1.0.23.bb =3D>  alsa-utils_1.0.24.2.bb} |    4 +-
> >   2 files changed, 14 insertions(+), 12 deletions(-)
> >   rename meta/recipes-multimedia/alsa/{alsa-utils-1.0.23 =3D>
> alsa-utils-1.0.24.2}/ncursesfix.patch (70%)
> >   rename meta/recipes-multimedia/alsa/{alsa-utils_1.0.23.bb =3D>
> > alsa-utils_1.0.24.2.bb} (95%)
> >
> > diff --git
> > a/meta/recipes-multimedia/alsa/alsa-utils-1.0.23/ncursesfix.patch
> > b/meta/recipes-multimedia/alsa/alsa-utils-1.0.24.2/ncursesfix.patch
> > similarity index 70%
> > rename from
> > meta/recipes-multimedia/alsa/alsa-utils-1.0.23/ncursesfix.patch
> > rename to
> > meta/recipes-multimedia/alsa/alsa-utils-1.0.24.2/ncursesfix.patch
> > index 0009c1a..9936ded 100644
> > --- a/meta/recipes-multimedia/alsa/alsa-utils-1.0.23/ncursesfix.patch
> > +++ b/meta/recipes-multimedia/alsa/alsa-utils-1.0.24.2/ncursesfix.patc
> > +++ h
> > @@ -1,11 +1,13 @@
> > -# alsa-utils: Fix ncurses build failures -# Richard
> > Purdie<rpurdie@linux.intel.com> -# Rebased to 1.0.23, Dongxiao
> > Xu<dongxiao.xu@intel.com>
> > +Rebase the patch to fit 1.0.24.2
> >
> > -diff -ruN alsa-utils-1.0.23-orig/configure.in alsa-utils-1.0.23/config=
ure.in
> > ---- alsa-utils-1.0.23-orig/configure.in	2010-04-16 19:19:12.000000000 =
+0800
> > -+++ alsa-utils-1.0.23/configure.in	2010-06-22 15:22:06.731202478 +0800
> > -@@ -109,34 +109,16 @@
> > +Upstream-Status: Inappropriate [configuration]
> > +
> > +Signed-off-by: Dongxiao Xu<dongxiao.xu@intel.com>
> > +
> > +diff -ruN alsa-utils-1.0.24.2-orig//configure.in alsa-utils-1.0.24.2/c=
onfigure.in
> > +--- alsa-utils-1.0.24.2-orig//configure.in	2011-04-13 13:51:20.3376650=
10
> +0800
> > ++++ alsa-utils-1.0.24.2/configure.in	2011-04-13 13:51:54.437664986 +08=
00
> > +@@ -127,34 +127,16 @@
> >      NCURSESLIBSUFFIX=3D""
> >      CURSES_NLS=3D"no"
> >      if test "$curseslib" =3D "ncursesw" -o \( "$curseslib" =3D "auto" =
-a
> > "$USE_NLS" =3D "yes" \); then @@ -17,7 +19,7 @@ diff -ruN
> alsa-utils-1.0.23-orig/configure.in alsa-utils-1.0.23/configure.in
> >   -      CURSES_CFLAGS=3D`ncursesw5-config --cflags`
> >   -      curseslib=3D"ncursesw"
> >   -    else
> > -       AC_CHECK_LIB(ncursesw, initscr,
> > +       AC_CHECK_LIB(ncursesw, initscr,
> >                     [ CURSESINC=3D'<ncurses.h>';
> CURSESLIB=3D'-lncursesw'; curseslib=3D"ncursesw"])
> >   -    fi
> >        if test -n "$CURSESINC"; then
> > @@ -34,9 +36,9 @@ diff -ruN alsa-utils-1.0.23-orig/configure.in
> alsa-utils-1.0.23/configure.in
> >   -      CURSES_CFLAGS=3D`ncurses5-config --cflags`
> >   -      curseslib=3D"ncurses"
> >   -    else
> > -       AC_CHECK_LIB(ncurses, initscr,
> > +       AC_CHECK_LIB(ncurses, initscr,
> >                     [ CURSESINC=3D'<ncurses.h>'; CURSESLIB=3D'-lncurses=
';
> curseslib=3D"ncurses"])
> >   -    fi
> >      fi
> >      if test "$curseslib" =3D "curses" -o "$curseslib" =3D "auto"; then
> > -     AC_CHECK_LIB(curses, initscr,
> > +     AC_CHECK_LIB(curses, initscr,
> > diff --git a/meta/recipes-multimedia/alsa/alsa-utils_1.0.23.bb
> > b/meta/recipes-multimedia/alsa/alsa-utils_1.0.24.2.bb
> > similarity index 95%
> > rename from meta/recipes-multimedia/alsa/alsa-utils_1.0.23.bb
> > rename to meta/recipes-multimedia/alsa/alsa-utils_1.0.24.2.bb
> > index 46283cc..953a3ac 100644
> > --- a/meta/recipes-multimedia/alsa/alsa-utils_1.0.23.bb
> > +++ b/meta/recipes-multimedia/alsa/alsa-utils_1.0.24.2.bb
> > @@ -11,8 +11,8 @@ PR =3D "r0"
> >   SRC_URI =3D "ftp://ftp.alsa-project.org/pub/utils/alsa-utils-${PV}.ta=
r.bz2 \
> >              file://ncursesfix.patch;patch=3D1 "
> >
> > -SRC_URI[md5sum] =3D "cb0cf46029ac9549cf3a31bff6a4f4e1"
> > -SRC_URI[sha256sum] =3D
> "b7d05e915e25f8540ad151c6dd558cf0fc1e9bb0ee23052d531c983666a1f7b0"
> > +SRC_URI[md5sum] =3D "8238cd57cb301d1c36bcf0ecb59ce6b2"
> > +SRC_URI[sha256sum] =3D
> "95127f740291086486c06c28118cabca0814bde48fd14dac041a9812a5ac1be2"
> >
> >   # lazy hack. needs proper fixing in gettext.m4, see
> >   # http://bugs.openembedded.org/show_bug.cgi?id=3D2348


