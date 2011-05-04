Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 500C34C800B6
	for <poky@pokylinux.org>; Wed,  4 May 2011 12:21:15 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 04 May 2011 10:21:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,315,1301900400"; d="scan'208";a="637926517"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga002.jf.intel.com with ESMTP; 04 May 2011 10:21:14 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.226.213) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 4 May 2011 10:21:13 -0700
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx601.amr.corp.intel.com ([10.22.226.213]) with mapi;
	Wed, 4 May 2011 10:21:14 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Ilya Yanok <yanok@emcraft.com>, "poky@pokylinux.org" <poky@pokylinux.org>
Date: Wed, 4 May 2011 10:21:12 -0700
Thread-Topic: [poky] opkg and opkg-target aliases for the SDK
Thread-Index: AcwKfUByxOTSUEyHR+iroieMd8/EbAAAdjjA
Message-ID: <9AFCD584B0B67B48AE8D8585BE30BA950116E73F04@orsmsx504.amr.corp.intel.com>
References: <4DC186D1.30302@emcraft.com>
In-Reply-To: <4DC186D1.30302@emcraft.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
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
X-List-Received-Date: Wed, 04 May 2011 17:21:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Ilya,

The removal was part of the changes made for adt-installer which is a new f=
eature for Yocto 1.0 release.  The old opkg and opkg-target aliases in the =
environment script was for add packages to the locked location of toolchain=
(aka SDK) and target sysroot.  With Yocto 1.0 and adt-installer, it's still=
 using opkg to install toolchain under /opt/poky/ but the sysroot is now a =
customized location that can be anywhere, which is specified in the adt_int=
aller.conf file...

Thanks,
Jessica

-----Original Message-----
From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] =
On Behalf Of Ilya Yanok
Sent: Wednesday, May 04, 2011 10:03 AM
To: poky@pokylinux.org
Subject: [poky] opkg and opkg-target aliases for the SDK

Hello guys,

I've found that opkg and opkg-target aliases were removed from the SDK
environment script by commit f09f8f4.
However I can't see any note about this in the commit comment. Was this
removal intentional?

Regards, Ilya.
_______________________________________________
poky mailing list
poky@yoctoproject.org
https://lists.yoctoproject.org/listinfo/poky

