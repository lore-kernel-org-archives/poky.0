Return-Path: <alexandre.belloni@free-electrons.com>
Received: from mail.free-electrons.com (top.free-electrons.com [176.31.233.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 225C8E007C6;
	Sat, 28 Dec 2013 05:00:20 -0800 (PST)
Received: by mail.free-electrons.com (Postfix, from userid 106)
	id C62D38A2; Sat, 28 Dec 2013 14:00:32 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	mail.free-electrons.com
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT,
	URIBL_BLOCKED shortcircuit=ham autolearn=disabled version=3.3.2
Received: from [192.168.1.28] (AReims-652-1-238-43.w83-198.abo.wanadoo.fr
	[83.198.181.43])
	by mail.free-electrons.com (Postfix) with ESMTPSA id 359A07D9;
	Sat, 28 Dec 2013 14:00:32 +0100 (CET)
Message-ID: <52BECB61.9010401@free-electrons.com>
Date: Sat, 28 Dec 2013 14:00:17 +0100
From: Alexandre Belloni <alexandre.belloni@free-electrons.com>
Organization: Free Electrons
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: Martin Jansa <martin.jansa@gmail.com>
References: <52BDEFA3.2090106@free-electrons.com> <20131228083238.GY3706@jama>
	<52BEA5BE.2020107@free-electrons.com> <20131228112839.GZ3706@jama>
	<52BEB963.2030901@free-electrons.com> <20131228120750.GA3706@jama>
In-Reply-To: <20131228120750.GA3706@jama>
X-Enigmail-Version: 1.5.2
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
X-List-Received-Date: Sat, 28 Dec 2013 13:00:26 -0000
X-Groupsio-MsgNum: 9373
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="07BEBHahSwGBwUGvw6vI0ufPQirKlr6v2"

--07BEBHahSwGBwUGvw6vI0ufPQirKlr6v2
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 28/12/2013 13:07, Martin Jansa wrote:
> It fixes xinput-calibrator which was broken by xinput-calibrator move
> from meta-oe to oe-core
>=20
> See
> http://trac.shr-project.org/trac/ticket/2101
> for more details.
>=20
> Yes I've renamed all Xsession scripts I have in my images because of
> this.
>=20
> For x11-common, xserver-common merge see
> http://lists.openembedded.org/pipermail/openembedded-core/2013-February=
/075336.html
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5546

Right, thanks for those pointers !

--=20
Alexandre Belloni, Free Electrons
Embedded Linux, Kernel and Android engineering
http://free-electrons.com


--07BEBHahSwGBwUGvw6vI0ufPQirKlr6v2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (GNU/Linux)

iQIcBAEBCAAGBQJSvsthAAoJEKbNnwlvZCyzm9AP/il7ShXD19g3nv6QkUUPSsUQ
oNxjiYf2/9tzUURprXdzlw1JI3pNDeuXHShS7TOVCkn4wXigfycGG1OltqlSvIMa
J9Ut1pty0MjCHXUultWjrRr/LMGbRkgIFisMmsPmGkShpNbRjQMueiyaUacEgcU4
KAIFGNGxQ074iofa0/tHQTy7nMjq49GqjQD5QgxbkXecgJ3YW8NHpQ1pxCtTNIqA
bTR9vV13q6fgfFC7jEkdkugD6Uc7nf0MfYbRSwxM6sEd/NYYKOQouEzlL2eyBxRT
6M5GHE6FgB57TUeQ1iNtpgeFmuY1usPUdpE96XfXSyNQTOvV/MBXkrLLeezmnPa9
HTsI6OWzwb9uDP61G7fi6T0e2ad7cNeUsY1U/toO/MK7mA4kHKH0rdlULO1vdO5m
5qEChHPkmrKy2/7TuQ4tfSlmWKgCd7ngzg3VUlYluBFKPi2gxuEz6MxBn/s6BlfR
5iJz9+Yv6iWJEZ+iuWRf5foZcLBDiHUm8OGRi8K0E4Y+D191rAH3SC2FCV6IZwOY
SHJnz83xUNz1ya+QIoSyMjAJogSt9H1EBs3W42H3zfmQJQs146PI6yHOMkHgDy9O
OTl1Abx6llLtRhln9j0u/Oc/hw0G6XwLRX/bWK6MRiRX2x8X4joeza+tadBXOU/C
2l/rH8bnLt+Ahmv98Dz9
=dRjQ
-----END PGP SIGNATURE-----

--07BEBHahSwGBwUGvw6vI0ufPQirKlr6v2--
