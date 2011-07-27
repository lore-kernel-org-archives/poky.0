Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 783E14C80094
	for <poky@yoctoproject.org>; Wed, 27 Jul 2011 07:53:14 -0500 (CDT)
Received: by wwf4 with SMTP id 4so1290361wwf.11
	for <poky@yoctoproject.org>; Wed, 27 Jul 2011 05:53:13 -0700 (PDT)
Received: by 10.216.74.74 with SMTP id w52mr5745160wed.113.1311771193305;
	Wed, 27 Jul 2011 05:53:13 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id j54sm61189wed.47.2011.07.27.05.53.11
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 27 Jul 2011 05:53:12 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1244.3)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4E3008DA.8090401@freyther.de>
Date: Wed, 27 Jul 2011 14:53:10 +0200
Message-Id: <CA073376-0D42-400B-95A7-1A8D420353C1@dominion.thruhere.net>
References: <4E3008DA.8090401@freyther.de>
To: Holger Hans Peter Freyther <holger@freyther.de>
X-Mailer: Apple Mail (2.1244.3)
Cc: poky@yoctoproject.org
Subject: Re: Another story of a non upstream user of poky
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
X-List-Received-Date: Wed, 27 Jul 2011 12:53:15 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 27 jul. 2011, om 14:47 heeft Holger Hans Peter Freyther het volgende =
geschreven:

> Hi,
>=20
> todays story is adding a 'interfaces' to netbase.
>=20
>=20
> $ touch sysmocom/recipes-core/netbase/netbase-4.45/alix/interfaces
>=20
> $ vi sysmocom/recipes-core/netbase/netbase_4.45.bbappend
> FILESPATH =3D. "${@base_set_filespath(["${THISDIR}/${PN}-${PV}"], =
d)}:"
> PRINC =3D "1"
>=20
> $ bitbake netbase
>=20
>=20
> So does it work? The answer is no. Why doesn't it work? meta-yocto =
already has
> a bbappend file? How to solve it? Use different names? Automatically =
add
> FILESPATH for bbappends?


touch oe-core/meta/recipes-core/netbase/netbase_4.45.bb to force a =
reparse. bbappends only get parsed if the main recipe changed.=

