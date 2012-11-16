Return-Path: <stefanx.stanacar@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA661E00533
	for <poky@yoctoproject.org>; Fri, 16 Nov 2012 06:24:11 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 16 Nov 2012 06:24:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,265,1352102400"; d="scan'208";a="169201145"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by AZSMGA002.ch.intel.com with ESMTP; 16 Nov 2012 06:24:10 -0800
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.151]) by
	IRSMSX102.ger.corp.intel.com ([169.254.2.95]) with mapi id
	14.01.0355.002; Fri, 16 Nov 2012 14:23:13 +0000
From: "Stanacar, StefanX" <stefanx.stanacar@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [PATCH] yocto-bsp: update qemu machine.conf template
Thread-Index: AQHNw+6s3YyNk+K7MU6AOrkOmGn1uJfsf0yw
Date: Fri, 16 Nov 2012 14:23:12 +0000
Message-ID: <81551E10643BEC4899D6BA2541201B62485B62@IRSMSX104.ger.corp.intel.com>
References: <1353065818-21168-1-git-send-email-stefanx.stanacar@intel.com>
In-Reply-To: <1353065818-21168-1-git-send-email-stefanx.stanacar@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Re: [PATCH] yocto-bsp: update qemu machine.conf template
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 16 Nov 2012 14:24:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Please ignore this one.
Dropping the entire XSERVER assign from the template was a  bad idea. When =
creating a bsp layer from qemux86/x86-64 templates by default you need xf86=
-video-vmware (because of runqemu, xorg.conf) while other qemu templates us=
e xf86-video-fbdev from qemu.inc. The universe will not be consistent today=
...

I'll send a v2 shortly, removing only qemugl from XSERVER.



-----Original Message-----
From: Stanacar, StefanX=20
Sent: Friday, November 16, 2012 1:37 PM
To: poky@yoctoproject.org
Cc: Stanacar, StefanX
Subject: [PATCH] yocto-bsp: update qemu machine.conf template

Building a qemu sato image with a MACHINE created by yocto-bsp fails becaus=
e nothing RPROVIDES qemugl anymore so remove qemugl support from the templa=
te as well (drop the entire XSERVER assign because it's included from qemu.=
inc)

Also drop redundant glibc configure knobs (nptl and tls are no longer optio=
nal and they don't exist in conf/machine/qemux86* anyway).

This is basically a sync with latest commits on meta/conf/machine/qemux86*

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 .../substrate/target/arch/qemu/conf/machine/{{=3Dmachine}}.conf  | 10 ----=
------
 1 file changed, 10 deletions(-)

diff --git a/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=3Dm=
achine}}.conf b/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=
=3Dmachine}}.conf
index d1f50c1..958d6da 100644
--- a/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=3Dmachine}=
}.conf
+++ b/scripts/lib/bsp/substrate/target/arch/qemu/conf/machine/{{=3Dmachine}=
}.conf
@@ -38,17 +38,7 @@ require conf/machine/include/tune-mips32.inc
 MACHINE_FEATURES +=3D "x86"
 KERNEL_IMAGETYPE =3D "bzImage"
 SERIAL_CONSOLE =3D "115200 ttyS0"
-# We bypass swrast but we need it to be present for X to load correctly
-XSERVER ?=3D "xserver-xorg \
-           mesa-dri-driver-swrast \
-           xf86-input-vmmouse \
-           xf86-input-keyboard \
-           xf86-input-evdev \
-           xf86-video-vmware \
-           qemugl"
 require conf/machine/include/qemu.inc
-GLIBC_ADDONS =3D "nptl"
-GLIBC_EXTRA_OECONF =3D "--with-tls"
=20
 {{ if qemuarch =3D=3D "arm": }}
 KERNEL_IMAGETYPE =3D "zImage"
--=20
1.7.11.7


