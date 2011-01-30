Return-Path: <kevin.tian@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id BFB214C8026D
	for <poky@yoctoproject.org>; Sun, 30 Jan 2011 06:20:58 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 30 Jan 2011 04:20:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,400,1291622400"; d="scan'208";a="652568610"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga002.fm.intel.com with ESMTP; 30 Jan 2011 04:20:57 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Sun, 30 Jan 2011 20:20:56 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Sun, 30 Jan 2011 20:20:56 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, "Zhang, Jessica"
	<jessica.zhang@intel.com>
Date: Sun, 30 Jan 2011 20:20:52 +0800
Thread-Topic: [poky] poky-image-sato-sdk failed at do_rootfs
Thread-Index: AcvAZm0RDySv0vkcQK6RudTUMO8M+gAETFFQ
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504E6294E1D3@shsmsx502.ccr.corp.intel.com>
References: <9AFCD584B0B67B48AE8D8585BE30BA9506BAAFDF@orsmsx504.amr.corp.intel.com>
	<1296382406.13501.7899.camel@rex>
In-Reply-To: <1296382406.13501.7899.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: poky-image-sato-sdk failed at do_rootfs
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
X-List-Received-Date: Sun, 30 Jan 2011 12:20:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: Richard Purdie
> Sent: Sunday, January 30, 2011 6:13 PM
>=20
> On Sat, 2011-01-29 at 17:33 -0800, Zhang, Jessica wrote:
> > My poky-image-sato-sdk against the latest master is consistently
> > failed at last step of do_rootfs, here's the error:
> >
> >  Processing task-poky-qt-demos...
> > | error: Failed dependencies:
> > |  eglibc >=3D 2.12 is needed by libstdc++6-4.5.1-r2.armv5te
> > |  eglibc >=3D 2.12 is needed by libgcc1-4.5.1-r0.armv5te
> > | Function 'do_rootfs' failed
> > (see
> /home/jzhang/master-arm-build/tmp/work/qemuarm-poky-linux-gnueabi/poky-
> image-sato-sdk-1.0-r0/temp/log.do_rootfs.6142 for further information)
> > | ERROR: Function 'do_rootfs' failed
> > (see
> /home/jzhang/master-arm-build/tmp/work/qemuarm-poky-linux-gnueabi/poky-
> image-sato-sdk-1.0-r0/temp/log.do_rootfs.6142 for further information)
> >
> > Has anybody run into same issue or any idea?
>=20
> This looks like a race issue we once had. Grepping the gcc include files
> revealed:
>=20
> gcc-configure-cross.inc:do_package_write_ipk[depends] +=3D
> "virtual/libc:do_package"
>=20
> which was added to address this problem. Of course now, libgcc and
> libstdc++ are built by libgcc and gcc-runtime so I think the correct
> approach is to make both of these dependent on the libc packaging to
> finish.

Curious how that race condition doesn't cause issue in the 1st place when l=
ibgcc
and gcc-runtime are compiled, while only occurs in final rootfs stage...

BTW, today I took a brief look in Lianhao's cube. His phenomenon is even mo=
re
complex I think because when above error of do_rootfs is thrown out there'r=
e
still 6-7 ongoing tasks which are waited to complete.

>=20
> This also shouldn't be ipk specific, in the modern world we can depend
> on do_package_write.
>=20
> The problem is that "eglibc" gets renamed to libc at package time. If
> the package step hasn't run, the renaming isn't applied to the
> dependencies that libgcc and libstdc++ have on libc and you see this
> error. If you rebuild those packages, the image should work. Since its a
> race, some builds will work, some won't. Using rm_work will make this
> bug more likely to appear at a guess.
>=20

Since Lianhao also observed this issue, we'll take a look at this issue tom=
orrow.

Thanks
Kevins

