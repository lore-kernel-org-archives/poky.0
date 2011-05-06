Return-Path: <lianhao.lu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0960C4C800AC
	for <poky@pokylinux.org>; Thu,  5 May 2011 20:35:03 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 05 May 2011 18:35:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,323,1301900400"; d="scan'208";a="688903776"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga002.fm.intel.com with ESMTP; 05 May 2011 18:35:02 -0700
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 6 May 2011 09:34:31 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 6 May 2011 09:34:30 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Fri, 6 May 2011
	09:34:29 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: Ilya Yanok <yanok@emcraft.com>, "Zhang, Jessica" <jessica.zhang@intel.com>
Date: Fri, 6 May 2011 09:34:27 +0800
Thread-Topic: [poky] opkg and opkg-target aliases for the SDK
Thread-Index: AcwLfJ+e3DmdZVM7QNiRH3UBC8WyGgAEJqrg
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F23220C7AD6@shsmsx502.ccr.corp.intel.com>
References: <4DC186D1.30302@emcraft.com>
	<9AFCD584B0B67B48AE8D8585BE30BA950116E73F04@orsmsx504.amr.corp.intel.com>
	<4DC3334C.9030509@emcraft.com>
In-Reply-To: <4DC3334C.9030509@emcraft.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: opkg and opkg-target aliases for the SDK
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
X-List-Received-Date: Fri, 06 May 2011 01:35:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Ilya Yanok wrote on 2011-05-06:
> Hi Jessica,
>=20
> On 04.05.2011 21:21, Zhang, Jessica wrote:
>> The removal was part of the changes made for adt-installer which is
>> a new
> feature for Yocto 1.0 release.  The old opkg and opkg-target aliases
> in the environment script was for add packages to the locked location
> of toolchain(aka
> SDK) and target sysroot.  With Yocto 1.0 and adt-installer, it's still
> using opkg to install toolchain under /opt/poky/ but the sysroot is
> now a customized location that can be anywhere, which is specified in the=
 adt_intaller.conf file...
>=20
> I see. Still as we are meta-toolchain users we are going to miss them...
> Or is meta-toolchain going to be abandoned and we should move to
> adt-installer?
>=20
Hi Ilya,

The meta-toolchain is still there for backward compatibilities. Another rea=
son that the opkg-target and opkg were removed from the environment file in=
 meta-toolchain is that now the meta-toolchain can be created not only by i=
pk, but by rpm/deb also, and the opkg/opkg-target is miss-leading for the r=
pm/deb cases.

Best Regards,
Lianhao



