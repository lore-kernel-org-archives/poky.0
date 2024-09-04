Return-Path: <tamara.schmitz@kernelconcepts.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2355ECA0ED3
	for <webhook@archiver.kernel.org>; Wed,  4 Sep 2024 10:02:07 +0000 (UTC)
Received: from mail.kernelconcepts.de (mail.kernelconcepts.de [188.40.83.200])
 by mx.groups.io with SMTP id smtpd.web11.46437.1725444120061391335
 for <poky@lists.yoctoproject.org>;
 Wed, 04 Sep 2024 03:02:00 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: kernelconcepts.de, ip: 188.40.83.200, mailfrom: tamara.schmitz@kernelconcepts.de)
Received: from [217.146.132.69] (helo=dhcp88.kc.loc)
	by mail.kernelconcepts.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <tamara.schmitz@kernelconcepts.de>)
	id 1slmpp-0007GN-Ab; Wed, 04 Sep 2024 12:01:57 +0200
Message-ID: <1f7a3c4062e8ae3edf847b3248af39e0ce2ee30b.camel@kernelconcepts.de>
Subject: Re: [poky] Poky calls host pzstd with uninative's libstdc++.so.6
 instead of the host library
From: Tamara Schmitz <tamara.schmitz@kernelconcepts.de>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	poky@lists.yoctoproject.org
Date: Wed, 04 Sep 2024 12:01:50 +0200
In-Reply-To: <614539e4e2e958d172483b7d4ad0faf15548b32b.camel@linuxfoundation.org>
References: 
	<87fe05839a90d96222d1afb0811fa8eca72a977d.camel@kernelconcepts.de>
	 <614539e4e2e958d172483b7d4ad0faf15548b32b.camel@linuxfoundation.org>
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
	protocol="application/pgp-signature"; boundary="=-6Sf1KhIwZ+DsNj8sv+cn"
User-Agent: Evolution 3.52.4 (3.52.4-1.fc40) 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 04 Sep 2024 10:02:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13432


--=-6Sf1KhIwZ+DsNj8sv+cn
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2024-09-04 at 10:41 +0100, Richard Purdie wrote:
> A key piece of information is which version of poky are you trying to
> build?
>=20

The Vendor BSP specifies branch scarthgap commit
02eacd385eca7aa9cf25aaaa61427aa9c126e0bc which is between the yocto-5.0
and the yocto-5.0.1 release tag which is from May. Yeah could use an
update.


> uninative changes the loader of executables to use the loader from
> uninative rather than the host system. It does this so that binaries
> built on a newer distro can work on an older one.
>=20
> The cost of doing that is that you need to use a uninative that
> matches
> or is greater than the host system.

Wouldn't it be great if Poky could distinct between host binaries and
its own binaries?

>=20
> I'd therefore suggest bumping the version of uninative in the
> metadata
> you're using. Whilst it isn't a supported version, chances are it
> will
> probably work if you do that.
>=20

Will try that.

>=20
> The bug is that you're using an unsupported distro without making the
> modifications needed to support it. You can disable uninative, or you
> can switch to a newer uninative release, or switch to a version of
> the
> system which has fedora40 support.
>=20
> There will be other issues with fedora 40 as some things won't build
> correctly due to the newer gcc version on f40 too.
>=20

Yeah, I am fine with taking a look at those. The warning did warn me
after all ;)


Regards

Tamara

--=-6Sf1KhIwZ+DsNj8sv+cn
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iJcEABYKAD8WIQQ6pYmxf78Oo/3+lugLvc+XfT8YVQUCZtgwDiEcdGFtYXJhLnNj
aG1pdHpAa2VybmVsY29uY2VwdHMuZGUACgkQC73Pl30/GFUJawD/YE3IZOxa84N+
g/AShvkc0JcQyBnXUQ/GMTJPFKk0AWMA/ArxsHa7H4j5GGRK1Lt6BXrjBlg+c8va
sL1AXAJB8voB
=VhY0
-----END PGP SIGNATURE-----

--=-6Sf1KhIwZ+DsNj8sv+cn--

