Return-Path: <martin.jansa@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1B25E01426
	for <poky@yoctoproject.org>; Thu, 21 Jun 2012 22:39:08 -0700 (PDT)
Received: by weyr3 with SMTP id r3so1151625wey.35
	for <poky@yoctoproject.org>; Thu, 21 Jun 2012 22:39:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=/pxTauH3xxcpVxIHmVMObBUfikhJ0QHMj1OsWCeXxZ0=;
	b=MTK0TONLPzhHnXYugFSXeAxaIkiez2O5/cvcWg8gqpmeTM6nNIvOzBGOI6KnHvfl+9
	I89+hgxzeWw2U4ub/zwPo+wLmAwKDF5KaUvKkntuFIGMsLU72r+ORaipeBHm8b/7eo5g
	c5oP+Om+e4OW0g1wMGkp4ktnONFazC1mJxcjWmnUucAVfpriGnDdy3jGRiN/2PLfeTyT
	8QGP2Tckkvv6wtb2ss9u5Vxb2XoCN0UDPNUiMCbFQt3TmqgrYqJeCy3YT2xjsIuCjYKy
	mojqa9tAaCccgq2OFEMoi2jLzMmcJqiu3QF9pyEVT2/U/QYU43CMCp3U+p51YQAMqAYX
	qgmA==
Received: by 10.216.145.13 with SMTP id o13mr429773wej.95.1340343546973;
	Thu, 21 Jun 2012 22:39:06 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id eb8sm50123952wib.11.2012.06.21.22.39.04
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 21 Jun 2012 22:39:05 -0700 (PDT)
Date: Fri, 22 Jun 2012 07:39:05 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Message-ID: <20120622053904.GJ9352@jama.jama.net>
References: <cover.1340038493.git.scott.a.garman@intel.com>
	<3a231c484aaa511b95f9232d000b1190327b4626.1340038494.git.scott.a.garman@intel.com>
	<CAMKF1sp4KvDtK68NQNtOhSmCF6WK738Yr9cXOA0ntkHJ9wpYUQ@mail.gmail.com>
	<CAK18fxEp=CsaCPXBocP3PCb9dnxBTR_jb_Qv+oUSKn6qwM7acQ@mail.gmail.com>
	<CAK18fxGm5_7xMHpOOUpWWjkAaq33hN-fqeJwrFDDvB5XgekmYA@mail.gmail.com>
	<20120621211416.GI9352@jama.jama.net>
	<CAK18fxHhSDnqyqbfnwKYLZJJf7z_m9Zt47e+zpkPgot-eYppzg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAK18fxHhSDnqyqbfnwKYLZJJf7z_m9Zt47e+zpkPgot-eYppzg@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 4/8] sanity.bbclass: warn the user if BBPATH contains wrong entries
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
X-List-Received-Date: Fri, 22 Jun 2012 05:39:09 -0000
X-Groupsio-MsgNum: 7931
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="mFHiwr52TKrxpkjc"
Content-Disposition: inline

--mFHiwr52TKrxpkjc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 22, 2012 at 12:24:05AM +0300, Andrei Gherzan wrote:
> On Fri, Jun 22, 2012 at 12:14 AM, Martin Jansa <martin.jansa@gmail.com>wr=
ote:
>=20
> > On Fri, Jun 22, 2012 at 12:00:09AM +0300, Andrei Gherzan wrote:
> > > In a qemumips build with master poky:
> > >
> > > WARNING: BBPATH references the current directory, either through an e=
mpty
> > > entry, or a '.'.
> > >  This is unsafe and means your layer configuration is adding empty
> > elements
> > > to BBPATH.
> > >  Please check your layer.conf files and other BBPATH settings to remo=
ve
> > the
> > > current working directory references.
> > >
> > > And this is because BBPATH contains:
> > >
> > /home/agherzan/work/personal/yocto/poky-contrib/meta-yocto::/home/agher=
zan/work/personal/yocto/poky-contrib/meta
> > >
> > > Well it's strange that:
> > > meta: BBPATH .=3D ":${LAYERDIR}"
> > > meta-yocto: BBPATH :=3D "${LAYERDIR}:${BBPATH}"
> > >
> > > This explains the way BBPATH above ended
> > > like:
> > /home/agherzan/work/personal/yocto/poky-contrib/meta-yocto::/home/agher=
zan/work/personal/yocto/poky-contrib/meta
> > >
> > > Why don't we assign BBPATH as this in meta:
> > > BBPATH .=3D "${LAYERDIR}"
> > >
> > > And then in all other layers use: meta-yocto: BBPATH :=3D
> > > "${LAYERDIR}:${BBPATH}". In this way the variable would be correctly
> > > generated.
> >
> > IMHO it's better to change meta-yocto/conf/layer to
> > BBPATH .=3D ":${LAYERDIR}"
> > so the BBPATH order is the same as order of layers in bblayers.conf
> >
> > This wouldn't fix it. As BBPATH would still have an empty value: the fi=
rst
> -> ":bla:bla"

Yes, this alone won't fix it for everybody, but will allow you to define
such order of BBPATH appends, so that if you start with non-empty value
then it will work fine.

For example my setup has TOPDIR as first item in BBPATH:

bblayers.conf:
BBPATH ?=3D "${TOPDIR}"

BBFILES ?=3D ""

# Add your overlay location to BBLAYERS
# Make sure to have a conf/layers.conf in there
BBLAYERS =3D " \
  ${TOPDIR}/meta-jama \
  ${TOPDIR}/meta-smartphone/meta-shr \
  ${TOPDIR}/meta-smartphone/meta-aurora \
  ${TOPDIR}/meta-smartphone/meta-fso \
  ${TOPDIR}/meta-openembedded/meta-oe \
  ${TOPDIR}/meta-openembedded/toolchain-layer \
  ${TOPDIR}/meta-openembedded/meta-efl \
  ${TOPDIR}/meta-openembedded/meta-gnome \
  ${TOPDIR}/meta-openembedded/meta-gpe \
  ${TOPDIR}/meta-openembedded/meta-initramfs \
  ${TOPDIR}/meta-openembedded/meta-systemd \
  ${TOPDIR}/meta-smartphone/meta-osmocombb \
  ${TOPDIR}/meta-smartphone/meta-nokia \
  ${TOPDIR}/meta-smartphone/meta-htc \
  ${TOPDIR}/meta-smartphone/meta-palm \
  ${TOPDIR}/meta-smartphone/meta-openmoko \
  ${TOPDIR}/meta-smartphone/meta-samsung \
  ${TOPDIR}/meta-handheld \
  ${TOPDIR}/meta-browser \
  ${TOPDIR}/openembedded-core/meta \
"

and resulting BBPATH respects that correctly
bitbake -e | grep ^BBPATH | sed 's/:/:^M/g'
BBPATH=3D"/OE/shr-core:
/OE/shr-core/meta-jama:
/OE/shr-core/meta-smartphone/meta-shr:
/OE/shr-core/meta-smartphone/meta-aurora:
/OE/shr-core/meta-smartphone/meta-fso:
/OE/shr-core/meta-openembedded/meta-oe:
/OE/shr-core/meta-openembedded/toolchain-layer:
/OE/shr-core/meta-openembedded/meta-efl:
/OE/shr-core/meta-openembedded/meta-gnome:
/OE/shr-core/meta-openembedded/meta-gpe:
/OE/shr-core/meta-openembedded/meta-initramfs:
/OE/shr-core/meta-openembedded/meta-systemd:
/OE/shr-core/meta-smartphone/meta-osmocombb:
/OE/shr-core/meta-smartphone/meta-nokia:
/OE/shr-core/meta-smartphone/meta-htc:
/OE/shr-core/meta-smartphone/meta-palm:
/OE/shr-core/meta-smartphone/meta-openmoko:
/OE/shr-core/meta-smartphone/meta-samsung:
/OE/shr-core/meta-handheld:
/OE/shr-core/meta-browser:
/OE/shr-core/openembedded-core/meta"

see https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1465 for few more
details and reason why this BBPATH check started.

Cheers,

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--mFHiwr52TKrxpkjc
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAk/kBPgACgkQN1Ujt2V2gBz9dgCgif4z67Q90e0frzRo1PmzIiCl
m/QAniAbO/azOcodjBLVSFJ7y834qydL
=Kvps
-----END PGP SIGNATURE-----

--mFHiwr52TKrxpkjc--
