Return-Path: <martin.jansa@gmail.com>
Received: from mail-bw0-f48.google.com (mail-bw0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D07D8E006E8
	for <poky@yoctoproject.org>; Tue, 27 Sep 2011 06:07:54 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by bkbzu5 with SMTP id zu5so9540161bkb.35
	for <poky@yoctoproject.org>; Tue, 27 Sep 2011 06:07:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=aSG6C7UdmclwX4cVIGFK0WF9UcXAVPBet0JVXi9m/sw=;
	b=h3KS06gJA1MNzWpqWKfPNlkcyawsNljD4kg3GM98hXUD3AxSBCz6Nvb5YfYZsuU9lI
	YwwLDg2XWISO4cJ0TDyAd3yFKbrX3mA1KLEjlOZMYxLD3E3cyYc/C+VUwmsXZEPFoiaq
	PPphSG/QuLiPgg2LDyTN4NQ5WKDc2F3FFj5bY=
Received: by 10.204.137.218 with SMTP id x26mr4918265bkt.1.1317128873427;
	Tue, 27 Sep 2011 06:07:53 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id l15sm6113308bkw.9.2011.09.27.06.07.51
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 27 Sep 2011 06:07:52 -0700 (PDT)
Date: Tue, 27 Sep 2011 15:07:45 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20110927130745.GA5030@jama.jama.net>
References: <4E81C907.8080407@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <4E81C907.8080407@mlbassoc.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Crazy versioning
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
X-List-Received-Date: Tue, 27 Sep 2011 13:07:55 -0000
X-Groupsio-MsgNum: 6965
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="TB36FDmn/VVEgNH/"
Content-Disposition: inline

--TB36FDmn/VVEgNH/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 27, 2011 at 07:00:55AM -0600, Gary Thomas wrote:
> I'm trying to use the recipe meta/recipes-bsp/u-boot/u-boot_2011.06.bb
> Since there are a number of u-boot recipes, I want to make sure I get
> the right one, plus I'm writing a .bbappend file to add patches for
> my own boards.
>=20
> So I added this to my MACHINE.conf:
>    PREFERRED_VERSION_u-boot =3D "2011.06"
>=20
> When I try to build, I get this error:
>    NOTE: preferred version 2011.06 of u-boot not available (for item u-bo=
ot)
>    NOTE: versions of u-boot available: git v2011.06+git16+b1af6f532e0d348=
b153d5c148369229d24af361a
> I guess this is because the recipe has this for PV
>    SRCREV =3D "b1af6f532e0d348b153d5c148369229d24af361a"
>    PV =3D "v2011.06+git${SRCPV}"
> The truly bizarre thing is that if my cache is rebuilt, the version print=
ed changes, e.g.
>    % touch conf/local.conf
>    % bitbake u-boot
>    NOTE: versions of u-boot available: git v2011.06+git18+b1af6f532e0d348=
b153d5c148369229d24af361a
>=20
> So, how do I specify the right value in PREFERRED_VERSION?

with % as wildchar

PREFERRED_VERSION_u-boot =3D "v2011.06%"

>=20
> --=20
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--TB36FDmn/VVEgNH/
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.18 (GNU/Linux)

iEYEARECAAYFAk6ByqEACgkQN1Ujt2V2gBxCLwCeJjYW0asMb01VNMn0hsYAy65K
tHQAmwdSFyEhKniJiXWQki329u18IeUo
=GZ0+
-----END PGP SIGNATURE-----

--TB36FDmn/VVEgNH/--
