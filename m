Return-Path: <martin.jansa@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D76EE0034B
	for <poky@yoctoproject.org>; Sat, 28 Jul 2012 23:36:27 -0700 (PDT)
Received: by wibhn17 with SMTP id hn17so701067wib.11
	for <poky@yoctoproject.org>; Sat, 28 Jul 2012 23:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=ZwrOIeAo0i14gRs5v8lMkeEn0Y1y7vpjDRlWIPPymVI=;
	b=hcVdUDmUGSeceDCjp3NwpoVQV+s5DaASY0rv7e3H/Kuy7XudbATZuPIu3aJa5fR83z
	7rKxIdKg/+PRxj8HMkA2Tdt+AYRK8ZMIF7MWox7HU0GiDHTgg1d4fAHkJkZBFpB1e1aH
	FSwU+NEJDxyHu31OxBKBLzPujEqlQzJojG8AxMIsrR82wDNIDFi6hxBfJcfTYXK+Reou
	ke0VrbW38Vv4HX9j8w/dIfW/nyP8hJPEAlFLcQCfmnrFqBDbKjmjoKp/Qb7hD0LnGiSW
	dbGhZaHKneMyVxYR5vcSUcUcCgHEsxFyI8uRANSEYi9wtU27jQHGK2xZL2vFrFR3y1lI
	ZDXA==
Received: by 10.180.79.69 with SMTP id h5mr17664126wix.6.1343543786151;
	Sat, 28 Jul 2012 23:36:26 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id w7sm8617033wiz.0.2012.07.28.23.36.24
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 28 Jul 2012 23:36:25 -0700 (PDT)
Date: Sun, 29 Jul 2012 08:36:19 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20120729063619.GC3261@jama.jama.net>
References: <1343524688-12488-1-git-send-email-net147@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1343524688-12488-1-git-send-email-net147@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] bison: apply remove-gets.patch to native build as well
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
X-List-Received-Date: Sun, 29 Jul 2012 06:36:27 -0000
X-Groupsio-MsgNum: 8064
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="2/5bycvrmDh4d1IB"
Content-Disposition: inline

--2/5bycvrmDh4d1IB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jul 29, 2012 at 11:18:08AM +1000, Jonathan Liu wrote:
> In addition to the gets function possibly not being available with
> the target glibc, it may not be available with the host glibc either.
>=20
> Move remove-gets.patch from SRC_URI to BASE_SRC_URI to fix compile
> error for native build when host glibc does not have the gets function.

This belongs to openembedded-core ML and there is one already.

Cheers,

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--2/5bycvrmDh4d1IB
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlAU2eMACgkQN1Ujt2V2gBzaAgCgmz9+/+5qicNwtbbMauGC8hu3
9m0Anjg8jg8d4+2mkococG5qcy65n97h
=VGFO
-----END PGP SIGNATURE-----

--2/5bycvrmDh4d1IB--
