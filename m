Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 546184C80B71
	for <poky@yoctoproject.org>; Fri, 17 Dec 2010 18:46:42 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 17 Dec 2010 16:46:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,191,1291622400"; d="scan'208";a="584865234"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 17 Dec 2010 16:46:41 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Sat, 18 Dec 2010 08:46:39 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Sat, 18 Dec 2010 08:46:39 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Sat, 18 Dec 2010 08:46:38 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, poky
	<poky@yoctoproject.org>
Date: Sat, 18 Dec 2010 08:46:25 +0800
Thread-Topic: [poky] Performance regression in bitbake and exec() vs fork()
Thread-Index: AcuePAZLS5RshP5LQKicjgAr1rw0iAAELBJA
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D5F409BD1@shsmsx502.ccr.corp.intel.com>
References: <1291899386.1554.827.camel@rex> <1292625845.25087.586.camel@rex>
In-Reply-To: <1292625845.25087.586.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-hashedpuzzle: AQRk BJTM BLRe CmeV ELMx FytY HghX IagD JiIn Jv38 KHBU
	OU3A PQQ2 T+bL Ux4q WSzP; 2;
	cABvAGsAeQBAAHkAbwBjAHQAbwBwAHIAbwBqAGUAYwB0AC4AbwByAGcAOwByAGkAYwBoAGEAcgBkAC4AcAB1AHIAZABpAGUAQABsAGkAbgB1AHgAZgBvAHUAbgBkAGEAdABpAG8AbgAuAG8AcgBnAA==;
	Sosha1_v1; 7; {055126DF-A994-4822-9A86-09CBDD2E7FC2};
	awBlAHYAaQBuAC4AdABpAGEAbgBAAGkAbgB0AGUAbAAuAGMAbwBtAA==; Sat,
	18 Dec 2010 00:46:26 GMT;
	UgBFADoAIABbAHAAbwBrAHkAXQAgAFAAZQByAGYAbwByAG0AYQBuAGMAZQAgAHIAZQBnAHIAZQBzAHMAaQBvAG4AIABpAG4AIABiAGkAdABiAGEAawBlACAAYQBuAGQAIABlAHgAZQBjACgAKQAgAHYAcwAgAGYAbwByAGsAKAApAA==
x-cr-puzzleid: {055126DF-A994-4822-9A86-09CBDD2E7FC2}
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Performance regression in bitbake and exec() vs fork()
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
X-List-Received-Date: Sat, 18 Dec 2010 00:46:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Richard Purdie
>Sent: Saturday, December 18, 2010 6:44 AM
>
>To update on the current status of bitbake exec() vs fork(), we now have
>the following branch:
>
>http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Drpurdie/newpseudo
>
>which changes Poky to use the new version of pseudo, adds in an
>appropriate wrapper script for bitbake and starts enabling/disabling
>pseudo as appropriate as well as switching back to fork() instead of
>exec().
>
>We've still trying to work out exactly what this means for performance.
>Things 'feel' very much faster and I've at least one use case showing a
>double in speed showing the increase in task execution speed of fairly
>empty tasks. My test was:
>
>rm 'sstate-*qemu-config*'
>MACHINE=3Dqemux86 bitbake qemu-config -c clean
>time MACHINE=3Dqemux86 bitbake qemu-config
>
>On the current master branch the timings were:
>
>real 1m8.529s
>user 0m58.870s
>sys 0m4.690s
>
>Whilst with newpseudo:
>
>real 0m34.264s
>user 0m26.200s
>sys 0m2.340s
>
>This is good as it gets us back to a much snappier feeling bitbake.

that's a really good improvement and glad we're close back to original line=
. :-)

>
>Mark has some numbers which don't quiet add up with improvements in read
>and sys but an increase in user too, we're still looking to understand
>them. I'd like to give the autobuilder a pass over these changes when we
>have the opportunity and see what that real world performance looks
>like.
>
>Its likely that the speedups will be greatest on machines with small
>numbers of cores which are primarily cpu bound. The benefits will
>decrease on disk IO bound systems with large number of cores.
>

any elaboration on this difference?

Thanks
Kevin

