Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 03AE84C800A1
	for <poky@yoctoproject.org>; Thu, 21 Jul 2011 14:42:11 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 21 Jul 2011 12:42:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,242,1309762800"; d="scan'208";a="30477918"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by orsmga001.jf.intel.com with ESMTP; 21 Jul 2011 12:42:00 -0700
Received: from orsmsx103.amr.corp.intel.com (10.22.225.130) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 21 Jul 2011 12:42:00 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.233]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.105]) with mapi id
	14.01.0289.001; Thu, 21 Jul 2011 12:41:59 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Ourada, Paul" <Paul.Ourada@Covidien.com>, Gary Thomas
	<gary@mlbassoc.com>, Poky Project <poky@yoctoproject.org>, "Flanagan,
	Elizabeth" <elizabeth.flanagan@intel.com>
Thread-Topic: [poky] WAS: SDK (GMAE) questions NOW: build scripting question
Thread-Index: AQHMR91BcKwwmo3Ui0yBbf8otcf/K5T3K83Q
Date: Thu, 21 Jul 2011 19:41:58 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C136F76FD@ORSMSX101.amr.corp.intel.com>
References: <4E2735F8.3060409@mlbassoc.com>
	<C6510F6D410BB64A8C15398EDC6B847C136F6102@ORSMSX101.amr.corp.intel.com>
	<4D9E0AFD9C2FCC428A8EAADA898F5B2D8F54@TAMANS-MB100V.thcg.net>
	<C6510F6D410BB64A8C15398EDC6B847C136F6171@ORSMSX101.amr.corp.intel.com>
	<4D9E0AFD9C2FCC428A8EAADA898F5B2D94E0@TAMANS-MB100V.thcg.net>
In-Reply-To: <4D9E0AFD9C2FCC428A8EAADA898F5B2D94E0@TAMANS-MB100V.thcg.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
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
X-List-Received-Date: Thu, 21 Jul 2011 19:42:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Yes, this is the command line to generate the target rootfs, build the cros=
s toolchain and also the ipk package index.  You can definitely build your =
automated build setup from there.

-----Original Message-----
From: Ourada, Paul [mailto:Paul.Ourada@Covidien.com]
Sent: Thursday, July 21, 2011 12:35 PM
To: Zhang, Jessica; Gary Thomas; Poky Project; Flanagan, Elizabeth
Subject: RE: [poky] WAS: SDK (GMAE) questions NOW: build scripting question

OK, I think I found out how to do this in one of this year's ELC presentati=
ons on Yocto by David Stewart (Intel).

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
From: Zhang, Jessica [mailto:jessica.zhang@intel.com]
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

