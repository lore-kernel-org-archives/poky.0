Return-Path: <paul@pbarker.dev>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 592E1EF4EC7
	for <webhook@archiver.kernel.org>; Mon,  6 Apr 2026 08:44:12 +0000 (UTC)
Received: from fhigh-b2-smtp.messagingengine.com (fhigh-b2-smtp.messagingengine.com [202.12.124.153])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.51005.1775465041932101414
 for <poky@lists.yoctoproject.org>;
 Mon, 06 Apr 2026 01:44:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@pbarker.dev header.s=fm3 header.b=sITgIWDN;
 dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=FcOX2BAW;
 spf=pass (domain: pbarker.dev, ip: 202.12.124.153, mailfrom: paul@pbarker.dev)
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 2EB887A01B1;
	Mon,  6 Apr 2026 04:44:01 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-01.internal (MEProxy); Mon, 06 Apr 2026 04:44:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pbarker.dev; h=
	cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm3; t=1775465040; x=1775551440; bh=bCJalk6/xn
	xL6uLdl+mvmJjiOtejwxkeSX35pgD/Oqc=; b=sITgIWDNL+BLe2CyiV7wqIZ4KT
	WK6hasLI+2YyYIX+lDHypOmijEcAPiK2vPjFol9o6U23/XqeC8LEe8Z4m39RkW0J
	adT+mfBfPLuQxHKA1k8m6NJ3Ko70/MlEHPqJzoXEEnQCIn2ftmyDt4cA6rWe+mEv
	l4RuJ+juYKze4X4xyvuOuWxVeKlXmSoj00XGE8vXzVaPISgVEAgDAtHS3OJ4vCe4
	ibXo7lzU2Mv+AtsyNX8PoBXx8feOhf84rmxNLNcLrCeIsRFfEMYu0iV2wgSYt/3h
	iiIcD4osfMBfaEHDSKiD8aiv5h7xY1wK2ePfndml1riwGj0pTjlrc6vL9wNA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1775465040; x=1775551440; bh=bCJalk6/xnxL6uLdl+mvmJjiOtejwxkeSX3
	5pgD/Oqc=; b=FcOX2BAW/ytFd/SxQ4+HVNEcsIOvVypX3whVyz2a33pCL2776vI
	clt8TQwhKYjlEB/AwTFNgmAPkcAMym/LrB20KQH2Iyfcm7ognx9N7ZeuvbZUcUIQ
	3msivAEcbYirS/7tz1CQpadeD4bSwD2VMer+jznGCUUofpz4s3Ci0gzdixSFAiXj
	N9aOh2iJRDMwK7MwMpRY2QTxOIpPWUq8jpZ2zMMqGtYXJ1BjBkn+/Cn56eY/fJ91
	WRleI/Y+aC0HewSAMs4UULjtcsLRbWc1FtBzVXnsadI8/5CpCxBfL0W0HvChubvO
	8GKRO77HmbduRTd/1tWYq+GEx+/YOb36FRg==
X-ME-Sender: <xms:UHLTad5v_76uCwfGE7NZ5kg5V298oDS2tV_VaL04fmjSz9uuCMxJog>
    <xme:UHLTaQ61f07YgPEclR10DsGjptOEwE3h3WGSzGpxmdFmDYIlCjVs5YbHcF8w8cu6d
    TvQtbZdaC25gNjf31UOdJk-sZ_wBu21s7eG_LeTuv_I8ki7G_IHC9g>
X-ME-Received: <xmr:UHLTaSGhO2o5Lqq2HUpgZa-1Dd4_ULeMERkKX5gNV1G6HP29eFTyUWwpZbsDjV5Ou-ghNASiXh14Dz_RpO3Fvi1fhpADeAzOXbJ8E75AV2l0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefhedrtddtgddujedvhecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecunecujfgurhepkffuhffvffgjfhgtfgggsehgtderredtre
    ejnecuhfhrohhmpefrrghulhcuuegrrhhkvghruceophgruhhlsehpsggrrhhkvghrrdgu
    vghvqeenucggtffrrghtthgvrhhnpeevvdeugfefgfeugeejgfffhfelteduhfdvgeefhf
    ekfeejheejjeejudehfefhteenucffohhmrghinhephihotghtohhprhhojhgvtghtrdho
    rhhgpdhkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
    epmhgrihhlfhhrohhmpehprghulhesphgsrghrkhgvrhdruggvvhdpnhgspghrtghpthht
    ohepvddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohephihorghnnhdrtghonhhgrg
    hlsehsmhhilhgvrdhfrhdprhgtphhtthhopehpohhkhieslhhishhtshdrhihotghtohhp
    rhhojhgvtghtrdhorhhg
X-ME-Proxy: <xmx:UHLTaRSKbR71p9pjSZWGOemwDS2rjgBV7LEzIlS_02JRj56hk8skAw>
    <xmx:UHLTaTtA6Ora24uWdwZqfTWp5UojCBovIn_yUQtzpZMQNy88LnUKxg>
    <xmx:UHLTaYxGlKwkhTer4UMe3sZzsSlAh_GSwgS75ahXsqG14vKUUuXC3g>
    <xmx:UHLTaV6EKP-vm-6l4SboTPs_-oIckv-wcIG2ITYuJ-sEcAd9iiFwHQ>
    <xmx:UHLTaWeC_Sz-0OEPjT1PLJPSOZc5xiYhmPXAExS8FVSe9fo1XS4TIXer>
Feedback-ID: i51494658:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 6 Apr 2026 04:43:59 -0400 (EDT)
Message-ID: <86212604f8e9e3aadfcf70cea2ffe57b3244827b.camel@pbarker.dev>
Subject: Re: [poky] [PATCH] poky: Fix CentOS Stream 9 distro name
From: Paul Barker <paul@pbarker.dev>
To: yoann.congal@smile.fr, poky@lists.yoctoproject.org
Date: Mon, 06 Apr 2026 09:43:57 +0100
In-Reply-To: <DHJP1AEJUMVX.15SJIB1RQKN1A@smile.fr>
References: <20260403-centos-9-v1-1-e5324bd74ea3@pbarker.dev>
	 <DHJP1AEJUMVX.15SJIB1RQKN1A@smile.fr>
Autocrypt: addr=paul@pbarker.dev; prefer-encrypt=mutual;
 keydata=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
 LUewj8JVy0aJsGTwI4invl
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-zBJTPLtNAUa2tRaDaU4y"
User-Agent: Evolution 3.52.3-0ubuntu1.1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 06 Apr 2026 08:44:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13882


--=-zBJTPLtNAUa2tRaDaU4y
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2026-04-03 at 19:25 +0200, Yoann Congal via
lists.yoctoproject.org wrote:
> On Fri Apr 3, 2026 at 1:59 PM CEST, Paul Barker via lists.yoctoproject.or=
g wrote:
> > CentOS Stream 9 reports as `centos-9`, not `centosstream-9`.
> >=20
> > On our stream9-vk-1 autobuilder worker:
> >=20
> >     $ ( source /etc/os-release && echo $ID-$VERSION_ID )
> >     centos-9
> >=20
> > Signed-off-by: Paul Barker <paul@pbarker.dev>
> > ---
>=20
> Isn't that conflicting or redundant with
> [yocto-autobuilder-helper][PATCH] scripts/yocto-supported-distros: fix an=
 incorrect regular expression for stream - Antonin Godard
> https://lore.kernel.org/all/20260326-ysd-fix-centos-regexp-v1-1-e41c6cbe1=
a18@bootlin.com/
> ?

Hi Yoann,

I'm basing this on the distro ID and version reported on a local centos
stream 9 container as well as the stream9-vk-1 autobuilder worker. Both
report as centos-9, not centosstream-9.

If I run a build on centos stream 9, I see the warning about an untested
distro:

    WARNING: Host distribution "centos-9" has not been validated with
    this version of the build system; you may possibly experience
    unexpected failures. It is recommended that you use a tested
    distribution.

I'll follow up with Antonin.

Best regards,

--=20
Paul Barker


--=-zBJTPLtNAUa2tRaDaU4y
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iIcEABYKAC8WIQSzjPXf5Y1BDWhU2iCrY1Tsnbr0bgUCadNyTREccGF1bEBwYmFy
a2VyLmRldgAKCRCrY1Tsnbr0butoAQDU1CZYgE8yqfIuVhrrSd0oItR42re0LDmc
ePKqqHUxvAD/fsOIOHV9WZ/diDWXQXI9Z42WR1c9u+q9q4h76XUSWwY=
=ggzC
-----END PGP SIGNATURE-----

--=-zBJTPLtNAUa2tRaDaU4y--

