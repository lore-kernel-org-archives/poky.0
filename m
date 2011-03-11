Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5B9174C800A3
	for <poky@lists.pokylinux.org>; Thu, 10 Mar 2011 23:18:59 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 10 Mar 2011 21:18:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,301,1297065600"; d="scan'208";a="611649007"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 10 Mar 2011 21:18:57 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 11 Mar 2011 13:18:34 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 11 Mar 2011 13:18:34 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 11 Mar 2011 13:18:32 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>, Gary Thomas <gary@mlbassoc.com>,
	Poky <poky@lists.pokylinux.org>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
Date: Fri, 11 Mar 2011 13:18:32 +0800
Thread-Topic: [poky] Problems adding native support packages
Thread-Index: AcvfnIlwx4gE3G7MRWyJJ+TmJObDoQAC/KnAAAA9ZNAAAHXKQAAADlSg
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A335C9B6F@shsmsx501.ccr.corp.intel.com>
References: <4D7996EE.80005@mlbassoc.com>
	<625BA99ED14B2D499DC4E29D8138F1505770D748C8@shsmsx502.ccr.corp.intel.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A335C9B62@shsmsx501.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1505770D748EA@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1505770D748EA@shsmsx502.ccr.corp.intel.com>
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
X-List-Received-Date: Fri, 11 Mar 2011 05:18:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Tian, Kevin wrote:
>> From: Xu, Dongxiao
>> Sent: Friday, March 11, 2011 1:09 PM
>>=20
>> Tian, Kevin wrote:
>>>> From: Gary Thomas
>>>> Sent: Friday, March 11, 2011 11:29 AM
>>>>=20
>>>> I'm trying to import a native package from OE for which the main
>>>> package depends on libiconv.  This seems to imply that when I
>>>> extend to the native package using BBCLASSEXTEND, the native
>>>> package depends on virtual/libiconv-native
>>>>=20
>>>> I can't figure out how to provide this.  Any clues?
>>>=20
>>> I'm not sure about the problem here. do you want
>>> virtual/libiconv-native dependency or not? If target recipe already
>>> has a DEPENDS =3D "libiconv", then with BBCLASSEXTEND you have
>>> libiconv-native automatically.
>>>=20
>>> Or if you only want to add libiconv-native for native recipe
>>> exclusively, then:=20
>>>=20
>>> DEPENDS_virtclass-native =3D "virtual/libiconv-native"
>>>=20
>>> Thanks
>>> Kevin
>>>=20
>>>>=20
>>>> n.b. the recipe from OE is librsvg and importing it seems to be
>>>> pretty invasive.  To build the native package, I needed to add
>>>> native support for all of these packages:
>>>>=20
>>>> #       modified:   meta/recipes-gnome/gnome/libart-lgpl_2.3.21.bb
>>>> #       modified:   meta/recipes-gnome/gtk+/gtk+.inc
>>>> #       modified:   meta/recipes-graphics/cairo/cairo.inc
>>>> #       modified:   meta/recipes-graphics/pango/pango.inc #     =20
>>>> modified: meta/recipes-graphics/xorg-lib/libxcomposite_0.4.3.bb #
>>>> modified:   meta/recipes-graphics/xorg-lib/libxcursor_1.1.11.bb #
>>>> modified:   meta/recipes-graphics/xorg-lib/libxdamage_1.1.3.bb #
>>>> modified:   meta/recipes-graphics/xorg-lib/libxfixes_4.0.5.bb #
>>>> modified:   meta/recipes-graphics/xorg-lib/libxft_2.2.0.bb #
>>>> modified:   meta/recipes-graphics/xorg-lib/libxrandr_1.3.1.bb #
>>>> modified:   meta/recipes-graphics/xorg-lib/libxrender_0.9.6.bb #
>>>> modified:   meta/recipes-graphics/xorg-lib/pixman_0.20.2.bb #
>>>> modified: meta/recipes-graphics/xorg-proto/compositeproto_0.4.2.bb
>>>> # modified: meta/recipes-graphics/xorg-proto/damageproto_1.2.1.bb #
>>>> modified:   meta/recipes-graphics/xorg-proto/fixesproto_4.1.2.bb #
>>>> modified:   meta/recipes-graphics/xorg-proto/randrproto_1.3.2.bb #
>>>> modified: meta/recipes-graphics/xorg-proto/renderproto_0.11.1.bb #
>>>> modified: meta/recipes-graphics/xorg-proto/xineramaproto_1.2.1.bb #
>>>> modified:   meta/recipes-multimedia/alsa/alsa-tools_1.0.20.bb #
>>>> modified:   meta/recipes-support/atk/atk.inc #       modified:
>>>> meta/recipes-support/libcroco/libcroco_0.6.2.bb #       modified:
>>>> meta/recipes-support/libgcrypt/libgcrypt.inc #       modified:
>>>> meta/recipes-support/libgpg-error/libgpg-error_1.9.bb
>>>>=20
>>>> I also ran into a problem when I added native to atk, I get this
>>>> error which makes no sense at all to me:
>>>>    NOTE: package atk-native-1.32.0-r0: task do_fetch: Started
>>>>    ERROR: Function 'Fetcher failure for URL:
>>>> 'http://download.gnome.org/sources/atk/1.32/atk-native-1.32.0.tar.bz2'=
.
>>>> Unable to fetch URL
>>>> http://download.gnome.org/sources/atk/1.32/atk-native-1.32.0.tar.bz
>>>> 2 from any source.' failed This seems to be the only package in
>>>> the set above that wants to fetch a -native tarball (there are no
>>>> such files in the sources repository as far as I can tell)=20
>>=20
>> atk's SRC_URI is assigned like:
>>=20
>> SRC_URI =3D
>> "http://download.gnome.org/sources/atk/1.32/${PN}-${PV}.tar.bz2"
>>=20
>> After introducing native to atk, PN is changed to atk-native, thus
>> no resouce is found in the repo.=20
>>=20
>> I will make a fix to that. But for your quick workaournd, you can
>> change the atk's SRC_URI to:=20
>>=20
>> SRC_URI =3D
>> "http://download.gnome.org/sources/atk/1.32/atk-${PV}.tar.bz2"=20
>>=20
>=20
> use ${BPN}-${PV} instead.

Yes. This is the right approach.

I checked in current poky meta recipes, there are about 67 recipes which di=
rectly uses ${PN} in the SRC_URI line.

Do we need to change all of them to ${BPN}?

Thanks,
Dongxiao

>=20
> Thanks
> Kevin


