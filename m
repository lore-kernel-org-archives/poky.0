Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id C346C4C8018D
	for <poky@yoctoproject.org>; Sun, 30 Jan 2011 22:50:55 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 30 Jan 2011 20:50:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,403,1291622400"; d="scan'208";a="702257831"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga001.jf.intel.com with ESMTP; 30 Jan 2011 20:50:54 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 31 Jan 2011 12:49:40 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 31 Jan 2011 12:49:40 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Mon, 31 Jan 2011 12:49:39 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Saul Wold <sgw@linux.intel.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Mon, 31 Jan 2011 12:49:38 +0800
Thread-Topic: [poky] [LTP] Yocto 1.0 M2 assessment -- DONE
Thread-Index: AcvAvguN+zzCTK/1Qe2j8bUc/Lrf7gAQmGeg
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504E6294E30C@shsmsx502.ccr.corp.intel.com>
References: <625BA99ED14B2D499DC4E29D8138F1504E6294E189@shsmsx502.ccr.corp.intel.com>
	<4D45CCDA.1030207@linux.intel.com>
In-Reply-To: <4D45CCDA.1030207@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: [LTP] Yocto 1.0 M2 assessment -- DONE
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
X-List-Received-Date: Mon, 31 Jan 2011 04:50:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: Saul Wold
> Sent: Monday, January 31, 2011 4:41 AM
>=20
> On 01/30/2011 01:12 AM, Tian, Kevin wrote:
> > Hi, all,
> >
> > I'd like to share the current LTP status, that I've basically done the
> > assessment for
> >
> > all the failures except routerstation (2.6.34 kernel has some IPC issue=
s
> > which causes
> >
> > lots of unexpected failures).
> >
> Kevin,
>=20
> Thanks for the excellent assesment, as we move forward, I will consult
> with you about the contents of the images.  Is there a reason you chose
> the SDK image over the LSB image?

I talked with Jiajun before. The major reason using SDK is to reduce the QA=
 effort,
because LSB image doesn't run on real hardware, and doesn't contain enough
development tools for openposix test.

But regarding to the fact that I still need manually run LSB images to veri=
fy most
failures, it's perhaps a good idea to ask QA to use LSB for Qemu LTP test, =
and
then use SDK for real-hw LTP and all posix tests. This does add some extra =
effort
but that's what we have to do in current stage.

>=20
> As you may have heard, we are working on creating sets of images that
> will meet various developers.  Soon, there will be an LSB-dev and
> LSD-sdk set of images that will contain headers/libraries and then
> headers/libraries and developer tools in LSB.  We might want to consider
> testing with the lsb-sdk image in the future since it will have some of
> the missing things that you have tested.
>=20
> Thoughts?

That's great. If this can be ready in M3, we can move to it to save more ti=
me.
Also it's better to have LSB running on real-hw which further unifies the e=
ffort.  :-)

> > - The majority (36) failures are categorized as Not-A-Bug, which mostly
> > comes from
> >
> > the fact that SDK profile doesn't include necessary packages for test,
> > and then are
> >
> > verified PASS by adding them back with necessary tweaking. There're als=
o
> > a few
> >
> > coming from lacking of memory/disk resources, which will be avoided in
> > the next test.
> >
> Do you have the list os packages that you had to add?  I do not see a
> summary of that list.

All the packages I have to add are contained in LSB profile already. The on=
ly
missing bits, as you said earlier, is the development part and graphics par=
t.

Of course even with LSB profile there're some errors such as cron/at, which
have been fixed in earlier bug lists.

>=20
> Again thanks for this great effort, and I look forward to the POSIX
> evaluation at somepoint in the near future.
>=20

POSIX is a bit lagging behind, because I want to focus on LTP first. So thi=
s work
will extend into M4 a bit. But I hope to have a major break before CNY, if =
there
may be one reason for the majority of the failures. :-)

Thanks
Kevin


