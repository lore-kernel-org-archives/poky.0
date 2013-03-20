Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 271DFE006AD
	for <poky@yoctoproject.org>; Wed, 20 Mar 2013 10:02:13 -0700 (PDT)
Received: by mail-la0-f48.google.com with SMTP id fq13so3322592lab.7
	for <poky@yoctoproject.org>; Wed, 20 Mar 2013 10:02:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:content-transfer-encoding;
	bh=IOn5iaT8Vi2aF8CsglFd//j69/tbOd9hmR4kdS1PTAY=;
	b=PMaGJvmF+irQi+8RK27gu+oy0RsFt7ZiUHSqPDia1Ix5u/B0h4PXcpgEMG5jA73uzm
	tss3d76MR2pMuuSeO2VTpFt/DYa8AoeFyE8JA2b+BcQTEkQ3UBq+spy9wzTcDzJSaysY
	oB2Yejem3hlnqOuMQG2nbApHfex+Q1J1BMay5islFws4jvm3bZ85U+u5a3GmhscOfKcx
	/GghAZJn6J6V+Dis1wKd0puUR161GLKYk6hApMg7wYS/4eHe5IiaOZleHGZiSnEh0P76
	gu/ZWKWn9kARsGHwcXwT3jb0KA/UqnXiiZ1r5IGPshDGUXv5RjvWQpZLksT+iEGxE14C
	ozUw==
MIME-Version: 1.0
X-Received: by 10.112.40.228 with SMTP id a4mr9881542lbl.26.1363798932462;
	Wed, 20 Mar 2013 10:02:12 -0700 (PDT)
Received: by 10.112.61.3 with HTTP; Wed, 20 Mar 2013 10:02:12 -0700 (PDT)
In-Reply-To: <91586D499ADFD74FBCFB8425266A5DE40139F932D55A@pluto.melinkcorp.local>
References: <91586D499ADFD74FBCFB8425266A5DE40139F932D55A@pluto.melinkcorp.local>
Date: Wed, 20 Mar 2013 13:02:12 -0400
Message-ID: <CADkTA4MkS3ChZJF8Z+bO9UFF7LOneO6RsZAqHSVyjgnVQw9tQw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Building custom Linux kernel with own layer
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
X-List-Received-Date: Wed, 20 Mar 2013 17:02:14 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 20, 2013 at 11:59 AM, Bryan Evenson <bevenson@melinkcorp.com> w=
rote:
> I have an Atmel AT91SAM9G25 based board and have been using the Classic O=
penEmbedded development tree for my device.  I am working on switching to u=
sing the Poky distribution.  I found a Yocto layer that someone else had st=
arted here: https://github.com/baseapp/meta-atmel/tree/yocto.  I would like=
 to use this layer as a starting point and go from there.  The layer looks =
to be setup to build kernel 2.6.39 (as that is the kernel I am currently us=
ing), but that's not what's happening on my system.  I would like some help=
 in figuring out what needs to change with the layer or my setup to build t=
he 2.6.39 kernel.
>
> I am using the stable poky-danny-8.0 release (downloaded tarball).  Under=
 the poky-danny-8.0 folder, I cloned the meta-atmel layer that I referred t=
o above.  I changed my bblayers.conf to include the meta-atmel layer.  When=
 I bitbake linux-yocto, here's what I see for my build configuration:
>
> Build Configuration:
> BB_VERSION        =3D "1.16.0"
> TARGET_ARCH       =3D "arm"
> TARGET_OS         =3D "linux-gnueabi"
> MACHINE           =3D "qemuarm"
> DISTRO            =3D "poky"
> DISTRO_VERSION    =3D "1.3"
> TUNE_FEATURES     =3D "armv5 dsp thumb arm926ejs"
> TARGET_FPU        =3D "soft"
> meta
> meta-yocto
> meta-yocto-bsp    =3D "<unknown>:<unknown>"
> meta-atmel        =3D "yocto:80336b72180283bfd5cf5f674e8c1081deede72a"
>
> and it builds 3.4.11+git1+a201268353c030d9fafe00f2041976f7437d9386_1+8ee5=
3c3b82ada3cdfd7d25f07d3975834ac9a9b2-r4.3.  From looking at the meta-atmel =
layer, I think it should be overriding the linux-yocto settings from the ot=
her layers.   What am I missing?

You need to set the preferred provider for your BSP to be your linux-custom
recipe (or whatever you call it, you don't need to leave it called
'linux-yocto-custom').
If you've done that, and are still seeing 3.4.x in the version number,
chances are
the recipe simply isn't overriding the right variables .. and a peek
at the recipe would
figure that out quickly.

Bruce

>
> Thanks,
> Bryan
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

