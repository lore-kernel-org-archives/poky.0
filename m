Return-Path: <jiajun.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id B14554C80050;
	Sun, 12 Dec 2010 20:11:24 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 12 Dec 2010 18:11:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,333,1288594800"; d="scan'208";a="583063354"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga002.jf.intel.com with ESMTP; 12 Dec 2010 18:11:23 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 13 Dec 2010 10:10:34 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Mon, 13 Dec 2010 10:10:33 +0800
From: "Xu, Jiajun" <jiajun.xu@intel.com>
To: Saul Wold <sgw@linux.intel.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>, Yocto Project Discussion <yocto@yoctoproject.org>
Date: Mon, 13 Dec 2010 10:10:32 +0800
Thread-Topic: [poky] Milestone 2 Stabilization Branch Created (Resend)
Thread-Index: AcuZa8ltkuCJO3iORSyNN+d7uJxSNwA/s47Q
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A317D6F75@shsmsx501.ccr.corp.intel.com>
References: <4D03D481.4050104@linux.intel.com>
In-Reply-To: <4D03D481.4050104@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Milestone 2 Stabilization Branch Created (Resend)
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
X-List-Received-Date: Mon, 13 Dec 2010 02:11:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> [Resend with correct mailing lists]
>=20
>=20
> Yocto / Poky Folks:
>=20
> Thanks to everyone's hard work, we are currently on working getting
> the first build of M2 started and available for QA testing on Monday.
>=20
> I have pushed out the lastest commit that was pending in the
> distro/master area to both master and create a builds/milestone branch
> which is where bug fixes for M2 will go.
>=20
> There is currently an issue with the PPC Kernel build on this branch
> and that is being worked, this may impact getting a PPC build available b=
y Monday.
>=20
> For the next week as we stabilize M2, please ensure that any patch or
> pull requests indicate that this is for M2 or not.  By default all
> commits will go to master regardless.
>=20

Hi Saul,
Nightly build is near finished now. PPC and some non-x86 real hardware targ=
et building failed. I begin downloading them now and will start QA testing.

> Thanks
>      Sau!
> Saul Wold
> Yocto Component Wrangler @ Intel
> Yocto Project / Poky Build System
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

Best Regards,
Jiajun


