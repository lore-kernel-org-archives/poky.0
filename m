Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33F57E01366
	for <poky@yoctoproject.org>; Wed,  4 Jan 2012 05:18:34 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by eekd49 with SMTP id d49so17992012eek.35
	for <poky@yoctoproject.org>; Wed, 04 Jan 2012 05:18:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=vgyv8ztfAv9GI6qJ5rzGQIcBOE8EfSZvPqGF6O9ivvY=;
	b=G7VDfUwiknpa+z6tqSFkxqH9OsfPCp2EZE/Jv5i6bAX5SHtpS1qb34oc3ynywvg3Kb
	P0nYBGLsEmMvqqM5r71m29AblXtI/h4kgOO8c4WtzqN/+lR51Mwwae+HSYJiDeofWTvJ
	6pXGH18w4cKuRMfsL9/Ao2OiE7VHVxeLG7ZcU=
Received: by 10.213.5.1 with SMTP id 1mr14754630ebt.70.1325683113045;
	Wed, 04 Jan 2012 05:18:33 -0800 (PST)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id a60sm219462159eeb.4.2012.01.04.05.18.31
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 04 Jan 2012 05:18:32 -0800 (PST)
Date: Wed, 4 Jan 2012 14:18:20 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20120104131820.GC6485@jama.jama.net>
References: <4F035C93.2020602@mlbassoc.com>
	<20120104061238.GM31275@sakrah.homelinux.org>
	<4F043F16.7000507@mlbassoc.com> <4F045069.1050308@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <4F045069.1050308@mlbassoc.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: poky@yoctoproject.org
Subject: Re: Can't build webkit-gtk
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
X-List-Received-Date: Wed, 04 Jan 2012 13:18:34 -0000
X-Groupsio-MsgNum: 7321
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="adJ1OR3c6QgCpb/j"
Content-Disposition: inline

--adJ1OR3c6QgCpb/j
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 04, 2012 at 06:13:13AM -0700, Gary Thomas wrote:
> On 2012-01-04 04:59, Gary Thomas wrote:
> > On 2012-01-03 23:12, Khem Raj wrote:
> >> On (03/01/12 12:52), Gary Thomas wrote:
> >>> Using today's master:
> >>> OE Build Configuration:
> >>> BB_VERSION =3D "1.15.0"
> >>> TARGET_ARCH =3D "arm"
> >>> TARGET_OS =3D "linux-gnueabi"
> >>> MACHINE =3D "beagleboard"
> >>> DISTRO =3D "poky"
> >>> DISTRO_VERSION =3D "1.1+snapshot-20120103"
> >>> TUNE_FEATURES =3D "armv7a vfp neon cortexa8"
> >>> TARGET_FPU =3D "vfp-neon"
> >>> meta
> >>> meta-yocto =3D "master:f3a1a8897c78e116d7d28947a85687d0ce9d7df7"
> >>>
> >>> Build of webkit-gtk fails:
> >>>
> >>> Logfile attached.
> >>>
> >>> checking for glib-compile-schemas... /home/local/bb_test2/tmp/sysroot=
s/i686-linux/usr/bin/glib-compile-schemas
> >>> checking which Unicode backend to use... icu
> >>> checking for icu-config... /home/local/bb_test2/tmp/sysroots/beaglebo=
ard/usr/bin/crossscripts/icu-config
> >>> checking for ZLIB... yes
> >>> checking for LIBXML... yes
> >>> checking for PANGO... yes
> >>> checking whether to enable spellcheck support... yes
> >>> checking for ENCHANT... yes
> >>> checking for GAIL... yes
> >>> checking for CAIRO... yes
> >>> checking for GTK... yes
> >>> checking for XT... yes
> >>> checking whether to do a debug build... no
> >>> checking whether to enable optimized builds... yes
> >>> checking whether to enable support for 3D Rendering... no
> >>> checking whether to enable WebGL support... yes
> >>> checking GL/gl.h usability... no
> >>> checking GL/gl.h presence... no
> >>> checking for GL/gl.h... no
> >>> configure: error: OpenGL header not found
> >>> ERROR: oe_runconf failed
> >>
> >> may be add "virtual/libgl" to DEPENDS ?
> >
> > Has something changed? This used to build just fine...
> >
>=20
> Note: it does build now with this additional dependency.
> Perhaps someone has an idea how this broke?  Adding this dependency
> seems like quite a large hammer to use.

Have you tried to read log in upstream repo, maybe this version is first
to support WebGL or it was changed to be enabled by default
> >>> checking whether to enable WebGL support... yes
and that's why now it needs libgl and nobody noticed because most people
have libgl already because of xserver.

Cheers,
--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--adJ1OR3c6QgCpb/j
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.18 (GNU/Linux)

iEYEARECAAYFAk8EUZwACgkQN1Ujt2V2gBz/6ACfcslhWDPquvXXj06NJ46y8O7T
RrAAoKVJELFUzLGHUem3We3qjSJjn8d5
=G8I9
-----END PGP SIGNATURE-----

--adJ1OR3c6QgCpb/j--
