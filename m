Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5A5DC4C80052
	for <poky@yoctoproject.org>; Sun,  5 Dec 2010 05:10:40 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 05 Dec 2010 03:10:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,301,1288594800"; d="scan'208";a="684045493"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga001.jf.intel.com with ESMTP; 05 Dec 2010 03:10:38 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Sun, 5 Dec 2010 19:10:37 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Sun, 5 Dec 2010 19:10:37 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Sun, 5 Dec 2010
	19:10:36 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Richard Purdie <rpurdie@linux.intel.com>, Paul Eggleton
	<paul.eggleton@linux.intel.com>
Date: Sun, 5 Dec 2010 19:10:33 +0800
Thread-Topic: [poky] sstate status
Thread-Index: AcuTNyqGAbJ9u28pTw+YV9DMeQPkPwBNWtIw
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D475430F5@shsmsx502.ccr.corp.intel.com>
References: <201012031634.56033.paul.eggleton@linux.intel.com>
	<1291414305.14277.2746.camel@rex>
In-Reply-To: <1291414305.14277.2746.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: sstate status
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
X-List-Received-Date: Sun, 05 Dec 2010 11:10:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Richard Purdie
>Sent: Saturday, December 04, 2010 6:12 AM
>
>Hi,
>
>On Fri, 2010-12-03 at 16:34 +0000, Paul Eggleton wrote:
>> I've been doing some tests with sstate, and I've managed to get to a
>> stage where I can share the SSTATE_DIR between my two machines (one
>> running Fedora 14 and the other Kubuntu 10.10) and almost get a
>> successful build from a clean TMPDIR. My last test got to
>> poky-image-minimal.do_rootfs and then failed due to some kind of
>> package dependency issue:
>>
>> --------- snip ---------
>> | Processing rpm...
>> | Processing zypper...
>> | error: Failed dependencies:
>> |       elfutils >=3D 0.148 is needed by rpm-5.1.10-r7.i586
>> |       libaugeas0 >=3D 0.7.3 is needed by zypper-1.4.7+git0
>> +9eb0e248e06c8d20ad054be2439149d9ede37531-r1.i586
>> | ERROR: Task failed: ('function do_rootfs failed',
>>
>'/home/pokystuff/tmp/work/qemux86-poky-linux/poky-image-minimal-1.0-r0/tem=
p/log.
>do_rootfs.6874')
>> --------- snip ---------
>>
>> A "bitbake -c clean augeas elfutils" and then "bitbake
>> poky-image-minimal" again went through OK (and built the
>> aforementioned recipes from sstate) , so I'm not sure what went wrong
>> here.
>>
>> My current state of work is in the paule/sstate contrib branch, which
>> is based on Kevin's tk/sstate branch. Kevin, I think the sooner we can
>> move this towards master the better, then we can get some wider
>> testing.
>>
>> FYI Joshua has made bug #507 into a tracking bug for current sstate issu=
es:
>> http://bugzilla.pokylinux.org/show_bug.cgi?id=3D507
>
>Kevin/Paul:
>
>I notice a number of patches in your branches which shouldn't be needed
>if we use the two patches at the head of:
>
>http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/log/?h=3Drpurdie/tweak=
s2
>
>Could you please test using those two changes, or let me know if those
>changes cause problems.
>

Sure. However my remote machine in office is down unexpectedly. I'll verify=
 it later
when going to office next week.

BTW, on my branch there're also some bug fixes out of environmental variabl=
es issue,
which could you take a look whether they're correct?

http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/commit/?h=3Dtk/sstate&i=
d=3D7a6fc816766ea925591a0cf6ae17383a953ae061, siggen.py: set 'runtaskdeps' =
correctly

http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/commit/?h=3Dtk/sstate&i=
d=3D0a4c46dc2c122ef5c1057380e79b75e302583b4a, siggen.py: fix python error w=
hen comparing sstate generated from different srcpath

http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/commit/?h=3Dtk/sstate&i=
d=3D7d6dd0b5717b565f478c88d53cf5e53e139f1141, siggen.py: fix the wrong usag=
e on BB_TASKHASH_WHITELIST

Thanks
Kevin


