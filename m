Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4A6624C8007E
	for <poky@yoctoproject.org>; Wed,  9 Feb 2011 21:54:21 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 09 Feb 2011 19:54:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,450,1291622400"; d="scan'208";a="886093956"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by fmsmga001.fm.intel.com with ESMTP; 09 Feb 2011 19:54:20 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx602.amr.corp.intel.com ([10.22.226.211]) with mapi;
	Wed, 9 Feb 2011 19:54:20 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, Gary Thomas <gary@mlbassoc.com>
Date: Wed, 9 Feb 2011 19:54:20 -0800
Thread-Topic: [poky] build failures for eglibc_2.12 on FC14.x86_64 machine
Thread-Index: AcvIrLbQuZzxGR++RD+fm7atUv29+gAALKCgAAQFqZAAAMCVoAADDWxAAAJKoJA=
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE941217730C@orsmsx504.amr.corp.intel.com>
References: <9AFCD584B0B67B48AE8D8585BE30BA950DB0AA11@orsmsx504.amr.corp.intel.com>
	<4D531BCD.9020609@mlbassoc.com>
	<9AFCD584B0B67B48AE8D8585BE30BA950DB0AA46@orsmsx504.amr.corp.intel.com>
	<9DA5872FEF993D41B7173F58FCF6BE9412177205@orsmsx504.amr.corp.intel.com>
	<9DA5872FEF993D41B7173F58FCF6BE9412177249@orsmsx504.amr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA950DB0AC79@orsmsx504.amr.corp.intel.com>
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA950DB0AC79@orsmsx504.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: build failures for eglibc_2.12 on FC14.x86_64 machine
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
X-List-Received-Date: Thu, 10 Feb 2011 03:54:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> > Also it worked fine on my f14.64 system. So I did not see the issue
> > with latest master. Nitin
>=20
> Hmm, anything special you did on your f14.64 machine setup to run
> bitbake
> besides those documented in the quick start?

Jessica,
  This time I did: MACHINE=3Dqemuarm bitbake eglibc-nativesdk
And it also built fine on f14.64.

Nothing special on F14. While installing I generally select all the package=
s. And then as per the poky manual I also install poky-scripts and poky-dep=
ends packages.
Thanks,
Nitin


