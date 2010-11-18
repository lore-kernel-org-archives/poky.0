Return-Path: <kevin.tian@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 566B54C80052
	for <poky@yoctoproject.org>; Thu, 18 Nov 2010 00:42:41 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 17 Nov 2010 22:42:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,216,1288594800"; d="scan'208";a="350253220"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by azsmga001.ch.intel.com with ESMTP; 17 Nov 2010 22:42:38 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 18 Nov 2010 14:40:28 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 18 Nov 2010 14:40:27 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Thu, 18 Nov 2010 14:40:26 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>, Tom Rini <tom_rini@mentor.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Thu, 18 Nov 2010 14:40:25 +0800
Thread-Topic: [poky] a new problem with sstate
Thread-Index: AcuGZB2w5+asXsHvRISkmgmSZLuV6AAe1X9QAAJ03iA=
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D31419E9A@shsmsx502.ccr.corp.intel.com>
References: <625BA99ED14B2D499DC4E29D8138F1504D31419AED@shsmsx502.ccr.corp.intel.com>
	<1290004124.2518.4.camel@scimitar> <4CE3E72E.6070904@mentor.com>
	<625BA99ED14B2D499DC4E29D8138F1504D31419DB4@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D31419DB4@shsmsx502.ccr.corp.intel.com>
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
X-List-Received-Date: Thu, 18 Nov 2010 06:42:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Tian, Kevin
>Sent: Thursday, November 18, 2010 1:16 PM
>
>>From: Tom Rini
>>Sent: Wednesday, November 17, 2010 10:31 PM
>>
>>On 11/17/2010 07:28 AM, Joshua Lock wrote:
>>> On Wed, 2010-11-17 at 21:21 +0800, Tian, Kevin wrote:
>>>> When looking into the problem why some prebuilts can't be reused, I've=
 struggled with
>>>> another issue these days. It's more severe because the 2nd build can't=
 even succeed
>>>> when prebuilt is used.
>>>>
>>>> The failure happened randomly on eglibc, eglibc-initial, and gcc-runti=
me. The error log
>>>> shows that either gcc libraries or eglibc headers are not correctly in=
stalled when
>building
>>>> those recipes. This first led me to think about potential dependency p=
roblem among
>>>> those recipes. However this only happens when prebuilt is used. A fres=
h build just
>>>> succeeds.
>>>>
>>>> Finally it turns out from two factors:
>>>>
>>>> 	o sstate.bbclass has special handling about -initial and -intermediat=
e recipes. If
>>>> a complete (e.g. gcc-cross or eglibc) setscene function has been invok=
ed already,
>>>> installation for those special sstate packages is skipped, while still=
 marked as
>>>> accelerate-able
>>>
>>> The special casing in the sstate class was added to work around the fac=
t
>>> that the toolchain bootstrap overwrites some pieces of the sysroot
>>> (bug#239).
>>>
>>> http://bugzilla.yoctoproject.org/show_bug.cgi?id=3D239
>>>
>>> If this is still not working is there anything stopping us from
>>> expanding the workaround Richard started in
>>> ecf2eb1efa145d5c8f350697ec605ea58beb9ba7 as a temporary fix until bug
>>> 239 is fixed?
>>>
>>>
>>http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3Decf2eb1efa145=
d5c8f350697e
>c6
>>05ea58beb9ba7
>>
>>With old style packaged-staging we workaround this by doing:
>>
>># We want to be certain that the scene is set for us only after it's set =
for
>># our dependencies, to avoid problems with pstage package install order.
>>do_setscene[deptask] =3D "do_setscene"
>>
>>Can something similar be done for the sstate way of the world?
>>
>
>Good to know that. I need to look into the detail to understand whether it
>works for the purpose here. :-)
>

I think this would work. With the dependency considered, then the sstate se=
tscene
tasks become sorted. And then we could add a check to see whether previous=
=20
libc/gcc bootstrap stages succeed on sstate installation. If any fails due =
to rebuild=20
required, then later stages are not marked accelerable which will be rebuil=
t too.

However my desktop was powered down unexpectedly last night, which triggers
other issues in sstate whitelist handling which makes whole prebuilt not us=
able
any more after reboot. I'll need to fix that first and then try your sugges=
tion later.

Thanks
Kevin

