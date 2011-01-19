Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ew0-f48.google.com (mail-ew0-f48.google.com
	[209.85.215.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8463F4C80FAD
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 13:51:21 -0600 (CST)
Received: by ewy20 with SMTP id 20so699396ewy.35
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 11:51:20 -0800 (PST)
Received: by 10.213.10.75 with SMTP id o11mr1617636ebo.71.1295466680210;
	Wed, 19 Jan 2011 11:51:20 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id
	x54sm5808710eeh.17.2011.01.19.11.51.19
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Wed, 19 Jan 2011 11:51:19 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <cover.1295455496.git.paul.eggleton@linux.intel.com>
Date: Wed, 19 Jan 2011 20:51:18 +0100
Message-Id: <20F0A899-BE2B-4743-B435-7B9C64AD501C@dominion.thruhere.net>
References: <cover.1295455496.git.paul.eggleton@linux.intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.1082)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3] util-linux: split out libuuid and libblkid
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
X-List-Received-Date: Wed, 19 Jan 2011 19:51:22 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Tangent: have you considered switching to util-linux-ng?

Op 19 jan 2011, om 17:55 heeft Paul Eggleton het volgende geschreven:

> Split libuuid and libblkid from util-linux into separate runtime =
packages.
> Slightly reduces the overall footprint of other packages that depend =
on these=20
> libraries.
>=20
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>  Branch: paule/util-linux-libsplit
>  Browse: =
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dpaule/util-linux-l=
ibsplit
>=20
> Thanks,
>    Paul Eggleton <paul.eggleton@linux.intel.com>
> ---
>=20
>=20
> Paul Eggleton (3):
>  util-linux: split out libuuid and libblkid into separate packages
>  gst-plugins-base: add util-linux to DEPENDS
>  Bump PR on recipes that depend on util-linux
>=20
> .../nfs-utils/nfs-utils_1.2.3.bb                   |    2 +-
> meta/recipes-core/util-linux/util-linux.inc        |    6 ++++--
> meta/recipes-core/util-linux/util-linux_2.17.2.bb  |    2 +-
> .../e2fsprogs/e2fsprogs_1.41.12.bb                 |    2 +-
> meta/recipes-devtools/mtd/mtd-utils_1.4.1.bb       |    2 +-
> meta/recipes-graphics/xorg-lib/libsm_1.2.0.bb      |    2 +-
> .../gstreamer/gst-plugins-base_0.10.31.bb          |    4 ++--
> 7 files changed, 11 insertions(+), 9 deletions(-)
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


