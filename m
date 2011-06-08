Return-Path: <jiajun.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 04FC14C80186
	for <poky@pokylinux.org>; Tue,  7 Jun 2011 20:23:21 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 07 Jun 2011 18:23:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,335,1304319600"; d="scan'208";a="10462891"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 07 Jun 2011 18:23:03 -0700
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 8 Jun 2011 09:23:02 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Wed, 8 Jun 2011
	09:23:02 +0800
From: "Xu, Jiajun" <jiajun.xu@intel.com>
To: Saul Wold <sgw@linux.intel.com>
Date: Wed, 8 Jun 2011 09:23:00 +0800
Thread-Topic: [poky] Fullpass Test Report for Yocto 1.1 M1 RC2 - 20110528
Thread-Index: AcwlPjkWE52nkqwCQvOmp6UmYcwuuQAO03eg
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A5271FF3C@shsmsx501.ccr.corp.intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A5271FA9F@shsmsx501.ccr.corp.intel.com>
	<4DEE69A1.8000909@linux.intel.com>
In-Reply-To: <4DEE69A1.8000909@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: Fullpass Test Report for Yocto 1.1 M1 RC2 - 20110528
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
X-List-Received-Date: Wed, 08 Jun 2011 01:23:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> On 06/06/2011 09:36 PM, Xu, Jiajun wrote:
>> Hi all,
>>=20
>> This is the fullpass test report for Yocto 1.1 M1 RC2 build. There are
>> 3 new bugs found in this testing compared with weekly testing.
>> Non-GPLv3 build could not work and one new LTP failure found with new
>> kernel. The 2 BLOCK issues on have been addressed and a new build is
>> ready for QA testing. Except for LTP and POSIX failures, there are 13
>> open bugs for RC2 build. Grub installation fails on 3 intel BSPs.
>> Graphics testing on sugarbay is blocked because there are no mesa-demos
>> and libSDL.so installed.
>>=20
> Jiajun, Yi Zhao,
>=20
> What's the status of the Beagleboard testing, you show blocked below,
> but I thought we unblocked last week, so is there any update on the
> status of beagleboard testing?  We need to know this since we have a
> conditional GO decision based on these results.
>=20

Hi Saul,
Yi is doing testing for beagleboard and I think he would send out test stat=
us today.

> I would like to also understand the sugarbay graphics testing, this is
> not a blocker, it's a new requirement, correct?  We have not had
> mesa-demos included in any past release.  I am going to add it to the
> sato-sdk build only, will that be?
>=20

Sugarbay graphics testing was introduced during 1.0 M4. At that time, we ha=
d to build mesa-demos by ourselves and copy it into target image. We submit=
ted bugs for it during 1.1 M1 because we think it better to use mesa-demos =
built from autobuilder.
And yes, adding it into sato-sdk is good enough.

Thanks a lot.

> Sau!


Best Regards,
Jiajun


