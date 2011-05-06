Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1E5E64C8007E
	for <poky@pokylinux.org>; Thu,  5 May 2011 21:39:15 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 05 May 2011 19:39:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,324,1301900400"; d="scan'208";a="638799783"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga002.jf.intel.com with ESMTP; 05 May 2011 19:39:14 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.226.213) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 5 May 2011 19:39:14 -0700
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx601.amr.corp.intel.com ([10.22.226.213]) with mapi;
	Thu, 5 May 2011 19:39:14 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Lu, Lianhao" <lianhao.lu@intel.com>, Ilya Yanok <yanok@emcraft.com>
Date: Thu, 5 May 2011 19:39:13 -0700
Thread-Topic: [poky] poky and poky-target aliases for the SDK
Thread-Index: AcwLfJ+e3DmdZVM7QNiRH3UBC8WyGgAEJqrgAAIpgFA=
Message-ID: <9AFCD584B0B67B48AE8D8585BE30BA950116EE6348@orsmsx504.amr.corp.intel.com>
References: <4DC186D1.30302@emcraft.com>
	<9AFCD584B0B67B48AE8D8585BE30BA950116E73F04@orsmsx504.amr.corp.intel.com>
	<4DC3334C.9030509@emcraft.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F23220C7AD6@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <C10D3FB0CD45994C8A51FEC1227CE22F23220C7AD6@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: poky and poky-target aliases for the SDK
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
X-List-Received-Date: Fri, 06 May 2011 02:39:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Ilya,

As Lianhao mentioned we're not abandoning meta-toolchain, but since adt ins=
taller provide you the flexibility to setup your development sysroot at you=
r customized location which we believe is a big gain in embedded applicatio=
n development.  Again, since adt is using opkg, you're still able to manage=
 the toolchain install location under /opt/poky, and sysroot location using=
 opkg as you use to do with meta-toolchain, just the opkg and opkg-target n=
eed to be modified to reflect the new locations based on adt-installer.

Thanks,
Jessica

-----Original Message-----
From: Lu, Lianhao
Sent: Thursday, May 05, 2011 6:34 PM
To: Ilya Yanok; Zhang, Jessica
Cc: poky@pokylinux.org
Subject: RE: [poky] opkg and opkg-target aliases for the SDK

Ilya Yanok wrote on 2011-05-06:
> Hi Jessica,
>
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
>
> I see. Still as we are meta-toolchain users we are going to miss them...
> Or is meta-toolchain going to be abandoned and we should move to
> adt-installer?
>
Hi Ilya,

The meta-toolchain is still there for backward compatibilities. Another rea=
son that the opkg-target and opkg were removed from the environment file in=
 meta-toolchain is that now the meta-toolchain can be created not only by i=
pk, but by rpm/deb also, and the opkg/opkg-target is miss-leading for the r=
pm/deb cases.

Best Regards,
Lianhao



