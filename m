Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71B23E00723
	for <poky@yoctoproject.org>; Wed, 23 Nov 2011 01:32:41 -0800 (PST)
Received: by wwn31 with SMTP id 31so378475wwn.11
	for <poky@yoctoproject.org>; Wed, 23 Nov 2011 01:32:40 -0800 (PST)
Received: by 10.216.133.29 with SMTP id p29mr3596121wei.70.1322040760158;
	Wed, 23 Nov 2011 01:32:40 -0800 (PST)
Received: from [172.20.1.19] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id d17sm19925449wbh.19.2011.11.23.01.32.38
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 23 Nov 2011 01:32:39 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1251.1)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <CAEx4ggfUfvgnoGvFZkkqARk5VGs4HiVGLJSkgxWbaqVyqEgCeg@mail.gmail.com>
Date: Wed, 23 Nov 2011 10:32:39 +0100
Message-Id: <A40556E3-F32D-4120-9FF6-5614730A7ADC@dominion.thruhere.net>
References: <CAEx4ggfUfvgnoGvFZkkqARk5VGs4HiVGLJSkgxWbaqVyqEgCeg@mail.gmail.com>
To: David MOUSSAUD <d.moussaud@gmail.com>
X-Mailer: Apple Mail (2.1251.1)
Cc: poky@yoctoproject.org
Subject: Re: "ONLINE" package-management
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
X-List-Received-Date: Wed, 23 Nov 2011 09:32:42 -0000
X-Groupsio-MsgNum: 7207
Content-Type: multipart/signed;
	boundary="Apple-Mail=_E772F42A-8F83-4E71-8ACD-C02E3E0152BF";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_E772F42A-8F83-4E71-8ACD-C02E3E0152BF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


Op 23 nov. 2011, om 10:22 heeft David MOUSSAUD het volgende geschreven:

> Hi,=20
>=20
> I'm migrating my projects from old OE to poky.
> I used to set the variable ONLINE_PACKAGE_MANAGEMENT =3D "full" in my =
image file.
> The impact was that some scripts were executed at the first start of =
my rootfs (create user for openssh, dbus, ....)

Note that with the recent addition of useradd.bbclass to OE-core that =
type of scripts (user creation) now run at do_rootfs time and not during =
first boot.

regards,

Koen=

--Apple-Mail=_E772F42A-8F83-4E71-8ACD-C02E3E0152BF
Content-Transfer-Encoding: 7bit
Content-Disposition: inline;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----

iEYEARECAAYFAk7MvbcACgkQMkyGM64RGpE7wQCeNZCWNVqxK6helER3onYgWe6y
42kAnj4HLTSgoF4shgx4vTzLS/lXx4s9
=WbJG
-----END PGP SIGNATURE-----

--Apple-Mail=_E772F42A-8F83-4E71-8ACD-C02E3E0152BF--
