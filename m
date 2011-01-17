Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0BB6C4C811AE
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 02:19:24 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 17 Jan 2011 00:19:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,332,1291622400"; d="scan'208";a="647657825"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga002.fm.intel.com with ESMTP; 17 Jan 2011 00:19:24 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 17 Jan 2011 16:19:08 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Mon, 17 Jan 2011 16:19:07 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Mark Hatle <mark.hatle@windriver.com>, poky <poky@yoctoproject.org>
Date: Mon, 17 Jan 2011 16:19:06 +0800
Thread-Topic: [poky] [PATCH 0/1] pseudo: Update to the latest upstream version
Thread-Index: Acuzpzz92NtOht6HTsedeKO2JpkdUgCdxJ6A
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A31BCD511@shsmsx501.ccr.corp.intel.com>
References: <4D2FD707.4080509@windriver.com>
In-Reply-To: <4D2FD707.4080509@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>
Subject: Re: [PATCH 0/1] pseudo: Update to the latest upstream version
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
X-List-Received-Date: Mon, 17 Jan 2011 08:19:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Mark,=20

The issues you mentioned include the build performance? Recently we saw the=
 bitbake performance is worse than before.

We haven't investigated it yet, and just want to get a quick hint. Thanks!

For some detail performance data, you can refer to the link https://wiki.yo=
ctoproject.org/wiki/Performance

Thanks,
Dongxiao

Mark Hatle wrote:
> Update pseudo to the latest version to resolve a number of
> optimization defects.=20
>=20
> The problems were present on both 64-bit and 32-bit systems, but
> generally only caused issues on 32-bit hosts.=20
>=20
> Note: once you upgrade you need to be sure to clean out pseudo.  In
> order to do this ../bitbake/bin/bitbake -c cleanall pseudo-native=20
>=20
> Followed by ../bitbake/bin/bitbake pseudo-native
>=20
> Otherwise you can end up in a wierd situation where the old pseudo is
> being used to build the new one.=20
>=20
>=20
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: mhatle/pseudo
>   Browse:
> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dmhatle/pseudo=20
>=20
> Thanks,
>     Mark Hatle <mark.hatle@windriver.com>
> ---
>=20
>=20
> Mark Hatle (1):
>   pseudo: Update to the latest upstream version
>=20
>  .../conf/distro/include/poky-default-revisions.inc |    2 +-
>  .../895fa7e359e8026a608fba052c2994e42901e45f.patch |  235
>  -------------------- meta/recipes-devtools/pseudo/pseudo_git.bb    =20
>  |    2 +- 3 files changed, 2 insertions(+), 237 deletions(-)  delete
> mode 100644
> meta/recipes-devtools/pseudo/pseudo/895fa7e359e8026a608fba052c2994e42901e=
45f.patch


