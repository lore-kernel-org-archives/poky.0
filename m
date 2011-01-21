Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id F3BAA4C810B6
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 16:31:51 -0600 (CST)
Received: by wwb31 with SMTP id 31so2511132wwb.11
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 14:31:51 -0800 (PST)
Received: by 10.227.157.66 with SMTP id a2mr1488650wbx.25.1295649109528;
	Fri, 21 Jan 2011 14:31:49 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id
	c54sm5180465wer.30.2011.01.21.14.31.47
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Fri, 21 Jan 2011 14:31:48 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4D39E241.3010107@linux.intel.com>
Date: Fri, 21 Jan 2011 23:31:47 +0100
Message-Id: <FDF02432-7933-4D4B-BC65-DCB393BBD979@dominion.thruhere.net>
References: <4D39E241.3010107@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
X-Mailer: Apple Mail (2.1082)
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] linux-2.6-windriver: omap3: beaglexm: fix EHCI power up GPIO dir
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
X-List-Received-Date: Fri, 21 Jan 2011 22:31:52 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 21 jan 2011, om 20:45 heeft Darren Hart het volgende geschreven:

> The following patch from Koen's angstrom-linux repository fixes =
initialization
> of the Beagleboard xM's on-board USB hub and makes it possible to use =
the
> on-board network port.

FWIW, that patch will be in 2.6.38rc1 :)


>=20
> Please merge contrib/dvhart/beagleboard-standard with =
beagleboard-standard.
>=20
> Pull URL: git://git.pokylinux.org/linux-2.6-windriver-contrib.git
>  Branch: dvhart/beagleboard-standard
>  Browse: =
http://git.pokylinux.org/cgit.cgi/linux-2.6-windriver-contrib/log/?h=3Ddvh=
art/beagleboard-standard
>=20
> Thanks,
>    Darren Hart <dvhart@linux.intel.com>
>=20
>=20
> =46rom 23a104853de8cdb351b7747af799463215dc4d8c Mon Sep 17 00:00:00 =
2001
> From: Koen Kooi <koen@beagleboard.org>
> Date: Tue, 11 Jan 2011 17:13:35 +0000
> Subject: [PATCH] omap3: beaglexm: fix EHCI power up GPIO dir
>=20
> commit a5624323866c06156ca548b8515d9347fdd5188e angstrom-linux
>=20
> EHCI enable power pin is inverted (active high) in comparison
> to vanilla beagle which is active low. Handle this case conditionally.
>=20
> Without this fix, Beagle XM 4 port EHCI will not function and no
> networking will be available
>=20
> [nm@ti.com: split up, added descriptive changelogs]
> Signed-off-by: Nishanth Menon <nm@ti.com>
> Signed-off-by: Koen Kooi <koen@beagleboard.org>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
> arch/arm/mach-omap2/board-omap3beagle.c |   10 ++++++++--
> 1 files changed, 8 insertions(+), 2 deletions(-)
>=20
> diff --git a/arch/arm/mach-omap2/board-omap3beagle.c =
b/arch/arm/mach-omap2/board-omap3beagle.c
> index 5bcf6ee..80c203c 100644
> --- a/arch/arm/mach-omap2/board-omap3beagle.c
> +++ b/arch/arm/mach-omap2/board-omap3beagle.c
> @@ -250,9 +250,15 @@ static int beagle_twl_gpio_setup(struct device =
*dev,
> 	gpio_request(gpio + 1, "EHCI_nOC");
> 	gpio_direction_input(gpio + 1);
>=20
> -	/* TWL4030_GPIO_MAX + 0 =3D=3D ledA, EHCI nEN_USB_PWR (out, =
active low) */
> +	/*
> +	 * TWL4030_GPIO_MAX + 0 =3D=3D ledA, EHCI nEN_USB_PWR (out, XM =
active
> +	 * high / others active low)
> +	 */
> 	gpio_request(gpio + TWL4030_GPIO_MAX, "nEN_USB_PWR");
> -	gpio_direction_output(gpio + TWL4030_GPIO_MAX, 0);
> +	if (omap3_beagle_get_rev() =3D=3D OMAP3BEAGLE_BOARD_XM)
> +		gpio_direction_output(gpio + TWL4030_GPIO_MAX, 1);
> +	else
> +		gpio_direction_output(gpio + TWL4030_GPIO_MAX, 0);
>=20
> 	/* TWL4030_GPIO_MAX + 1 =3D=3D ledB, PMU_STAT (out, active low =
LED) */
> 	gpio_leds[2].gpio =3D gpio + TWL4030_GPIO_MAX + 1;
> --=20
> 1.7.1
> --=20
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


