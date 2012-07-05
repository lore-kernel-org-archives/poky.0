Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DE6AE006B1
	for <poky@yoctoproject.org>; Wed,  4 Jul 2012 18:37:15 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 04 Jul 2012 18:36:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="167061627"
Received: from fmsmsx107.amr.corp.intel.com ([10.19.9.54])
	by orsmga002.jf.intel.com with ESMTP; 04 Jul 2012 18:36:57 -0700
Received: from fmsmsx102.amr.corp.intel.com (10.19.9.53) by
	FMSMSX107.amr.corp.intel.com (10.19.9.54) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 4 Jul 2012 18:36:56 -0700
Received: from shsmsx102.ccr.corp.intel.com (10.239.4.154) by
	FMSMSX102.amr.corp.intel.com (10.19.9.53) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 4 Jul 2012 18:36:56 -0700
Received: from shsmsx101.ccr.corp.intel.com ([169.254.1.220]) by
	SHSMSX102.ccr.corp.intel.com ([169.254.2.145]) with mapi id
	14.01.0355.002; Thu, 5 Jul 2012 09:36:56 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [poky] [PATCH 0/1][PULL] Multilib: add sanity check script
Thread-Index: AQHNWKApPNFzc/fNXE6Oh5kAUFD3gZcZ65rA
Date: Thu, 5 Jul 2012 01:36:55 +0000
Message-ID: <40776A41FC278F40B59438AD47D147A90FDCF43D@SHSMSX101.ccr.corp.intel.com>
References: <cover.1341266885.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1341266885.git.dongxiao.xu@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: Re: [PATCH 0/1][PULL] Multilib: add sanity check script
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
X-List-Received-Date: Thu, 05 Jul 2012 01:37:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Do you have any comment on this one?

Thanks,
Dongxiao

> -----Original Message-----
> From: poky-bounces@yoctoproject.org
> [mailto:poky-bounces@yoctoproject.org] On Behalf Of Dongxiao Xu
> Sent: Tuesday, July 03, 2012 6:09 AM
> To: poky@yoctoproject.org
> Subject: [poky] [PATCH 0/1][PULL] Multilib: add sanity check script
>=20
> Hi Richard,
>=20
> This pull request is to add sanity check for multilib, please help to rev=
iew and
> pull.
>=20
> Thanks,
> Dongxiao
>=20
> The following changes since commit
> 644ad4bf1e30fcee4b9d5abb819046d1f2193d27:
>=20
>   documentation/bsp-guide/bsp.xml: Yocto term paring (2012-07-02 16:47:45
> +0100)
>=20
> are available in the git repository at:
>   git://git.pokylinux.org/poky-contrib dxu4/multilib-check
>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Ddxu4/multilib-c=
heck
>=20
> Dongxiao Xu (1):
>   scripts/multilib-check: Check for multilib build results
>=20
>  scripts/multilib-check |  117
> ++++++++++++++++++++++++++++++++++++++++++++++++
>  1 files changed, 117 insertions(+), 0 deletions(-)  create mode 100755
> scripts/multilib-check
>=20
> --
> 1.7.4.1
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

