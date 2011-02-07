Return-Path: <nitin.a.kamble@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 879774C80878
	for <poky@lists.pokylinux.org>; Mon,  7 Feb 2011 09:45:22 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 07 Feb 2011 07:45:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,438,1291622400"; d="scan'208";a="385203573"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by azsmga001.ch.intel.com with ESMTP; 07 Feb 2011 07:45:19 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx604.amr.corp.intel.com ([10.250.113.17]) with mapi;
	Mon, 7 Feb 2011 07:45:19 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: Gary Thomas <gary@mlbassoc.com>, Poky <poky@lists.pokylinux.org>
Date: Mon, 7 Feb 2011 07:45:17 -0800
Thread-Topic: [poky] eglibc configurability
Thread-Index: AcvG1XzY2JGrxxzgRNKzGwmXj9uRpgACCXPw
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE9412060A17@orsmsx504.amr.corp.intel.com>
References: <4D500535.3070505@mlbassoc.com>
In-Reply-To: <4D500535.3070505@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: eglibc configurability
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
X-List-Received-Date: Mon, 07 Feb 2011 15:45:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: poky-bounces@yoctoproject.org [mailto:poky-
> bounces@yoctoproject.org] On Behalf Of Gary Thomas
> Sent: Monday, February 07, 2011 6:44 AM
> To: Poky
> Subject: [poky] eglibc configurability
>=20
> I often run small (slow) embedded systems with only a ramdisk
> based file system.  When I use Poky for this, one side effect
> is that some packages need to be "configured" on bootup, which
> in the case of a ramdisk based operation means every time.
>=20
> I notice that the eglibc package brings in a couple of these
> which are problematic (mostly in how long they take to run)
> Looking at meta/conf/distro/include/poky-eglibc.inc:
>=20
> LIBC_DEPENDENCIES =3D "libsegfault \
>                       eglibc \
>                       eglibc-dbg \
>                       eglibc-dev \
>                       eglibc-utils \
>                       eglibc-thread-db \
>                       eglibc-localedata-i18n \
>                       eglibc-gconv-ibm850 \
>                       eglibc-gconv-cp1252 \
>                       eglibc-gconv-iso8859-1 \
>                       eglibc-gconv-iso8859-15 \
>                       locale-base-en-us \
>                       locale-base-en-gb "
>=20
> On my OMAP-L138 target, configuring locale-base-* takes
> a long time, upwards of 35 seconds each.
>=20
> Are multiple locale-base packages really necessary?
> How could I best (in the Poky spirit) limit this?  In the
> minimum, I'd like to only have one locale, saving at least
> 35 seconds of boot time.
>=20
> Ideas?  Comments?

Gary,
  Look at the LIMIT_BUILT_LOCALES variable in local.conf. I think that woul=
d give you what are you looking for. Also you can enable the mklibs optimiz=
ations for such images, which would save image size.


>=20
> Thanks
>=20
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

