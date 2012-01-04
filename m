Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 843A5E0136A
	for <poky@yoctoproject.org>; Wed,  4 Jan 2012 05:33:01 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by eekd49 with SMTP id d49so18003362eek.35
	for <poky@yoctoproject.org>; Wed, 04 Jan 2012 05:33:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=s2bvvUIg+FTCJMWsMRMe0hqSvzZ/i5XndLqU2qNnksw=;
	b=GVWTdpLf/D/w/cGDaKlwMuUwdm38JszaAlvw+ixQMuVSgJU0IwLGuyyHsb0EClbqi7
	37Y+AzIrxEp4muulQjuRFNExQZfq/TsXoLSS3GegjUwEmEZbHgSdmjQ5eaJZ5mhi7W/B
	EqlEiPJds43F0Lj2c9r0PYaxzqNe02dbx0xm4=
Received: by 10.14.11.199 with SMTP id 47mr22708268eex.12.1325683980536;
	Wed, 04 Jan 2012 05:33:00 -0800 (PST)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id 76sm219651443eeh.0.2012.01.04.05.32.58
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 04 Jan 2012 05:32:59 -0800 (PST)
Date: Wed, 4 Jan 2012 14:32:57 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20120104133257.GD6485@jama.jama.net>
References: <4F035C93.2020602@mlbassoc.com>
	<20120104061238.GM31275@sakrah.homelinux.org>
	<4F043F16.7000507@mlbassoc.com> <4F045069.1050308@mlbassoc.com>
	<20120104131820.GC6485@jama.jama.net>
	<4F0453CC.7060707@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <4F0453CC.7060707@mlbassoc.com>
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
X-List-Received-Date: Wed, 04 Jan 2012 13:33:02 -0000
X-Groupsio-MsgNum: 7323
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ZARJHfwaSJQLOEUz"
Content-Disposition: inline

--ZARJHfwaSJQLOEUz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 04, 2012 at 06:27:40AM -0700, Gary Thomas wrote:
> On 2012-01-04 06:18, Martin Jansa wrote:
> > On Wed, Jan 04, 2012 at 06:13:13AM -0700, Gary Thomas wrote:
> >> On 2012-01-04 04:59, Gary Thomas wrote:
> >>> On 2012-01-03 23:12, Khem Raj wrote:
> >>>> On (03/01/12 12:52), Gary Thomas wrote:
> >>>>> Using today's master:
> >>>>> OE Build Configuration:
> >>>>> BB_VERSION =3D "1.15.0"
> >>>>> TARGET_ARCH =3D "arm"
> >>>>> TARGET_OS =3D "linux-gnueabi"
> >>>>> MACHINE =3D "beagleboard"
> >>>>> DISTRO =3D "poky"
> >>>>> DISTRO_VERSION =3D "1.1+snapshot-20120103"
> >>>>> TUNE_FEATURES =3D "armv7a vfp neon cortexa8"
> >>>>> TARGET_FPU =3D "vfp-neon"
> >>>>> meta
> >>>>> meta-yocto =3D "master:f3a1a8897c78e116d7d28947a85687d0ce9d7df7"
> >>>>>
> >>>>> Build of webkit-gtk fails:
> >>>>>
> >>>>> Logfile attached.
> >>>>>
> >>>>> checking for glib-compile-schemas... /home/local/bb_test2/tmp/sysro=
ots/i686-linux/usr/bin/glib-compile-schemas
> >>>>> checking which Unicode backend to use... icu
> >>>>> checking for icu-config... /home/local/bb_test2/tmp/sysroots/beagle=
board/usr/bin/crossscripts/icu-config
> >>>>> checking for ZLIB... yes
> >>>>> checking for LIBXML... yes
> >>>>> checking for PANGO... yes
> >>>>> checking whether to enable spellcheck support... yes
> >>>>> checking for ENCHANT... yes
> >>>>> checking for GAIL... yes
> >>>>> checking for CAIRO... yes
> >>>>> checking for GTK... yes
> >>>>> checking for XT... yes
> >>>>> checking whether to do a debug build... no
> >>>>> checking whether to enable optimized builds... yes
> >>>>> checking whether to enable support for 3D Rendering... no
> >>>>> checking whether to enable WebGL support... yes
> >>>>> checking GL/gl.h usability... no
> >>>>> checking GL/gl.h presence... no
> >>>>> checking for GL/gl.h... no
> >>>>> configure: error: OpenGL header not found
> >>>>> ERROR: oe_runconf failed
> >>>>
> >>>> may be add "virtual/libgl" to DEPENDS ?
> >>>
> >>> Has something changed? This used to build just fine...
> >>>
> >>
> >> Note: it does build now with this additional dependency.
> >> Perhaps someone has an idea how this broke?  Adding this dependency
> >> seems like quite a large hammer to use.
> >
> > Have you tried to read log in upstream repo, maybe this version is first
> > to support WebGL or it was changed to be enabled by default
>=20
> It seems that this was changed with the most recent recipe update
> in yocto rev (663c893b084333ea9703079a9b056d74ffa5e2a3) which explicitly
> added '--enable-webkit2'
>=20
> >>>>> checking whether to enable WebGL support... yes
> > and that's why now it needs libgl and nobody noticed because most people
> > have libgl already because of xserver.
>=20
> Too bad that doesn't seem to be the case in Yocto - this failure is for
> the off-the-shelf beagleboard support.

I wasn't saying that assuming that libgl was already built is fine,
actually adding virtual/libgl dependency doesn't look like large hammer=20
to use, but proper fix.

Cheers,

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--ZARJHfwaSJQLOEUz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.18 (GNU/Linux)

iEYEARECAAYFAk8EVQkACgkQN1Ujt2V2gByaOACfabYBHnrlDkMcRAr2YDEPsZyy
DPkAoK8aJt00eqgmwTB8EAoTtPWzmdXf
=ued7
-----END PGP SIGNATURE-----

--ZARJHfwaSJQLOEUz--
