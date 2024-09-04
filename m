Return-Path: <tamara.schmitz@kernelconcepts.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28722CA0ED3
	for <webhook@archiver.kernel.org>; Wed,  4 Sep 2024 09:41:17 +0000 (UTC)
Received: from mail.kernelconcepts.de (mail.kernelconcepts.de [188.40.83.200])
 by mx.groups.io with SMTP id smtpd.web11.45890.1725442872930765765
 for <poky@lists.yoctoproject.org>;
 Wed, 04 Sep 2024 02:41:13 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: kernelconcepts.de, ip: 188.40.83.200, mailfrom: tamara.schmitz@kernelconcepts.de)
Received: from [217.146.132.69] (helo=dhcp88.kc.loc)
	by mail.kernelconcepts.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <tamara.schmitz@kernelconcepts.de>)
	id 1slmVi-00070U-LV
	for poky@lists.yoctoproject.org; Wed, 04 Sep 2024 11:41:10 +0200
Message-ID: <ab00c99ce4314e25abcaf1ce04d3a28ec89c27fc.camel@kernelconcepts.de>
Subject: Re: [poky] Poky calls host pzstd with uninative's libstdc++.so.6
 instead of the host library
From: Tamara Schmitz <tamara.schmitz@kernelconcepts.de>
To: poky@lists.yoctoproject.org
Date: Wed, 04 Sep 2024 11:41:04 +0200
In-Reply-To: <17F200D9A4F36965.26396@lists.yoctoproject.org>
References: <17F200D9A4F36965.26396@lists.yoctoproject.org>
Autocrypt: addr=tamara.schmitz@kernelconcepts.de; prefer-encrypt=mutual;
 keydata=mDMEZtXF7hYJKwYBBAHaRw8BAQdA2JIROcPL/iy4Do0VQAkZAHW2diLaevQhZPm2/4ngd
 HS0MVRhbWFyYSBTY2htaXR6IDx0YW1hcmEuc2NobWl0ekBrZXJuZWxjb25jZXB0cy5kZT6IjgQTFg
 oANhYhBDqlibF/vw6j/f6W6Au9z5d9PxhVBQJm1cXuAhsDBAsJCAcEFQoJCAUWAwIBAAIeBQIXgAA
 KCRALvc+XfT8YVbv9APsGwb/1aqebRbFsY6aG/bzzrz/nGj1qhFNeqTTpI+SAZwD/f8YXArP6LlAH
 Rma/819Cta7hQlh8mBICDgD72UgEVQi0KVRhbWFyYSBTY2htaXR6IDx0YW1hcmFAa2VybmVsY29uY
 2VwdHMuZGU+iI4EExYKADYWIQQ6pYmxf78Oo/3+lugLvc+XfT8YVQUCZtXPTwIbAwQLCQgHBBUKCQ
 gFFgMCAQACHgUCF4AACgkQC73Pl30/GFW6HgEA5mxfnoGj1OPX2LpkwJ6j2udebPIArvKbTV1K5fa
 EWu4BAK82FXs2P5VjSKblm1WrHkt2XKOAXUu9WPV1nJYSy0UNtCVUYW1hcmEgU2NobWl0eiA8dHNA
 a2VybmVsY29uY2VwdHMuZGU+iI4EExYKADYWIQQ6pYmxf78Oo/3+lugLvc+XfT8YVQUCZtXPWwIbA
 wQLCQgHBBUKCQgFFgMCAQACHgUCF4AACgkQC73Pl30/GFXqFAD/UUq1aWtjK/NPDdZhRLyOu9/oIN
 Pg2tDgupwjvBHaUAwA/2McPrrVf1s61htscJNoWnxemAeTR9f6x9A8RGe4HtQK
Organization: kernel concepts GmbH
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-iH27arP846oSma+U75nh"
User-Agent: Evolution 3.52.4 (3.52.4-1.fc40) 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 04 Sep 2024 09:41:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13430


--=-iH27arP846oSma+U75nh
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I forgot to mention, sstate_archive_package attempts to call my
system's build of pzstd which is build against a newer libstdc++.

The error message this produces is:
pzstd: /home/tamee/projects/rmg/phytec-yocto/build/tmp-ampliphy-
vendor/sysroots-uninative/x86_64-linux/usr/lib/libstdc++.so.6: version
`CXXABI_1.3.15' not found (required by pzstd)

On Wed, 2024-09-04 at 11:32 +0200, Tamara Schmitz wrote:
> Hello,
>=20
> I'm a newbie to Yocto Linux and I am attempting to build a vendor BSP
> on an unsupported distribution: Fedora 40.
>=20
> The OS' libstdc++.so.6 provides CXXABI_1.3.15 vs uninative's which
> provides up to CXXABI_1.3.14. That would be fine, if the
> sstate_archive_package would not attempt to attempt to run it in an
> ENV
> that forces uninative's library.
>=20
> Question 1:
> Using bitbake -e and reading the logs I was already able to get this
> far. How can I understand what the ENV, that the script executes in
> looks like?
>=20
> Question 2:
> Is this a bug in the vendor BSP or is Poky just silly mixing and
> matching host tools build against the OS toolchain and uninative's
> libraries as it pleases?
>=20
> Regards
>=20
> Tamara Schmitz


--=-iH27arP846oSma+U75nh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iJcEABYKAD8WIQQ6pYmxf78Oo/3+lugLvc+XfT8YVQUCZtgrMCEcdGFtYXJhLnNj
aG1pdHpAa2VybmVsY29uY2VwdHMuZGUACgkQC73Pl30/GFVE7AEAq0VKvQSRlO6A
FlHjawxdEdlnj5NIpL8lSGkD8ltaIo8BAKUq8/Pcnn3bOQSkaF2Q300CYXOyhPOM
R1Cyf03lh34D
=KzZk
-----END PGP SIGNATURE-----

--=-iH27arP846oSma+U75nh--

