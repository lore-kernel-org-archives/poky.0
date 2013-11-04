Return-Path: <martin.jansa@gmail.com>
Received: from mail-ea0-f182.google.com (mail-ea0-f182.google.com
	[209.85.215.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93DFDE01716
	for <poky@yoctoproject.org>; Mon,  4 Nov 2013 13:50:47 -0800 (PST)
Received: by mail-ea0-f182.google.com with SMTP id o10so3716077eaj.41
	for <poky@yoctoproject.org>; Mon, 04 Nov 2013 13:50:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=ehxCGy9y7bYUtYob2iEZ/6fEt7xPRaAl/13gIhfwbEY=;
	b=cv3I2GuwdPwol2hqpXCZ5OCfWl6x8/x09Qc0BrXGFsYrsuNMSOTgLeSasCXJpUJu3E
	nK9dwYfBIXA1+1sH1LMpbmx2W3W3Y+Fxpi24xqWjp3V9gSnuYhC/+rwV+BsYi0C1PN2E
	VZ6L/bf9B2EnSF0voq2NPtk1k/BNTkXewOajpms3b86UjcQiTMzdLuZY1VGnjDSd17Ip
	kaD65p5a+1ESkLeWM49tTDk3RUW0wcWemwUQlTHGVQbHwjSYZokKyogPQbMS9stecn/A
	e0QgX5wYb1rWxldxltW+YNPoV5mLfMZkq3z8ZH2tisDLwMZAb+iEzSrEnBAqnTy0o7m/
	alNg==
X-Received: by 10.15.94.201 with SMTP id bb49mr20693429eeb.23.1383601846637;
	Mon, 04 Nov 2013 13:50:46 -0800 (PST)
Received: from localhost (ip-89-176-104-107.net.upcbroadband.cz.
	[89.176.104.107])
	by mx.google.com with ESMTPSA id 8sm20330975eem.15.2013.11.04.13.50.45
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 04 Nov 2013 13:50:46 -0800 (PST)
Date: Mon, 4 Nov 2013 22:50:53 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Tom Zanussi <tom.zanussi@linux.intel.com>
Message-ID: <20131104215053.GG3684@jama>
References: <cover.1383598600.git.tom.zanussi@linux.intel.com>
	<5431bd9e48a771622d9aa143793ec42d3a273782.1383598600.git.tom.zanussi@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <5431bd9e48a771622d9aa143793ec42d3a273782.1383598600.git.tom.zanussi@linux.intel.com>
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] busybox.bbappend: add override for poky-tiny defconfig
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
X-List-Received-Date: Mon, 04 Nov 2013 21:50:51 -0000
X-Groupsio-MsgNum: 9282
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Fnm8lRGFTVS/3GuM"
Content-Disposition: inline

--Fnm8lRGFTVS/3GuM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 04, 2013 at 02:58:32PM -0600, Tom Zanussi wrote:
> The defconfig for poky-tiny resides in {$P}/poky-tiny, so that needs
> to be added to FILESEXTRAPATHS if the distro is poky-tiny.
>=20
> This fixes boot problems such as below, where init doesn't work
> because setsid isn't found, because setsid isn't configured into
> busybox, because the defconfig adding it isn't found:
>=20
>   /init: line 26: setsid: not found
>   Console sh exited with 127, respawning...

Have you checked FILESPATH variable in bitbake-e? IIRC all
FILESOVERRIDES are used for FILESEXTRAPATHS dirs, so all you need is to
add
FILESEXTRAPATHS_prepend_poky-tiny :=3D "${THISDIR}/${P}:"

otherwise FILESPATH will list also entries like
meta-yocto/recipes-core/busybox/busybox/poky-tiny/poky-tiny
meta-yocto/recipes-core/busybox/busybox/poky-tiny/qemux86
=2E..

>=20
> Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
> ---
>  meta-yocto/recipes-core/busybox/busybox_1.21.1.bbappend | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/meta-yocto/recipes-core/busybox/busybox_1.21.1.bbappend b/me=
ta-yocto/recipes-core/busybox/busybox_1.21.1.bbappend
> index ffe8631..e15f2b6 100644
> --- a/meta-yocto/recipes-core/busybox/busybox_1.21.1.bbappend
> +++ b/meta-yocto/recipes-core/busybox/busybox_1.21.1.bbappend
> @@ -1,2 +1,3 @@
>  FILESEXTRAPATHS_prepend_poky :=3D "${THISDIR}/${P}:"
> +FILESEXTRAPATHS_prepend_poky-tiny :=3D "${THISDIR}/${P}/${DISTRO}:"
> =20
> --=20
> 1.8.3.1
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--Fnm8lRGFTVS/3GuM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEARECAAYFAlJ4Fr0ACgkQN1Ujt2V2gBztqwCgtIi1d9qnvDTP0di6ugbt7Xf3
S+0An2yEzO4IRLECQnC2lnISOqwhlYi+
=efi9
-----END PGP SIGNATURE-----

--Fnm8lRGFTVS/3GuM--
