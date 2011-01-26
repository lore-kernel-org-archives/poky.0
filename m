Return-Path: <kevin.tian@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id C290B4C806DA
	for <poky@yoctoproject.org>; Tue, 25 Jan 2011 21:06:28 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 25 Jan 2011 19:06:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,378,1291622400"; d="scan'208";a="379965232"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by azsmga001.ch.intel.com with ESMTP; 25 Jan 2011 19:06:27 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 26 Jan 2011 11:05:39 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Wed, 26 Jan 2011 11:05:33 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>, "Xu, Dongxiao"
	<dongxiao.xu@intel.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>, 
	poky <poky@yoctoproject.org>
Date: Wed, 26 Jan 2011 11:05:32 +0800
Thread-Topic: [poky] Master stability update
Thread-Index: Acu83FQ8sSO/OXVXTluL/4ShNpLZeQAJWrfwAABtv1AAAHIK0A==
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504DB5BB7203@shsmsx502.ccr.corp.intel.com>
References: <1295993245.27814.133.camel@rex>
	<D5AB6E638E5A3E4B8F4406B113A5A19A31D0C878@shsmsx501.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504DB5BB71E1@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504DB5BB71E1@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Master stability update
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
X-List-Received-Date: Wed, 26 Jan 2011 03:06:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: Tian, Kevin
> Sent: Wednesday, January 26, 2011 10:52 AM
>=20
> > From: Xu, Dongxiao
> > Sent: Wednesday, January 26, 2011 10:46 AM
> >
> > Richard Purdie wrote:
> > > We merged the features into master. I just want to highlight the
> > > status of the following issues:
> > >
> > > * pseudo problem causing failure of meta-toolchain and corruption of
> > > certain file permissions - fixed in master
> > >
> > > * the -live image issues some people and the autobuilder were seeing
> > > - fixed in master
> > >
> > > * the perf issue for linux-yocto-stable - fixed in master
> > >
> > > The following are know issues with master:
> > >
> > > * Using rm_work and switching machines to machines of the same
> > > "multimachine" architecture breaks.
> >
> > After sysroot is per machine, we may need to reserve the "image" folder
> even
> > when rm_work, since for the second machine build, do_populate_sysroot a=
nd
> > do_package will be re-run to populate files into a different sysroot fo=
lder.
> >
> > >
> > > * When switching machines of the same "multimachine" architecture
> > > (e.g.
> > > emenlow to atom-pc), some sstate packages are changing checksums when
> > > at first glance they shouldn't (e.g. perl do_install). A quick scan
> > > of my sstate directory:
> >
> > I also have a look at my local build sstate directories, there are 17 p=
ackages
> > whose prebuilt result could not shared betweeen atom-pc and emenlow.
> Some
> > of them may be not a problem since there are ${MACHINE} variables used =
in
> > do_install(), some others are strange why do_install will have two diff=
erent
> > signatures between two different machines.
> >
> > I will spend some time investigating it.
> >
>=20
> Note that checksum changes may not come from do_install itself, which
> including
> the hash from other tasks that do_install depends on. To capture the latt=
er
> possibility, you can simply use "bitbake -S poky-image-minimal" which onl=
y
> generates
> .siginfo for all the tasks w/o actually running them. This way you can co=
mpare
> the
> difference between emenlow and atom-pc easily to see what actually change=
.
>=20

After a quick check, I guess this is not a problem. for example perl.do_con=
figure
changes checksum due to $MACHINE in dependency variables as Dongxiao said.
Once perl is not reusable, at least ~10 recieps (libzypp, libtool, rpm, ...=
) are not
reusable too because perl is in their task dependency chain.

I didn't check all the differences yet, but overall feeling is that this sh=
ould be OK
as Dongxiao mentioned there're several obvious MACHINE related recipes. I'l=
l
leave to Dongxiao for final confirmation. :-)

Thanks
Kevin

