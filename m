Return-Path: <jiajun.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id ECA764C80048;
	Sun, 12 Dec 2010 23:04:03 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 12 Dec 2010 21:04:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,334,1288594800"; d="scan'208";a="686499952"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga001.jf.intel.com with ESMTP; 12 Dec 2010 21:04:02 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 13 Dec 2010 13:04:01 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Mon, 13 Dec 2010 13:03:59 +0800
From: "Xu, Jiajun" <jiajun.xu@intel.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Mon, 13 Dec 2010 13:03:58 +0800
Thread-Topic: [poky] Milestone 2 Stabilization Branch Created (Resend)
Thread-Index: Acuaf2tK4tHYv2mpSSeBaOncgI7BGgAA4RgQ
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A317D70F3@shsmsx501.ccr.corp.intel.com>
References: <4D03D481.4050104@linux.intel.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A317D6F75@shsmsx501.ccr.corp.intel.com>
	<AANLkTimmRm=o9L=L=TuQ58Pd4or4eeNZtOWr=Hq6Un_y@mail.gmail.com>
In-Reply-To: <AANLkTimmRm=o9L=L=TuQ58Pd4or4eeNZtOWr=Hq6Un_y@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Mon, 13 Dec 2010 05:04:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

> On Sun, Dec 12, 2010 at 9:10 PM, Xu, Jiajun <jiajun.xu@intel.com> wrote:
>>> [Resend with correct mailing lists]
>>>=20
>>>=20
>>> Yocto / Poky Folks:
>>>=20
>>> Thanks to everyone's hard work, we are currently on working getting
>>> the first build of M2 started and available for QA testing on Monday.
>>>=20
>>> I have pushed out the lastest commit that was pending in the
>>> distro/master area to both master and create a builds/milestone
>>> branch which is where bug fixes for M2 will go.
>>>=20
>>> There is currently an issue with the PPC Kernel build on this branch
>>> and that is being worked, this may impact getting a PPC build
>>> available by Monday.
>>>=20
>>> For the next week as we stabilize M2, please ensure that any patch
>>> or pull requests indicate that this is for M2 or not. =A0By default
>>> all commits will go to master regardless.
>>>=20
>>=20
>> Hi Saul,
>> Nightly build is near finished now. PPC and some non-x86 real
>> hardware
> target building failed. I begin downloading them now and will start QA te=
sting.
>=20
> Is there somewhere I can check a log of the build errors ? We flipped
> in the
> 2.6.37 kernel and associated tools, but the any hardware targets
> should still be building 2.6.34 and be unaffected.
>=20
> If it isn't a kernel that failed to build .. then I'm less help :)
>=20

For beagleboard, http://autobuilder.pokylinux.org:8010/builders/nightly-rel=
ease/builds/146/steps/shell_46/logs/stdio/text.
For mpc8315e-rdb, http://autobuilder.pokylinux.org:8010/builders/nightly-re=
lease/builds/146/steps/shell_49/logs/stdio/text.

> Cheers,
>=20
> Bruce
>=20
>>=20
>>> Thanks
>>> =A0 =A0 =A0Sau!
>>> Saul Wold
>>> Yocto Component Wrangler @ Intel
>>> Yocto Project / Poky Build System
>>>=20
>>> _______________________________________________
>>> poky mailing list
>>> poky@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/poky
>>=20
>> Best Regards,
>> Jiajun
>>=20
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>=20
>=20
>=20
>

Best Regards,
Jiajun



