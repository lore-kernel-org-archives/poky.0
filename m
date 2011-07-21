Return-Path: <Paul.Ourada@Covidien.com>
Received: from mx01no.tycohealthcare.com (mx01no.tycohealthcare.com
	[216.75.208.72])
	by mx1.pokylinux.org (Postfix) with ESMTP id BABD24C800A1
	for <poky@yoctoproject.org>; Thu, 21 Jul 2011 14:34:47 -0500 (CDT)
X-IronPort-AV: E=Sophos;i="4.67,242,1309752000"; d="scan'208";a="275408025"
Received: from unknown (HELO tamans-bh02.thcg.net) ([10.80.3.108])
	by mx01no.tycohealthcare.com with ESMTP; 21 Jul 2011 15:34:47 -0400
Received: from TAMANS-HT100V.thcg.net ([10.80.9.28]) by tamans-bh02.thcg.net
	with Microsoft SMTPSVC(6.0.3790.4675); 
	Thu, 21 Jul 2011 15:34:46 -0400
Received: from TAMANS-HT101V.thcg.net (10.80.9.29) by TAMANS-HT100V.thcg.net
	(10.80.9.28) with Microsoft SMTP Server (TLS) id 14.1.289.1;
	Thu, 21 Jul 2011 15:34:46 -0400
Received: from TAMANS-MB100V.thcg.net ([169.254.8.4]) by
	TAMANS-HT101V.thcg.net ([10.80.9.29]) with mapi id 14.01.0289.001;
	Thu, 21 Jul 2011 15:34:33 -0400
From: "Ourada, Paul" <Paul.Ourada@Covidien.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, Gary Thomas
	<gary@mlbassoc.com>, Poky Project <poky@yoctoproject.org>, "Flanagan,
	Elizabeth" <elizabeth.flanagan@intel.com>
Thread-Topic: [poky] WAS: SDK (GMAE) questions NOW: build scripting question
Thread-Index: AQHMR90327iAyqI7q0+urGB95w2bdA==
Date: Thu, 21 Jul 2011 19:34:32 +0000
Message-ID: <4D9E0AFD9C2FCC428A8EAADA898F5B2D94E0@TAMANS-MB100V.thcg.net>
References: <4E2735F8.3060409@mlbassoc.com>
	<C6510F6D410BB64A8C15398EDC6B847C136F6102@ORSMSX101.amr.corp.intel.com>
	<4D9E0AFD9C2FCC428A8EAADA898F5B2D8F54@TAMANS-MB100V.thcg.net>
	<C6510F6D410BB64A8C15398EDC6B847C136F6171@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C136F6171@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.80.12.26]
MIME-Version: 1.0
X-OriginalArrivalTime: 21 Jul 2011 19:34:46.0872 (UTC)
	FILETIME=[3FAF9D80:01CC47DD]
Subject: Re: WAS: SDK (GMAE) questions NOW: build scripting question
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
X-List-Received-Date: Thu, 21 Jul 2011 19:34:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

OK, I think I found out how to do this in one of this year's ELC presentati=
ons on Yocto by David Stewart (Intel).=20

CLI-prompt>MACHINE=3D[qemu[x86|arm] | atom-pc | emenlow | ...] bitbake poky=
-image-sato-sdk meta-toolchain package-index ...

Am I on the right track?

Thanks for listening! :)

Paul

Paul E. Ourada
Sr. Principal Software Engineer
Covidien, Energy-based Devices
5920 Longbow Drive
Boulder, CO 80301
paul.ourada@covidien.com
www.covidien.com
Main: 303-530-2300
Ofc: 303-581-6940
Fax: 303-581-6741


-----Original Message-----
From: Zhang, Jessica [mailto:jessica.zhang@intel.com]=20
Sent: Wednesday, July 20, 2011 3:49 PM
To: Ourada, Paul; Gary Thomas; Poky Project; Flanagan, Elizabeth
Subject: RE: [poky] SDK (GMAE) questions

Hi Paul,

Thanks for the interest.  I'll adding Beth, our release engineer to the ema=
il thread since she's managing our auto builder which generate the weekly, =
nightly build, etc through scripts.

Thanks,
Jessica

-----Original Message-----
From: Ourada, Paul [mailto:Paul.Ourada@Covidien.com]
Sent: Wednesday, July 20, 2011 2:44 PM
To: Zhang, Jessica; Gary Thomas; Poky Project
Subject: RE: [poky] SDK (GMAE) questions

Hi Jessica -

This is interesting to me, because I'm also getting started on a Poky proje=
ct. How would you automate the different target builds? I'm contemplating a=
 qemu build for on-host debug, and an atom-pc release target. I know that t=
here's a MACHINE variable in local.conf, but I'd like to script this for au=
tomated nightly builds.

Paul E. Ourada
Sr. Principal Software Engineer
Covidien, Energy-based Devices
5920 Longbow Drive
Boulder, CO 80301
paul.ourada@covidien.com
www.covidien.com
Main: 303-530-2300
Ofc: 303-581-6940
Fax: 303-581-6741

-----Original Message-----
From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] =
On Behalf Of Zhang, Jessica
Sent: Wednesday, July 20, 2011 3:37 PM
To: Gary Thomas; Poky Project
Subject: Re: [poky] SDK (GMAE) questions

Hi Gary,

You can achieve one host to support multiple target config, through Yocto a=
dt-installer, this way you'll have desired target cross toolchain installed=
 under /opt/poky instead of all the overlapping packages.  Since the Yocto =
toolchain supports sysroot, you can setup your sysroot by using your target=
 image rootfs under desired directories of your choice.  Also, since adt-in=
staller is based on ipk, it's easier to customize your sysroot setup throug=
h opkg pkgm.

Thanks,
Jessica

-----Original Message-----
From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] =
On Behalf Of Gary Thomas
Sent: Wednesday, July 20, 2011 1:09 PM
To: Poky Project
Subject: [poky] SDK (GMAE) questions

I'd like to use one host machine to support multiple target configurations,
e.g. ppc603 + armv7a + armv5e  Currently, if I build the SDK, it seems that
there are too many overlaps, conflicts, for this to work.  Am I missing
something?

Also, is there a way I can [easily] select what goes into the SDK?  For
example, my armv5e targets are bare with no X, etc, so it seems silly
to populate the SDK with tons of X oriented packages.

Thanks for any pointers

--
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------
_______________________________________________
poky mailing list
poky@yoctoproject.org
https://lists.yoctoproject.org/listinfo/poky
_______________________________________________
poky mailing list
poky@yoctoproject.org
https://lists.yoctoproject.org/listinfo/poky

