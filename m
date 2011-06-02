Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id C85B64C800E5
	for <poky@yoctoproject.org>; Thu,  2 Jun 2011 05:03:18 -0500 (CDT)
Received: by wyb40 with SMTP id 40so827074wyb.35
	for <poky@yoctoproject.org>; Thu, 02 Jun 2011 03:03:17 -0700 (PDT)
Received: by 10.227.72.10 with SMTP id k10mr530743wbj.97.1307008997281;
	Thu, 02 Jun 2011 03:03:17 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id e1sm279820wbh.39.2011.06.02.03.03.15
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 02 Jun 2011 03:03:16 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <cover.1307005797.git.kai.kang@windriver.com>
Date: Thu, 2 Jun 2011 12:03:14 +0200
Message-Id: <21A700FA-B993-49EA-AA0A-F8204AC24EEB@dominion.thruhere.net>
References: <cover.1307005797.git.kai.kang@windriver.com>
To: Kang Kai <kai.kang@windriver.com>
X-Mailer: Apple Mail (2.1084)
Cc: "poky@yoctoproject.org Project" <poky@yoctoproject.org>
Subject: Re: [PATCH 0/1] eglibc: enable eglibc configurability
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
X-List-Received-Date: Thu, 02 Jun 2011 10:03:19 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Shouldn't this be sent to the oe-core list instead?

Op 2 jun 2011, om 11:41 heeft Kang Kai het volgende geschreven:

> From: Kang Kai <kai.kang@windriver.com>
>=20
> Sorry, forget the maillist.
>=20
> Migrate configurability from oe, try to shrink minimal image size
>=20
> The switch is in local.conf.sample, uncomment the line
> DISTRO_FEATURES_EGLIBC =3D ""
> and write what options you want to enable.
>=20
> If want to disable locale-code charsets or locales, you have to =
uncomment
> PACKAGE_NO_GCONV =3D 1
> Because without this, it fails on package_do_split_gconvs in =
libc-package.bbclass
>=20
> The following changes since commit =
fabfd7ec97af3ae2eef39b94d52b49ad565aed90:
>=20
>  task-core-lsb: add cups and ghostscript into image (2011-06-02 =
15:51:23 +0800)
>=20
> are available in the git repository at:
>  git://git.pokylinux.org/poky-contrib.git kangkai/distro
>  http://git.pokylinux.org/cgit.cgi//log/?h=3Dkangkai/distro
>=20
> Kang Kai (1):
>  eglibc: migrate configurability from oe
>=20
> meta-yocto/conf/local.conf.sample                  |   17 ++++++
> .../eglibc-2.13-fix-macro-RTLD_DEBUG.patch         |   20 +++++++
> meta/recipes-core/eglibc/eglibc-options.inc        |   55 =
++++++++++++++++++++
> meta/recipes-core/eglibc/eglibc.inc                |    6 ++
> meta/recipes-core/eglibc/eglibc_2.13.bb            |    4 +-
> 5 files changed, 101 insertions(+), 1 deletions(-)
> create mode 100644 =
meta/recipes-core/eglibc/eglibc-2.13/eglibc-2.13-fix-macro-RTLD_DEBUG.patc=
h
> create mode 100644 meta/recipes-core/eglibc/eglibc-options.inc
>=20
> --=20
> 1.7.5.1.300.gc565c
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


