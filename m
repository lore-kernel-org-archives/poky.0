Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03539E00572; Tue, 22 Jul 2014 03:48:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.178 listed in list.dnswl.org]
Received: from mail-we0-f178.google.com (mail-we0-f178.google.com
	[74.125.82.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DF9EE00524
	for <poky@yoctoproject.org>; Tue, 22 Jul 2014 03:48:41 -0700 (PDT)
Received: by mail-we0-f178.google.com with SMTP id w61so8868226wes.23
	for <poky@yoctoproject.org>; Tue, 22 Jul 2014 03:48:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=MlqsQeaeCwyrRP53hks4QDdDKfdToLXPwA8TCV0e0Mg=;
	b=IxmclSYSA45BIGbdnoNn9ViP7VFhOznzjZn+M18jZuMNXcgBQKS7MWTW7LF7Bu29Yq
	8ZBAY+ODz8B9g0Hm4mN3nb2g7+G66j1SZfZR1XOeFxExDSxC2pV52KUziXgRuUAWOgZY
	IIA5+1OPp1IhbZUcgjST9v5zjJ3XW/WZotX15DUuH5In/bHwPvWuYbVMr3uGWO6ViE5F
	lW1Zyum3+ukeOYLpV/26FUPNfbNdapXTsMEdgzcZJWVEGfAA7+VQ0a8tX4CU/cUQR3Pj
	R2sXU0C//2FX+SUVTZXA5fKVTPrsgJdVOaLlv1OJyAY32PxyLKkJMM58/EiGDlbEzu9q
	2ONw==
X-Received: by 10.180.80.225 with SMTP id u1mr13079744wix.69.1406026117364;
	Tue, 22 Jul 2014 03:48:37 -0700 (PDT)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id bx2sm33752wjb.47.2014.07.22.03.48.35
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 22 Jul 2014 03:48:36 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Tue, 22 Jul 2014 12:48:52 +0200
To: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <20140722104852.GP22875@jama>
References: <cover.1406024955.git.liezhi.yang@windriver.com>
	<8f203e49c4ecfc92eb09b175707f8dd7a6f0b546.1406024955.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
In-Reply-To: <8f203e49c4ecfc92eb09b175707f8dd7a6f0b546.1406024955.git.liezhi.yang@windriver.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 2/2] local.conf.sample: qemu-native DEPENDS libxext-naive
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
X-List-Received-Date: Tue, 22 Jul 2014 10:48:46 -0000
X-Groupsio-MsgNum: 9704
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="e4Ac2VUIqaLF2Uxx"
Content-Disposition: inline

--e4Ac2VUIqaLF2Uxx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 22, 2014 at 03:31:25AM -0700, Robert Yang wrote:
> Fixed do_configure error:
>=20
> ERROR: User requested feature sdl
>        configure was not able to find it.
>        Install SDL devel
>=20
> This is error from log.do_configure, and if we check config.log, the erro=
r is:
>=20
> sysroots/x86_64-linux/usr/lib/libXext.so.6: undefined reference to `_XEat=
DataWords'
>=20
> The _XEatDataWords is provided by libX11.so, the dependencies are:
>=20
> qemu-native -> sdl(from the host) -> libXext.so(maybe host or native) -> =
libX11.so (maybe host or native)
>=20
> We may meet the error if host's libX11.so doesn't provide _XEatDataWords,=
 and native's
> libX11.so has been removed (for example, rebuild).
>=20
> Another way to fix is: let qemu-native depend on libxext-naive when sdl is
> enabled, for example:
>=20
> PACKAGECONFIG[sdl] =3D "--enable-sdl,--disable-sdl,libsdl libxext-native,"
>=20
> But this might be incorrect since target sdl or qemu may not require X11,=
 so
> set:
>=20
> DEPENDS_pn-qemu-native +=3D "libxext-naive"
>=20
> in local.conf.sample to fix problem.
>=20
> Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
> ---
>  meta-yocto/conf/local.conf.sample |    1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.co=
nf.sample
> index bcb0864..742eb1a 100644
> --- a/meta-yocto/conf/local.conf.sample
> +++ b/meta-yocto/conf/local.conf.sample
> @@ -243,6 +243,7 @@ BB_DISKMON_DIRS =3D "\
>  # seen. The two lines below enable the SDL backend too. This assumes the=
re is a
>  # libsdl library available on your build system.
>  PACKAGECONFIG_pn-qemu-native =3D "sdl"
> +DEPENDS_pn-qemu-native +=3D "libxext-naive"

Doesn't this belong in qemu-native's PACKAGECONFIG definition for sdl?

>  PACKAGECONFIG_pn-nativesdk-qemu =3D "sdl"
>  ASSUME_PROVIDED +=3D "libsdl-native"
> =20
> --=20
> 1.7.9.5
>=20
> --=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--e4Ac2VUIqaLF2Uxx
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlPOQZQACgkQN1Ujt2V2gBwkvwCeIa9iJEjoMWblpKSiKoGcLU/d
ZDsAoKNy8/VN5MimUVAWEXxbQkGbp2xu
=tv73
-----END PGP SIGNATURE-----

--e4Ac2VUIqaLF2Uxx--
