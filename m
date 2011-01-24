Return-Path: <lianhao.lu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id ECD2A4C8109B
	for <poky@yoctoproject.org>; Mon, 24 Jan 2011 04:11:09 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 24 Jan 2011 02:11:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,369,1291622400"; d="scan'208";a="378994461"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by azsmga001.ch.intel.com with ESMTP; 24 Jan 2011 02:11:08 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 24 Jan 2011 18:11:07 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Mon, 24 Jan 2011 18:11:06 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 24 Jan 2011 18:11:02 +0800
Thread-Topic: how to resolve the rpm "/bin/sh" file dependency?
Thread-Index: Acu7rwESDBSkt6alTdSFy4kzKYxU9A==
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F20A8338819@shsmsx502.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-hashedpuzzle: BiZG CGMK CcMb D99I EYO3 Ects Gxop HQs2 HT5b HaAh HetD
	JWTt J4fx J4xc KBwh
	KbLl; 1; cABvAGsAeQBAAHkAbwBjAHQAbwBwAHIAbwBqAGUAYwB0AC4AbwByAGcA;
	Sosha1_v1; 7; {41438788-1093-4076-8E3C-070232E319D8};
	bABpAGEAbgBoAGEAbwAuAGwAdQBAAGkAbgB0AGUAbAAuAGMAbwBtAA==; Mon,
	24 Jan 2011 10:11:02 GMT;
	aABvAHcAIAB0AG8AIAByAGUAcwBvAGwAdgBlACAAdABoAGUAIAByAHAAbQAgACIALwBiAGkAbgAvAHMAaAAiACAAZgBpAGwAZQAgAGQAZQBwAGUAbgBkAGUAbgBjAHkAPwA=
x-cr-puzzleid: {41438788-1093-4076-8E3C-070232E319D8}
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: how to resolve the rpm "/bin/sh" file dependency?
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
X-List-Received-Date: Mon, 24 Jan 2011 10:11:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Guys,

I'm currently trying to make the meta-toolchain-sdk to work with both opkg =
and RPM, and met a RPM dependency problem. When I tried to install the pack=
ages defined in meta-toolchain-sdk.bb, the rpm complained about the followi=
ng failing dependencies. Does anyone know how to solve this kind of "RPM fi=
le dependency error" without installing the busybox package which provides =
the file "/bin/sh"?

+ rpm --verbose --dbpath /var/lib/rpm '--define=3D_openall_before_chroot 1'=
 -D '_dbpath home/lulianhao/poky-build/meta-toolchain/tmp/work/mips-poky-li=
nux/meta-toolchain-sdk-1.0-r1/sdk/image//opt/poky/0.9+snapshot/sysroots/mip=
s-poky-linux/install' -D '_solve_dbpath /home/lulianhao/poky-build/meta-too=
lchain/tmp/deploy/rpm/all/solvedb:/home/lulianhao/poky-build/meta-toolchain=
/tmp/deploy/rpm/mips/solvedb:/home/lulianhao/poky-build/meta-toolchain/tmp/=
deploy/rpm/qemumips/solved -D '__dbi_cdb create mp_mmapsize=3D128Mb mp_size=
=3D1Mb nofsync' -U --justdb --noscripts --notriggers --noparentdirs --nolin=
ktos --ignoresize /home/lulianhao/poky-build/meta-toolchain/tmp/work/mips-p=
oky-linux/meta-toolchain-sdk-1.0-r1/sdk/image//opt/poky/0.9+snapshot/sysroo=
ts/mips-poky-linux/install/install.manifest
error: Failed dependencies:
        /bin/sh is needed by util-linux-2.17.2-r1.mips
        /bin/sh is needed by dbus-1-1.4.0-r0.mips
        /bin/sh is needed by gdk-pixbuf-loader-png-2.20.1-r2.mips
        /bin/sh is needed by gdk-pixbuf-loader-jpeg-2.20.1-r2.mips
        /bin/sh is needed by gdk-pixbuf-loader-xpm-2.20.1-r2.mips
        /bin/sh is needed by gdk-pixbuf-loader-gif-2.20.1-r2.mips
        /bin/sh is needed by pango-module-basic-x-1.28.3-r0.mips
        /bin/sh is needed by pango-module-basic-fc-1.28.3-r0.mips
        /bin/sh is needed by util-linux-swaponoff-2.17.2-r1.mips
        /bin/sh is needed by util-linux-umount-2.17.2-r1.mips
        /bin/sh is needed by util-linux-losetup-2.17.2-r1.mips
        /bin/sh is needed by util-linux-fdisk-2.17.2-r1.mips
        /bin/sh is needed by util-linux-mount-2.17.2-r1.mips
        /bin/sh is needed by libnss-mdns-0.10-r2.mips
        /bin/sh is needed by hal-0.5.14-r3.mips
        /bin/sh is needed by gnome-vfs-2.24.4-r0.mips
        /bin/sh is needed by avahi-daemon-0.6.28-r1.mips
        /bin/sh is needed by udev-164-r1.mips
        /bin/sh is needed by bzip2-1.0.6-r3.mips
        /bin/sh is needed by sysvinit-pidof-2.88dsf-r1.mips
        /bin/sh is needed by udev-cache-164-r1.mips
Function 'do_populate_sdk' failed (see /home/lulianhao/poky-build/meta-tool=
chain/tmp/work/mips-poky-linux/meta-toolchain-sdk-1.0-r1/temp/log.do_popula=
te_sdk.16327 for further information)
ERROR: Function 'do_populate_sdk' failed (see /home/lulianhao/poky-build/me=
ta-toolchain/tmp/work/mips-poky-linux/meta-toolchain-sdk-1.0-r1/temp/log.do=
_populate_sdk.16327 for further information)

Best Regards,
-Lianhao Lu


