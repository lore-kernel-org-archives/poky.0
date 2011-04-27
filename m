Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id F1CB34C80506
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 02:25:01 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 27 Apr 2011 00:25:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,273,1301900400"; d="scan'208";a="739026503"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga001.jf.intel.com with ESMTP; 27 Apr 2011 00:25:00 -0700
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 27 Apr 2011 15:24:34 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 27 Apr 2011 15:24:34 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Wed, 27 Apr 2011 15:24:33 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: "Wold, Saul" <saul.wold@intel.com>
Date: Wed, 27 Apr 2011 15:24:31 +0800
Thread-Topic: [poky] [PATCH 07/13] libfm: Remove the flag of
	G_DISABLE_DEPRECATED
Thread-Index: AcwEquzsQkpxOhvSQJOxoJ2H77G1JAAAR6uA
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A51F2BC68@shsmsx501.ccr.corp.intel.com>
References: <cover.1303798223.git.dongxiao.xu@intel.com>
	<9906727ebb970cebbe115725b854405d593ac2e1.1303798223.git.dongxiao.xu@intel.com>
	<4DB7C297.7080508@intel.com>
In-Reply-To: <4DB7C297.7080508@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 07/13] libfm: Remove the flag of G_DISABLE_DEPRECATED
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
X-List-Received-Date: Wed, 27 Apr 2011 07:25:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: Wold, Saul
> Sent: Wednesday, April 27, 2011 3:16 PM
> To: Xu, Dongxiao
> Cc: poky@yoctoproject.org
> Subject: Re: [poky] [PATCH 07/13] libfm: Remove the flag of
> G_DISABLE_DEPRECATED
>=20
> On 04/25/2011 11:46 PM, Dongxiao Xu wrote:
> > From: Dongxiao Xu<dongxiao.xu@intel.com>
> >
> > Latest glib-2.0 changes some macros and function definitions to be
> > deprecated. However libfm still uses them. Therefore the flag
> > G_DISABLE_DEPRECATED should be removed in libfm's Makefile.
> >
> > Signed-off-by: Dongxiao Xu<dongxiao.xu@intel.com>
> > ---
> >   .../libfm/libfm-0.1.14/use_deprecate_func.patch    |   11
> +++++++++++
> >   meta/recipes-support/libfm/libfm_0.1.14.bb         |    5 +++--
> >   2 files changed, 14 insertions(+), 2 deletions(-)
> >   create mode 100644
> > meta/recipes-support/libfm/libfm-0.1.14/use_deprecate_func.patch
> >
> This patch seems to be missing Comments, Signed-off-by and
> Upstream-Status: info

Saul, thanks for reviewing it. I have updated the commit in
http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/commit/?h=3Ddxu4/upgrad=
e&id=3Df3f6fe8656ddd41dd89dda793d989404c87e3ee6.

Thanks,
Dongxiao

>=20
> Sau!
>=20
> > diff --git
> > a/meta/recipes-support/libfm/libfm-0.1.14/use_deprecate_func.patch
> > b/meta/recipes-support/libfm/libfm-0.1.14/use_deprecate_func.patch
> > new file mode 100644
> > index 0000000..fade195
> > --- /dev/null
> > +++ b/meta/recipes-support/libfm/libfm-0.1.14/use_deprecate_func.patch
> > @@ -0,0 +1,11 @@
> > +diff -ruN libfm-0.1.14-orig//src/Makefile.am libfm-0.1.14/src/Makefile=
.am
> > +--- libfm-0.1.14-orig//src/Makefile.am	2011-04-26 10:01:44.297664993
> +0800
> > ++++ libfm-0.1.14/src/Makefile.am	2011-04-26 10:02:10.637665004 +0800
> > +@@ -285,7 +285,6 @@
> > + 	$(GIO_CFLAGS) \
> > + 	-DGIO_MODULE_DIR=3D\"$(giomodulesdir)\"	\
> > + 	-DGVFS_LOCALEDIR=3D\""$(localedir)"\"	\
> > +-	-DG_DISABLE_DEPRECATED \
> > + 	$(NULL)
> > +
> > + libgiofm_la_LDFLAGS =3D 	\
> > diff --git a/meta/recipes-support/libfm/libfm_0.1.14.bb
> > b/meta/recipes-support/libfm/libfm_0.1.14.bb
> > index c56ad33..5c7e95c 100644
> > --- a/meta/recipes-support/libfm/libfm_0.1.14.bb
> > +++ b/meta/recipes-support/libfm/libfm_0.1.14.bb
> > @@ -10,9 +10,10 @@ LIC_FILES_CHKSUM =3D
> "file://COPYING;md5=3D59530bdf33659b29e73d4adb9f9f6552 \
> >   SECTION =3D "x11/libs"
> >   DEPENDS =3D "gtk+ menu-cache intltool"
> >
> > -PR =3D "r2"
> > +PR =3D "r3"
> >
> > -SRC_URI =3D "${SOURCEFORGE_MIRROR}/pcmanfm/libfm-${PV}.tar.gz"
> > +SRC_URI =3D "${SOURCEFORGE_MIRROR}/pcmanfm/libfm-${PV}.tar.gz \
> > +           file://use_deprecate_func.patch"
> >
> >   SRC_URI[md5sum] =3D "d55e51dced6bb9ef46665243b079761f"
> >   SRC_URI[sha256sum] =3D
> "e97bf3f9ed4f33b9f0be73e67d360b89337cccf816361faacd8422722269806b"


