Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29842E006B4
	for <poky@yoctoproject.org>; Wed,  2 Nov 2011 09:46:02 -0700 (PDT)
Received: by wwf10 with SMTP id 10so499628wwf.11
	for <poky@yoctoproject.org>; Wed, 02 Nov 2011 09:46:01 -0700 (PDT)
Received: by 10.227.202.149 with SMTP id fe21mr6650329wbb.15.1320252361384;
	Wed, 02 Nov 2011 09:46:01 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id fr4sm5170952wbb.0.2011.11.02.09.45.59
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 02 Nov 2011 09:46:00 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1251.1)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <CAK_2FrnaBEFNpDLbgH28zoXgmyO4qDSVkiAqQSC0RJFoErxziA@mail.gmail.com>
Date: Wed, 2 Nov 2011 17:45:53 +0100
Message-Id: <490AAE50-6326-455E-B63A-4D272BCB9B36@dominion.thruhere.net>
References: <CAK_2FrnaBEFNpDLbgH28zoXgmyO4qDSVkiAqQSC0RJFoErxziA@mail.gmail.com>
To: =?utf-8?B?0JLQu9Cw0LTQuNC80LjRgCDQoNC10LTQttC10L/QvtCy?=
	<vladimir.redzhepoff@promwad.com>
X-Mailer: Apple Mail (2.1251.1)
Cc: poky@yoctoproject.org, Ivan.Kuten@promwad.com
Subject: Re: [PATCH] Sdparm package added
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
X-List-Received-Date: Wed, 02 Nov 2011 16:46:04 -0000
X-Groupsio-MsgNum: 7114
Content-Type: multipart/signed;
	boundary="Apple-Mail=_29E922AC-A0BB-4166-A824-9E964D0AE491";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_29E922AC-A0BB-4166-A824-9E964D0AE491
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

THis really needs to get sent to the oe-core list and be based on =
oe-core, not poky

Op 2 nov. 2011, om 17:15 heeft =D0=92=D0=BB=D0=B0=D0=B4=D0=B8=D0=BC=D0=B8=D1=
=80 =D0=A0=D0=B5=D0=B4=D0=B6=D0=B5=D0=BF=D0=BE=D0=B2 het volgende =
geschreven:

>=20
> =46rom 756f41347ac3cf53b76d43714d43f84bd6dba6e0 Mon Sep 17 00:00:00 =
2001
> From: vladimir redzhepoff <vladimir.redzhepoff@promwad.com>
> Date: Wed, 2 Nov 2011 18:44:18 +0300
> Subject: [PATCH] Sdparm package added
>=20
> ---
>  meta/recipes-devtools/sdparm/sdparm_1.06.bb |   12 ++++++++++++
>  1 files changed, 12 insertions(+), 0 deletions(-)
>  create mode 100644 meta/recipes-devtools/sdparm/sdparm_1.06.bb
>=20
> diff --git a/meta/recipes-devtools/sdparm/sdparm_1.06.bb =
b/meta/recipes-devtools/sdparm/sdparm_1.06.bb
> new file mode 100644
> index 0000000..b49a753
> --- /dev/null
> +++ b/meta/recipes-devtools/sdparm/sdparm_1.06.bb
> @@ -0,0 +1,12 @@
> +DESCRIPTION =3D "The sdparm utility accesses SCSI device parameters."
> +HOMEPAGE =3D "http://sg.danny.cz/sg/sdparm.html#mozTocId166213"
> +SECTION =3D "console/utils"
> +LICENSE =3D "BSD"
> +LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D03299eb2d80659ec83507fcc511c5b42"
> +PR =3D "r0"
> +
> +SRC_URI =3D "http://sg.danny.cz/sg/p/${PN}-${PV}.tgz"
> +
> +SRC_URI[md5sum] =3D "5e19913658bb4f9849ddd909e0f47cde"
> +SRC_URI[sha256sum] =3D =
"e011a7a9e87e4e24c9c115f456ac4916fdc314d36ae99167979175782ea2f6b4"
> +inherit autotools
> --=20
> 1.7.2.5
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


--Apple-Mail=_29E922AC-A0BB-4166-A824-9E964D0AE491
Content-Transfer-Encoding: 7bit
Content-Disposition: inline;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----

iEYEARECAAYFAk6xc8EACgkQMkyGM64RGpHvlQCgroJH01kH0klm6DRq3inPH2Rr
Z2oAnRKqg792GAoHLBervhx98vwiOoiT
=qGfA
-----END PGP SIGNATURE-----

--Apple-Mail=_29E922AC-A0BB-4166-A824-9E964D0AE491--
