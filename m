Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06F65E0030A
	for <poky@yoctoproject.org>; Wed, 30 Nov 2011 09:07:02 -0800 (PST)
Received: by eeab20 with SMTP id b20so655883eea.35
	for <poky@yoctoproject.org>; Wed, 30 Nov 2011 09:07:01 -0800 (PST)
Received: by 10.14.9.203 with SMTP id 51mr399685eet.41.1322672818821;
	Wed, 30 Nov 2011 09:06:58 -0800 (PST)
Received: from [172.20.1.19] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id c9sm6131275eeb.0.2011.11.30.09.06.57
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 30 Nov 2011 09:06:57 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1251.1)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4ED65FBD.4060400@mindchasers.com>
Date: Wed, 30 Nov 2011 18:06:55 +0100
Message-Id: <94290E39-2D5A-46CB-9915-9D37FD51BE88@dominion.thruhere.net>
References: <4ED65FBD.4060400@mindchasers.com>
To: Bob Cochran <yocto@mindchasers.com>
X-Mailer: Apple Mail (2.1251.1)
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
X-List-Received-Date: Wed, 30 Nov 2011 17:07:05 -0000
X-Groupsio-MsgNum: 7222
Content-Type: multipart/signed;
	boundary="Apple-Mail=_45C94E9B-19D6-49A5-B780-8D571EB09F8F";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_45C94E9B-19D6-49A5-B780-8D571EB09F8F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

This patch should be sent to the oe-core mailinglist

Op 30 nov. 2011, om 17:54 heeft Bob Cochran het volgende geschreven:

> Updated the checksums in the recipe to match the libx11-trim-1.4.4 tar =
on freedesktop.org.  It looks like the MD5 & SHA checksums were carried =
over from the previous recipe (1.3.4).
>=20
> I noticed this when trying to do a fresh build off master this =
morning.
>=20
> Signed-off-by: Robert Cochran<yocto@mindchasers.com>
> ---
> .../recipes-graphics/xorg-lib/libx11-trim_1.4.4.bb |    4 ++--
> 1 files changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/meta/recipes-graphics/xorg-lib/libx11-trim_1.4.4.bb =
b/meta/recipes-graphics/xorg-lib/libx11-trim_1.4.4.bb
> index 7aed308..32d025f 100644
> --- a/meta/recipes-graphics/xorg-lib/libx11-trim_1.4.4.bb
> +++ b/meta/recipes-graphics/xorg-lib/libx11-trim_1.4.4.bb
> @@ -14,7 +14,7 @@ SRC_URI +=3D "file://x11_disable_makekeys.patch \
>             file://makekeys_crosscompile.patch"
>=20
>=20
> -SRC_URI[md5sum] =3D "f65c9c7ecbfb64c19dbd7927160d63fd"
> -SRC_URI[sha256sum] =3D =
"88d7238ce5f7cd123450567de7a3b56a43556e4ccc45df38b8324147c889a844"
> +SRC_URI[md5sum] =3D "ed7c382cbf8c13425b6a66bcac0ca5d9"
> +SRC_URI[sha256sum] =3D =
"7fe62180f08ef5f0a0062fb444591e349cae2ab5af6ad834599f5c654e6c840d"
>=20
> EXTRA_OECONF +=3D "--with-keysymdef=3D${STAGING_INCDIR}/X11/ =
--disable-xcms "
> --
> 1.7.5.4
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


--Apple-Mail=_45C94E9B-19D6-49A5-B780-8D571EB09F8F
Content-Transfer-Encoding: 7bit
Content-Disposition: inline;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----

iEYEARECAAYFAk7WYq8ACgkQMkyGM64RGpHKkACeKzpowlMt90VbH7bRiHRfQxT5
m+IAn2Ru3MWDa4xCUDNyQCoO3yg8qZuY
=78lR
-----END PGP SIGNATURE-----

--Apple-Mail=_45C94E9B-19D6-49A5-B780-8D571EB09F8F--
