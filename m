Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 75D9B4C80044
	for <poky@yoctoproject.org>; Wed,  6 Apr 2011 09:48:36 -0500 (CDT)
Received: by wyb40 with SMTP id 40so2052855wyb.35
	for <poky@yoctoproject.org>; Wed, 06 Apr 2011 07:48:35 -0700 (PDT)
Received: by 10.216.61.65 with SMTP id v43mr494457wec.84.1302101314521;
	Wed, 06 Apr 2011 07:48:34 -0700 (PDT)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id e13sm419061wbi.40.2011.04.06.07.48.33
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 06 Apr 2011 07:48:33 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <cover.1302100922.git.paul.eggleton@linux.intel.com>
Date: Wed, 6 Apr 2011 16:48:32 +0200
Message-Id: <AC7B47F8-C1DC-4704-8837-441FF5D8C569@dominion.thruhere.net>
References: <cover.1302100922.git.paul.eggleton@linux.intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.1084)
Cc: poky@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [PATCH 0/1] Update Qt4 to 4.7.2, security update
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
X-List-Received-Date: Wed, 06 Apr 2011 14:48:36 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 6 apr 2011, om 16:45 heeft Paul Eggleton het volgende geschreven:

> From: Paul Eggleton <paul.eggleton@linux.intel.com>
>=20
> Move Qt 4.7.x from 4.7.1 to 4.7.2 and apply security patch from OE.

Your mail is missing the upgrade to 4.7.2: =
http://git.openembedded.org/cgit.cgi/openembedded-core-contrib/commit/?h=3D=
paule/qt-4.7.2&id=3D0471301531ca9cf1fb3af47517dfd730e2a34de1

>=20
> Pull URL: git://git.openembedded.org/openembedded-core-contrib
>  Branch: paule/qt-4.7.2
>  Browse: =
http://git.openembedded.org/cgit.cgi/openembedded-core-contrib/log/?h=3Dpa=
ule/qt-4.7.2
>=20
> Thanks,
>    Paul Eggleton <paul.eggleton@linux.intel.com>
> ---
>=20
>=20
> Denys Dmytriyenko (1):
>  qt4: security advisory - blacklist fraudulent comodo certificates
>=20
> ...klist-fraudulent-comodo-certificates-patch.diff |  134 =
++++++++++++++++++++
> meta/recipes-qt/qt4/qt-4.6.3.inc                   |    1 +
> meta/recipes-qt/qt4/qt-4.7.2.inc                   |    1 +
> meta/recipes-qt/qt4/qt4-embedded_4.6.3.bb          |    2 +-
> meta/recipes-qt/qt4/qt4-embedded_4.7.2.bb          |    2 +-
> meta/recipes-qt/qt4/qt4-x11-free_4.6.3.bb          |    2 +-
> meta/recipes-qt/qt4/qt4-x11-free_4.7.2.bb          |    2 +-
> 7 files changed, 140 insertions(+), 4 deletions(-)
> create mode 100644 =
meta/recipes-qt/qt4/files/blacklist-fraudulent-comodo-certificates-patch.d=
iff
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


