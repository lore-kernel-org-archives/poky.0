Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1E6C84C811A5
	for <poky@yoctoproject.org>; Wed, 26 Jan 2011 01:02:21 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 25 Jan 2011 23:02:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,379,1291622400"; d="scan'208";a="881067025"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga001.fm.intel.com with ESMTP; 25 Jan 2011 23:02:20 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 26 Jan 2011 15:01:59 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Wed, 26 Jan 2011 15:01:58 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: "Wold, Saul" <saul.wold@intel.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
Date: Wed, 26 Jan 2011 15:01:56 +0800
Thread-Topic: [poky] Master stability update
Thread-Index: Acu9Jnkrh/4i2lQpSTKu7/cLrHJN4gAADPQQ
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A31D0CA6F@shsmsx501.ccr.corp.intel.com>
References: <1295993245.27814.133.camel@rex> <4D3FC60D.5000003@intel.com>
In-Reply-To: <4D3FC60D.5000003@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: poky <poky@yoctoproject.org>
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
X-List-Received-Date: Wed, 26 Jan 2011 07:02:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Saul Wold wrote:
> On 01/25/2011 02:07 PM, Richard Purdie wrote:
>> We merged the features into master. I just want to highlight the
>> status of the following issues:
>>=20
>> * pseudo problem causing failure of meta-toolchain and corruption of
>> certain file permissions - fixed in master
>>=20
>> * the -live image issues some people and the autobuilder were seeing
>> -=20
>> fixed in master
>>=20
>> * the perf issue for linux-yocto-stable - fixed in master
>>=20
>> The following are know issues with master:
>>=20
>> * Using rm_work and switching machines to machines of the same
>> "multimachine" architecture breaks.
>>=20
>> * When switching machines of the same "multimachine" architecture
>> (e.g.=20
>> emenlow to atom-pc), some sstate packages are changing checksums when
>> at first glance they shouldn't (e.g. perl do_install). A quick scan
>> of=20
>> my sstate directory:
>>=20
>> $ ls *core2* | sed -e 's#core2-2-.*_#core2-2_#' | sort | uniq -cd |
>> grep -v siginfo
>>=20
>> yields:
>>=20
>>        2
>>      =20
>>      =20
>>      =20
>>      =20
>>      =20
>>      =20
>>      =20
>>      =20
>>      =20
>>      =20
>>      =20
>>      =20
>>      =20
>>      =20
>>      =20
>>      =20
>>      =20
>>      =20
>>      =20
>>      =20
>>      =20
>>      =20
>> sstate-libzypp-core2-poky-linux-0.0-git0+4494797d5b0369365b1af63921de45b=
197ead64f-r6-core2-2_deploy-ipk.tgz
>> 2
>> sstate-libzypp-core2-poky-linux-0.0-git0+4494797d5b0369365b1af63921de45b=
197ead64f-r6-core2-2_deploy-rpm.tgz
>> 2
>> sstate-libzypp-core2-poky-linux-0.0-git0+4494797d5b0369365b1af63921de45b=
197ead64f-r6-core2-2_package.tgz
>> 2
>> sstate-libzypp-core2-poky-linux-0.0-git0+4494797d5b0369365b1af63921de45b=
197ead64f-r6-core2-2_populate-sysroot.tgz
>> 2 sstate-netbase-core2-poky-linux-4.44-r0-core2-2_deploy-ipk.tgz 2
>> sstate-netbase-core2-poky-linux-4.44-r0-core2-2_deploy-rpm.tgz 2
>> sstate-netbase-core2-poky-linux-4.44-r0-core2-2_package.tgz 2
>> sstate-netbase-core2-poky-linux-4.44-r0-core2-2_populate-sysroot.tgz
>> 2 sstate-perl-core2-poky-linux-5.12.2-r0-core2-2_deploy-ipk.tgz 2
>> sstate-perl-core2-poky-linux-5.12.2-r0-core2-2_deploy-rpm.tgz 2
>> sstate-perl-core2-poky-linux-5.12.2-r0-core2-2_package.tgz 2
>> sstate-perl-core2-poky-linux-5.12.2-r0-core2-2_populate-sysroot.tgz
>> 2 sstate-rpm-core2-poky-linux-5.1.10-r8-core2-2_deploy-ipk.tgz 2
>> sstate-rpm-core2-poky-linux-5.1.10-r8-core2-2_deploy-rpm.tgz 2
>> sstate-rpm-core2-poky-linux-5.1.10-r8-core2-2_package.tgz 2
>> sstate-rpm-core2-poky-linux-5.1.10-r8-core2-2_populate-sysroot.tgz 2
>> sstate-sat-solver-core2-poky-linux-0.0-git0+aa799f7bae0ec055e0e527203635=
001bb7346dbc-r2-core2-2_deploy-ipk.tgz
>> 2
>> sstate-sat-solver-core2-poky-linux-0.0-git0+aa799f7bae0ec055e0e527203635=
001bb7346dbc-r2-core2-2_deploy-rpm.tgz
>> 2
>> sstate-sat-solver-core2-poky-linux-0.0-git0+aa799f7bae0ec055e0e527203635=
001bb7346dbc-r2-core2-2_package.tgz
>> 2
>> sstate-sat-solver-core2-poky-linux-0.0-git0+aa799f7bae0ec055e0e527203635=
001bb7346dbc-r2-core2-2_populate-sysroot.tgz
>> 2
>> sstate-zypper-core2-poky-linux-1.4.7-git0+9eb0e248e06c8d20ad054be2439149=
d9ede37531-r3-core2-2_deploy-ipk.tgz
>> 2
>> sstate-zypper-core2-poky-linux-1.4.7-git0+9eb0e248e06c8d20ad054be2439149=
d9ede37531-r3-core2-2_deploy-rpm.tgz
>> 2
>> sstate-zypper-core2-poky-linux-1.4.7-git0+9eb0e248e06c8d20ad054be2439149=
d9ede37531-r3-core2-2_package.tgz
>> 2
>> sstate-zypper-core2-poky-linux-1.4.7-git0+9eb0e248e06c8d20ad054be24391
>> 49d9ede37531-r3-core2-2_populate-sysroot.tgz                       =20
>>=20
>> which isn't too bad but shows there are some issues creeping in
>> there.=20
>> These need investigating and fixing, there is a strong rpm theme
>> going=20
>> on there. Also note this was just a minimal image, sato will likely
>> reveal other issues.
>>=20
>> Cheers,
>>=20
>> Richard
>>=20
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>=20
>=20
> We are looking pretty good after the nightly has been running, a
> couple of issues were discovered by the Autobuilder, but we are more
> stable than we have been for a while. =20
>=20
> Thanks to everyone for their hard work.
>=20
> Seems that we have a couple of additional issues that need to be
> addressed.=20
>=20
> 1) Recent changes to the send-pull-request have caused the problem
>     with the email now coming from poky-bounces. * dvhart or sgarman
> should investigate this please=20
>=20
> 2) atom-pc connman failure, Dongxiao may have already submitted a
> patch=20

This should be the same issue of doing "rm_work" when building the first ma=
chine (autobuilder inherits rm_work.bbclass).
I just sent out a fix patch for review.

Thanks,
Dongxiao

>=20
> 3) emenlow rootfs failure, may be related to zypper/rpm, need to
> verify with Mark and his patch.=20
>=20
> Thanks
>      Sau!
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


