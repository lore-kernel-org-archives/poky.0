Return-Path: <martin.jansa@gmail.com>
Received: from mail-ea0-f181.google.com (mail-ea0-f181.google.com
	[209.85.215.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C15D0E00746;
	Sat, 28 Dec 2013 04:07:10 -0800 (PST)
Received: by mail-ea0-f181.google.com with SMTP id m10so4420751eaj.12
	for <multiple recipients>; Sat, 28 Dec 2013 04:07:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=EkZt8IRmsyomUm11Hr7fNtwLziN08y10Mlr4bCBOicU=;
	b=Qpl4Nd1JZI4fatXrwARd0uVJsdgg1pssu2IZL5+OlDcZnLzKf/7tVfV40sw9FC4F1t
	b0595I8/WuzPmXP+JObA3qer2YISGgo7uz5milq0di5latlkNiyRF9HA1XevrGx0SGCN
	5IjnUnrvtO4lqn1bWcmKeHhUn9EYGpadyseDS57gh7zKe2pHQOsxNPLpdqyobW/9r3nv
	0rwpXgBbfspZCGwlRzBxFKHd53Vqro2xaRyKqBWQWAs4/Xf/hbD/w66PQe+2dlaYqFmi
	bcpC/s/kEhduSAIpLjVqRkYDzR0js6ZA04YGLSO4bCedHhic2ucG38yU04VuAzeQG9hz
	PSuA==
X-Received: by 10.14.223.198 with SMTP id v46mr46219449eep.20.1388232429037;
	Sat, 28 Dec 2013 04:07:09 -0800 (PST)
Received: from localhost (ip-89-176-104-107.net.upcbroadband.cz.
	[89.176.104.107])
	by mx.google.com with ESMTPSA id o1sm90144293eea.10.2013.12.28.04.07.07
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 28 Dec 2013 04:07:08 -0800 (PST)
Date: Sat, 28 Dec 2013 13:07:50 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Alexandre Belloni <alexandre.belloni@free-electrons.com>
Message-ID: <20131228120750.GA3706@jama>
References: <52BDEFA3.2090106@free-electrons.com> <20131228083238.GY3706@jama>
	<52BEA5BE.2020107@free-electrons.com> <20131228112839.GZ3706@jama>
	<52BEB963.2030901@free-electrons.com>
MIME-Version: 1.0
In-Reply-To: <52BEB963.2030901@free-electrons.com>
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
X-List-Received-Date: Sat, 28 Dec 2013 12:07:12 -0000
X-Groupsio-MsgNum: 9372
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="eGwqSfc1DN4LzNjY"
Content-Disposition: inline

--eGwqSfc1DN4LzNjY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Dec 28, 2013 at 12:43:31PM +0100, Alexandre Belloni wrote:
>=20
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>=20
> On 28/12/2013 12:28, Martin Jansa wrote:
> > I'm not using matchbox and I'm using only xserver-common, this fix is to
> > start xinput-calibrator in correct location.
> >
> > You can get rid of x11-common by setting:
> > VIRTUAL-RUNTIME_xserver_common =3D "xserver-common"
>=20
> Still not enough, the Xsession from xserver-common will make the board
> hang in 80matchboxkeyboard.shbg the main issue I see is that a lot of
> recipes are providing Xsession scripts for the x11-common's Xsession but
> at the end, we are installing Xsession from xserver-common. You kind of
> hacked around that by renaming all the scripts to .sh.
>=20
> I think we should get rid of kdrive in poky and only use xserver-common.
> Or, for each recipe installing an Xsession script, we should have a look
> at whether it is for x11-common or xserver-common. In that case, we
> havfe to make the conflicting work.
>=20
> I believe your patch is not really solving the issue and I you want, I
> can work on that.

It fixes xinput-calibrator which was broken by xinput-calibrator move
=66rom meta-oe to oe-core

See
http://trac.shr-project.org/trac/ticket/2101
for more details.

Yes I've renamed all Xsession scripts I have in my images because of
this.

For x11-common, xserver-common merge see
http://lists.openembedded.org/pipermail/openembedded-core/2013-February/075=
336.html
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5546

> - --=20
> Alexandre Belloni, Free Electrons
> Embedded Linux, Kernel and Android engineering
> http://free-electrons.com
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1.4.14 (GNU/Linux)
>=20
> iQIcBAEBCAAGBQJSvrljAAoJEKbNnwlvZCyzmyUQAKKIk1a544bPZJdA089u3W04
> lfHU2rVpaPc6DklXwdnMN52PuNupDpzUJWueCFiHUfNJJ6DrAL3DhilI8wDclrwC
> 0bTwqmppCHjHCQtWZpNjDD6Zp0/gZ01IxYzRRexIMHsmytaAMMOsAkebYgD80RNR
> 8SJTk0OJ9l5vGsmMYU+zontuS413uNAobuvJjbif51ZPOkaZDCW7DOsoV9mowwGX
> s1Z4O5gwFgf0RdiVT3EbFJu1cd1YHlEDLkqXvZgVVpYBxOTpAxcPed0kS5C6+zUE
> kODwymPonnPkGgL1I4nfqdw+TN7ymDwQQWrDaV0HsfuW7Uw5ppA/jePPKaolZY+8
> WQjPW/59Z70Zso8dtZZNqYhau4s8bpR0lmu/RhNRNvJBn5g/AweWC4istg0Ef0M9
> eik3/epT42usSZMZrL6gkBHN3t0hBwLadd58Q8K/fs7WsoV0Lz3XfBaJK4uMLxwa
> LLS5EKWbX/5F6WTmIfYuTcGlBeZRFWaB+7Hr8qEQwA7OG9j9/a5vutbV2+BTtFO0
> 4NDr/elC2+WGtKeSFj+8m2ppRvWXf8WJ3eKj4mj218x/7GX3xhHVfvnWISRZAcnj
> FlBl4hZsvBdteD5gE0vb17D+qqULcdl6ZA8QZrBptjccCwbFHb4tMXlSA7dH3FwH
> s8+4EDeP0mJNU4fq1/uU
> =3Du124
> -----END PGP SIGNATURE-----
>=20

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--eGwqSfc1DN4LzNjY
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEARECAAYFAlK+vxYACgkQN1Ujt2V2gBwr6wCfR3Y6FdnyuWAmbqilBQV+QRDI
ZkcAn1J9UHcxPqPaCLIhaMkOvsldguHS
=toRR
-----END PGP SIGNATURE-----

--eGwqSfc1DN4LzNjY--
