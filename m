Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C0ABE00307
	for <poky@yoctoproject.org>; Thu, 10 Nov 2011 00:12:41 -0800 (PST)
Received: by wyg34 with SMTP id 34so4408287wyg.35
	for <poky@yoctoproject.org>; Thu, 10 Nov 2011 00:12:40 -0800 (PST)
Received: by 10.227.203.198 with SMTP id fj6mr3437577wbb.24.1320912760248;
	Thu, 10 Nov 2011 00:12:40 -0800 (PST)
Received: from [172.20.1.19] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id l20sm8656155wbo.6.2011.11.10.00.12.38
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 10 Nov 2011 00:12:39 -0800 (PST)
From: Koen Kooi <koen@dominion.thruhere.net>
Mime-Version: 1.0 (Apple Message framework v1251.1)
Date: Thu, 10 Nov 2011 09:12:30 +0100
In-Reply-To: <CABRtByM593uOJDGHKWMVmWU46AwzghwXCUZY=cPM5narFo47Pw@mail.gmail.com>
To: Poky Project <poky@yoctoproject.org>
References: <CABRtByM593uOJDGHKWMVmWU46AwzghwXCUZY=cPM5narFo47Pw@mail.gmail.com>
Message-Id: <9E507444-F7E4-49B6-BBBE-9A2965AA8ABE@dominion.thruhere.net>
X-Mailer: Apple Mail (2.1251.1)
Subject: Re: error cd: =/usr/lib: No such file or directory
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
X-List-Received-Date: Thu, 10 Nov 2011 08:12:42 -0000
X-Groupsio-MsgNum: 7165
Content-Type: multipart/signed;
	boundary="Apple-Mail=_66774941-A84B-4B02-B124-A872E5A3F477";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_66774941-A84B-4B02-B124-A872E5A3F477
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


Op 10 nov. 2011, om 08:18 heeft sonu vishwakarma het volgende =
geschreven:

>=20
>=20
> Hi,
> I'm trying the build for libmicrohttpd but i'm getting some path =
related error which is as follow:
>=20
>  i586-poky-linux-libtool: link: warning: library =
`/home/poky/build/tmp/sysroots/fishriver/usr/lib/libgcrypt.la' was =
moved.
> | ../../../../i586-poky-linux-libtool: line 6402: cd: =3D/usr/lib: No =
such file or directory
> | i586-poky-linux-libtool: link: warning: cannot determine absolute =
directory name of `=3D/usr/lib'
> | /bin/grep: =3D/usr/lib/libgpg-error.la: No such file or directory
> | /bin/sed: can't read =3D/usr/lib/libgpg-error.la: No such file or =
directory
> | i586-poky-linux-libtool: link: `=3D/usr/lib/libgpg-error.la' is not =
a valid libtool archive.
>=20
> I'm attaching the recipe with the mail.
>=20
> I'm pulling for the Fishriver machine . My host machine is Ubuntu =
10.10 ,64 bit .=20
> Can someone help me out of this problem ?=20

The libmicrohttp in meta-oe builds and works just fine.




--Apple-Mail=_66774941-A84B-4B02-B124-A872E5A3F477
Content-Transfer-Encoding: 7bit
Content-Disposition: inline;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----

iEYEARECAAYFAk67h3AACgkQMkyGM64RGpFv7wCeJ6yCuzxlIJV/FA7LwM0QKbDS
z/sAn109d/6YAG2+jHMGwdyIO/Sv+YLC
=ZZeA
-----END PGP SIGNATURE-----

--Apple-Mail=_66774941-A84B-4B02-B124-A872E5A3F477--
