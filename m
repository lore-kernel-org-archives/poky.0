Return-Path: <matti.kaasinen@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE383E00474; Wed, 19 Aug 2015 05:48:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (matti.kaasinen[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f45.google.com (mail-qg0-f45.google.com
	[209.85.192.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69A96E003D9
	for <poky@yoctoproject.org>; Wed, 19 Aug 2015 05:48:22 -0700 (PDT)
Received: by qgeb6 with SMTP id b6so2706564qge.3
	for <poky@yoctoproject.org>; Wed, 19 Aug 2015 05:48:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=bE2Ct+7n/xZ1VDeSyttcBpT6qYS7NQgub4iYxAMsxwU=;
	b=kU3EY0uXjVyxZPNbgW3/1UbCTcl7BuoCVXOrTwWwcdp1SVKhsUBZ1wvVGJ28FFOLU9
	IFCy1HfDBRigeBPraStKn3wH3pHsXpEb9egXX4gtwx8xuEd2eDrDPyZtZ31e64ixJkYh
	hX1PabgT0yACPlJu8cD+qyYxGeX9e4sKFJa18kd0ZM0DPsIfE9hesfD4T0IpRo6TJNee
	gDJ/GioDfr0msV/Cwui/BfE2rPQfXmsC3H+vRa2vUSzfkuPYe751aVN9Kpf5HrcTwBma
	vAe5R32gxp9OwTE/rRQ4eCzkq2hFqrA2paVLYaXoV8+sbLXW1a/of44I/J9psumBkgWx
	RZvQ==
MIME-Version: 1.0
X-Received: by 10.140.148.136 with SMTP id 130mr23868999qhu.82.1439988501794; 
	Wed, 19 Aug 2015 05:48:21 -0700 (PDT)
Received: by 10.55.149.133 with HTTP; Wed, 19 Aug 2015 05:48:21 -0700 (PDT)
Date: Wed, 19 Aug 2015 15:48:21 +0300
Message-ID: <CADnUhn3V5iB4g1gb+2btHTK5pWU=j0LfOJpHj+EJHeoU1ERKew@mail.gmail.com>
From: matti kaasinen <matti.kaasinen@gmail.com>
To: Poky Project <poky@yoctoproject.org>
Subject: [Errno 18] Invalid cross-device link warning coming from license file copy
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
X-List-Received-Date: Wed, 19 Aug 2015 12:48:26 -0000
Content-Type: multipart/alternative; boundary=001a11354f8a21542b051da973b8

--001a11354f8a21542b051da973b8
Content-Type: text/plain; charset=UTF-8

Is there any way of getting rid of warnings of following type:

WARNING: Could not copy license file /YOCTO/poky/LICENSE to
/XXX/work/am335x_evm-poky-linux-gnueabi/xxxx-image/1.0-r0/license-destdir/xxx-image/LICENSE:
[Errno 18] Invalid cross-device link

Yes, sources and results are located on different logical drives, but
should it still be possible to copy files between them. Everything else
works fine in bitbaking.

MAIN-
Build Configuration:
BB_VERSION        = "1.26.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-14.04"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "am335x-evm"
DISTRO            = "poky"
DISTRO_VERSION    = "1.8"
TUNE_FEATURES     = "arm armv7a vfp thumb neon callconvention-hard cortexa8"
TARGET_FPU        = "vfp-neon"

Thanks,
Matti

--001a11354f8a21542b051da973b8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Is there any way of getting rid of warnings of f=
ollowing type:<br><br>WARNING: Could not copy license file /YOCTO/poky/LICE=
NSE to /XXX/work/am335x_evm-poky-linux-gnueabi/xxxx-image/1.0-r0/license-de=
stdir/xxx-image/LICENSE: [Errno 18] Invalid cross-device link<br><br></div>=
Yes, sources and results are located on different logical drives, but shoul=
d it still be possible to copy files between them. Everything else works fi=
ne in bitbaking.<br><br></div><div>MAIN-<br></div>Build Configuration:<br><=
div><div>BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;1.2=
6.0&quot;<br>BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D =
&quot;x86_64-linux&quot;<br>NATIVELSBSTRING=C2=A0=C2=A0 =3D &quot;Ubuntu-14=
.04&quot;<br>TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot=
;arm-poky-linux-gnueabi&quot;<br>MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;am335x-evm&quot;<br>DISTRO=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;poky&qu=
ot;<br>DISTRO_VERSION=C2=A0=C2=A0=C2=A0 =3D &quot;1.8&quot;<br>TUNE_FEATURE=
S=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;arm armv7a vfp thumb neon callconventio=
n-hard cortexa8&quot;<br>TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 =3D &quot;vfp-neon&quot;<br><br></div><div>Thanks,<br></div><div>Matti<=
br></div><div><br></div></div></div>

--001a11354f8a21542b051da973b8--
