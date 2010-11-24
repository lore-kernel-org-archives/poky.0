Return-Path: <kevin.tian@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4AF704C80B71
	for <poky@pokylinux.org>; Wed, 24 Nov 2010 05:33:45 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 24 Nov 2010 03:33:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,247,1288594800"; d="scan'208";a="352693793"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by azsmga001.ch.intel.com with ESMTP; 24 Nov 2010 03:33:43 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 24 Nov 2010 19:33:32 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Wed, 24 Nov 2010 19:33:31 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "poky@pokylinux.org" <poky@pokylinux.org>
Date: Wed, 24 Nov 2010 19:33:29 +0800
Thread-Topic: an update about gcc/libc sstate issue
Thread-Index: AcuLy2r5PTjqvXvCSFy0/GAbm/A8wg==
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D3E152B90@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>, "Eggleton,
	Paul" <paul.eggleton@intel.com>
Subject: an update about gcc/libc sstate issue
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
X-List-Received-Date: Wed, 24 Nov 2010 11:33:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, all,

I did more analysis into this problem, which ends up to two issues:

a) there's a bug which causes an empty dependency task chain for native tas=
ks.
So if -initial or -intermediate recipe is changed, other recipes depending =
on them such
as gcc-cross/gcc-runtime still get same checksum and installed from sstate.=
 This has
correctness issue, which has been fixed on my branch:

http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/commit/?h=3Dtk/sstate&i=
d=3D9fc28eef6dd997776cdd0b904d523b7903c4a9a0

b) on the other hand, gcc-*-intermediate is not a subset of a full featured=
 gcc. E.g,
gcc-runtime depends on some special installation from -intermediate, which =
are not
found from gcc-cross if gcc-cross-intermediate sstate installation is skipp=
ed. This=20
causes gcc-runtime failed on do_configure if bump up its PR:

---

/media/disk/builds/master.test/tmp/sysroots/i686-linux/usr/bin/armv5te-poky=
-linux-gnueabi/../../libexec/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-=
gnueabi/4.5.1/ld: crtbegin.o: No such file: No such file or directory
collect2: ld returned 1 exit status

---

I searched crtbegin.o from sstate manifest file, there're three of them:
=20
---

tmp/sstate-control/manifest-i686_armv5te-gcc-cross-intermediate.populate-sy=
sroot:/media/disk/builds/master/tmp/sysroots/i686-linux/usr/lib/armv5te-pok=
y-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.5.1/crtbegin.o
tmp/sstate-control/manifest-i686_armv5te-gcc-cross.populate-sysroot:/media/=
disk/builds/master/tmp/sysroots/i686-linux/usr/include/gcc-build-internal-a=
rmv5te-poky-linux-gnueabi/usr/lib/arm-poky-linux-gnueabi/4.5.1/crtbegin.o
tmp/sstate-control/manifest-armv5te-gcc-runtime.populate-sysroot:/media/dis=
k/builds/master/tmp/sysroots/armv5te-poky-linux-gnueabi/usr/lib/arm-poky-li=
nux-gnueabi/4.5.1/crtbegin.o

---

The 1st one is desired. The 2nd one is copied to the 3rd one later.

Instead of tweaking some tricky fix here, I'd think perhaps we should promo=
te the
priority of revising bootstrap process, to have them installed into differe=
nt sysroot?

Thanks
Kevin

