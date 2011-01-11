Return-Path: <kevin.tian@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 279D14C80050
	for <poky@pokylinux.org>; Tue, 11 Jan 2011 05:21:20 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 11 Jan 2011 03:21:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,306,1291622400"; d="scan'208";a="876377062"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 11 Jan 2011 03:21:19 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 11 Jan 2011 19:20:34 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 11 Jan 2011 19:20:34 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Tue, 11 Jan 2011 19:20:33 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "poky@pokylinux.org" <poky@pokylinux.org>
Date: Tue, 11 Jan 2011 19:20:30 +0800
Thread-Topic: update about sstate relocation issue
Thread-Index: AcuxgY5v184hs2q2TdaD+NWdsY/pLQ==
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D7895DBFC@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: update about sstate relocation issue
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
X-List-Received-Date: Tue, 11 Jan 2011 11:21:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Recently we found some relocation issues when use sstate packages in a new
build environment where the original staging path generating those sstate
packages is missing. This is a typical scenario on using sstate, e.g. by de=
livering
prebuilt sstate packages to your customers, or create a mirror in a group d=
ev
environment.=20

Now I want to say this issue has been basically solved with recent fixes on=
:

	perl-native,	bison-native, flex-native: encode original staging path in bi=
nary
	perl, binutils: use its own ${CC} without --sysroot option
	gcc: c++ include path is not relative to --sysroot option
	kernel tool: use ${KERNEL_CC} instead of ${CC}

I verified below scenario with above fixes:

	a) build a sato image in BUILD1
	b) copy below sstate packages from BUILD1 to SSTATE_NATIVE:
		*i686*
		*libtool-cross*
		*eglibc*
		*linux-libc-headers*
		*gcc-runtime"
	c) rename BUILD1 to BUILD1.bak
	d) create a new BUILD2, with SSTATE_MIRROR pointing to SSTATE_NATIVE dir
	e) build poky image in BUILD2

Because the relocation issues are normally related to native packages, so a=
bove
test ensures the 2nd BUILD2 reusing all the native packages generated from =
BUILD1,
while building all target recipes from scratch. BUILD1 is renamed to ensure=
 the
false reference is caught.

All of above have been in the master. So I think it's time for a wider test=
 on sstate now. :-)

Thanks
Kevin

