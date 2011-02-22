Return-Path: <jiajun.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 060F84C800B2
	for <poky@yoctoproject.org>; Tue, 22 Feb 2011 01:21:10 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 21 Feb 2011 23:21:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,206,1297065600"; d="scan'208";a="711596824"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga001.jf.intel.com with ESMTP; 21 Feb 2011 23:21:06 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 22 Feb 2011 15:20:51 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Tue, 22 Feb 2011 15:20:50 +0800
From: "Xu, Jiajun" <jiajun.xu@intel.com>
To: "Yu, Ke" <ke.yu@intel.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
Date: Tue, 22 Feb 2011 15:20:48 +0800
Thread-Topic: [poky] Autobuilder status
Thread-Index: AcvSJxcHqAUasYmuQm2jW4NLSrWGcQAOcqHw
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A333AD2C0@shsmsx501.ccr.corp.intel.com>
References: <1298331207.11289.3256.camel@rex>
	<20110222002618.GA10710@kyu3-hedt>
In-Reply-To: <20110222002618.GA10710@kyu3-hedt>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Autobuilder status
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
X-List-Received-Date: Tue, 22 Feb 2011 07:21:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> On Feb 21, 23:33, Richard Purdie wrote:
>> Hi,
>>=20
>> There appear to be three issues on the autobuilder at present which
>> we need to get fixed quickly.
>>=20
>> 1) "zypper search avahi" is causing a segfault on some architectures
>> with a double free being detected by libc. This seems to be the
>> cause of all the runtime sanity test failures.
>>=20
>> 2) The tar issues are fixed but there is an underlying problem with
>> error propagation as it appears bitbake was ignoring the sstate
>> extraction failure rather than accounting for it in its build task list.
>> If extraction fails, that task should not be making the "skip" list
>> but it looks like it does. That bug needs fixing too.
>>=20
>> 3) There are a number of dpkg-deb failures on permissions. This
>> looks to be pseudo related. Creation of the sstate package and
>> extraction of it should be happening under pseudo and the error
>> suggests this is not happening.
>>=20
>> I think PaulE is looking at 2), 3) is new and unassigned and I'm not
>> sure who is looking at 1) but I'd like to confirm someone is.
>>=20
>>=20
>> I'm also aware of some other niggling problems:
>>=20
>> a) do_rootfs depends on the populate_sysroot tasks for all the RDEPENDS.
>> This appears to be to pull in any tools required for the
>> postinstalls and dates to changes I made in 2007. This needs
>> revisiting as its crazy to populate all the sysroots when just the
>> rpms are needed for image generation.
>>=20
>> Simply put, a "bitbake poky-image-xxx -c rootfs" should just install
>> the package_write_rpm tasks it needs and the populate_sysroot for
>> any tools needed. No package data or target populate_sysroot tasks shoul=
d run.
>>=20
>> b) "all" architecture packages seem to be getting reinstalled a lot
>> by sstate. Recent changes to the autobuilder should make it clearer
>> when this is happening but we should find out why.
>>=20
>>=20
>> I'll aim to file bugs on these tomorrow but just wanted to write
>> things down whilst there were fresh in my mind. I suspect there may
>> be a bug open for 1) above but I'd still appreciate a status update on i=
t.
>=20
> Yes, Bug 722 is for 1), and Qing is looking at it. He will make a
> status update on this.
>=20

Several zypper bugs are reported currently, bug 721, bug 722 and bug 749.

> Regards
> Ke
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

Best Regards,
Jiajun



