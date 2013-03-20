Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A610AE012F1
	for <poky@yoctoproject.org>; Wed, 20 Mar 2013 09:00:36 -0700 (PDT)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Wed, 20 Mar 2013 12:00:35 -0400
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Wed, 20 Mar 2013 11:59:00 -0400
Thread-Topic: Building custom Linux kernel with own layer
Thread-Index: Ac4lg9XtTCSStnRVQAS6Du6fSCMMqA==
Message-ID: <91586D499ADFD74FBCFB8425266A5DE40139F932D55A@pluto.melinkcorp.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 00FC30D4003F2C00FC3221
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Building custom Linux kernel with own layer
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
X-List-Received-Date: Wed, 20 Mar 2013 16:00:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have an Atmel AT91SAM9G25 based board and have been using the Classic Ope=
nEmbedded development tree for my device.  I am working on switching to usi=
ng the Poky distribution.  I found a Yocto layer that someone else had star=
ted here: https://github.com/baseapp/meta-atmel/tree/yocto.  I would like t=
o use this layer as a starting point and go from there.  The layer looks to=
 be setup to build kernel 2.6.39 (as that is the kernel I am currently usin=
g), but that's not what's happening on my system.  I would like some help i=
n figuring out what needs to change with the layer or my setup to build the=
 2.6.39 kernel.

I am using the stable poky-danny-8.0 release (downloaded tarball).  Under t=
he poky-danny-8.0 folder, I cloned the meta-atmel layer that I referred to =
above.  I changed my bblayers.conf to include the meta-atmel layer.  When I=
 bitbake linux-yocto, here's what I see for my build configuration:

Build Configuration:
BB_VERSION        =3D "1.16.0"
TARGET_ARCH       =3D "arm"
TARGET_OS         =3D "linux-gnueabi"
MACHINE           =3D "qemuarm"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.3"
TUNE_FEATURES     =3D "armv5 dsp thumb arm926ejs"
TARGET_FPU        =3D "soft"
meta             =20
meta-yocto       =20
meta-yocto-bsp    =3D "<unknown>:<unknown>"
meta-atmel        =3D "yocto:80336b72180283bfd5cf5f674e8c1081deede72a"

and it builds 3.4.11+git1+a201268353c030d9fafe00f2041976f7437d9386_1+8ee53c=
3b82ada3cdfd7d25f07d3975834ac9a9b2-r4.3.  From looking at the meta-atmel la=
yer, I think it should be overriding the linux-yocto settings from the othe=
r layers.   What am I missing?

Thanks,
Bryan

