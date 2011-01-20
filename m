Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id BD6684C80FAD
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 21:21:20 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so152100iwn.35
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 19:21:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=DxRXdawE+hgt9JhYhfD8nz9jnoK8ih7ezuRIMP0P1U0=;
	b=tEcQZpDaOEsOzds0jfU1lWQTlZWNr6mQ6GVflqGH6G/OpuV36kWIDCbJg0V7goS7nh
	yhdpmgC6FLzwr4FTzBzTvfAKHDBhAbuN3mHJykDYxPFXjX7iEu17nWvm6q0zFK6p+2Gb
	FeBcG3Zk0Rj2jfGKMZ4E0hMmOnv2vkfLw4mmo=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=T0HVR4PRqzqvkal5BUKt/MfMAqVUfx5OaAT7ZXnnYR4TLYe+2rgmWqePxssB9kkQHb
	A5hUFc3pvmzbzRIybwpofQlAzgvA/SvUkbLjswjUQxuogENMBzMGgIj19dTR6gReHv07
	Avfp9TypLplNjdhZd4WKNWyuEpTFvbB5b7wVQ=
MIME-Version: 1.0
Received: by 10.231.13.137 with SMTP id c9mr1849304iba.37.1295493680477; Wed,
	19 Jan 2011 19:21:20 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Wed, 19 Jan 2011 19:21:20 -0800 (PST)
In-Reply-To: <cover.1295472579.git.dvhart@linux.intel.com>
References: <cover.1295472579.git.dvhart@linux.intel.com>
Date: Wed, 19 Jan 2011 22:21:20 -0500
Message-ID: <AANLkTinSWeERqMOXuR1ckzz=Ri8k2mwgrW79Y3Wd=OYi@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: poky@yoctoproject.org, robert.karl.berger@gmail.com
Subject: Re: [PATCH 0/6] Beagleboard xM support
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
X-List-Received-Date: Thu, 20 Jan 2011 03:21:21 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 19, 2011 at 4:30 PM, Darren Hart <dvhart@linux.intel.com> wrote=
:
> The following patches provide initial support for the Beagleboard. They u=
pdate
> the x-load and u-boot recipes, modify the beagleboard machine config, and=
 add
> README.hardware documentation for the Beagleboard.
>
> The kernel config still needs to be updated to support the onboard NIC of=
 the
> xM. Graphics and audio have not been tested. With the basic functionality=
 in
> place, hopefully others will be encouraged to participate in fleshing out
> Beagleboard support in Poky.

Darren,

Looks good. So just so I'm clear, you'll be following up with a kernel
config fragment and/or a BSP branch ? Or am I somehow just
not seeing it in your series ?

Cheers,

Bruce

>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
> =A0Branch: dvhart/beagle
> =A0Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Ddvhart=
/beagle
>
> Thanks,
> =A0 =A0Darren Hart <dvhart@linux.intel.com>
> ---
>
>
> Darren Hart (6):
> =A0x-load: us TI upstream repository, update recipes accordingly
> =A0u-boot: Add a new upstream u-boot recipe
> =A0beagleboard: add x-load and u-boot depends
> =A0overo: use the new upstream u-boot recipe
> =A0u-boot-omap3: remove in favor of upstream u-boot
> =A0README.hardware: add beagleboard documentation
>
> =A0README.hardware =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0| =A0 71 +++++++++++++
> =A0.../conf/distro/include/poky-default-revisions.inc | =A0 =A03 +-
> =A0meta/conf/machine/beagleboard.conf =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0 =A03 +
> =A0meta/conf/machine/overo.conf =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 | =A0 =A02 +-
> =A0.../uboot/u-boot-omap3-git/beagleboard/name.patch =A0| =A0 14 ---
> =A0meta/recipes-bsp/uboot/u-boot-omap3_git.bb =A0 =A0 =A0 =A0 | =A0 18 --=
--
> =A0meta/recipes-bsp/uboot/u-boot.inc =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0|=
 =A0 =A03 +-
> =A0meta/recipes-bsp/uboot/u-boot_git.bb =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0=
 21 ++++
> =A0meta/recipes-bsp/x-load/files/signGP.c =A0 =A0 =A0 =A0 =A0 =A0 | =A010=
8 --------------------
> =A0meta/recipes-bsp/x-load/signgp-native.bb =A0 =A0 =A0 =A0 =A0 | =A0 14 =
---
> =A0.../x-load/x-load-git/beagleboard/armv7-a.patch =A0 =A0| =A0 11 --
> =A0.../x-load/x-load-git/beagleboard/name.patch =A0 =A0 =A0 | =A0 16 ++--
> =A0.../x-load/x-load-git/omap3evm/armv7-a.patch =A0 =A0 =A0 | =A0 11 --
> =A0.../x-load/x-load-git/overo/armv7-a.patch =A0 =A0 =A0 =A0 =A0| =A0 11 =
--
> =A0meta/recipes-bsp/x-load/x-load.inc =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0 =A05 +-
> =A0meta/recipes-bsp/x-load/x-load_git.bb =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0=
 19 ++--
> =A016 files changed, 118 insertions(+), 212 deletions(-)
> =A0delete mode 100644 meta/recipes-bsp/uboot/u-boot-omap3-git/beagleboard=
/name.patch
> =A0delete mode 100644 meta/recipes-bsp/uboot/u-boot-omap3_git.bb
> =A0create mode 100644 meta/recipes-bsp/uboot/u-boot_git.bb
> =A0delete mode 100644 meta/recipes-bsp/x-load/files/signGP.c
> =A0delete mode 100644 meta/recipes-bsp/x-load/signgp-native.bb
> =A0delete mode 100644 meta/recipes-bsp/x-load/x-load-git/beagleboard/armv=
7-a.patch
> =A0delete mode 100644 meta/recipes-bsp/x-load/x-load-git/omap3evm/armv7-a=
.patch
> =A0delete mode 100644 meta/recipes-bsp/x-load/x-load-git/overo/armv7-a.pa=
tch
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

