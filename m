Return-Path: <Paul.Ourada@Covidien.com>
Received: from mx01no.tycohealthcare.com (mx01no.tycohealthcare.com
	[216.75.208.72])
	by mx1.pokylinux.org (Postfix) with ESMTP id EBD234C800AB
	for <poky@yoctoproject.org>; Wed, 20 Jul 2011 16:44:16 -0500 (CDT)
X-IronPort-AV: E=Sophos;i="4.67,237,1309752000"; d="scan'208";a="274562950"
Received: from unknown (HELO tamans-bh02.thcg.net) ([10.80.3.108])
	by mx01no.tycohealthcare.com with ESMTP; 20 Jul 2011 17:44:16 -0400
Received: from TAMANS-HT100V.thcg.net ([10.80.9.28]) by tamans-bh02.thcg.net
	with Microsoft SMTPSVC(6.0.3790.4675); 
	Wed, 20 Jul 2011 17:44:16 -0400
Received: from TAMANS-HT101V.thcg.net (10.80.9.29) by TAMANS-HT100V.thcg.net
	(10.80.9.28) with Microsoft SMTP Server (TLS) id 14.1.289.1;
	Wed, 20 Jul 2011 17:44:16 -0400
Received: from TAMANS-MB100V.thcg.net ([169.254.8.4]) by
	TAMANS-HT101V.thcg.net ([10.80.9.29]) with mapi id 14.01.0289.001;
	Wed, 20 Jul 2011 17:43:55 -0400
From: "Ourada, Paul" <Paul.Ourada@Covidien.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, Gary Thomas
	<gary@mlbassoc.com>, Poky Project <poky@yoctoproject.org>
Thread-Topic: [poky] SDK (GMAE) questions
Thread-Index: AQHMRxkA3iH02uim0kS60ag7EEJvMJT1/zKA//+9nBA=
Date: Wed, 20 Jul 2011 21:43:54 +0000
Message-ID: <4D9E0AFD9C2FCC428A8EAADA898F5B2D8F54@TAMANS-MB100V.thcg.net>
References: <4E2735F8.3060409@mlbassoc.com>
	<C6510F6D410BB64A8C15398EDC6B847C136F6102@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C136F6102@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.80.12.25]
MIME-Version: 1.0
X-OriginalArrivalTime: 20 Jul 2011 21:44:16.0070 (UTC)
	FILETIME=[2C136660:01CC4726]
Subject: Re: SDK (GMAE) questions
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
X-List-Received-Date: Wed, 20 Jul 2011 21:44:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

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

