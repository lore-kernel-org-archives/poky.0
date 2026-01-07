Return-Path: <paul@pbarker.dev>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 400ADD0D15D
	for <webhook@archiver.kernel.org>; Wed,  7 Jan 2026 18:37:08 +0000 (UTC)
Received: from fout-b5-smtp.messagingengine.com (fout-b5-smtp.messagingengine.com [202.12.124.148])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.13408.1767811020502603899
 for <poky@lists.yoctoproject.org>;
 Wed, 07 Jan 2026 10:37:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@pbarker.dev header.s=fm3 header.b=ZE1lychC;
 dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=M8nLWuvf;
 spf=pass (domain: pbarker.dev, ip: 202.12.124.148, mailfrom: paul@pbarker.dev)
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
	by mailfout.stl.internal (Postfix) with ESMTP id D21E41D00082;
	Wed,  7 Jan 2026 13:36:59 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-03.internal (MEProxy); Wed, 07 Jan 2026 13:36:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pbarker.dev; h=
	cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm3; t=1767811019; x=1767897419; bh=yg573VErdX
	c3BDJ5rs0FJypjPwVSBmsady2wYUjMC8w=; b=ZE1lychCWcA6V0txB+h9Oy2pke
	boPqHnjqXuPWejZedwYcqOb/fKHN80zh36jTWBMg2Rga9M98Y/pqDT4uRVukokCM
	Qv0SK6ukOcAVX11pyjBn1AONOjR7g2PaMM/l1OEXMad7r2Mo5jm5ktQyX7V/30fH
	NJPFgN5+6lELbvkkd5/dov6IV2tkEzVVuOpSFWRFJD5NQ5BdKwabhoKOWTPp/jr9
	S59on8/aKOswmMmmSAJQKhZtj7hq2znoVyB6b5bdHLde1fttnvJ2tX449rrFIPLf
	8kqfQ/OrXqAgydWrl1pxIl3+rtDfq2CKl0jrTsOXW1CrnPjfYnSqXBAAEa8Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1767811019; x=1767897419; bh=yg573VErdXc3BDJ5rs0FJypjPwVSBmsady2
	wYUjMC8w=; b=M8nLWuvfEntO43dnYqnvNPsZdPhRVwYffWvVA7omFw0gxYcHfWu
	T6xqmTdrTAj5Py6DzYG9RAO0QEb0RdqCkokOLOdM49SaBKGKrSjkc/sQkU+wDQq+
	Iww5Ha9OiVa5p3ZxBOWgxhl1VugLV9TAiDs1KC96ZZnawZG53IpP9NseJzK1kDFs
	CTuB/l1nRfDwLA8anNdjc+f9rr1TCx8HY900XylnubH8vSAsGVj4S0JF7TT0W8AF
	hjruD+cPRedeOho1g/1F0sT1kdtt9+vMAI06JC6rucvVzKglvxTepf9CDNFfylVP
	eNGhsayQR0A5aKvqQtovKIJsgmCQCTwKy8A==
X-ME-Sender: <xms:y6deafF5eeXx6a74JFhEX0BebSYvVbFvqibX9a7e7LC7i6SEKgbFSg>
    <xme:y6deaUH1PSmTmdeE-0ZACbRYLLuUqRlgvNdFaT0i6H-_MNSv0ZTo9lrjfmwFjNYa-
    0MMcAj1Rf8uhTHbC4ll8YwwmKbV2Cw0lXV-DSxcDV4_uxMzDhxCvuU>
X-ME-Received: <xmr:y6deaUNOBxqSQ6IoMcV2UCWzDEs4gUtEyAsAH8-Zvkeiz58qv6EW_iKpvIvg1ZtgyEzIZ5j0wmxgO5RkEcVWLxXLeEWA-2JQ_M2WXk4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddutdefkeduucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefkuffhvfffjghftggfggesghdtreertd
    erjeenucfhrhhomheprfgruhhluceurghrkhgvrhcuoehprghulhesphgsrghrkhgvrhdr
    uggvvheqnecuggftrfgrthhtvghrnhepleeutdekteduuddvgfduieehteeludelvdfghe
    fhffeigeffleefleevgfekveehnecuffhomhgrihhnpeihohgtthhophhrohhjvggtthdr
    ohhrghdprhgvughhrghtrdgtohhmnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrg
    hmpehmrghilhhfrhhomhepphgruhhlsehpsggrrhhkvghrrdguvghvpdhnsggprhgtphht
    thhopeefpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehshhgrfihnrdgruggrmh
    hssehgrgdrtghomhdprhgtphhtthhopehpohhkhieslhhishhtshdrhihotghtohhprhho
    jhgvtghtrdhorhhgpdhrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprh
    hojhgvtghtrdhorhhg
X-ME-Proxy: <xmx:y6deabEFwu98hpROnZ2SYhQo-bScE44EgOGhn4kid8ClHdSDepgMpQ>
    <xmx:y6deaTN8uJGdTpVTusj92-N9SWReFWEm3KWJUqGVnD_wQulQ-jNUAw>
    <xmx:y6deaU90VecVyPdUqTnExoF95DD67V-XnVdC7BfKFd1ViNwFINDobQ>
    <xmx:y6deaXSNn27JmeFW1L1hvSno3z4HtbzaCKD3BofnAfjxswurzNc2nQ>
    <xmx:y6deaW_TpIkGXf8HulieBQtLflHP1AkMwJf37txCbNAl3wzvX4da0CG7>
Feedback-ID: i51494658:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 7 Jan 2026 13:36:58 -0500 (EST)
Message-ID: <773919eb42d6bf2a76439a0dc1f89621eb35e848.camel@pbarker.dev>
Subject: Re: [poky] Error from package.bbclass?
From: Paul Barker <paul@pbarker.dev>
To: shawn.adams@ga.com, poky@lists.yoctoproject.org, 
	yocto@lists.yoctoproject.org
Date: Wed, 07 Jan 2026 18:36:55 +0000
In-Reply-To: <kC3G.1767808205475898826.R9cr@lists.yoctoproject.org>
References: <kC3G.1767808205475898826.R9cr@lists.yoctoproject.org>
Autocrypt: addr=paul@pbarker.dev; prefer-encrypt=mutual;
 keydata=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
 ep0k17xg==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-Cs8vFoCZgq8utXxTBemP"
User-Agent: Evolution 3.52.3-0ubuntu1.1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 07 Jan 2026 18:37:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13815


--=-Cs8vFoCZgq8utXxTBemP
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2026-01-07 at 09:50 -0800, shawn.adams via
lists.yoctoproject.org wrote:
> I'm getting an error when building core-image-minimal for qemuarm64 using=
 the scarthgap branch on a CentOS 9 VM.
>=20
> From what I can tell, the error occurs when perform_packagecopy() attempt=
s to copy the linux-libc-headers source files into tmp/work/cortexa57-poky-=
linux/linux-libc-headers/6.6/package. Line 355 in poky/meta/classes-global/=
package.bbclass runs two tar commands from Python's subprocess.check_output=
() which throw an exception. The text of the exception is
>=20
> >=20
> > Exception: subprocess.CalledProcessError: Command 'tar
> > --exclude=3D./sysroot-only -cf - -C
> > /builds/build/qemuarm64/tmp/work/cortexa57-poky-linux/linux-libc-header=
s/6.6/image
> > -p -S . | tar -xf - -C
> > /builds/build/qemuarm64/tmp/work/cortexa57-poky-linux/linux-libc-header=
s/6.6/package'
> > returned non-zero exit status 2.
> >=20
>=20
> The second tar command is what fails (the one extracting into the package=
 directory). I have tar 1.34 installed on my VM and have verified that Bitb=
ake uses the same version when it runs.
>=20
> When I run the tar command manually from a terminal it works fine, so the=
 problem seems to be unique to the Bitbake run-time environment. I have als=
o changed perform_packagecopy() a couple different ways to see if I can get=
 it to work:
> * I changed it to use Python's tarfile module to do what the tar command =
is doing. This avoids running the tar command in a shell via subprocess.che=
ck_output() and seems to work.
> * I added a shell function to package.bbclass which runs the same tar com=
mand and call it via bb.build.exec_func() instead of running the tar comman=
d in subprocess.check_output(). This produces the same error.
> I've attached the full Bitbake log file in case that helps.
>=20
> Does anyone have ideas about what could be causing this problem? Could it=
 be a problem with software versions installed on my VM?

(+yocto@lists.yoctoproject.org as that's a more relevant list)

This looks like an issue that we're seeing on our autobuilder with the
CentOS 9 worker [1].

It also seems similar to RHEL issue "tar --xattrs -xf failure" [2], but
that may not be an exact match as I'm unsure if we're using xattrs here
without refreshing my memory on the details.

[1]: https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D16117
[2]: https://issues.redhat.com/browse/RHEL-136277

Thanks,

--=20
Paul Barker


--=-Cs8vFoCZgq8utXxTBemP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iIcEABYKAC8WIQSzjPXf5Y1BDWhU2iCrY1Tsnbr0bgUCaV6nxxEccGF1bEBwYmFy
a2VyLmRldgAKCRCrY1Tsnbr0btG2AQDGzWMxwm1OHM6Q+FW+RvjuhCtG7pI91aZI
EmpR2+I/zAEA1tA0lJ/0Do8HU1wTcJvu248+09xZ2grwqgaoFePqdws=
=dvHX
-----END PGP SIGNATURE-----

--=-Cs8vFoCZgq8utXxTBemP--

