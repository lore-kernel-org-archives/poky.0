Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id B61514C8118C
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 00:15:50 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 26 Jan 2011 22:15:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,384,1291622400"; d="scan'208";a="380541678"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by azsmga001.ch.intel.com with ESMTP; 26 Jan 2011 22:15:49 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 27 Jan 2011 14:15:08 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 27 Jan 2011 14:15:08 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Thu, 27 Jan 2011 14:15:07 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Thu, 27 Jan 2011 14:15:06 +0800
Thread-Topic: [poky] [PATCH 1/1] rm_work.bbclass: reserve 'image' folder
	when remove WORKDIR
Thread-Index: Acu9n5CvcJeJud5qQ/G3r6wi0BR5BgARPxrA
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A31D0CF98@shsmsx501.ccr.corp.intel.com>
References: <cover.1296023140.git.dongxiao.xu@intel.com>
	<4da3cd3c9adebd3279b376a1f7aa2a0353484ecd.1296023140.git.dongxiao.xu@intel.com>
	<1296077097.27814.4523.camel@rex>
In-Reply-To: <1296077097.27814.4523.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] rm_work.bbclass: reserve 'image' folder when remove WORKDIR
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
X-List-Received-Date: Thu, 27 Jan 2011 06:15:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Richard Purdie wrote:
> On Wed, 2011-01-26 at 14:30 +0800, poky-bounces@yoctoproject.org
> wrote:=20
>> From: Dongxiao Xu <dongxiao.xu@intel.com>
>>=20
>> After the implementation of per machine sysroot, do_populate_sysroot
>> and do_package need to be re-run if we build two machines of one
>> architecture (in case that sstate prebuilt result could not be reused
>> for certain recipes). But if removing all the WORKDIR contents after
>> the first macine build, the second machine's do_populate_sysroot and
>> do_package will fail due to the missing of "image" directory.
>>=20
>> Thus reserve 'image' folder when doing rm_work.
>=20
> Whilst I understand the intent, this is just putting wallpaper over
> cracks, sooner or later the crack will reappear, possibly worse than
> before. =20
>=20
> For example if you run "bitbake xxx -c install -f" for a target xxx
> which has had rm_work run against it, the result will be a nasty
> error in Poky. =20
>=20
> OE's rm_work.bbclass is a little cleverer than ours and has this:
>=20
> addhandler rmwork_stampfixing_eventhandler python
>     rmwork_stampfixing_eventhandler() { if bb.event.getName(e) =3D=3D
>         "StampUpdate": for (fn, task) in e.targets:
>             if task =3D=3D 'rm_work_all':
>                 continue
>             stamp =3D "%s.do_rm_work" % e.stampPrefix[fn]
>             if os.path.exists(stamp):
>                 dir =3D "%s.*" % e.stampPrefix[fn]
>                 bb.note("Removing stamps: " + dir)
>                 os.system('rm -f '+ dir) }
>=20
> which is intended to fix my specific example above. It won't fix the
> new corner cases we've introduced with machine specific sysroots
> though. So what do we do to fix this? =20
>=20
> I'm actually tempted to tie together rm_work, sstate and the
> scenequeue.=20
> When rm_work wipes out the workdir, it also migrates the stamps into
> _setscene stamps as if the package had been installed by sstate. We'd
> then remove the unpack, fetch, patch and so on stamps just leaving
> the setscene varients. This would mean the above wouldn't be needed
> and most things should "just work".   =20
>=20
> So to be specific, we'd take stamps like:
>=20
> xxx-1.4.7-r3.do_compile
> xxx-1.4.7-r3.do_configure
> xxx-1.4.7-r3.do_fetch
> xxx-1.4.7-r3.do_generate_toolchain_file
> xxx-1.4.7-r3.do_install
> xxx-1.4.7-r3.do_package.emenlow
> xxx-1.4.7-r3.do_package_write
> xxx-1.4.7-r3.do_package_write_ipk
> xxx-1.4.7-r3.do_package_write_rpm
> xxx-1.4.7-r3.do_patch
> xxx-1.4.7-r3.do_populate_sysroot.emenlow
> xxx-1.4.7-r3.do_setscene
> xxx-1.4.7-r3.do_unpack
>=20
> and end up with:
>=20
> xxx-1.4.7-r3.do_package_setscene.emenlow
> xxx-1.4.7-r3.do_package_write_ipk_setscene
> xxx-1.4.7-r3.do_package_write_rpm_setscene
> xxx-1.4.7-r3.do_populate_sysroot_setscene.emenlow
>=20
> Does that sound reasonable?
>=20
> Then both codepaths use the same underlying code and everything
> should be fine apart from some hardcoded assumptions about stamp
> filenames which we'll probably just have to live with for now. The
> function will need to handle stamps including the taskhash too, e.g.:
>=20
> xxx-1.4.7-r3.do_unpack.HASHHERE

Hi Richard,=20

I think this way is workable to track down the several rm_work issues.

Could you help to clarify what are "hardcoded assumptions about stamp filen=
ames"?

Also you mentioned we need to handle the HASH stamp, do you mean we need to=
 reserve those HASH stamps and they should not be removed while rm_work?

I just wrote a patch that implement the above senario and now is doing test=
 for it.

Please help to review it to see if I understand your point correctly.

http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/log/?h=3Ddxu4/distro

There are two patches in the branch, the first one is a fix patch that add =
"${MACHINE}" tag into stamps of do_populate_sysroot_setscene and do_package=
_setscene, and the second one is to handle rm_work issue.

Thanks,
Dongxiao

>=20
> Cheers,
>=20
> Richard


