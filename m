Return-Path: <jiajun.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45A5BE011C6
	for <poky@yoctoproject.org>; Tue, 16 Aug 2011 07:41:29 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 16 Aug 2011 07:41:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="38259014"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 16 Aug 2011 07:41:39 -0700
Received: from pgsmsx104.gar.corp.intel.com (10.221.44.91) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 16 Aug 2011 22:41:37 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX104.gar.corp.intel.com (10.221.44.91) with Microsoft SMTP Server
	(TLS) id 14.1.323.3; Tue, 16 Aug 2011 22:41:36 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Tue, 16 Aug 2011 22:41:34 +0800
From: "Xu, Jiajun" <jiajun.xu@intel.com>
To: Khem Raj <raj.khem@gmail.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Tue, 16 Aug 2011 22:41:33 +0800
Thread-Topic: [poky] [PATCH 1/1] poky.conf: add flag opengl into
	DISTRO_FEATURES
Thread-Index: AcxcIdlSAVhXASgHSiic2H+ywpF4wAAAFMSQ
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A12D716467E@shsmsx501.ccr.corp.intel.com>
References: <cover.1313477829.git.jiajun.xu@intel.com>
	<90c7a0495c570e70d0445468788efb16a4083824.1313477829.git.jiajun.xu@intel.com>
	<4E4A804A.3090102@gmail.com>
In-Reply-To: <4E4A804A.3090102@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: [PATCH 1/1] poky.conf: add flag opengl into	DISTRO_FEATURES
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
X-List-Received-Date: Tue, 16 Aug 2011 14:41:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>=20
> On 08/15/2011 11:59 PM, Jiajun Xu wrote:
>> libsdl will check if opengl is set in DISTRO_FEATURES, then enable
>> openGL option during do_configure. It is required for 3D game testing.
>>=20
>=20
> is it also affecting how qemu is built ?

No. In libsdl.bb, it will only check opengl flag for target version build. =
For nativesdk version, it will not set and use opengl.

Best Regards,
Jiajun


