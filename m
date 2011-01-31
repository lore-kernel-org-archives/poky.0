Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f42.google.com (mail-ww0-f42.google.com [74.125.82.42])
	by mx1.pokylinux.org (Postfix) with ESMTP id EFDF34C8006D
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 08:09:01 -0600 (CST)
Received: by wwi17 with SMTP id 17so3494185wwi.5
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 06:09:00 -0800 (PST)
Received: by 10.216.170.213 with SMTP id p63mr10739009wel.37.1296482940459;
	Mon, 31 Jan 2011 06:09:00 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id r38sm10797283weq.23.2011.01.31.06.08.59
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 31 Jan 2011 06:08:59 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <cover.1296267951.git.paul.eggleton@linux.intel.com>
Date: Mon, 31 Jan 2011 15:08:57 +0100
Message-Id: <1BE9B2AA-8C19-45AA-AE48-27935DE7862B@dominion.thruhere.net>
References: <cover.1296267951.git.paul.eggleton@linux.intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.1082)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 00/12] Qt4 updates v3
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
X-List-Received-Date: Mon, 31 Jan 2011 14:09:02 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 29 jan 2011, om 03:29 heeft Paul Eggleton het volgende geschreven:

> From: Paul Eggleton <paul.eggleton@linux.intel.com>
>=20
> These patches bring in the latest version of the Qt4 recipes from
> meta-openembedded, and make some significant general recipe cleanups =
as
> well. We will now have support for the latest version of Qt (4.7.1) in
> addition to 4.6.3, as well as the embedded (framebuffer-only as =
opposed
> to requiring X11) flavours of both versions.
>=20
> This patchset also contains the necessary changes to add =
meta-toolchain-qte
> from OpenEmbedded, and make it build successfully within Poky. Amongst =
other
> things this required some tweaking of avahi to avoid dependency of =
avahi-dev
> / avahi-utils on gtk+, which in turn required the addition of a flag =
to
> control automatic RRECOMMENDS_ generation in package.bbclass.
>=20
> v3 changes:
> * Fixes directfb do_install, pseudo overhead, and removes commented =
out=20
>  QtDeclarative lines in task-qte-toolchain-target.bb issues found by =
Joshua=20
>  Lock.
> * Adds a patch to improve qtdemo package runtime dependencies, =
addressing
>  bugs #452 and #492.
>=20
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>  Branch: paule/qt-fixes3
>  Browse: =
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dpaule/qt-fixes3

I've tested it and it works well enough to merge to master IMO. I've =
synced this to meta-oe and then put my changes (SQL stuff) on top to =
make diffing and merging easier.

regards,

Koen=

