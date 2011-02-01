Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4DE814C800A3
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 10:57:24 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 01 Feb 2011 08:57:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,411,1291622400"; d="scan'208";a="653338912"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga002.fm.intel.com with ESMTP; 01 Feb 2011 08:57:23 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.226.128) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 1 Feb 2011 08:57:23 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx606.amr.corp.intel.com ([10.22.226.128]) with mapi;
	Tue, 1 Feb 2011 08:57:22 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: Darren Hart <dvhart@linux.intel.com>, Tom Rini <tom_rini@mentor.com>
Date: Tue, 1 Feb 2011 08:57:21 -0800
Thread-Topic: [poky] [PATCH] perl-native: Update for userelocatableinc and
	non-shared libperl
Thread-Index: AcvCJhaP81jxqaYNTtOL2Si9vZf9bQACuAdw
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE9411BF170D@orsmsx504.amr.corp.intel.com>
References: <1296248841-8015-1-git-send-email-tom_rini@mentor.com>
	<4D47BC03.6010008@linux.intel.com> <4D481DD1.9050804@mentor.com>
	<4D4828EE.5000002@linux.intel.com>
In-Reply-To: <4D4828EE.5000002@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] perl-native: Update for userelocatableinc and non-shared libperl
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
X-List-Received-Date: Tue, 01 Feb 2011 16:57:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: poky-bounces@yoctoproject.org [mailto:poky-
> bounces@yoctoproject.org] On Behalf Of Darren Hart
> Sent: Tuesday, February 01, 2011 7:38 AM
> To: Tom Rini
> Cc: poky@yoctoproject.org
> Subject: Re: [poky] [PATCH] perl-native: Update for userelocatableinc
> and non-shared libperl
>=20
> On 02/01/2011 06:50 AM, Tom Rini wrote:
> > On 02/01/2011 12:53 AM, Darren Hart wrote:
> >> On 01/28/2011 01:07 PM, Tom Rini wrote:
> >>> Rather than using a wrapper switch to using upstreams support for
> >>> relocation. While in here, bring in the mangling to use
> >>> /usr/bin/env perl rather than /full/path/to in order to work
> >>> in deep directory paths.
> >>>
> >>> Signed-off-by: Tom Rini<tom_rini@mentor.com>
> >>
> >> perl fails do_compile with this patch, reverting it resolves the
> >> problem. The log.do_compile is available here (600k):
> >>
> >> http://bugzilla.pokylinux.org/show_bug.cgi?id=3D691
> >
> > Taken the bug. That'll teach me to short-circuit my testing when
> double
> > posting patches...
> >
>=20
> I'll be happy to test patches to this as well as I am able to easily
> reproduce it (I expect others can too - but haven't yet heard of
> someone
> else hitting the exact same problem).
>=20
I am able to reproduce this issue too. If needed I will be happy to help fi=
x or test.

Thanks,
Nitin


>=20
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

