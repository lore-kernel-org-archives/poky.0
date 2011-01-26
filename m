Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id D28454C806DA
	for <poky@yoctoproject.org>; Tue, 25 Jan 2011 20:46:15 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 25 Jan 2011 18:46:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,378,1291622400"; d="scan'208";a="596499449"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 25 Jan 2011 18:46:03 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 26 Jan 2011 10:45:57 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Wed, 26 Jan 2011 10:45:56 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, poky
	<poky@yoctoproject.org>
Date: Wed, 26 Jan 2011 10:45:55 +0800
Thread-Topic: [poky] Master stability update
Thread-Index: Acu83FQ8sSO/OXVXTluL/4ShNpLZeQAJWrfw
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A31D0C878@shsmsx501.ccr.corp.intel.com>
References: <1295993245.27814.133.camel@rex>
In-Reply-To: <1295993245.27814.133.camel@rex>
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
X-List-Received-Date: Wed, 26 Jan 2011 02:46:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Richard Purdie wrote:
> We merged the features into master. I just want to highlight the
> status of the following issues:=20
>=20
> * pseudo problem causing failure of meta-toolchain and corruption of
> certain file permissions - fixed in master=20
>=20
> * the -live image issues some people and the autobuilder were seeing
> - fixed in master=20
>=20
> * the perf issue for linux-yocto-stable - fixed in master
>=20
> The following are know issues with master:
>=20
> * Using rm_work and switching machines to machines of the same
> "multimachine" architecture breaks.=20

After sysroot is per machine, we may need to reserve the "image" folder eve=
n when rm_work, since for the second machine build, do_populate_sysroot and=
 do_package will be re-run to populate files into a different sysroot folde=
r.=20

>=20
> * When switching machines of the same "multimachine" architecture
> (e.g.=20
> emenlow to atom-pc), some sstate packages are changing checksums when
> at first glance they shouldn't (e.g. perl do_install). A quick scan
> of my sstate directory: =20

I also have a look at my local build sstate directories, there are 17 packa=
ges whose prebuilt result could not shared betweeen atom-pc and emenlow. So=
me of them may be not a problem since there are ${MACHINE} variables used i=
n do_install(), some others are strange why do_install will have two differ=
ent signatures between two different machines.=20

I will spend some time investigating it.

Thanks,
Dongxiao

>=20
> $ ls *core2* | sed -e 's#core2-2-.*_#core2-2_#' | sort | uniq -cd |
> grep -v siginfo=20
>=20
> yields:
>=20
>       2
>     =20
>     =20
>     =20
>     =20
>     =20
>     =20
>     =20
>     =20
>     =20
>     =20
>     =20
>     =20
>     =20
>     =20
>     =20
>     =20
>     =20
>     =20
>     =20
>     =20
>     =20
>     =20
>     =20
> sstate-libzypp-core2-poky-linux-0.0-git0+4494797d5b0369365b1af63921de45b1=
97ead64f-r6-core2-2_deploy-ipk.tgz
> 2
> sstate-libzypp-core2-poky-linux-0.0-git0+4494797d5b0369365b1af63921de45b1=
97ead64f-r6-core2-2_deploy-rpm.tgz
> 2
> sstate-libzypp-core2-poky-linux-0.0-git0+4494797d5b0369365b1af63921de45b1=
97ead64f-r6-core2-2_package.tgz
> 2
> sstate-libzypp-core2-poky-linux-0.0-git0+4494797d5b0369365b1af63921de45b1=
97ead64f-r6-core2-2_populate-sysroot.tgz
> 2 sstate-netbase-core2-poky-linux-4.44-r0-core2-2_deploy-ipk.tgz 2
> sstate-netbase-core2-poky-linux-4.44-r0-core2-2_deploy-rpm.tgz 2
> sstate-netbase-core2-poky-linux-4.44-r0-core2-2_package.tgz 2
> sstate-netbase-core2-poky-linux-4.44-r0-core2-2_populate-sysroot.tgz
> 2 sstate-perl-core2-poky-linux-5.12.2-r0-core2-2_deploy-ipk.tgz 2
> sstate-perl-core2-poky-linux-5.12.2-r0-core2-2_deploy-rpm.tgz 2
> sstate-perl-core2-poky-linux-5.12.2-r0-core2-2_package.tgz 2
> sstate-perl-core2-poky-linux-5.12.2-r0-core2-2_populate-sysroot.tgz 2
> sstate-rpm-core2-poky-linux-5.1.10-r8-core2-2_deploy-ipk.tgz 2
> sstate-rpm-core2-poky-linux-5.1.10-r8-core2-2_deploy-rpm.tgz 2
> sstate-rpm-core2-poky-linux-5.1.10-r8-core2-2_package.tgz 2
> sstate-rpm-core2-poky-linux-5.1.10-r8-core2-2_populate-sysroot.tgz 2
> sstate-sat-solver-core2-poky-linux-0.0-git0+aa799f7bae0ec055e0e5272036350=
01bb7346dbc-r2-core2-2_deploy-ipk.tgz
> 2
> sstate-sat-solver-core2-poky-linux-0.0-git0+aa799f7bae0ec055e0e5272036350=
01bb7346dbc-r2-core2-2_deploy-rpm.tgz
> 2
> sstate-sat-solver-core2-poky-linux-0.0-git0+aa799f7bae0ec055e0e5272036350=
01bb7346dbc-r2-core2-2_package.tgz
> 2
> sstate-sat-solver-core2-poky-linux-0.0-git0+aa799f7bae0ec055e0e5272036350=
01bb7346dbc-r2-core2-2_populate-sysroot.tgz
> 2
> sstate-zypper-core2-poky-linux-1.4.7-git0+9eb0e248e06c8d20ad054be2439149d=
9ede37531-r3-core2-2_deploy-ipk.tgz
> 2
> sstate-zypper-core2-poky-linux-1.4.7-git0+9eb0e248e06c8d20ad054be2439149d=
9ede37531-r3-core2-2_deploy-rpm.tgz
> 2
> sstate-zypper-core2-poky-linux-1.4.7-git0+9eb0e248e06c8d20ad054be2439149d=
9ede37531-r3-core2-2_package.tgz
> 2
> sstate-zypper-core2-poky-linux-1.4.7-git0+9eb0e248e06c8d20ad054be2439149d=
9ede37531-r3-core2-2_populate-sysroot.tgz
>=20
> which isn't too bad but shows there are some issues creeping in there.
> These need investigating and fixing, there is a strong rpm theme
> going on there. Also note this was just a minimal image, sato will
> likely reveal other issues. =20
>=20
> Cheers,
>=20
> Richard
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


