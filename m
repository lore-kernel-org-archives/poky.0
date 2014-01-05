Return-Path: <martin.jansa@gmail.com>
Received: from mail-ea0-f180.google.com (mail-ea0-f180.google.com
	[209.85.215.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C05CE0080F
	for <poky@yoctoproject.org>; Sun,  5 Jan 2014 05:11:04 -0800 (PST)
Received: by mail-ea0-f180.google.com with SMTP id f15so7485279eak.39
	for <poky@yoctoproject.org>; Sun, 05 Jan 2014 05:11:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=/xQDIY5R2LI3SLJRXVak13EmhXfLEZYbqzII5TCHkmQ=;
	b=wCXgVpNrb+EmsUqDOxelJm6YOa+vP30tc0s4NsP1op+nCLpRUk95ZmPYm5O3NDhEeI
	CL/LsseMGFdxOO1jIN6sjXys7qYXFLKWcZmrUm6XUnGhhbRh1TAyOxkKd+HfAn9qbQFs
	Kx4N1+5jJv8teslNV8kDx3gmY95MChL2x7Wokm6vn8gp7kiA+NboVHoqWB+AJM2xodH6
	AAMeaw0K4RKdvRB/TNjJWUuWHVDoMIDH+vQ2nFJQV6n/hREAuu0biIvPqD4/MhlmfkR+
	CJgj/refq1//m7ljxv26/5a86EpfI2/75kzEwauO2xKa9xbYPcnV29meG7ioMsLKHfGN
	uNnw==
X-Received: by 10.14.218.69 with SMTP id j45mr83849672eep.22.1388927463248;
	Sun, 05 Jan 2014 05:11:03 -0800 (PST)
Received: from localhost (ip-89-176-104-107.net.upcbroadband.cz.
	[89.176.104.107])
	by mx.google.com with ESMTPSA id 44sm162019060eek.5.2014.01.05.05.11.01
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 05 Jan 2014 05:11:02 -0800 (PST)
Date: Sun, 5 Jan 2014 14:11:09 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Stefan Seyfried <stefan.seyfried@googlemail.com>
Message-ID: <20140105131109.GA3709@jama>
References: <52C94BBD.6030307@message-id.googlemail.com>
MIME-Version: 1.0
In-Reply-To: <52C94BBD.6030307@message-id.googlemail.com>
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: poky@yoctoproject.org
Subject: Re: dora regression: "WARNING: Duplicate inclusion for meta/recipes-core/eglibc/eglibc-common.inc in meta/recipes-core/eglibc/eglibc-initial.inc"
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 05 Jan 2014 13:11:05 -0000
X-Groupsio-MsgNum: 9383
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Qxx1br4bt0+wmkIi"
Content-Disposition: inline

--Qxx1br4bt0+wmkIi
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jan 05, 2014 at 01:10:37PM +0100, Stefan Seyfried wrote:
> This commit
>=20
> commit 564c687c2a2b90f277f444eed298b6defc51c467
> Author: Richard Purdie <richard.purdie@linuxfoundation.org>
> Date:   Fri Nov 29 23:15:56 2013 +0000
>=20
>     bitbake: parse/ConfHander/BBHandler/utils: Fix cache dependency bugs
>=20
> Leads to lots of
>=20
> WARNING: Duplicate inclusion for
> /space/tmp/yocto-test/meta/recipes-core/eglibc/eglibc-common.inc in
> /space/tmp/yocto-test/meta/recipes-core/eglibc/eglibc-initial.inc
>=20
> I think the problem is not with this commit but with eglibc recipes:

This commit should be backported to oe-core/dora:

commit b3cccee0c66ce744a79843a5dd9798475c84e23c
Author: Richard Purdie <richard.purdie@linuxfoundation.org>
Date:   Fri Nov 29 17:53:18 2013 +0000

    eglibc-initial.inc: Drop duplicate include

    There is little point in including the file twice so lets not. The
    main recipe already included it.

> eglibc-initial_2.18.bb:1: including eglibc_2.18.bb
> eglibc_2.18.bb:1: including eglibc.inc
> eglibc.inc:1: including eglibc-common.inc
> ....
> eglibc-initial_2.18.bb:2: including eglibc-initial.inc
> eglibc-initial.inc:1: including eglibc-common.inc
>=20
> So eglibc-common.inc is really included twice.
>=20
> I'm in no case expert enough to tell which of the includes could or
> should be omitted, but I'd probably remove the one in eglibc-initial.inc
>=20
> Best regards,
>=20
> 	Stefan
> --=20
> Stefan Seyfried
> Linux Consultant & Developer -- GPG Key: 0x731B665B
>=20
> B1 Systems GmbH
> Osterfeldstra=DFe 7 / 85088 Vohburg / http://www.b1-systems.de
> GF: Ralph Dehner / Unternehmenssitz: Vohburg / AG: Ingolstadt,HRB 3537
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--Qxx1br4bt0+wmkIi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEARECAAYFAlLJWe0ACgkQN1Ujt2V2gBznNQCeLpZ17l5UY6WjsG5qdnBuCz5Z
i5MAoK69v2mhmkJa4MbQ2FmrcRAe5zsU
=ooPB
-----END PGP SIGNATURE-----

--Qxx1br4bt0+wmkIi--
