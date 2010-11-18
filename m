Return-Path: <kevin.tian@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 66E454C8106A
	for <poky@yoctoproject.org>; Wed, 17 Nov 2010 23:16:04 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 17 Nov 2010 21:16:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,215,1288594800"; d="scan'208";a="858832163"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 17 Nov 2010 21:16:03 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 18 Nov 2010 13:15:56 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 18 Nov 2010 13:15:56 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Thu, 18 Nov 2010 13:15:55 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Tom Rini <tom_rini@mentor.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Thu, 18 Nov 2010 13:15:53 +0800
Thread-Topic: [poky] a new problem with sstate
Thread-Index: AcuGZB2w5+asXsHvRISkmgmSZLuV6AAe1X9Q
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D31419DB4@shsmsx502.ccr.corp.intel.com>
References: <625BA99ED14B2D499DC4E29D8138F1504D31419AED@shsmsx502.ccr.corp.intel.com>
	<1290004124.2518.4.camel@scimitar> <4CE3E72E.6070904@mentor.com>
In-Reply-To: <4CE3E72E.6070904@mentor.com>
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
X-List-Received-Date: Thu, 18 Nov 2010 05:16:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Tom Rini
>Sent: Wednesday, November 17, 2010 10:31 PM
>
>On 11/17/2010 07:28 AM, Joshua Lock wrote:
>> On Wed, 2010-11-17 at 21:21 +0800, Tian, Kevin wrote:
>>> When looking into the problem why some prebuilts can't be reused, I've =
struggled with
>>> another issue these days. It's more severe because the 2nd build can't =
even succeed
>>> when prebuilt is used.
>>>
>>> The failure happened randomly on eglibc, eglibc-initial, and gcc-runtim=
e. The error log
>>> shows that either gcc libraries or eglibc headers are not correctly ins=
talled when building
>>> those recipes. This first led me to think about potential dependency pr=
oblem among
>>> those recipes. However this only happens when prebuilt is used. A fresh=
 build just
>>> succeeds.
>>>
>>> Finally it turns out from two factors:
>>>
>>> 	o sstate.bbclass has special handling about -initial and -intermediate=
 recipes. If
>>> a complete (e.g. gcc-cross or eglibc) setscene function has been invoke=
d already,
>>> installation for those special sstate packages is skipped, while still =
marked as
>>> accelerate-able
>>
>> The special casing in the sstate class was added to work around the fact
>> that the toolchain bootstrap overwrites some pieces of the sysroot
>> (bug#239).
>>
>> http://bugzilla.yoctoproject.org/show_bug.cgi?id=3D239
>>
>> If this is still not working is there anything stopping us from
>> expanding the workaround Richard started in
>> ecf2eb1efa145d5c8f350697ec605ea58beb9ba7 as a temporary fix until bug
>> 239 is fixed?
>>
>>
>http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3Decf2eb1efa145d=
5c8f350697ec6
>05ea58beb9ba7
>
>With old style packaged-staging we workaround this by doing:
>
># We want to be certain that the scene is set for us only after it's set f=
or
># our dependencies, to avoid problems with pstage package install order.
>do_setscene[deptask] =3D "do_setscene"
>
>Can something similar be done for the sstate way of the world?
>

Good to know that. I need to look into the detail to understand whether it
works for the purpose here. :-)

Thanks
Kevin

