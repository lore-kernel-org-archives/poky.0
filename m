Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 749714C80B70
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 10:44:09 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 03 Jan 2011 08:44:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,267,1291622400"; d="scan'208";a="589433271"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga002.jf.intel.com with ESMTP; 03 Jan 2011 08:44:09 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.226.128) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 3 Jan 2011 08:44:08 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx606.amr.corp.intel.com ([10.22.226.128]) with mapi;
	Mon, 3 Jan 2011 08:44:08 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: Khem Raj <raj.khem@gmail.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Mon, 3 Jan 2011 08:44:06 -0800
Thread-Topic: [poky] [PATCH 0/3] gcc 4.5.4 + linaro update
Thread-Index: Acug/5QRbEFnicgUQ9GTLS3DwJni3AKZQucg
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE9405303F01@orsmsx504.amr.corp.intel.com>
References: <cover.1292920700.git.raj.khem@gmail.com>
In-Reply-To: <cover.1292920700.git.raj.khem@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: [PATCH 0/3] gcc 4.5.4 + linaro update
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
X-List-Received-Date: Mon, 03 Jan 2011 16:44:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> Hello,
>=20
> This branch brings in gcc 4.5.2 and on top linaro's enhancements to gcc
> 4.5
> I have made sure that it builds poky-image-minimal for arm, ppc, x86,
> mips
> qemu and boots on all of them. It did not boot on ppc however poky-qemu
> did not boot any images for me even the ones built without these
> enhancements
> i.e. on vanilla yocto. So I used a qemu 0.12.5 built with OE
> which worked well. I need help in testing it out. So please test these
> patches rigourously
> with standard testing setup you use before you pull them
>=20
> If there are issues found let me know
>=20
>=20
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: kraj/gcc-update
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-
> contrib/log/?h=3Dkraj/gcc-update
>=20
> Thanks,
>     Khem Raj <raj.khem@gmail.com>
> ---
>=20

Hi Khem,
  I could get fire the full build of poky-image-sdk on all arches with your=
 gcc on Fedora 14 64bit. And everything built fine except I saw this error =
on arm.=20
http://pastebin.com/Fw7K1Kj9

I did not spend much time looking into the error as I am still busy with pe=
rl recipe upgrade. It may be something to do with fedora 14 environment als=
o. And FYI it was a build from scratch.

Thanks,
Nitin


