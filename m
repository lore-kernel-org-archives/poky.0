Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4193F4C8006D
	for <poky@yoctoproject.org>; Mon, 14 Feb 2011 01:37:23 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 13 Feb 2011 23:37:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,468,1291622400"; d="scan'208";a="388339162"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 13 Feb 2011 23:37:20 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 14 Feb 2011 15:34:52 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 14 Feb 2011 15:34:51 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Mon, 14 Feb 2011 15:34:51 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Stefan Schmidt <stefan@datenfreihafen.org>
Date: Mon, 14 Feb 2011 15:34:49 +0800
Thread-Topic: [poky] [PATCH 1/2] wpa-supplicant: change dbus interface
Thread-Index: AcvMGTDt4TtlgCR2TcWtAlib+iiVaQAAE2xw
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A3328545A@shsmsx501.ccr.corp.intel.com>
References: <cover.1297415188.git.dongxiao.xu@intel.com>
	<0a9dc7a03251c1521a2e5baaead56055207ae72f.1297415188.git.dongxiao.xu@intel.com>
	<20110211100751.GF9652@excalibur.local>
	<D5AB6E638E5A3E4B8F4406B113A5A19A33285081@shsmsx501.ccr.corp.intel.com>
	<20110214073113.GA14931@excalibur.local>
In-Reply-To: <20110214073113.GA14931@excalibur.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/2] wpa-supplicant: change dbus interface
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
X-List-Received-Date: Mon, 14 Feb 2011 07:37:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Stefan Schmidt wrote:
> Hello.
>=20
> On Mon, 2011-02-14 at 08:55, Xu, Dongxiao wrote:
>>=20
>> Stefan Schmidt wrote:
>>> Hello.
>>>=20
>>> On Fri, 2011-02-11 at 17:11, Dongxiao Xu wrote:
>>>> From: Dongxiao Xu <dongxiao.xu@intel.com>
>>>>=20
>>>>  # Driver interface for FreeBSD net80211 layer (e.g., Atheros
>>>> driver) #CONFIG_DRIVER_BSD=3Dy @@ -404,4 +405,4 @@ CONFIG_PEERKEY=3Dy
>>>> #LIBS_c +=3D -lbfd -liberty -lz  CONFIG_TLS =3D gnutls
>>>> CONFIG_GNUTLS_EXTRA=3Dy -CONFIG_CTRL_IFACE_DBUS=3Dy
>>>> +CONFIG_CTRL_IFACE_DBUS_NEW=3Dy
>>>=20
>>> Any reason not enable both dbus interfaces? They can happily life
>>> next to each other. Thats how I did it in OE.
>>=20
>> It is OK for me to enable both options. I will change it in my next
>> pull request.=20
>=20
> Thanks.
>=20
>>>> diff --git
>>>> a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.inc
>>>> b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.inc
>>>> index 7865b8f..cd62d8f 100644 ---
>>>> a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.inc
>>>> +++
>>>> b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.i
>>>>  +++ nc @@ -6,7 +6,7 @@ LICENSE =3D "GPLv2 | BSD" LIC_FILES_CHKSUM =3D
>>>>=20
>>>>=20
>>>> "file://../COPYING;md5=3Dc54ce9345727175ff66d17b67ff51f58 \
>>>> file://../README;md5=3D54cfc88015d3ce83f7156e63c6bb1738 \
>>>> file://wpa_supplicant.c;beginline=3D1;endline=3D17;md5=3Dacdc5a4b0d634=
5f21f136eace747260e"
>>>> -DEPENDS =3D "gnutls dbus" +DEPENDS =3D "gnutls dbus libnl"
>>>=20
>>> Hmm, does poky onl yhave libnl2 recipes or both libnl and libnl2?
>>>=20
>>> If the later you should depend on libnl2 instead. I'm trying to get
>>> rid of these libnl mess in OE and getting all packges over to
>>> libnl2. Would be great if we could share resources here. The iw
>>> package for example can also be switched easily.
>>=20
>> Currently, Poky only has libnl2, and recipe name is libnl_2.0.bb,
>> thus I added "libnl" as the wpa_supplicant's DEPENDS.=20
>=20
> That explains it. So libnl is fine in your case. In OE we have it
> named libnl2_2.0.bb to not clash with the libnl recipes.=20
>=20
>> Something intersting that, though APIs are incompatible between libnl
>> and libnl2, we didn't see build issues except this wpa_supplicant
>> case when upgrading libnl from 1.1 to 2.0.=20
>=20
> I would expect that Poky does not have any recipes included that only
> support the old libnl version. See the list below.=20
>=20
>> Could you list some OE packages which need libnl 1.1 as examples? We
>> can check if we have included them in our current Poky build.=20
>=20
> bmon
> ibrdtn
> lowpan-tools
> networkmanager
> networkmanager-openvpn
>=20
> That are the ones that come in mind quickly. The first three are not
> in  Poky (at least as afar as I know). For the networkmanager part I
> would be interested how you got it working with libnl2. =20

Actually networkmanager has beed deprecated and deleted in poky.
Now connman is the default network configuration tool.

Thanks,
Dongxiao

>=20
> regards
> Stefan Schmidt


