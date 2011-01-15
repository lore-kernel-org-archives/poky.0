Return-Path: <dexuan.cui@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2B49C4C810EE
	for <poky@yoctoproject.org>; Sat, 15 Jan 2011 05:50:30 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 15 Jan 2011 03:50:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,326,1291622400"; d="scan'208";a="877720205"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga001.fm.intel.com with ESMTP; 15 Jan 2011 03:50:28 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Sat, 15 Jan 2011 19:50:28 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Sat, 15 Jan 2011 19:50:27 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: 'Koen Kooi' <koen@dominion.thruhere.net>
Date: Sat, 15 Jan 2011 19:50:26 +0800
Thread-Topic: [poky] [PATCH 2/2] libc-package.bbclass: should not rm scsi/*.h
Thread-Index: Acu0qO1zRoeafffHReCqAMJgwxGaywAAD0Dg
Message-ID: <1865303E0DED764181A9D882DEF65FB685AFA1B328@shsmsx502.ccr.corp.intel.com>
References: <cover.1295089968.git.dexuan.cui@intel.com>
	<5e7d2160749c1364b238aa38d358bf5c0bfabb37.1295089968.git.dexuan.cui@intel.com>
	<18993D32-C58B-4FC8-901E-E90046FF27B5@dominion.thruhere.net>
In-Reply-To: <18993D32-C58B-4FC8-901E-E90046FF27B5@dominion.thruhere.net>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 2/2] libc-package.bbclass: should not rm scsi/*.h
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
X-List-Received-Date: Sat, 15 Jan 2011 11:50:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Koen Kooi wrote:
> Op 15 jan 2011, om 12:23 heeft Dexuan Cui het volgende geschreven:
>=20
>> {e}glibc should install the scsi/*.h files, which are needed by hal.
>> Currently hal can build because eglibc-initial (which has its own
>> do_install) installs the files. In future eglibc will have its own
>> sysroot, so hal=20
>> won't build.
>>=20
>> BTW: in OE side, eglibc's do_install also doesn't remove the files.
>=20
> As some background info: There's a conflict between
> linux-libc-headers-dev and libc-dev when installing on the target. In
> OE we do this instead: =20
>=20
> koen@dominion:/OE/org.openembedded.dev$ grep scsi
> recipes/linux-libc-headers/ -rn=20
> recipes/linux-libc-headers/linux-libc-headers_2.6.32.bb:23:     rm -f
> ${D}${exec_prefix}/include/scsi/scsi.h
> recipes/linux-libc-headers/linux-libc-headers_2.6.31.bb:23:     rm -f
> ${D}${exec_prefix}/include/scsi/scsi.h
> recipes/linux-libc-headers/linux-libc-headers_2.6.34.bb:42:     rm -f
> ${D}${exec_prefix}/include/scsi/scsi.h  =20
My understanding is:
Linux kernel should not export these files: in OE side see 91d3d92a acked b=
y you. :-)
So {e}glibc should supply the files -- previously poky did supply, but 7379=
ee77 removed the files -- I think this is incorrect.

BTW: in poky, we can see linux-libc-headers_2.6.36.bb also correctly remove=
s the file.

thanks
-- Dexuan=

