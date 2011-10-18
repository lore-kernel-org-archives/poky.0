Return-Path: <martin.jansa@gmail.com>
Received: from mail-bw0-f48.google.com (mail-bw0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2019CE004E9
	for <poky@yoctoproject.org>; Tue, 18 Oct 2011 08:01:06 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by bkar19 with SMTP id r19so1265401bka.35
	for <poky@yoctoproject.org>; Tue, 18 Oct 2011 08:01:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=jNcFxbA6f7EkBF+7pqYuuEsasIAQNox6nzE8P49tfnc=;
	b=fVGyGoLismlvKWRayoycYLNoCWhJfl80tyijf8pLAbjlGuhR2LhAZmh3+oDeCAnDp7
	iLsnj2GOeDK0cuzDLST8dRQ0XLABNdnpLhg3yUMZB8gn2k9BRjsqWQ+uCQ76W0Pz8yGh
	Awa7Ym/HATmDzzPjtBckNRAn04MrwnxADM3HU=
Received: by 10.204.8.24 with SMTP id f24mr2082661bkf.6.1318950065802;
	Tue, 18 Oct 2011 08:01:05 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id a27sm2485018bku.9.2011.10.18.08.01.03
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 18 Oct 2011 08:01:04 -0700 (PDT)
Date: Tue, 18 Oct 2011 17:00:58 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20111018150057.GI20678@jama.jama.net>
References: <4E9D90A9.6010303@mlbassoc.com>
	<20111018144905.GH20678@jama.jama.net>
	<4E9D93BC.8060707@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <4E9D93BC.8060707@mlbassoc.com>
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
X-List-Received-Date: Tue, 18 Oct 2011 15:01:07 -0000
X-Groupsio-MsgNum: 7081
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="pWOmaDnDlrCGjNh4"
Content-Disposition: inline

--pWOmaDnDlrCGjNh4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 18, 2011 at 08:57:00AM -0600, Gary Thomas wrote:
> On 2011-10-18 08:49, Martin Jansa wrote:
> > On Tue, Oct 18, 2011 at 08:43:53AM -0600, Gary Thomas wrote:
> >> Just wondering if anyone is looking at upgrading the gstreamer
> >> support to a newer revision?  In particular, I'd like to use
> >> gst-plugins-good/0.10.30 which requires newer gst-plugins-base.
> >
> > something like
> > http://lists.linuxtogo.org/pipermail/openembedded-core/2011-October/011=
287.html
> > ?
>=20
> Thanks, except that I'm really only interested in what's going to happen
> on Poky/Yocto, which is why I asked the question on the Poky list.

Poky/Yocto aren't using oe-core?

> >> Maybe it makes sense to move all the way to the cutting edge?
> >>
> >> --
> >> ------------------------------------------------------------
> >> Gary Thomas                 |  Consulting for the
> >> MLB Associates              |    Embedded world
> >> ------------------------------------------------------------
> >> _______________________________________________
> >> poky mailing list
> >> poky@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/poky
> >
>=20
> --=20
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--pWOmaDnDlrCGjNh4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.18 (GNU/Linux)

iEYEARECAAYFAk6dlKkACgkQN1Ujt2V2gBwVNACdGmPduZFhTdpRI5qwTC+J+0KW
rsEAn2sSQ8xpOrL39x4z3mEQNTTsPaOV
=La/O
-----END PGP SIGNATURE-----

--pWOmaDnDlrCGjNh4--
