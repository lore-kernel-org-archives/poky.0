Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 345E74C80052
	for <poky@pokylinux.org>; Wed, 17 Nov 2010 07:21:38 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 17 Nov 2010 05:21:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,211,1288594800"; d="scan'208";a="574694758"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga002.jf.intel.com with ESMTP; 17 Nov 2010 05:21:37 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 17 Nov 2010 21:21:36 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 17 Nov 2010 21:21:35 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Wed, 17 Nov 2010 21:21:34 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "poky@pokylinux.org" <poky@pokylinux.org>
Date: Wed, 17 Nov 2010 21:21:27 +0800
Thread-Topic: a new problem with sstate
Thread-Index: AcuGWlbQMgwehPO+QpmkFeIW8VbzdQ==
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D31419AED@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-hashedpuzzle: AupF BNTV CFK5 DYOg DaTj Dkyj D2Ol FXbW Ffbn HMlX HbRp
	I/5W JZq5 JuO+ Kkqa
	Kxza; 1; cABvAGsAeQBAAHAAbwBrAHkAbABpAG4AdQB4AC4AbwByAGcA; Sosha1_v1; 7;
	{D5B0DBDF-3822-439A-8F52-9C12CC2FADD7};
	awBlAHYAaQBuAC4AdABpAGEAbgBAAGkAbgB0AGUAbAAuAGMAbwBtAA==; Wed,
	17 Nov 2010 13:21:27 GMT;
	YQAgAG4AZQB3ACAAcAByAG8AYgBsAGUAbQAgAHcAaQB0AGgAIABzAHMAdABhAHQAZQA=
x-cr-puzzleid: {D5B0DBDF-3822-439A-8F52-9C12CC2FADD7}
acceptlanguage: en-US
MIME-Version: 1.0
Subject: a new problem with sstate
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
X-List-Received-Date: Wed, 17 Nov 2010 13:21:38 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

When looking into the problem why some prebuilts can't be reused, I've stru=
ggled with
another issue these days. It's more severe because the 2nd build can't even=
 succeed
when prebuilt is used.

The failure happened randomly on eglibc, eglibc-initial, and gcc-runtime. T=
he error log
shows that either gcc libraries or eglibc headers are not correctly install=
ed when building
those recipes. This first led me to think about potential dependency proble=
m among=20
those recipes. However this only happens when prebuilt is used. A fresh bui=
ld just=20
succeeds.

Finally it turns out from two factors:

	o sstate.bbclass has special handling about -initial and -intermediate rec=
ipes. If=20
a complete (e.g. gcc-cross or eglibc) setscene function has been invoked al=
ready,=20
installation for those special sstate packages is skipped, while still mark=
ed as=20
accelerate-able

	o eglibc and gcc-runtime happen to have new changes between two builds and
thus require rebuild

Then the problem comes:
	- eglibc depends on gcc-cross-intermediate
	- gcc-cross-intermediate is marked as accelerated but no sstate installati=
on actually
happens, which is simply a nop
	- gcc-cross is assumed to provide required bits, which depends on eglibc i=
nstead
and thus hasn't been started

Then eglibc compilation fails because libgcc is missing

So the key problem is about libc/gcc bootstrap process. We have plan in 1.0=
 to improve
bootstrap process, by having initial/intermediate bits installed to its own=
 locations, which
should solve this problem too. However before that feature is ready, we sti=
ll need
some workaround to have current sstate/prebuilt really usable, since it's v=
ery likely to
have eglibc/gcc recipe revised occasionally.

I have three options in mind:

	a) disable special handling in sstate.bbclass for -initial and -intermedia=
te recipes, i.e.
always have all sstate packages installed. I think it's perhaps OK, but it =
may increase=20
build time a bit and I may overlook something behind

	b) have the whole libc/gcc bootstrap process as a bundle when handling the=
 sstate
task, i.e. any one stage failing to reuse prebuilt results in all relevant =
recipes excluding
from the acceleration list. However bitbake now executes tasks in  separate=
 threads.
So I'm not sure how easily that cross-recipe info may be retrieved there. P=
erhaps some
database and postfunc is required

	c) always touch all gcc/libc recipes if any of them is changed to ensure a=
ll recipes
rebuilt from scratch. This however increases build time a lot and not conve=
nient

I personally prefer to a), but need more experiments to ensure it working c=
orrectly,
but would like to get your comments too. :-)

Thanks
Kevin

