Return-Path: <bryan.odonoghue@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21ACDE00595
	for <poky@yoctoproject.org>; Wed,  1 Feb 2012 07:22:56 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 01 Feb 2012 07:22:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="112853305"
Received: from irsmsx602.ger.corp.intel.com ([163.33.3.242])
	by fmsmga001.fm.intel.com with ESMTP; 01 Feb 2012 07:22:53 -0800
Received: from irsmsx101.ger.corp.intel.com (163.33.3.153) by
	irsmsx602.ger.corp.intel.com (163.33.3.242) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 1 Feb 2012 15:22:30 +0000
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.194]) by
	IRSMSX101.ger.corp.intel.com ([169.254.1.99]) with mapi id
	14.01.0355.002; Wed, 1 Feb 2012 15:22:29 +0000
From: "O'donoghue, Bryan" <bryan.odonoghue@intel.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Thread-Topic: [poky] Simple recipe for local kernel/git development
Thread-Index: AQHM4Ofinsi/1jQEqkeQ1RNUYEVsS5YoJKzggAAC5ACAAACScA==
Date: Wed, 1 Feb 2012 15:22:28 +0000
Message-ID: <B80010913FB1F346A630B7F2E18A60C0078A17@IRSMSX102.ger.corp.intel.com>
References: <B80010913FB1F346A630B7F2E18A60C007897E@IRSMSX102.ger.corp.intel.com>
	<CADkTA4Mo_wE883Ceg1SBRxJ-ctV5ieb71vRhyVt4kjKfXTjYbg@mail.gmail.com>
	<B80010913FB1F346A630B7F2E18A60C00789E7@IRSMSX102.ger.corp.intel.com>
	<CADkTA4Oeb78DP==N7MD98L5Pc7vWPt4ccsHiOVbhN7dyzNkZMw@mail.gmail.com>
In-Reply-To: <CADkTA4Oeb78DP==N7MD98L5Pc7vWPt4ccsHiOVbhN7dyzNkZMw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.180]
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Simple recipe for local kernel/git development
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
X-List-Received-Date: Wed, 01 Feb 2012 15:22:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> Are you working from yocto master ?

Yes.=20

Our "poky" directory is from a fairly recent yocoto pull ~ 3 weeks

> That being said, if you aren't using meta or aren't using existing BSP
> patches (and
> branches), then starting from a yocto kernel tree isn't strictly
> required. In fact, it
> probably confuses things.

It confuses me !

>=20
> The tools can work with a korg tree, using a defconfig, etc. In a nice
> coincidence, I'm
> completing re-validation of the example korg recipe today.

Yes - assume this is a korg snapshot (it basically is)

All I need to do is to build the korg snapshot from a local git repo and ap=
ply a defconfig (it sounds simple when you type it like that)
-------------------------------------------------------------
Intel Ireland Limited (Branch)
Collinstown Industrial Park, Leixlip, County Kildare, Ireland
Registered Number: E902934

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


