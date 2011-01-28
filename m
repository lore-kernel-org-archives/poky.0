Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5FAC44C8123F
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 01:55:58 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 27 Jan 2011 23:55:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,391,1291622400"; d="scan'208";a="652038650"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga002.fm.intel.com with ESMTP; 27 Jan 2011 23:55:57 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 28 Jan 2011 15:54:06 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 28 Jan 2011 15:54:04 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Fri, 28 Jan 2011 15:54:03 +0800
Thread-Topic: [poky] [PATCH 1/3] bitbake: add ${MACHINE} for
	do_populate_sysroot_setscene and do_package_setscene
Thread-Index: Acu+FNcT2qm7/nvkSveQq2lp9w9bAAAq4dXA
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A31D8EFD4@shsmsx501.ccr.corp.intel.com>
References: <cover.1296115229.git.dongxiao.xu@intel.com>
	<ff33a5f7c9fdbc069582bd224809b49b6784fa16.1296115229.git.dongxiao.xu@intel.com>
	<1296127452.27814.7107.camel@rex>
In-Reply-To: <1296127452.27814.7107.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/3] bitbake: add ${MACHINE} for do_populate_sysroot_setscene and do_package_setscene
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
X-List-Received-Date: Fri, 28 Jan 2011 07:55:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Richard Purdie wrote:
> On Thu, 2011-01-27 at 16:04 +0800, Dongxiao Xu wrote:
>> From: Dongxiao Xu <dongxiao.xu@intel.com>
>>=20
>> ${MACHINE} information is also needed to be tagged on stamps for
>> do_populate_sysroot_setscene and do_package_setscene, otherwise if
>> build two machines both from sstate, the second machine's sysroot
>> will not be populated correctly.=20
>>=20
>> Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
>=20
> The _setscene stuff is really an internal implementation issue within
> bitbake. I don't like the idea that the metadata has to get this
> right and I'd prefer it if bitbake always did the right thing. In
> this case that means looking up the extra stamp info against the
> parent task, not the setscene one.   =20
>=20
> I therefore merged:
>=20
> http://git.pokylinux.org/cgit.cgi/poky/commit/?id=3Dc34913ea5a4f20ce4bca3=
c68a65e9f64f1e3910c

Yes, this approach is better then specifically handling *_setscene stamp-ex=
tra-info in meta files. Thanks!

-- Dongxiao

>=20
> which should obsolete this patch?
>=20
> Good catch on finding the problem though!
>=20
> Cheers,
>=20
> Richard


