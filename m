Return-Path: <paul@pbarker.dev>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1CC010F92F2
	for <webhook@archiver.kernel.org>; Tue, 31 Mar 2026 19:31:51 +0000 (UTC)
Received: from fhigh-a8-smtp.messagingengine.com (fhigh-a8-smtp.messagingengine.com [103.168.172.159])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.2366.1774985508424908514
 for <poky@lists.yoctoproject.org>;
 Tue, 31 Mar 2026 12:31:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@pbarker.dev header.s=fm3 header.b=B1MwsJ8L;
 dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=v1CbjjHu;
 spf=pass (domain: pbarker.dev, ip: 103.168.172.159, mailfrom: paul@pbarker.dev)
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailfhigh.phl.internal (Postfix) with ESMTP id A97DF14001B2
	for <poky@lists.yoctoproject.org>; Tue, 31 Mar 2026 15:31:47 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-02.internal (MEProxy); Tue, 31 Mar 2026 15:31:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pbarker.dev; h=
	cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm3; t=1774985507; x=1775071907; bh=UfkOdgQZHS
	uuH7hp5qSIkrrGNbm6aYSOvvefeRPMuX4=; b=B1MwsJ8LRK/sHW1TR+N9QQQKXl
	g+v5GIflnhW7BSCyJuedObBHmS4gmzUBoFriW/t+9Xg6lQV4kDIzYzy1IfFjK2Zt
	Ccg2FvxBjqjJgJ/XRQezpTbpz7odLTJK90reH9mI7ovAmeXmmvu6fF94t3DlLQvB
	n+BJ/9jC51Y3D9hGWSFVdQhdrIJRRpBCQjRgMXd/qN3YVJLhVmayD/eqGlqaRbXq
	suh0s7k+HmOsoOdNF1uxyJxwV4MeCJzE4RwyHZuqj3sLP40txBvj4Oxil5PBe7Qx
	sqcf2bVaSoSCBBwFe8renA/Z8w07qXYGATHkq3K9lfV07k6MaDFxoMzyUXSA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1774985507; x=1775071907; bh=UfkOdgQZHSuuH7hp5qSIkrrGNbm6aYSOvve
	feRPMuX4=; b=v1CbjjHuUekC290bExgc+WjCe0+pvohr0tL0ypLDcSi/uh7uP/j
	oHe7+MMs0Gd28a9xeJ7j0wSaJygWzJgPGF24bYDK75VL5MIy3DVxO7fuznufD3Ax
	pc5sLX+DvbOITCEMDpVVLWrkdDJjSuZfLcP6VSQkHv1UhUN3mJM1r1QZv/OvCmnR
	y5ifJzXSvwDZb/xSM5XKrJAD9S7tZsH67TU1/o5PMGqjtCqjNHb+lr+6QsB70hND
	DEv4Vpah76P/UkoXa/g54QTJMTVgrM9pjeGNEpvDgAqpZZpGBHGozBJMQ1QmF2fS
	j+pPZy32V1KLn1Vhd3dfdlxwY93QyvSNqyQ==
X-ME-Sender: <xms:IyHMachNaF3XDzUvrM4X4ou0gMCMdkWFXN2I2BrqcD_MjgELTd9TzQ>
    <xme:IyHMab_iSkbIm2r5Cva8xBfrW1p6hpDgrlh7PdPOYoNNPYlgEIP02O30Gvo0LEBYr
    5ntGRBFRSRllSdBu3ly3LP0Fj8efe3qWp5jAbs3c_hcZ7QyDjdm3lM>
X-ME-Received: <xmr:IyHMaZuQ0FvT-TZdw9zdk3FinNZwwBCDa4KORTMFzMn9UOVdIHSghYMFfEJghv4ubB08_qvpLtDPei53XUTycN7Ahk4oKHlaZk8jo8k>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgddutdehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceurghi
    lhhouhhtmecufedttdenucenucfjughrpefkuffhvfffjghftggfggesghdtreertderje
    enucfhrhhomheprfgruhhluceurghrkhgvrhcuoehprghulhesphgsrghrkhgvrhdruggv
    vheqnecuggftrfgrthhtvghrnhepieegudeffeffledvhfdvuddujeeggfdthfektefghe
    eljeektedtffehleelieffnecuffhomhgrihhnpehmshhgihgurdhlihhnkhenucevlhhu
    shhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehprghulhesphgsrg
    hrkhgvrhdruggvvhdpnhgspghrtghpthhtohepuddpmhhouggvpehsmhhtphhouhhtpdhr
    tghpthhtohepphhokhihsehlihhsthhsrdihohgtthhophhrohhjvggtthdrohhrgh
X-ME-Proxy: <xmx:IyHMaSZVEpssqAPXITTZqxON4TE3WbnpbaawkSIig0w8qEa9AU7jiA>
    <xmx:IyHMaZpae5O-10VTfbfvv1umnA54gEoAxCzM2pDHcNG1AH11PAgGCw>
    <xmx:IyHMaX_cjnKBTl0fN2-USu0tLAAQL0jqYVnprs0Fcpj5Vgd190bXNw>
    <xmx:IyHMaY8FAZd_buQPmLxGce8eLa-dB6dmDZ_LZXWXn5QEi0odiwkxVA>
    <xmx:IyHMaZxIlBvYKEgUbqL4-3gFYf2G8-5ak2U_s2U0fj66gOJwvak91yAE>
Feedback-ID: i51494658:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <poky@lists.yoctoproject.org>; Tue, 31 Mar 2026 15:31:47 -0400 (EDT)
Message-ID: <534c3668b8d65fdee67b4c158937fc8293c359b0.camel@pbarker.dev>
Subject: Re: [poky] [PATCH 0/3] Adapt to new default feature handling
From: Paul Barker <paul@pbarker.dev>
To: poky@lists.yoctoproject.org
Date: Tue, 31 Mar 2026 20:31:43 +0100
In-Reply-To: <20260328-default-features-v1-0-549331ccfab0@pbarker.dev>
References: <20260328-default-features-v1-0-549331ccfab0@pbarker.dev>
Autocrypt: addr=paul@pbarker.dev; prefer-encrypt=mutual;
 keydata=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
 LUewj8JVy0aJsGTwI4invl
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-XgQgkHDkth4sU3ukDPVm"
User-Agent: Evolution 3.52.3-0ubuntu1.1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 31 Mar 2026 19:31:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13873


--=-XgQgkHDkth4sU3ukDPVm
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 2026-03-28 at 09:46 +0000, Paul Barker wrote:
> These changes adapt meta-yocto-bsp to the upcoming changes in how
> default distro and machine features are set. The intention is that this
> series is applied to meta-yocto *before* changes to openembeded-core,
> and the changes should be safe to apply in that order.
>=20
> ---
> Paul Barker (3):
>       genericx86-common: Use append with MACHINE_FEATURES
>       genericarm64: Use MACHINE_FEATURES_DEFAULT
>       beaglebone-yocto: Use MACHINE_FEATURES_DEFAULT

Please drop these, they should no longer be needed with v2 of the
openembeded-core patches to support opt-out of any default machine and
distro features [1].

[1]: https://patch.msgid.link/20260331-default-features-v2-0-f73b43d8bd57@p=
barker.dev

Thanks,

--=20
Paul Barker


--=-XgQgkHDkth4sU3ukDPVm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iIcEABYKAC8WIQSzjPXf5Y1BDWhU2iCrY1Tsnbr0bgUCacwhHxEccGF1bEBwYmFy
a2VyLmRldgAKCRCrY1Tsnbr0btQRAQDhpQz7E8QLFXMTdUfJleov27tbRgrq7tNG
X9s7AzztVQD+J8TUNmg30RM9a7bK9bVl6uPgqMPR9A3DAuRcjNm5RQs=
=i3qK
-----END PGP SIGNATURE-----

--=-XgQgkHDkth4sU3ukDPVm--

