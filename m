Return-Path: <bryan.odonoghue@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF204E00594
	for <poky@yoctoproject.org>; Wed,  1 Feb 2012 07:11:53 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Feb 2012 07:11:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="101984334"
Received: from irsmsx601.ger.corp.intel.com ([163.33.7.164])
	by azsmga001.ch.intel.com with ESMTP; 01 Feb 2012 07:11:34 -0800
Received: from irsmsx101.ger.corp.intel.com (163.33.3.153) by
	irsmsx601.ger.corp.intel.com (163.33.7.164) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 1 Feb 2012 15:09:53 +0000
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.194]) by
	IRSMSX101.ger.corp.intel.com ([169.254.1.99]) with mapi id
	14.01.0355.002; Wed, 1 Feb 2012 15:09:52 +0000
From: "O'donoghue, Bryan" <bryan.odonoghue@intel.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Thread-Topic: [poky] Simple recipe for local kernel/git development
Thread-Index: AQHM4Ofinsi/1jQEqkeQ1RNUYEVsS5YoJKzg
Date: Wed, 1 Feb 2012 15:09:52 +0000
Message-ID: <B80010913FB1F346A630B7F2E18A60C00789E7@IRSMSX102.ger.corp.intel.com>
References: <B80010913FB1F346A630B7F2E18A60C007897E@IRSMSX102.ger.corp.intel.com>
	<CADkTA4Mo_wE883Ceg1SBRxJ-ctV5ieb71vRhyVt4kjKfXTjYbg@mail.gmail.com>
In-Reply-To: <CADkTA4Mo_wE883Ceg1SBRxJ-ctV5ieb71vRhyVt4kjKfXTjYbg@mail.gmail.com>
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
X-List-Received-Date: Wed, 01 Feb 2012 15:11:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>=20
> There's no requirement of a meta branch if the repository isn't a full
> yocto repository, and I have several more enhancements in this area
> that
> will be part of M3.
>=20
> So the question that I have is .. what is your local kernel repository
> that
> you are working with ?
>=20
> Cheers,
>=20
> Bruce

Hi Bruce.

I've taken a git clone of linux-yocto-dev the current kernel on yoctoprojec=
t.org

All I really want to do in simple terms is to have that local git repositor=
y=20

a. Be the kernel
b. Be configured by one defconfig (not a bunch of fragments)

If you have a bitbake recipe that accomplishes this it'd be highly useful t=
o me !

-------------------------------------------------------------
Intel Ireland Limited (Branch)
Collinstown Industrial Park, Leixlip, County Kildare, Ireland
Registered Number: E902934

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


