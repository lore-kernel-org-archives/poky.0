Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f49.google.com (mail-ee0-f49.google.com [74.125.83.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50C44E0044A;
	Sat, 28 Dec 2013 00:31:58 -0800 (PST)
Received: by mail-ee0-f49.google.com with SMTP id c41so4281022eek.22
	for <multiple recipients>; Sat, 28 Dec 2013 00:31:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=7IQXwwvtf/PV5+yqCI3pZqaKpq22UPhvNm23o2LYUKY=;
	b=X2ODAhDfNIEehvLJGwAVqi25lKkn8q75H+V4d9I8aSacet1PB1ym0hII6FIXGjUrjB
	APExuIqHrdGU4rSchbHdBT8Q2J9lHMf0/wChG+Dj8lamhQFgOLRKygXnhxeFaBG3ZCdN
	9ldRlTNiaR3f5OiTf8bV+02WP4mAwYKAbPZ7BQn4ABJcnKs8pw8hqG8c9gAycdpi3Bhz
	zSeu1/JAH7WiPEX0soCw9ITziVn40Yq9wV/vkyqRerSYatnz77QwGuNUykglvR1nxr2E
	xQsTNP7Kz+2Gna33WLP6aoLoSLNB+87aYSq1XCirrqm6IYIY+Cwa8njwXhPZLIQwcoiW
	n9Qw==
X-Received: by 10.14.220.136 with SMTP id o8mr1285909eep.97.1388219517190;
	Sat, 28 Dec 2013 00:31:57 -0800 (PST)
Received: from localhost (ip-89-176-104-107.net.upcbroadband.cz.
	[89.176.104.107])
	by mx.google.com with ESMTPSA id g7sm88697856eet.12.2013.12.28.00.31.55
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 28 Dec 2013 00:31:56 -0800 (PST)
Date: Sat, 28 Dec 2013 09:32:38 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Alexandre Belloni <alexandre.belloni@free-electrons.com>
Message-ID: <20131228083238.GY3706@jama>
References: <52BDEFA3.2090106@free-electrons.com>
MIME-Version: 1.0
In-Reply-To: <52BDEFA3.2090106@free-electrons.com>
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
X-List-Received-Date: Sat, 28 Dec 2013 08:31:59 -0000
X-Groupsio-MsgNum: 9366
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="FWV58dOTQOM6W93I"
Content-Disposition: inline

--FWV58dOTQOM6W93I
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 27, 2013 at 10:22:43PM +0100, Alexandre Belloni wrote:
> Hi,
>=20
> When using core-image-sato (latest dora), I encountered again an issue
> that I once solved by hacking around it. It has the following symptoms:
>  - touchscreen calibration doesn't start the first time the board is boo=
ted

see
http://git.openembedded.org/meta-openembedded/commit/?id=3D98bfe33760acb74=
b67eba9d58ea7cac8cad6d810

I'll backport it to dora

>  - matchbox-keyboard doesn't come up when touching the keyboard icon in
> the panel
>  - matchbox-panel is ugly (compare
> http://www.ossystems.com.br/images/blog/boards/boundarydevices-nitrogen6=
x-hdmi-screenshot-fsl-image-gui.jpg
> with http://free-electrons.com/~alexandre/matchbox-panel.jpg)
>=20
> This time, I decided to investigate that issue a bit more. Here is what
> I found:
> The cause is the /etc/X11/Xsession script which at some point does:
> =3D=3D
>=20
> What is really happening is that xserver-nodm-init is provided both by
> poky/meta/recipes-graphics/x11-common/xserver-nodm-init.bb and
> meta-openembedded/meta-oe/recipes-graphics/xserver-nodm-init/xserver-nod=
m-init_2.0.bb
>=20
> layer                 path                                      priority
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
> meta                  /home/alex/fsl/sources/poky/meta  5
> meta-yocto            /home/alex/fsl/sources/poky/meta-yocto  5
> meta-oe               /home/alex/fsl/sources/meta-openembedded/meta-oe  =
6
>=20
> The meta-oe one is selected ! That one can't actually work with the
> current
> poky/meta/recipes-sato/matchbox-keyboard/matchbox-keyboard_git.bb recipe
> because of the "ls -X" sorting and it doesn't know how to handle shbg
> files this will hang trying to use 80matchboxkeyboard.shbg
>=20
> So my next step was to remove the meta-oe layer (or simply mask
> /meta-openembedded/meta-oe/recipes-graphics/). The final result is
> better but touch screen calibration (xtscal instead of
> xinput-calibrator) fails with:
> XCALIBRATE extension missing: Resource temporarily unavailable
> XCALIBRATE extension missing: Resource temporarily unavailable
> XCALIBRATE extension missing: Resource temporarily unavailable
>=20
>=20
> So, questions:
>  - How do we solve that cleanly ?
>  - Why doesn't xserver-common conflicts with x11-common despite
> RCONFLICTS_${PN} =3D "xserver-kdrive-common x11-common" ?
>  - Shouldn't we stop using xtscal and use xinput-calibrator instead ?
>  - Should we update the Xsession script from the poky recipes and stop
> using x11-common ?
>=20
> On my side, what I do is masking
> /meta-openembedded/meta-oe/recipes-graphics/ and replacing xtscal by
> xinput-calibrator as a dependency of x11-common but I believe we can do
> better.
>=20
> --=20
> Alexandre Belloni, Free Electrons
> Embedded Linux, Kernel and Android engineering
> http://free-electrons.com
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--FWV58dOTQOM6W93I
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEARECAAYFAlK+jKYACgkQN1Ujt2V2gByUdwCgkUAbrIYYY9iCflb1m+D8xKZO
FeAAn1BGJb418PwHNbvSEtvoyyda1nGJ
=2eqQ
-----END PGP SIGNATURE-----

--FWV58dOTQOM6W93I--
