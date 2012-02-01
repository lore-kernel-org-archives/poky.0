Return-Path: <bryan.odonoghue@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0386E004D2
	for <poky@yoctoproject.org>; Wed,  1 Feb 2012 10:31:53 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 01 Feb 2012 10:31:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="119227676"
Received: from irsmsx601.ger.corp.intel.com ([163.33.7.164])
	by fmsmga002.fm.intel.com with ESMTP; 01 Feb 2012 10:31:52 -0800
Received: from irsmsx103.ger.corp.intel.com (163.33.3.157) by
	irsmsx601.ger.corp.intel.com (163.33.7.164) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 1 Feb 2012 18:31:38 +0000
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.194]) by
	IRSMSX103.ger.corp.intel.com ([169.254.3.221]) with mapi id
	14.01.0355.002; Wed, 1 Feb 2012 18:31:37 +0000
From: "O'donoghue, Bryan" <bryan.odonoghue@intel.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Thread-Topic: [poky] Simple recipe for local kernel/git development
Thread-Index: AQHM4Ofinsi/1jQEqkeQ1RNUYEVsS5YoJKzggAAC5ACAAACScIAAAtIAgAAt6ACAAASZEA==
Date: Wed, 1 Feb 2012 18:31:37 +0000
Message-ID: <B80010913FB1F346A630B7F2E18A60C0078BB2@IRSMSX102.ger.corp.intel.com>
References: <B80010913FB1F346A630B7F2E18A60C007897E@IRSMSX102.ger.corp.intel.com>
	<CADkTA4Mo_wE883Ceg1SBRxJ-ctV5ieb71vRhyVt4kjKfXTjYbg@mail.gmail.com>
	<B80010913FB1F346A630B7F2E18A60C00789E7@IRSMSX102.ger.corp.intel.com>
	<CADkTA4Oeb78DP==N7MD98L5Pc7vWPt4ccsHiOVbhN7dyzNkZMw@mail.gmail.com>
	<B80010913FB1F346A630B7F2E18A60C0078A17@IRSMSX102.ger.corp.intel.com>
	<CADkTA4MLgXCH5HGCDxUx+sfSdph5bnL19+p5+9Cn-cBdkQXeyA@mail.gmail.com>
	<CADkTA4On0R0hoSdKLMcP_XmeRTAyj1qAvLgTJP1N=fZqViYrzA@mail.gmail.com>
In-Reply-To: <CADkTA4On0R0hoSdKLMcP_XmeRTAyj1qAvLgTJP1N=fZqViYrzA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Simple recipe for local kernel/git development
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
X-List-Received-Date: Wed, 01 Feb 2012 18:31:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> > Easily supported. I'll follow up once my fetches have completed here
> > and I see that the
> > recipe builds properly.
>=20
> Sorry for the slow reply, I got bogged down fixing a few things.
>=20
> I confirmed that the sample recipe I mentioned still builds. Although
> I do have some
> tweaks to things that I'm preparing for master at the moment. But they
> are
> cosmetic/streamlining changes, not fundamental issues.
>=20
> The recipe I was referring to is here:
>=20
>   http://git.yoctoproject.org/cgit/cgit.cgi/poky-extras/tree/meta-
> kernel-dev/recipes-kernel/linux/linux-korg.bb
>=20
> cloning poky-extras and looking in meta-kernel-dev will get you your
> own copy.
>=20
> The recipe is intended to build kernel.org, or really any git
> repository, plus a defconfig.
>=20
> It creates some minimal infrastructure to work with the yocto tools,
> and to create someplace
> that work could be done, and then flipped into a formatted kernel
> feature. But the branch that
> is built is created automatically and directly off the point you
> specify. Which in our case would
> be master HEAD.
>=20
> You'd need to tweak the kernel version, etc, but in the end it the
> build system that consumes
> and uses that, more than the kernel build itself.

Thanks very much Bruce.

We'll give it a whirl and let you know how we go
-------------------------------------------------------------
Intel Ireland Limited (Branch)
Collinstown Industrial Park, Leixlip, County Kildare, Ireland
Registered Number: E902934

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


