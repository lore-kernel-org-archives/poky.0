Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id D17C84C80578
	for <poky@yoctoproject.org>; Tue, 26 Apr 2011 02:05:29 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 26 Apr 2011 00:05:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,267,1301900400"; d="scan'208";a="683967581"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga002.fm.intel.com with ESMTP; 26 Apr 2011 00:05:09 -0700
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 26 Apr 2011 15:04:25 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Tue, 26 Apr 2011 15:04:24 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Martin Jansa <martin.jansa@gmail.com>
Date: Tue, 26 Apr 2011 15:04:22 +0800
Thread-Topic: [poky] [PATCH 06/13] glib-2.0: upgrade to version 2.28.6
Thread-Index: AcwD3du+8SAf93tTQG6J6EQc/HdgcgAAFsTw
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A508ECB93@shsmsx501.ccr.corp.intel.com>
References: <cover.1303798223.git.dongxiao.xu@intel.com>
	<33127d257fd55d857faf16ef8db3d150c6a67893.1303798223.git.dongxiao.xu@intel.com>
	<20110426064656.GA23783@jama.jama.net>
In-Reply-To: <20110426064656.GA23783@jama.jama.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 06/13] glib-2.0: upgrade to version 2.28.6
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
X-List-Received-Date: Tue, 26 Apr 2011 07:05:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: Martin Jansa [mailto:martin.jansa@gmail.com]
> Sent: Tuesday, April 26, 2011 2:47 PM
> To: Xu, Dongxiao
> Cc: poky@yoctoproject.org
> Subject: Re: [poky] [PATCH 06/13] glib-2.0: upgrade to version 2.28.6
>=20
> On Tue, Apr 26, 2011 at 02:46:04PM +0800, Dongxiao Xu wrote:
> > From: Dongxiao Xu <dongxiao.xu@intel.com>
> >
> > Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
> > ---
> >  .../60_wait-longer-for-threads-to-die.patch        |    2 ++
> >  .../glib-2.0/glib-2.0/configure-libtool.patch      |    2 ++
> >  .../glib-2.0/glib-2.0/g_once_init_enter.patch      |    2 ++
> >  .../glib-2.0/glib-2.0/glib-gettextize-dir.patch    |    2 ++
> >  .../{glib-2.0_2.26.1.bb =3D> glib-2.0_2.28.6.bb}     |    8 ++++----
> >  meta/recipes-core/glib-2.0/glib.inc                |    2 +-
> >  6 files changed, 13 insertions(+), 5 deletions(-)  rename
> > meta/recipes-core/glib-2.0/{glib-2.0_2.26.1.bb =3D> glib-2.0_2.28.6.bb}
> > (57%)
> >
> > diff --git
> > a/meta/recipes-core/glib-2.0/glib-2.0/60_wait-longer-for-threads-to-di
> > e.patch
> > b/meta/recipes-core/glib-2.0/glib-2.0/60_wait-longer-for-threads-to-di
> > e.patch
> > index 8195bd4..b65a474 100644
> > ---
> > a/meta/recipes-core/glib-2.0/glib-2.0/60_wait-longer-for-threads-to-di
> > e.patch
> > +++ b/meta/recipes-core/glib-2.0/glib-2.0/60_wait-longer-for-threads-t
> > +++ o-die.patch
> > @@ -2,6 +2,8 @@ copy from OE, said to borrow from Ubuntu. Not in
> > glib-2.0 upstream yet. Add for  Added to poky by Kevin Tian
> > <kevin.tian@intel.com>, 06/25/2010  Rebased for glib-2.27.3 by
> > Dongxiao Xu <dongxiao.xu@intel.com>, 11/16/2010
> >
> > +Upstream-Status: Inappropriate [patches for test code]
> > +
> >  diff -ruN glib-2.27.3-orig/tests/threadpool-test.c
> glib-2.27.3/tests/threadpool-test.c
> >  --- glib-2.27.3-orig/tests/threadpool-test.c	2009-04-01
> 07:04:21.000000000 +0800
> >  +++ glib-2.27.3/tests/threadpool-test.c	2010-11-16 12:28:09.002172678
> +0800
> > diff --git
> > a/meta/recipes-core/glib-2.0/glib-2.0/configure-libtool.patch
> > b/meta/recipes-core/glib-2.0/glib-2.0/configure-libtool.patch
> > index 7c170be..c21e378 100644
> > --- a/meta/recipes-core/glib-2.0/glib-2.0/configure-libtool.patch
> > +++ b/meta/recipes-core/glib-2.0/glib-2.0/configure-libtool.patch
> > @@ -4,6 +4,8 @@
> >  # from PATH though
> >  # Rebased to glib-2.27.3 by Dongxiao Xu <dongxiao.xu@intel.com>
> >
> > +Upstream-Status: Inappropriate [configuration]
> > +
> >  diff -ruN glib-2.27.3-orig/configure.ac glib-2.27.3/configure.ac
> >  --- glib-2.27.3-orig/configure.ac	2010-11-03 11:02:05.000000000 +0800
> >  +++ glib-2.27.3/configure.ac	2010-11-16 12:38:12.610485990 +0800
> > diff --git
> > a/meta/recipes-core/glib-2.0/glib-2.0/g_once_init_enter.patch
> > b/meta/recipes-core/glib-2.0/glib-2.0/g_once_init_enter.patch
> > index a2a506c..2eaa19b 100644
> > --- a/meta/recipes-core/glib-2.0/glib-2.0/g_once_init_enter.patch
> > +++ b/meta/recipes-core/glib-2.0/glib-2.0/g_once_init_enter.patch
> > @@ -7,6 +7,8 @@
> >
> http://www.mail-archive.com/openembedded-devel@lists.openembedded.org
> /
> > msg005
> >
> >  Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> >
> > +Upstream-Status: Pending
> > +
> >  Index: glib-2.27.5/glib/gthread.h
> >
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =3D=3D=3D
> >  --- glib-2.27.5.orig/glib/gthread.h
> > diff --git
> > a/meta/recipes-core/glib-2.0/glib-2.0/glib-gettextize-dir.patch
> > b/meta/recipes-core/glib-2.0/glib-2.0/glib-gettextize-dir.patch
> > index e54a8e5..ee43511 100644
> > --- a/meta/recipes-core/glib-2.0/glib-2.0/glib-gettextize-dir.patch
> > +++ b/meta/recipes-core/glib-2.0/glib-2.0/glib-gettextize-dir.patch
> > @@ -8,6 +8,8 @@
> >  # by Kevin Tian <kevin.tian@intel.com>, 06/25/2010  # Rebased by
> > Dongxiao Xu <dongxiao.xu@intel.com>, 11/16/2010
> >
> > +Upstream-Status: Inappropriate [configuration]
> > +
> >  diff -ruN glib-2.27.3-orig/glib-gettextize.in glib-2.27.3/glib-gettext=
ize.in
> >  --- glib-2.27.3-orig/glib-gettextize.in	2009-04-01 07:04:20.000000000
> +0800
> >  +++ glib-2.27.3/glib-gettextize.in	2010-11-16 12:55:06.874605916 +0800
> > diff --git a/meta/recipes-core/glib-2.0/glib-2.0_2.26.1.bb
> > b/meta/recipes-core/glib-2.0/glib-2.0_2.28.6.bb
> > similarity index 57%
> > rename from meta/recipes-core/glib-2.0/glib-2.0_2.26.1.bb
> > rename to meta/recipes-core/glib-2.0/glib-2.0_2.28.6.bb
> > index 6a1fb6c..c9da861 100644
> > --- a/meta/recipes-core/glib-2.0/glib-2.0_2.26.1.bb
> > +++ b/meta/recipes-core/glib-2.0/glib-2.0_2.28.6.bb
> > @@ -1,16 +1,16 @@
> >  require glib.inc
> >
> > -PE =3D "1"
> > +PE =3D "0"
>=20
> Hi,
>=20
> do you really want PE going backwards?

Thanks, it is a typo and I took it as PR...

I have updated in the repo.=20

http://git.pokylinux.org/cgit.cgi/poky-contrib/commit/?h=3Ddxu4/upgrade&id=
=3D48e787a5d180de4a5ded8d87b181d4a981046574

Thanks,
Dongxiao

>=20
> Regards,
>=20
> >  PR =3D "r0"
> >
> > -SRC_URI =3D "${GNOME_MIRROR}/glib/2.26/glib-${PV}.tar.bz2 \
> > +SRC_URI =3D "${GNOME_MIRROR}/glib/2.28/glib-${PV}.tar.bz2 \
> >             file://configure-libtool.patch \
> >             file://60_wait-longer-for-threads-to-die.patch \
> >             file://g_once_init_enter.patch \
> >            "
> >
> > -SRC_URI[md5sum] =3D "17535accceef55bcb17a74d73f9c2aef"
> > -SRC_URI[sha256sum] =3D
> "7a74ff12b6b9dee1f2d0e520b56b68b621920c4f4250bdf23468e515625c28d5"
> > +SRC_URI[md5sum] =3D "7d8fc15ae70d5111c0cf2a79d50ef717"
> > +SRC_URI[sha256sum] =3D
> "557fb7c39d21b9359fbac51fd6b0b883bc97a2561c0166eef993a4078312f578"
> >
> >  SRC_URI_append_virtclass-native =3D " file://glib-gettextize-dir.patch=
"
> >  BBCLASSEXTEND =3D "native"
> > diff --git a/meta/recipes-core/glib-2.0/glib.inc
> > b/meta/recipes-core/glib-2.0/glib.inc
> > index 5ebff68..9b6e17b 100644
> > --- a/meta/recipes-core/glib-2.0/glib.inc
> > +++ b/meta/recipes-core/glib-2.0/glib.inc
> > @@ -8,7 +8,7 @@ LIC_FILES_CHKSUM =3D
> "file://COPYING;md5=3D3bf50002aefd002f49e7bb854063f7e7 \
> >
> file://gmodule/COPYING;md5=3D3bf50002aefd002f49e7bb854063f7e7 \
> >
> file://gmodule/gmodule.h;startline=3D4;endline=3D17;md5=3D76ab161b37202cd=
0040
> 73c42fac276ed \
> >
> file://glib/pcre/COPYING;md5=3D266ebc3ff74ee9ce6fad65577667c0f4 \
> > -
> file://glib/pcre/pcre.h;startline=3D11;endline=3D35;md5=3Dcc0858840d3c312=
ec3e45b
> 28077eb0d8 \
> > +
> > + file://glib/pcre/pcre.h;startline=3D11;endline=3D35;md5=3Dce867cf87eb=
bd2bb
> > + 55e980d90328390d \
> >
> file://docs/reference/COPYING;md5=3Df51a5100c17af6bae00735cd791e1fcc"
> >  BUGTRACKER =3D "http://bugzilla.gnome.org"
> >  SECTION =3D "libs"
> > --
> > 1.7.1
> >
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
>=20
> --
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

