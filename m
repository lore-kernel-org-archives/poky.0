Received: from smtp1.axis.com (smtp1.axis.com [195.60.68.17])
 by mx.groups.io with SMTP id smtpd.web12.18658.1655643996038740797
 for <poky@lists.yoctoproject.org>;
 Sun, 19 Jun 2022 06:06:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=axis-central1 header.b=h0x6GelE;
 spf=pass (domain: axis.com, ip: 195.60.68.17, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1655643996;
  x=1687179996;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=zXYGKk+MOaDxbrand7df02YiVTUdtS4IGedPuSCPk6U=;
  b=h0x6GelEGS+ERYaXEYMP0hN3F0NzKpapjiBv5Fmo3qSe6lS4he3nNV62
   StXIl+vtiFzX2oM0F/oaK/YsGRU048j1zB3x5huqD/X8JsQd8bZF1Wh/e
   0JzZnHhXZ5jIiMorHYWPw3obiE1gfKYVsxWZyAYD48DWjxX3RgNy9G3aJ
   kjuy7IkLSMH/F2uYIZw8gWqqNewsg1EtVG561SVMV/GOM7zvFREkdccoJ
   cGU/xG6hucWRIBXk14MO6pq/yWFtGUiL6e9PhTdSpS/xDOF0t/jtAQSJP
   kQv02l0HsoVemOMp1DKEvorVxIPyS853svnF4Twpp81Cw6VLSxkwqBxQy
   w==;
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: Federico Pellegrin <fede.evol@gmail.com>, "poky@lists.yoctoproject.org"
	<poky@lists.yoctoproject.org>
CC: Federico Pellegrin <fede@evolware.org>
Subject: Re: [poky][PATCH] signing-keys: add RDEPENDS to signing-keys from specific provider
Thread-Topic: [poky][PATCH] signing-keys: add RDEPENDS to signing-keys from
 specific provider
Thread-Index: AQHYgtOCSsuU+rTzsUm4ngGHrkuFIa1Wsflw
Date: Sun, 19 Jun 2022 13:06:33 +0000
Message-ID: <dd08964309c24d7985a45c774710c13b@axis.com>
References: <20220618052305.304352-1-fede@evolware.org>
In-Reply-To: <20220618052305.304352-1-fede@evolware.org>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> On Behalf
> Of Federico Pellegrin
> Sent: den 18 juni 2022 07:23
> To: poky@lists.yoctoproject.org
> Cc: Federico Pellegrin <fede@evolware.org>
> Subject: [poky][PATCH] signing-keys: add RDEPENDS to signing-keys from
> specific provider

Poky is made up of multiple repositories. Patches for meta should go to the=
=20
openembedded-core@lists.openembedded.org mailing list (this is documented=20
in README.md).

>=20
> Specific provider (ie. RPM or IPK) does "provide" just itself as a
> package to the system. This will cause the "-dev" package, which
> refers to the generic signing-keys and not the provider specific,
> to miss the dependency.
>=20
> Error case (RPM) when populating sdk:
>=20
> Error:
>  Problem: conflicting requests
>   - nothing provides signing-keys =3D 1.0-r0 needed by signing-keys-dev-1=
.0-
> r0.noarch
> (try to add '--skip-broken' to skip uninstallable packages)
>=20
> Examining signing-keys-rpm packages in PROVIDES we have indeed:
> signing-keys-rpm =3D 1.0-r0
>=20
> But in signing-keys-dev: in REQUIRES:
> signing-keys-1.0-r0
>=20
> This MR will fix the situation bringing the specific provider
> PROVIDES to include also the generic package (RPM example):
> signing-keys
> signing-keys-rpm =3D 1.0-r0
>=20
> Likely another way could be also to change the requirement for
> dev or just allow empty packages as well.
>=20
> Signed-off-by: Federico Pellegrin <fede@evolware.org>
> ---
>  meta/recipes-core/meta/signing-keys.bb | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/meta/recipes-core/meta/signing-keys.bb b/meta/recipes-
> core/meta/signing-keys.bb
> index 03463f95f56..d0602cf82af 100644
> --- a/meta/recipes-core/meta/signing-keys.bb
> +++ b/meta/recipes-core/meta/signing-keys.bb
> @@ -18,6 +18,10 @@ FILES:${PN}-rpm =3D "${sysconfdir}/pki/rpm-gpg"
>  FILES:${PN}-ipk =3D "${sysconfdir}/pki/ipk-gpg"
>  FILES:${PN}-packagefeed =3D "${sysconfdir}/pki/packagefeed-gpg"
>=20
> +RPROVIDES:${PN}-rpm +=3D "${PN}"
> +RPROVIDES:${PN}-ipk +=3D "${PN}"
> +RPROVIDES:${PN}-packagefeed +=3D "${PN}"

This is incorrect. The correct thing to do is to instead remove the=20
dependency from ${PN}-dev on ${PN}, i.e.:

RDEPENDS:${PN}-dev =3D ""

> +
>  python do_get_public_keys () {
>      from oe.gpg_sign import get_signer
>=20
> --
> 2.35.3

//Peter

