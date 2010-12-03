Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 480564C80039
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 21:01:03 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 02 Dec 2010 19:01:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,291,1288594800"; d="scan'208";a="683450073"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by orsmga001.jf.intel.com with ESMTP; 02 Dec 2010 19:01:02 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx602.amr.corp.intel.com ([10.22.226.211]) with mapi;
	Thu, 2 Dec 2010 19:01:02 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: Darren Hart <dvhart@linux.intel.com>, Adrian Alonso <aalonso@secretlab.ca>
Date: Thu, 2 Dec 2010 19:01:00 -0800
Thread-Topic: [poky] [PATCH 1/2] librsvg: fix gdk-pixbuf-query-loaders not
	found	in path
Thread-Index: AcuSbg6Z9K+ixnolTE+flqACYS8QDQAKCKGg
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE94023DA393@orsmsx504.amr.corp.intel.com>
References: <1291257381-21280-1-git-send-email-aalonso@secretlab.ca>
	<4CF819D1.30108@linux.intel.com>
In-Reply-To: <4CF819D1.30108@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>,
	Saul Wold <sgw@linux.intel.com>
Subject: Re: [PATCH 1/2] librsvg: fix gdk-pixbuf-query-loaders not found	in path
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
X-List-Received-Date: Fri, 03 Dec 2010 03:01:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: poky-bounces@yoctoproject.org [mailto:poky-
> bounces@yoctoproject.org] On Behalf Of Darren Hart
> Sent: Thursday, December 02, 2010 2:13 PM
> To: Adrian Alonso
> Cc: poky@yoctoproject.org; Saul Wold
> Subject: Re: [poky] [PATCH 1/2] librsvg: fix gdk-pixbuf-query-loaders
> not found in path
>=20
> On 12/01/2010 06:36 PM, Adrian Alonso wrote:
> > * Fix configure: error: gdk-pixbuf-query-loaders not found in path
> > * Bump PR
> >
>  > Signed-off-by: Adrian Alonso<aalonso@secretlab.ca>
>=20
> With the exception of the inconsistent whitespace in
> do_configure_prepend, it looks good. At least it fixes the same error
> for me.
>=20
> Acked-by: Darren Hart <dvhart@linux.intel.com>


Fixes same error for me too. I am running fedora 12 64bit host.
Acked-by: Darren Hart <nitin.a.kamble@intel.com>

Thanks,
Nitin

>=20
> > ---
> >   meta/recipes-gnome/librsvg/librsvg_2.32.0.bb |    3 ++-
> >   1 files changed, 2 insertions(+), 1 deletions(-)
> >
> > diff --git a/meta/recipes-gnome/librsvg/librsvg_2.32.0.bb
> b/meta/recipes-gnome/librsvg/librsvg_2.32.0.bb
> > index a421b68..2f257fc 100644
> > --- a/meta/recipes-gnome/librsvg/librsvg_2.32.0.bb
> > +++ b/meta/recipes-gnome/librsvg/librsvg_2.32.0.bb
> > @@ -8,7 +8,7 @@ LIC_FILES_CHKSUM =3D
> "file://COPYING;md5=3D94d55d512a9ba36caa9b7df079bae19f \
> >
> >   SECTION =3D "x11/utils"
> >   DEPENDS =3D "gtk+ libcroco cairo libxml2 popt"
> > -PR =3D "r1"
> > +PR =3D "r2"
> >
> >   inherit autotools pkgconfig gnome
> >
> > @@ -17,6 +17,7 @@ EXTRA_OECONF =3D "--disable-mozilla-plugin --without-
> svgz --without-croco --disabl
> >   SRC_URI +=3D "file://doc_Makefile.patch"
> >
> >   do_configure_prepend () {
> > +    export GDK_PIXBUF_QUERYLOADERS=3D"${libdir}/gtk-
> 2.0/version/loaders"
> >   	echo "CLEANFILES=3D">  gtk-doc.make
> >   }
> >
>=20
>=20
> --
> Darren Hart
> Yocto Linux Kernel
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

