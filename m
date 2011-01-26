Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9F4FE4C810E3
	for <poky@yoctoproject.org>; Tue, 25 Jan 2011 20:52:49 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 25 Jan 2011 18:52:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,378,1291622400"; d="scan'208";a="596500597"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 25 Jan 2011 18:52:48 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 26 Jan 2011 10:52:32 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 26 Jan 2011 10:52:32 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Wed, 26 Jan 2011 10:52:30 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>, poky <poky@yoctoproject.org>
Date: Wed, 26 Jan 2011 10:52:29 +0800
Thread-Topic: [poky] Master stability update
Thread-Index: Acu83FQ8sSO/OXVXTluL/4ShNpLZeQAJWrfwAABtv1A=
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504DB5BB71E1@shsmsx502.ccr.corp.intel.com>
References: <1295993245.27814.133.camel@rex>
	<D5AB6E638E5A3E4B8F4406B113A5A19A31D0C878@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A31D0C878@shsmsx501.ccr.corp.intel.com>
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
X-List-Received-Date: Wed, 26 Jan 2011 02:52:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: Xu, Dongxiao
> Sent: Wednesday, January 26, 2011 10:46 AM
>=20
> Richard Purdie wrote:
> > We merged the features into master. I just want to highlight the
> > status of the following issues:
> >
> > * pseudo problem causing failure of meta-toolchain and corruption of
> > certain file permissions - fixed in master
> >
> > * the -live image issues some people and the autobuilder were seeing
> > - fixed in master
> >
> > * the perf issue for linux-yocto-stable - fixed in master
> >
> > The following are know issues with master:
> >
> > * Using rm_work and switching machines to machines of the same
> > "multimachine" architecture breaks.
>=20
> After sysroot is per machine, we may need to reserve the "image" folder e=
ven
> when rm_work, since for the second machine build, do_populate_sysroot and
> do_package will be re-run to populate files into a different sysroot fold=
er.
>=20
> >
> > * When switching machines of the same "multimachine" architecture
> > (e.g.
> > emenlow to atom-pc), some sstate packages are changing checksums when
> > at first glance they shouldn't (e.g. perl do_install). A quick scan
> > of my sstate directory:
>=20
> I also have a look at my local build sstate directories, there are 17 pac=
kages
> whose prebuilt result could not shared betweeen atom-pc and emenlow. Some
> of them may be not a problem since there are ${MACHINE} variables used in
> do_install(), some others are strange why do_install will have two differ=
ent
> signatures between two different machines.
>=20
> I will spend some time investigating it.
>=20

Note that checksum changes may not come from do_install itself, which inclu=
ding=20
the hash from other tasks that do_install depends on. To capture the latter=
=20
possibility, you can simply use "bitbake -S poky-image-minimal" which only =
generates
.siginfo for all the tasks w/o actually running them. This way you can comp=
are the
difference between emenlow and atom-pc easily to see what actually change.

Thanks
Kevin

