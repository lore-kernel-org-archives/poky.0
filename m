Return-Path: <martin.jansa@gmail.com>
Received: from mail-pd0-f181.google.com (mail-pd0-f181.google.com
	[209.85.192.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DA27E01471
	for <poky@yoctoproject.org>; Wed, 29 May 2013 08:56:24 -0700 (PDT)
Received: by mail-pd0-f181.google.com with SMTP id bv13so7159790pdb.40
	for <poky@yoctoproject.org>; Wed, 29 May 2013 08:56:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=C+yk2BoZOhR0kY2AqRkuLUpaw9DQzehl2XEnVhUpQ2E=;
	b=ZN993F1qq0/wK7QQdA4sQaLk47vn+OBM9n7u5RqFTcBfKih5m9XB2ChoPxrE4YQ+1a
	swbJ2Y05yMxAuZWB2SUmJGNnyy9Ts15A8c7pZp14GsLnQ5tYHsLOMptKvreKO3xMghAt
	pI9LoRjCaIGgKaiI+zWmb3fng1TvD3HIeFAwtKlMlc9VwBKba/1SyWO07SUVdJvSU3ps
	PVixRMqDxmCFh1DZWl1pKrgdwbxrz1QK10tDiKIeV/hAH8wO39tUCV4tIz1z2rMMZjkJ
	3m8axGlGM7ZbfA8DUcULTCF3nfEuDsnleflYbFYnlZ3ezmqL0N5TSMJAbjYXYHmL/LEw
	NWHg==
X-Received: by 10.68.113.165 with SMTP id iz5mr3511572pbb.116.1369842983805;
	Wed, 29 May 2013 08:56:23 -0700 (PDT)
Received: from localhost (ip-62-24-80-145.net.upcbroadband.cz. [62.24.80.145])
	by mx.google.com with ESMTPSA id
	fm2sm40401203pab.13.2013.05.29.08.56.20 for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Wed, 29 May 2013 08:56:22 -0700 (PDT)
Date: Wed, 29 May 2013 17:56:24 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Message-ID: <20130529155624.GN3192@jama>
References: <1369839672-11420-1-git-send-email-paul.eggleton@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <1369839672-11420-1-git-send-email-paul.eggleton@linux.intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] xserver-xf86-config: re-enable AutoAddDevices for beagleboard
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
X-List-Received-Date: Wed, 29 May 2013 15:56:24 -0000
X-Groupsio-MsgNum: 8890
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="A2x6GFCQWVc4i5ud"
Content-Disposition: inline

--A2x6GFCQWVc4i5ud
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 29, 2013 at 04:01:12PM +0100, Paul Eggleton wrote:
> This was added quite a long time ago because of poor interactions
> between HAL and the X server when it came to enabling input devices.
> HAL is long gone and I think it's safe to say we don't need to disable
> this any longer, especially as it gets in the way of being able to plug
> in the keyboard/mouse after boot.
>=20
> (This has already effectively been removed for the other BSPs in
> meta-yocto-bsp).
>=20
> Fixes [YOCTO #1823].

Doesn't this break touchscreen calibration? At least when I was adding
it to my BSP it was also solving issues with xinput-calibrator expecting
input devices with specified names (and autoadded were different)

> Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
> ---
>  .../xorg-xserver/xserver-xf86-config/beagleboard/xorg.conf              =
 | 1 -
>  1 file changed, 1 deletion(-)
>=20
> diff --git a/meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-co=
nfig/beagleboard/xorg.conf b/meta-yocto-bsp/recipes-graphics/xorg-xserver/x=
server-xf86-config/beagleboard/xorg.conf
> index 0335e6a..264f3c9 100644
> --- a/meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/be=
agleboard/xorg.conf
> +++ b/meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/be=
agleboard/xorg.conf
> @@ -30,5 +30,4 @@ EndSection
> =20
>  Section "ServerFlags"
>  	Option		"DontZap"  "0"
> -        Option		"AutoAddDevices" "False"
>  EndSection
> --=20
> 1.8.1.2
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--A2x6GFCQWVc4i5ud
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.20 (GNU/Linux)

iEYEARECAAYFAlGmJSgACgkQN1Ujt2V2gBzMKgCgtbMVc7t05v9HRzNeXQ8qQH/j
ZEIAnjBrjbywQfl2lLMpQwN7SYncBg/j
=/pb6
-----END PGP SIGNATURE-----

--A2x6GFCQWVc4i5ud--
