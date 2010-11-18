Return-Path: <kevin.tian@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 883494C81002
	for <poky@yoctoproject.org>; Wed, 17 Nov 2010 23:14:29 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 17 Nov 2010 21:14:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,215,1288594800"; d="scan'208";a="858831812"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 17 Nov 2010 21:14:28 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 18 Nov 2010 13:14:18 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 18 Nov 2010 13:14:18 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Thu, 18 Nov 2010 13:14:17 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Joshua Lock <josh@openedhand.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Thu, 18 Nov 2010 13:14:14 +0800
Thread-Topic: [poky] a new problem with sstate
Thread-Index: AcuGY8w9hgnTP4OeTCKVmawgxUBiaAAev7nA
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D31419DAB@shsmsx502.ccr.corp.intel.com>
References: <625BA99ED14B2D499DC4E29D8138F1504D31419AED@shsmsx502.ccr.corp.intel.com>
	<1290004124.2518.4.camel@scimitar>
In-Reply-To: <1290004124.2518.4.camel@scimitar>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: a new problem with sstate
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
X-List-Received-Date: Thu, 18 Nov 2010 05:14:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Joshua Lock
>Sent: Wednesday, November 17, 2010 10:29 PM
>
>On Wed, 2010-11-17 at 21:21 +0800, Tian, Kevin wrote:
>> When looking into the problem why some prebuilts can't be reused, I've s=
truggled with
>> another issue these days. It's more severe because the 2nd build can't e=
ven succeed
>> when prebuilt is used.
>>
>> The failure happened randomly on eglibc, eglibc-initial, and gcc-runtime=
. The error log
>> shows that either gcc libraries or eglibc headers are not correctly inst=
alled when building
>> those recipes. This first led me to think about potential dependency pro=
blem among
>> those recipes. However this only happens when prebuilt is used. A fresh =
build just
>> succeeds.
>>
>> Finally it turns out from two factors:
>>
>> 	o sstate.bbclass has special handling about -initial and -intermediate =
recipes. If
>> a complete (e.g. gcc-cross or eglibc) setscene function has been invoked=
 already,
>> installation for those special sstate packages is skipped, while still m=
arked as
>> accelerate-able
>
>The special casing in the sstate class was added to work around the fact
>that the toolchain bootstrap overwrites some pieces of the sysroot
>(bug#239).
>
>http://bugzilla.yoctoproject.org/show_bug.cgi?id=3D239

Yes, I can see the reason for that special case.

>
>If this is still not working is there anything stopping us from
>expanding the workaround Richard started in
>ecf2eb1efa145d5c8f350697ec605ea58beb9ba7 as a temporary fix until bug
>239 is fixed?
>
>http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3Decf2eb1efa145d=
5c8f350697ec6
>05ea58beb9ba7
>

I think that works for most case, if there's no change to libc/gcc bootstra=
p recipes.
If there happens to be one or several changed, the bootstrap process is act=
ually
broken since some of them may be a null installation while marked finished.=
 This
allows other tasks depending on them to continue but finally failed to find=
 necessary
bits.

I'm thinking about expanding that. It'd be good to not use prebuilt for all=
 libc/gcc
bootstrap recipes once any of them is changed. That way the normal bootstra=
p process
is started from scratch. However I haven't found a right way to achieve tha=
t yet. :/

Thanks
Kevin

