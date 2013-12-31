Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f54.google.com (mail-ee0-f54.google.com [74.125.83.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41288E007EC;
	Tue, 31 Dec 2013 03:42:55 -0800 (PST)
Received: by mail-ee0-f54.google.com with SMTP id e51so4670994eek.41
	for <multiple recipients>; Tue, 31 Dec 2013 03:42:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=eJhUelQGqYxP6xwoHQPghhCeoQ4YBrdi2S4eZB8hF1M=;
	b=N95vhHaUsfxTPxGuC0yHqB4Kn6K+KPfnsZJq/G+1mYiiS7ogVVwQgDPHhYT20FAhRP
	3ZMvpbdPArtfVm7bbrg4x4j7lN+1JoX9vt7jmtc1yv6D8X2qhmusfAALAogIYceQ5KFS
	fwvhgGVgz0FyJrOggsfIqFH0whX3f4ENIuq+zh4JMn5N4kzb2rzSUCERiD0JJEsBUvTU
	8LGMAyj/+x+ryo3NLhDmO4QJNNroaIcK9MG8gqKHvZ0ERaYOU1WWAoJJ7qmL67ubqkb6
	HKODIw+xKl/Zo7K/x+89X8ggtaPcLg7OR1pBuCWtDs4CfBpVwoIpG8ZyWv0QWW0sboNb
	jF9g==
X-Received: by 10.14.5.194 with SMTP id 42mr6209775eel.100.1388490174470;
	Tue, 31 Dec 2013 03:42:54 -0800 (PST)
Received: from localhost (ip-89-176-104-107.net.upcbroadband.cz.
	[89.176.104.107])
	by mx.google.com with ESMTPSA id 44sm117472025eek.5.2013.12.31.03.42.53
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 31 Dec 2013 03:42:53 -0800 (PST)
Date: Tue, 31 Dec 2013 12:42:53 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Alexandre Belloni <alexandre.belloni@free-electrons.com>
Message-ID: <20131231114253.GC3705@jama>
References: <52BDEFA3.2090106@free-electrons.com> <20131228083238.GY3706@jama>
	<52BEA5BE.2020107@free-electrons.com> <20131228112839.GZ3706@jama>
	<52BEB963.2030901@free-electrons.com> <20131228120750.GA3706@jama>
	<52BECB61.9010401@free-electrons.com>
	<CAP9ODKqjuQxGDowZ_pj=H8i9-DA-DVsuoPP_tpVpvsCUm0VmWA@mail.gmail.com>
	<52C29F7E.4060307@free-electrons.com>
MIME-Version: 1.0
In-Reply-To: <52C29F7E.4060307@free-electrons.com>
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>,
	Otavio Salvador <otavio@ossystems.com.br>
Subject: Re: [meta-freescale] X11 incompatibilities using meta-oe with poky
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
X-List-Received-Date: Tue, 31 Dec 2013 11:42:56 -0000
X-Groupsio-MsgNum: 9379
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="XWOWbaMNXpFDWE00"
Content-Disposition: inline

--XWOWbaMNXpFDWE00
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 31, 2013 at 11:42:06AM +0100, Alexandre Belloni wrote:
> On 30/12/2013 06:09, Otavio Salvador wrote:
> >> Right, thanks for those pointers !
> >=20
> > Martin already backported the fix to Dora so please give it a new try
> > and see if it fixes your previous issues.
> >=20
>=20
> As said, it indeed fixes the issue with touchscreen calibration but
> matchbox-keyboard is still broken as the script has a .shbg extension.
> I'll try to rework that script and send a patch.
>=20
> Martin, I'm not sure what is preferred: having a .sh extension or no
> extension at all ?

Now with both x11-common and xserver-common unified to use .sh
extension it's a lot better to use .sh, so that sorting with ls -X
respects numeric prefixes.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--XWOWbaMNXpFDWE00
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEARECAAYFAlLCrb0ACgkQN1Ujt2V2gBwW9ACdEGEw8xI2fbJQyr2x2aqhxHPa
YlwAn2LWNVSmcSwroJPEVuF+2dknFImB
=Tqd0
-----END PGP SIGNATURE-----

--XWOWbaMNXpFDWE00--
