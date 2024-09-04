Return-Path: <tamara.schmitz@kernelconcepts.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FD77CA0ED3
	for <webhook@archiver.kernel.org>; Wed,  4 Sep 2024 13:44:08 +0000 (UTC)
Received: from mail.kernelconcepts.de (mail.kernelconcepts.de [188.40.83.200])
 by mx.groups.io with SMTP id smtpd.web10.50453.1725457442816785914
 for <poky@lists.yoctoproject.org>;
 Wed, 04 Sep 2024 06:44:03 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: kernelconcepts.de, ip: 188.40.83.200, mailfrom: tamara.schmitz@kernelconcepts.de)
Received: from [217.146.132.69] (helo=dhcp88.kc.loc)
	by mail.kernelconcepts.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <tamara.schmitz@kernelconcepts.de>)
	id 1slqIi-0001jo-2E
	for poky@lists.yoctoproject.org; Wed, 04 Sep 2024 15:44:00 +0200
Message-ID: <51516bb54a0d7221842ffdd51c061afd59d4cb17.camel@kernelconcepts.de>
Subject: Re: [poky] Poky calls host pzstd with uninative's libstdc++.so.6
 instead of the host library
From: Tamara Schmitz <tamara.schmitz@kernelconcepts.de>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Wed, 04 Sep 2024 15:42:23 +0200
In-Reply-To: <091ffe210164018ec2f25379850c24a06aedcab4.camel@linuxfoundation.org>
References: 
	<87fe05839a90d96222d1afb0811fa8eca72a977d.camel@kernelconcepts.de>
	 <614539e4e2e958d172483b7d4ad0faf15548b32b.camel@linuxfoundation.org>
	 <1f7a3c4062e8ae3edf847b3248af39e0ce2ee30b.camel@kernelconcepts.de>
	 <091ffe210164018ec2f25379850c24a06aedcab4.camel@linuxfoundation.org>
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
	protocol="application/pgp-signature"; boundary="=-ZzgfLy1ErLZxnF0SfAwc"
User-Agent: Evolution 3.52.4 (3.52.4-1.fc40) 
MIME-Version: 1.0
Resent-From: Tamara Schmitz <tamara.schmitz@kernelconcepts.de>
Resent-To: poky@lists.yoctoproject.org
Resent-Date: Wed, 04 Sep 2024 15:43:59 +0200
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 04 Sep 2024 13:44:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13434
Resent-Message-Id: <20240904134408.4FD77CA0ED3@smtp.lore.kernel.org>


--=-ZzgfLy1ErLZxnF0SfAwc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2024-09-04 at 11:52 +0100, Richard Purdie wrote:
>=20
> In the previous email you implied the developers working on the
> project
> were "silly" and you're now implying we're missing easy fixes to
> these
> problems.

I was referring to the Poky software explicitly, never any person nor
entity. The quote is:

> or is Poky just silly mixing and matching host tools build against
the > OS toolchain and uninative's libraries

> If you think you can do this better than what we have, feel
> free.=C2=A0If that is the case you don't need my help to debug this
> either.
>=20
> It might not be as easy as you think.

Apologies it really was not meant that way.

I am coming into this with fresh eyes and I am sure that there reasons,
why some things are the way they are. In my statement I assumed that
the host OS pzstd binary was called.

I added the env and which commands to sstate_archive_package to get a
listing of the environment. And at first I had assumed that it was
directly referencing the distro's $PATH. That turned out not to be the
case. Rather the pzstd binary is in the recipe-sysroot-native which may
have been obvious to someone else.

I have also gained some more understanding after reading these docs:
https://docs.yoctoproject.org/overview-manual/concepts.html#application-dev=
elopment-sdk

Thank you for your help so far.

Cheers

Tamara

--=-ZzgfLy1ErLZxnF0SfAwc
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iJcEABYKAD8WIQQ6pYmxf78Oo/3+lugLvc+XfT8YVQUCZthjvyEcdGFtYXJhLnNj
aG1pdHpAa2VybmVsY29uY2VwdHMuZGUACgkQC73Pl30/GFWPHwD/XiDs3F8AYiSZ
tyRYE3MTZCTiaEQoauZofIsZVvTf00QA/00mZjUacvExVs7nMca9Yaa+uskDfdwf
D7xf5PSBvJUF
=z0xc
-----END PGP SIGNATURE-----

--=-ZzgfLy1ErLZxnF0SfAwc--

