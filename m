Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF75BE00303
	for <poky@yoctoproject.org>; Sun, 13 Nov 2011 11:52:03 -0800 (PST)
Received: by wwi36 with SMTP id 36so5259400wwi.11
	for <poky@yoctoproject.org>; Sun, 13 Nov 2011 11:52:02 -0800 (PST)
Received: by 10.227.16.156 with SMTP id o28mr5900324wba.19.1321213920647;
	Sun, 13 Nov 2011 11:52:00 -0800 (PST)
Received: from [172.20.1.19] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id eu16sm22112158wbb.7.2011.11.13.11.51.59
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 13 Nov 2011 11:51:59 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1251.1)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1321204598.14976.19.camel@lenny>
Date: Sun, 13 Nov 2011 20:51:55 +0100
Message-Id: <C629DDDD-2D2B-4D59-BB0F-08E62AFC57C4@dominion.thruhere.net>
References: <1321145853.14976.12.camel@lenny>
	<68FDBEA5-4FA5-4511-8FFA-03924A5171D5@dominion.thruhere.net>
	<1321204598.14976.19.camel@lenny>
To: Colin Walters <walters@verbum.org>
X-Mailer: Apple Mail (2.1251.1)
Cc: poky@yoctoproject.org
Subject: Re: non-upstreamed patches
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
X-List-Received-Date: Sun, 13 Nov 2011 19:52:04 -0000
X-Groupsio-MsgNum: 7174
Content-Type: multipart/signed;
	boundary="Apple-Mail=_726210FB-2C5F-46AE-97EF-95148D85C2ED";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_726210FB-2C5F-46AE-97EF-95148D85C2ED
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


Op 13 nov. 2011, om 18:16 heeft Colin Walters het volgende geschreven:

> On Sun, 2011-11-13 at 10:28 +0100, Koen Kooi wrote:
>> Op 13 nov. 2011, om 01:57 heeft Colin Walters het volgende =
geschreven:
>>=20
>>> So I've switched back to looking at Yocto again for a project, and =
the
>>> Edison release works fine.  Thanks!
>>>=20
>>> I work on GNOME (almost all of it)
>>=20
>> Have a look at the GNOME layer as well =
http://cgit.openembedded.org/meta-openembedded/tree/ :)
>=20
> What's the high level relationship of this tree versus the Yocto one?

There's no such thing as a yocto tree, only a poky tree, which consists =
of openembedded-core, bitbake and some other stuff

> The git log looks very similar, are Yocto commits cherry-picked into =
it?

No, oe-core generally picks up fixes from here.=

--Apple-Mail=_726210FB-2C5F-46AE-97EF-95148D85C2ED
Content-Transfer-Encoding: 7bit
Content-Disposition: inline;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----

iEYEARECAAYFAk7AH90ACgkQMkyGM64RGpGshwCeO6sDP/40RZvcX/VvBWeut9mk
D48AnRv0RVdFi76mcJ/FGk5ixk9IS5lt
=3hHA
-----END PGP SIGNATURE-----

--Apple-Mail=_726210FB-2C5F-46AE-97EF-95148D85C2ED--
