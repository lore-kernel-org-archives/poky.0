Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 74A1E4C800A3
	for <poky@lists.pokylinux.org>; Thu, 10 Mar 2011 23:15:56 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 10 Mar 2011 21:15:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,301,1297065600"; d="scan'208";a="718971043"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga001.jf.intel.com with ESMTP; 10 Mar 2011 21:15:45 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 11 Mar 2011 13:15:44 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 11 Mar 2011 13:15:43 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>, Gary Thomas <gary@mlbassoc.com>,
	Poky <poky@lists.pokylinux.org>
Date: Fri, 11 Mar 2011 13:15:41 +0800
Thread-Topic: [poky] Problems adding native support packages
Thread-Index: AcvfnIlwx4gE3G7MRWyJJ+TmJObDoQAC/KnAAAA9ZNAAAHXKQA==
Message-ID: <625BA99ED14B2D499DC4E29D8138F1505770D748EA@shsmsx502.ccr.corp.intel.com>
References: <4D7996EE.80005@mlbassoc.com>
	<625BA99ED14B2D499DC4E29D8138F1505770D748C8@shsmsx502.ccr.corp.intel.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A335C9B62@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A335C9B62@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Problems adding native support packages
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
X-List-Received-Date: Fri, 11 Mar 2011 05:15:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: Xu, Dongxiao
> Sent: Friday, March 11, 2011 1:09 PM
>=20
> Tian, Kevin wrote:
> >> From: Gary Thomas
> >> Sent: Friday, March 11, 2011 11:29 AM
> >>
> >> I'm trying to import a native package from OE for which the main
> >> package depends on libiconv.  This seems to imply that when I extend
> >> to the native package using BBCLASSEXTEND, the native package depends
> >> on virtual/libiconv-native
> >>
> >> I can't figure out how to provide this.  Any clues?
> >
> > I'm not sure about the problem here. do you want
> > virtual/libiconv-native dependency or not? If target recipe already
> > has a DEPENDS =3D "libiconv", then with BBCLASSEXTEND you have
> > libiconv-native automatically.
> >
> > Or if you only want to add libiconv-native for native recipe
> > exclusively, then:
> >
> > DEPENDS_virtclass-native =3D "virtual/libiconv-native"
> >
> > Thanks
> > Kevin
> >
> >>
> >> n.b. the recipe from OE is librsvg and importing it seems to be
> >> pretty invasive.  To build the native package, I needed to add
> >> native support for all of these packages:
> >>
> >> #       modified:   meta/recipes-gnome/gnome/libart-lgpl_2.3.21.bb
> >> #       modified:   meta/recipes-gnome/gtk+/gtk+.inc
> >> #       modified:   meta/recipes-graphics/cairo/cairo.inc
> >> #       modified:   meta/recipes-graphics/pango/pango.inc
> >> #       modified:
> >> meta/recipes-graphics/xorg-lib/libxcomposite_0.4.3.bb #
> >> modified:   meta/recipes-graphics/xorg-lib/libxcursor_1.1.11.bb #
> >> modified:   meta/recipes-graphics/xorg-lib/libxdamage_1.1.3.bb #
> >> modified:   meta/recipes-graphics/xorg-lib/libxfixes_4.0.5.bb #
> >> modified:   meta/recipes-graphics/xorg-lib/libxft_2.2.0.bb #
> >> modified:   meta/recipes-graphics/xorg-lib/libxrandr_1.3.1.bb #
> >> modified:   meta/recipes-graphics/xorg-lib/libxrender_0.9.6.bb #
> >> modified:   meta/recipes-graphics/xorg-lib/pixman_0.20.2.bb #
> >> modified: meta/recipes-graphics/xorg-proto/compositeproto_0.4.2.bb #
> >> modified: meta/recipes-graphics/xorg-proto/damageproto_1.2.1.bb #
> >> modified:   meta/recipes-graphics/xorg-proto/fixesproto_4.1.2.bb #
> >> modified:   meta/recipes-graphics/xorg-proto/randrproto_1.3.2.bb #
> >> modified: meta/recipes-graphics/xorg-proto/renderproto_0.11.1.bb #
> >> modified: meta/recipes-graphics/xorg-proto/xineramaproto_1.2.1.bb #
> >> modified:   meta/recipes-multimedia/alsa/alsa-tools_1.0.20.bb #
> >> modified:   meta/recipes-support/atk/atk.inc #       modified:
> >> meta/recipes-support/libcroco/libcroco_0.6.2.bb #       modified:
> >> meta/recipes-support/libgcrypt/libgcrypt.inc #       modified:
> >> meta/recipes-support/libgpg-error/libgpg-error_1.9.bb
> >>
> >> I also ran into a problem when I added native to atk, I get this
> >> error which makes no sense at all to me:
> >>    NOTE: package atk-native-1.32.0-r0: task do_fetch: Started
> >>    ERROR: Function 'Fetcher failure for URL:
> >> 'http://download.gnome.org/sources/atk/1.32/atk-native-1.32.0.tar.bz2'=
.
> >> Unable to fetch URL
> >> http://download.gnome.org/sources/atk/1.32/atk-native-1.32.0.tar.bz2
> >> from any source.' failed This seems to be the only package in the
> >> set above that wants to fetch a -native tarball (there are no such
> >> files
> >> in the sources repository as far as I can tell)
>=20
> atk's SRC_URI is assigned like:
>=20
> SRC_URI =3D
> "http://download.gnome.org/sources/atk/1.32/${PN}-${PV}.tar.bz2"
>=20
> After introducing native to atk, PN is changed to atk-native, thus no res=
ouce is
> found in the repo.
>=20
> I will make a fix to that. But for your quick workaournd, you can change =
the
> atk's SRC_URI to:
>=20
> SRC_URI =3D "http://download.gnome.org/sources/atk/1.32/atk-${PV}.tar.bz2=
"
>=20

use ${BPN}-${PV} instead.

Thanks
Kevin

