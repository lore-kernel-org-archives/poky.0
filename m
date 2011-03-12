Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0ACDE4C8009A
	for <poky@lists.pokylinux.org>; Fri, 11 Mar 2011 18:09:34 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 11 Mar 2011 16:09:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,306,1297065600"; d="scan'208";a="719296209"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga001.jf.intel.com with ESMTP; 11 Mar 2011 16:09:32 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Sat, 12 Mar 2011 08:09:31 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Sat, 12 Mar 2011 08:09:31 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Sat, 12 Mar 2011 08:09:29 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Sat, 12 Mar 2011 08:09:28 +0800
Thread-Topic: [poky] Problems adding native support packages
Thread-Index: Acvf5cH8xO+/6wMxTZa7BOnOBKLblQAY9QVA
Message-ID: <625BA99ED14B2D499DC4E29D8138F1505770D74E61@shsmsx502.ccr.corp.intel.com>
References: <4D7996EE.80005@mlbassoc.com>
	<625BA99ED14B2D499DC4E29D8138F1505770D748C8@shsmsx502.ccr.corp.intel.com>
	<4D7A052A.2050400@mlbassoc.com> <4D7A11EA.4050306@mlbassoc.com>
In-Reply-To: <4D7A11EA.4050306@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: Poky <poky@lists.pokylinux.org>
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
X-List-Received-Date: Sat, 12 Mar 2011 00:09:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: Gary Thomas [mailto:gary@mlbassoc.com]
> Sent: Friday, March 11, 2011 8:14 PM
>=20
> On 03/11/2011 04:19 AM, Gary Thomas wrote:
> > On 03/10/2011 09:57 PM, Tian, Kevin wrote:
> >>> From: Gary Thomas
> >>> Sent: Friday, March 11, 2011 11:29 AM
> >>>
> >>> I'm trying to import a native package from OE for which the
> >>> main package depends on libiconv. This seems to imply that
> >>> when I extend to the native package using BBCLASSEXTEND, the
> >>> native package depends on virtual/libiconv-native
> >>>
> >>> I can't figure out how to provide this. Any clues?
> >>
> >> I'm not sure about the problem here. do you want virtual/libiconv-nati=
ve
> dependency
> >> or not? If target recipe already has a DEPENDS =3D "libiconv", then wi=
th
> BBCLASSEXTEND
> >> you have libiconv-native automatically.
> >>
> >> Or if you only want to add libiconv-native for native recipe exclusive=
ly, then:
> >>
> >> DEPENDS_virtclass-native =3D "virtual/libiconv-native"
> >
> > Actually, the problem is that such a dependency was added automatically=
 by
> BBCLASSEXTEND.
> > virtual/libiconv is provided by eglibc package, but it's not clear if i=
t can provide
> > virtual/libiconv-native
>=20
> It comes from this dependency which seems very hard to satisfy:
>    meta/recipes-graphics/pango/pango.inc:DEPENDS =3D "glib-2.0 fontconfig
> freetype zlib virtual/libiconv virtual/libx11 libxft gtk-doc-native cairo=
"
>=20
> It looks like I can side-step this by adding
>    ASSUME_PROVIDED +=3D " virtual/libiconv-native "
>=20

the other alternative is to use DEPENDS_virtclass-native to list all depend=
encies=20
you think the native recipe requires instead of implicitly sharing same DEP=
ENDS
from target recipe.

Thanks
Kevin

