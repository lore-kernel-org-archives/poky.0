Return-Path: <martin.jansa@gmail.com>
Received: from mail-ea0-f180.google.com (mail-ea0-f180.google.com
	[209.85.215.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60C3FE006CA;
	Sat, 28 Dec 2013 03:27:59 -0800 (PST)
Received: by mail-ea0-f180.google.com with SMTP id f15so4379912eak.11
	for <multiple recipients>; Sat, 28 Dec 2013 03:27:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=KylniaTtq0UGW+PJ8ddAfSp3rE1zycTNdFU+poCBkks=;
	b=GBPmAcW2IRlWQxpyjFMDMRTcN5jyJZ3u1k+ROLzlaWMVjVLaI3LIV6PPrSxqpZWkgW
	qBteQUueMOEVWnC86c006VZcLmx6jPjuxamkiZ+YCakFfi8n7S4QbH8dyKAb3niTjrlw
	joTMGjAWVeNCdVcCZnMDDat6w7i7ll38mhGkBGHrcAsD60oPzujmQMnCcQjNQ43s8tgA
	7dCSKjGOytXVA45Q8tekN2KDi7lKj+rNJFP7JxpnrWxHkGC6wtdIMO3lD2KWM8ve/j2m
	qxSWhJRV4aCwzScA7Y9rV3uOpK9AK8VWXR1MXuDfcSHN+8CDTSrzFZnGtTPfQiWTJkUC
	6XUw==
X-Received: by 10.15.82.8 with SMTP id z8mr46878255eey.25.1388230078247;
	Sat, 28 Dec 2013 03:27:58 -0800 (PST)
Received: from localhost (ip-89-176-104-107.net.upcbroadband.cz.
	[89.176.104.107])
	by mx.google.com with ESMTPSA id l4sm89870655een.13.2013.12.28.03.27.56
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 28 Dec 2013 03:27:57 -0800 (PST)
Date: Sat, 28 Dec 2013 12:28:39 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Alexandre Belloni <alexandre.belloni@free-electrons.com>
Message-ID: <20131228112839.GZ3706@jama>
References: <52BDEFA3.2090106@free-electrons.com> <20131228083238.GY3706@jama>
	<52BEA5BE.2020107@free-electrons.com>
MIME-Version: 1.0
In-Reply-To: <52BEA5BE.2020107@free-electrons.com>
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	poky@yoctoproject.org
Subject: Re: X11 incompatibilities using meta-oe with poky
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
X-List-Received-Date: Sat, 28 Dec 2013 11:28:00 -0000
X-Groupsio-MsgNum: 9368
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="mfP1iJBimQeSOP+4"
Content-Disposition: inline

--mfP1iJBimQeSOP+4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Dec 28, 2013 at 11:19:42AM +0100, Alexandre Belloni wrote:
>=20
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>=20
> Hi Martin,
>=20
> On 28/12/2013 09:32, Martin Jansa wrote:
> > On Fri, Dec 27, 2013 at 10:22:43PM +0100, Alexandre Belloni wrote:
> >> Hi,
> >>
> >> When using core-image-sato (latest dora), I encountered again an issu=
e
> >> that I once solved by hacking around it. It has the following symptom=
s:
> >>  - touchscreen calibration doesn't start the first time the board is
> booted
> >
> > see
> >
> http://git.openembedded.org/meta-openembedded/commit/?id=3D98bfe33760acb=
74b67eba9d58ea7cac8cad6d810
> >
> > I'll backport it to dora
>=20
> That won't be enough, if you backport that to dora, the target will
> simply hang when executing 80matchboxkeyboard.shbg as it will wait
> forever. The file extensions have a special meaning in the Xsession
> script coming from x11-common.

I'm not using matchbox and I'm using only xserver-common, this fix is to
start xinput-calibrator in correct location.

You can get rid of x11-common by setting:
VIRTUAL-RUNTIME_xserver_common =3D "xserver-common"

> That's why I'm suggesting migrating all the poky recipes to the
> xserver-common style and use xserver-common instead of x11-common. I
> don't have the history but it seems that x11-common is quite outdated
> ( I'm getting that feeling from the xtscal dependency). Do we still want
> to support kdrive ? Also, something is clearly wrong as
> xserver-common_1.34.bb has:
> RCONFLICTS_${PN} =3D "xserver-kdrive-common x11-common"
> And both x11-common and xserver-common get installed.
>=20
> >
> >
> >>  - matchbox-keyboard doesn't come up when touching the keyboard icon =
in
> >> the panel
> >>  - matchbox-panel is ugly (compare
> >>
> http://www.ossystems.com.br/images/blog/boards/boundarydevices-nitrogen6=
x-hdmi-screenshot-fsl-image-gui.jpg
> >> with http://free-electrons.com/~alexandre/matchbox-panel.jpg)
> >>
> >> This time, I decided to investigate that issue a bit more. Here is wh=
at
> >> I found:
> >> The cause is the /etc/X11/Xsession script which at some point does:
> >> =3D=3D
> >>
> >> What is really happening is that xserver-nodm-init is provided both b=
y
> >> poky/meta/recipes-graphics/x11-common/xserver-nodm-init.bb and
> >>
> meta-openembedded/meta-oe/recipes-graphics/xserver-nodm-init/xserver-nod=
m-init_2.0.bb
> >>
> >> layer                 path                                      prior=
ity
> >>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
> >> meta                  /home/alex/fsl/sources/poky/meta  5
> >> meta-yocto            /home/alex/fsl/sources/poky/meta-yocto  5
> >> meta-oe               /home/alex/fsl/sources/meta-openembedded/meta-o=
e  6
> >>
> >> The meta-oe one is selected ! That one can't actually work with the
> >> current
> >> poky/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_git.bb rec=
ipe
> >> because of the "ls -X" sorting and it doesn't know how to handle shbg
> >> files this will hang trying to use 80matchboxkeyboard.shbg
> >>
> >> So my next step was to remove the meta-oe layer (or simply mask
> >> /meta-openembedded/meta-oe/recipes-graphics/). The final result is
> >> better but touch screen calibration (xtscal instead of
> >> xinput-calibrator) fails with:
> >> XCALIBRATE extension missing: Resource temporarily unavailable
> >> XCALIBRATE extension missing: Resource temporarily unavailable
> >> XCALIBRATE extension missing: Resource temporarily unavailable
> >>
> >>
> >> So, questions:
> >>  - How do we solve that cleanly ?
> >>  - Why doesn't xserver-common conflicts with x11-common despite
> >> RCONFLICTS_${PN} =3D "xserver-kdrive-common x11-common" ?
> >>  - Shouldn't we stop using xtscal and use xinput-calibrator instead ?
> >>  - Should we update the Xsession script from the poky recipes and sto=
p
> >> using x11-common ?
> >>
> >> On my side, what I do is masking
> >> /meta-openembedded/meta-oe/recipes-graphics/ and replacing xtscal by
> >> xinput-calibrator as a dependency of x11-common but I believe we can =
do
> >> better.
> >>
> >> --
> >> Alexandre Belloni, Free Electrons
> >> Embedded Linux, Kernel and Android engineering
> >> http://free-electrons.com
> >>
> >> _______________________________________________
> >> poky mailing list
> >> poky@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/poky
> >
>=20
>=20
> - --=20
> Alexandre Belloni, Free Electrons
> Embedded Linux, Kernel and Android engineering
> http://free-electrons.com
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1.4.14 (GNU/Linux)
>=20
> iQIcBAEBCAAGBQJSvqW9AAoJEKbNnwlvZCyzPHIQAMoQfqBZbk8xW5V+craTyEAR
> ViIXkcxjk5P5g8lKsiy9ZqHlimwvIAx3QBZCXXAIagXy5O75oHH7NriGyqVOI9UO
> 17s1n3w/JesP3zaF2dedGrTj6AX+tvI3P6LNElulQ7DlDoZJJ1RXTqhMNJI8SR2B
> BH35DJ9e7S+0yby5AIrCxnf4UGGDBzhngRfSwL6iVOPQR+WEWoEwgooo+TwDIhCl
> adE+zCTMOuw8eGZvW82TQLcxI/qjaWy7KhmVwdDdMw9O/KoSF2HeVpmYT8j2CbbL
> mTPjZYYYZMtja0crq9DsbtojEu4iNtXGg38ff9qx3Wp6sOD9WAYy+3SVquwzB6Nw
> f25BNkOoLQBuyibsg0yCdNInahWZn3W4GQe9PS0qj9bx0DReI7yXvyONsSBksJWK
> rQV43bKiOPKTUVck1Axi5k0MeTiZGr0MoJOByLq8MPTF7zeXT7/nBhKgnrznq5Ar
> PcfMjye3hD4jDdG4z1bLbWzoVTlTuxQ0QNMdx1uk4Ss1mcjLSgufRcSKr1JLv7i/
> DepCVg4ea9Ic5tANoSIkUGOFgAnEWGgb0Mr4sunkdY20t7JaoHdaRD7zRpUjqEXm
> zPMpZd+7pkuPK9w9lW+qOP656ubu75B/MhCXuAKQQFh8DV//WA9wFE8eIqDK/kbd
> keJtxwKqBib8i29JXZyR
> =3DgcbW
> -----END PGP SIGNATURE-----
>=20

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--mfP1iJBimQeSOP+4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEARECAAYFAlK+tecACgkQN1Ujt2V2gBy2tQCgp6OQKLzhFs08xLtkI3Y979Hl
4IYAni93XhSFWe4ZxeW4A1uZfpzQpOyQ
=Kbwr
-----END PGP SIGNATURE-----

--mfP1iJBimQeSOP+4--
