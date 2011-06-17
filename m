Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 615204C8009D
	for <poky@yoctoproject.org>; Thu, 16 Jun 2011 20:35:23 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 16 Jun 2011 18:35:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,378,1304319600"; d="scan'208";a="17287898"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga002.fm.intel.com with ESMTP; 16 Jun 2011 18:35:21 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 17 Jun 2011 09:34:42 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Fri, 17 Jun 2011 09:34:41 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>, Koen Kooi
	<koen@dominion.thruhere.net>
Date: Fri, 17 Jun 2011 09:34:40 +0800
Thread-Topic: [poky] [PATCH] meta-fishriver/linux-yocto: Auto load cdc-acm
	and cdc-wdm modules
Thread-Index: AcwsJFAYT4qgwAfqSe6mHMOcZm3veQAY9vtw
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A12D6721B35@shsmsx501.ccr.corp.intel.com>
References: <1308216069-25022-1-git-send-email-dongxiao.xu@intel.com>
	<DD75A5DE-D7A8-435E-A20B-1F676F80DCA8@dominion.thruhere.net>
	<BANLkTik-Dd6QeN4kdtjenxbg40=7T2C_7A@mail.gmail.com>
In-Reply-To: <BANLkTik-Dd6QeN4kdtjenxbg40=7T2C_7A@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] meta-fishriver/linux-yocto: Auto load cdc-acm and cdc-wdm modules
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
X-List-Received-Date: Fri, 17 Jun 2011 01:35:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: Bruce Ashfield [mailto:bruce.ashfield@gmail.com]
> Sent: Thursday, June 16, 2011 8:53 PM
> To: Koen Kooi
> Cc: Xu, Dongxiao; poky@yoctoproject.org
> Subject: Re: [poky] [PATCH] meta-fishriver/linux-yocto: Auto load cdc-acm=
 and
> cdc-wdm modules
>=20
> On Thu, Jun 16, 2011 at 5:48 AM, Koen Kooi <koen@dominion.thruhere.net>
> wrote:
> >
> > Op 16 jun 2011, om 11:21 heeft Dongxiao Xu het volgende geschreven:
> >
> >> Automatically load cdc-acm.ko and cdc-wdm.ko to support 3G module.
> >
> > Is USB broken in that kernel that it doesn't load the correct driver wh=
en
> plugging in the dongle?
>=20
> Should be working fine, or at least it works fine for the targets that I =
have near
> me.
>=20
> Dongxiao: are you seeing anything in the kernel logs when the devices are
> plugged in ? As part of the commit message, it would be useful to list th=
e
> reasons why a change is being made, it'll allow us to suggest alternative=
s, or
> debug .. or do nothing.

Hi Bruce and Koen,

There is no such log you mentioned.=20

My description for the commit may be not accurate. The above driver I menti=
oned is a generic driver which converts the USB device to be a virtual mode=
m, and it is not the device enabling driver.
Also I need to mention that, my 3G module device is not an external dongle,=
 and it is directly plugged in mother board on pci-e mini slot.

Thanks,
Dongxiao

>=20
> Cheers,
>=20
> Bruce
>=20
> >
> >>
> >> Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
> >> ---
> >> .../linux/linux-yocto_2.6.37.bbappend =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0=
 =A03 +++
> >> 1 files changed, 3 insertions(+), 0 deletions(-)
> >>
> >> diff --git
> >> a/meta-fishriver/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
> >> b/meta-fishriver/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
> >> index b767109..5f8b8ca 100644
> >> --- a/meta-fishriver/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
> >> +++ b/meta-fishriver/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
> >> @@ -4,3 +4,6 @@ KMACHINE_fishriver =A0=3D "yocto/standard/fishriver"
> >>
> >> SRCREV_machine_pn-linux-yocto_fishriver ?=3D
> "697d84759be192403a8a87ab269196c67a0c2c88"
> >> SRCREV_meta_pn-linux-yocto_fishriver ?=3D
> "f1dc3722d45cdcc92c84ebfecf4ce616d2efed26"
> >> +
> >> +module_autoload_cdc-acm =3D "cdc-acm"
> >> +module_autoload_cdc-wdm =3D "cdc-wdm"
> >> --
> >> 1.7.0.4
> >>
> >> _______________________________________________
> >> poky mailing list
> >> poky@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/poky
> >
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
> >
>=20
>=20
>=20
> --
> "Thou shalt not follow the NULL pointer, for chaos and madness await thee=
 at
> its end"

