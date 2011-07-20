Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id CF3794C800AB
	for <poky@yoctoproject.org>; Wed, 20 Jul 2011 16:49:27 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 20 Jul 2011 14:49:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,237,1309762800"; d="scan'208";a="30045451"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga001.jf.intel.com with ESMTP; 20 Jul 2011 14:49:23 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 20 Jul 2011 14:49:22 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.233]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.75]) with mapi id
	14.01.0289.001; Wed, 20 Jul 2011 14:49:22 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Ourada, Paul" <Paul.Ourada@Covidien.com>, Gary Thomas
	<gary@mlbassoc.com>, Poky Project <poky@yoctoproject.org>, "Flanagan,
	Elizabeth" <elizabeth.flanagan@intel.com>
Thread-Topic: [poky] SDK (GMAE) questions
Thread-Index: AQHMRxkAZ51rmeST7E2t4INIlbRPB5T1uoFAgAB44wD//4udIA==
Date: Wed, 20 Jul 2011 21:49:22 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C136F6171@ORSMSX101.amr.corp.intel.com>
References: <4E2735F8.3060409@mlbassoc.com>
	<C6510F6D410BB64A8C15398EDC6B847C136F6102@ORSMSX101.amr.corp.intel.com>
	<4D9E0AFD9C2FCC428A8EAADA898F5B2D8F54@TAMANS-MB100V.thcg.net>
In-Reply-To: <4D9E0AFD9C2FCC428A8EAADA898F5B2D8F54@TAMANS-MB100V.thcg.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
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
X-List-Received-Date: Wed, 20 Jul 2011 21:49:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

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

