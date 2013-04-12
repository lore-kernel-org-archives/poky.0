Return-Path: <martin.jansa@gmail.com>
Received: from mail-pd0-f174.google.com (mail-pd0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55BDBE014E3
	for <poky@yoctoproject.org>; Fri, 12 Apr 2013 12:42:37 -0700 (PDT)
Received: by mail-pd0-f174.google.com with SMTP id p12so1568654pdj.5
	for <poky@yoctoproject.org>; Fri, 12 Apr 2013 12:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=uG7RvJeJbJIT7QjNrRfPDLD8uOcXd9YSj5002B4HHOA=;
	b=fKE5PHFKAyioN3VebEGccu8HOYJVguxxMsOrrScUdked6ALrmkn3BF2shRaN4pn8YP
	c4Fxyczs2R7VFoZgGtVAUyWlpP6EpK50OEoqWomd7qgCXIM5yuXWRJRM9KTbFB0JhoyD
	8eEEknAzBe65L345kJwyG28nk0JJ1G9G8yb4B8WpjFeb9KMHeYal6bzpZXIlypnW7IxY
	3kN8sGomYYbRN1JxE/mXiZFl8MJm/3BcRCXCIUSh01Z4tF0nXD8DiX6VZ/Bke326RmnR
	JrwipDRCR8mf+ZMuopzDVs9NthH1IrTS6XCUtMCbAYZKAMNjYLZo/w4ocwfXYdHR8WuA
	v2lw==
X-Received: by 10.68.65.165 with SMTP id y5mr6886304pbs.52.1365795756777;
	Fri, 12 Apr 2013 12:42:36 -0700 (PDT)
Received: from localhost (ip-62-24-80-7.net.upcbroadband.cz. [62.24.80.7])
	by mx.google.com with ESMTPS id t16sm9658808pbs.32.2013.04.12.12.42.33
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Fri, 12 Apr 2013 12:42:35 -0700 (PDT)
Date: Fri, 12 Apr 2013 21:42:29 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Denys Dmytriyenko <denis@denix.org>
Message-ID: <20130412194229.GU2477@jama>
References: <CAHUNapT4owKXJY_wBmRfwkn_56DTSO6hZsuGemES_YG6aFA2RQ@mail.gmail.com>
	<20130412193116.GA3757@denix.org>
MIME-Version: 1.0
In-Reply-To: <20130412193116.GA3757@denix.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: poky@yoctoproject.org
Subject: Re: poky and OpenEmbedded (post-release)
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
X-List-Received-Date: Fri, 12 Apr 2013 19:42:37 -0000
X-Groupsio-MsgNum: 8856
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ZUxj+kVYsk1YKJSS"
Content-Disposition: inline

--ZUxj+kVYsk1YKJSS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 12, 2013 at 03:31:16PM -0400, Denys Dmytriyenko wrote:
> On Fri, Apr 12, 2013 at 03:07:00PM -0400, Trevor Woerner wrote:
> > Many thanks to Denys for pointing me to
> > http://openembedded.org/wiki/OpenEmbedded-Core. You won't believe how
> > I've poured over that page and how many "lights have gone on" while
> > reading it (over and over).
> >=20
> > If poky started as a fork of OE but is now a distribution, wouldn't it
> > make sense to remove the "meta" directory from poky and simply have
> > people add openembedded-core as a layer (as they would any other
> > layer)?
>=20
> I believe that was suggested few times before (and other distros are doin=
g=20
> exactly that - i.e. assembling their distros from layers), but Poky devel=
opers=20
> prefer their distro to be already pre-assembled for ease of use. Besides=
=20
> openembedded-core layer, there're also bitbake and meta-yocto inside Poky=
=2E It=20
> maybe confusing at first, but think of it as being pre-assembled from bit=
bake+
> oe-core + meta-yocto and saved into a single repository.
>=20
> Well, at least it saves Poky from needing to provide setup tools to downl=
oad=20
> and assemble different layers from different repositories. Otherwise you =
would=20
> need something like our oe-layersetup[1] tool for Arago or setup-scripts =
for=20
> Angstrom etc.

But on the other hand they wouldn't need to send slightly different
(path prefix) patchsets for poky and for oe-core/bitbake/meta-yocto.

> [1] git://arago-project.org/git/projects/oe-layersetup.git
>=20
> --=20
> Denys
>=20
> > Or am I going down the wrong path with this thought?
> >=20
> > Of course it might be confusing having, potentially, both an
> > openembedded-core and a meta-openembedded layer, but it seems like
> > having the "meta" directory in poky is redundant, given that it is
> > already its own layer in openembedded-core.
> >=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--ZUxj+kVYsk1YKJSS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlFoY6UACgkQN1Ujt2V2gBykdACZATs8uZWzlUwlA3SzxMuGIdqS
rU4AnAn5vuss5DphnPzUs3O2QHeMDcWE
=w8nH
-----END PGP SIGNATURE-----

--ZUxj+kVYsk1YKJSS--
