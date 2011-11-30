Return-Path: <martin.jansa@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD3FEE0030A
	for <poky@yoctoproject.org>; Wed, 30 Nov 2011 09:21:29 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yenq8 with SMTP id q8so441501yen.35
	for <poky@yoctoproject.org>; Wed, 30 Nov 2011 09:21:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=pmGGpKeUjOjGaz+nwzfQZalC08bCZE0gPUSIT7T8Vvo=;
	b=KkTWRnVsPR0AoXuHDwPI13/UWXYq68oONmoO0jLJeF24O4MPy+9X2x8+/1I1IgeYkS
	p1ooURpcBS7trLlAF6sECsHTZyY68eYn4bkCjNUL9Zn29fuPDML2uXMAiUsqAHrkp1ru
	jezBi+1Oy13TT7bhbr/KADIrPfxTmPtv5XbOw=
Received: by 10.205.139.2 with SMTP id iu2mr3171651bkc.128.1322673688695;
	Wed, 30 Nov 2011 09:21:28 -0800 (PST)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id d2sm5312656bky.11.2011.11.30.09.21.25
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 30 Nov 2011 09:21:26 -0800 (PST)
Date: Wed, 30 Nov 2011 18:21:14 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Koen Kooi <koen@dominion.thruhere.net>
Message-ID: <20111130172114.GA29875@jama.jama.net>
References: <4ED65FBD.4060400@mindchasers.com>
	<94290E39-2D5A-46CB-9915-9D37FD51BE88@dominion.thruhere.net>
MIME-Version: 1.0
In-Reply-To: <94290E39-2D5A-46CB-9915-9D37FD51BE88@dominion.thruhere.net>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] update checksums for libx11-trim-1.4.4. The ones included in recipe were from 1.3.4
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
X-List-Received-Date: Wed, 30 Nov 2011 17:21:30 -0000
X-Groupsio-MsgNum: 7223
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="envbJBWh7q8WU6mo"
Content-Disposition: inline

--envbJBWh7q8WU6mo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 30, 2011 at 06:06:55PM +0100, Koen Kooi wrote:
> This patch should be sent to the oe-core mailinglist

And there are 2 doing the same already.. so no need to forward it there now.

>=20
> Op 30 nov. 2011, om 17:54 heeft Bob Cochran het volgende geschreven:
>=20
> > Updated the checksums in the recipe to match the libx11-trim-1.4.4 tar =
on freedesktop.org.  It looks like the MD5 & SHA checksums were carried ove=
r from the previous recipe (1.3.4).
> >=20
> > I noticed this when trying to do a fresh build off master this morning.
> >=20
> > Signed-off-by: Robert Cochran<yocto@mindchasers.com>
> > ---
> > .../recipes-graphics/xorg-lib/libx11-trim_1.4.4.bb |    4 ++--
> > 1 files changed, 2 insertions(+), 2 deletions(-)
> >=20
> > diff --git a/meta/recipes-graphics/xorg-lib/libx11-trim_1.4.4.bb b/meta=
/recipes-graphics/xorg-lib/libx11-trim_1.4.4.bb
> > index 7aed308..32d025f 100644
> > --- a/meta/recipes-graphics/xorg-lib/libx11-trim_1.4.4.bb
> > +++ b/meta/recipes-graphics/xorg-lib/libx11-trim_1.4.4.bb
> > @@ -14,7 +14,7 @@ SRC_URI +=3D "file://x11_disable_makekeys.patch \
> >             file://makekeys_crosscompile.patch"
> >=20
> >=20
> > -SRC_URI[md5sum] =3D "f65c9c7ecbfb64c19dbd7927160d63fd"
> > -SRC_URI[sha256sum] =3D "88d7238ce5f7cd123450567de7a3b56a43556e4ccc45df=
38b8324147c889a844"
> > +SRC_URI[md5sum] =3D "ed7c382cbf8c13425b6a66bcac0ca5d9"
> > +SRC_URI[sha256sum] =3D "7fe62180f08ef5f0a0062fb444591e349cae2ab5af6ad8=
34599f5c654e6c840d"
> >=20
> > EXTRA_OECONF +=3D "--with-keysymdef=3D${STAGING_INCDIR}/X11/ --disable-=
xcms "
> > --
> > 1.7.5.4
> >=20
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
>=20



> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--envbJBWh7q8WU6mo
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.18 (GNU/Linux)

iEYEARECAAYFAk7WZgoACgkQN1Ujt2V2gBwtswCgsdYmfVgzcKxQt+Q33kHbFOai
stUAn31WxFTerRifKgq/mpff4QxrN9rl
=LRI/
-----END PGP SIGNATURE-----

--envbJBWh7q8WU6mo--
