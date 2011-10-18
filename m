Return-Path: <martin.jansa@gmail.com>
Received: from mail-bw0-f48.google.com (mail-bw0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4779EE01324
	for <poky@yoctoproject.org>; Tue, 18 Oct 2011 07:49:14 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by bkar19 with SMTP id r19so1243768bka.35
	for <poky@yoctoproject.org>; Tue, 18 Oct 2011 07:49:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=yRvRXXNAziy2BtZt9yQ6oo2GWM2mKH04uh3vwXbjiec=;
	b=kSUqB00pAfl/aEnTeDv+HHZFF/dCt2vic2hOgaoxHX7hinFR+jqfHbMNXSYBgsLZF3
	eES1orVytRGJJUKPfDPKUE/Vi+Ipt06fv2/ikFMTWBX0WiGnlEUp2JuhaN8R3b02oI/5
	X7xo+vEoGc12EaYyLEZ7VjQd+kdBPF04xKpMs=
Received: by 10.204.153.1 with SMTP id i1mr2100559bkw.8.1318949353082;
	Tue, 18 Oct 2011 07:49:13 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id z9sm2446656bkn.7.2011.10.18.07.49.11
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 18 Oct 2011 07:49:11 -0700 (PDT)
Date: Tue, 18 Oct 2011 16:49:05 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20111018144905.GH20678@jama.jama.net>
References: <4E9D90A9.6010303@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <4E9D90A9.6010303@mlbassoc.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: gstreamer update
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
X-List-Received-Date: Tue, 18 Oct 2011 14:49:14 -0000
X-Groupsio-MsgNum: 7079
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="u/L2/WlOHZg+YGU4"
Content-Disposition: inline

--u/L2/WlOHZg+YGU4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 18, 2011 at 08:43:53AM -0600, Gary Thomas wrote:
> Just wondering if anyone is looking at upgrading the gstreamer
> support to a newer revision?  In particular, I'd like to use
> gst-plugins-good/0.10.30 which requires newer gst-plugins-base.

something like
http://lists.linuxtogo.org/pipermail/openembedded-core/2011-October/011287.=
html
?

> Maybe it makes sense to move all the way to the cutting edge?
>=20
> --=20
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--u/L2/WlOHZg+YGU4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.18 (GNU/Linux)

iEYEARECAAYFAk6dkeEACgkQN1Ujt2V2gBzaBwCgm8aTu6eFZfRQGfrUJr8uO03c
QN8An0rBGwPN0phWpoa9GQSJiIa8P+1K
=U1uH
-----END PGP SIGNATURE-----

--u/L2/WlOHZg+YGU4--
