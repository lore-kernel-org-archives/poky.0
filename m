Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 438054C80FA4
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 11:19:39 -0600 (CST)
Received: by wwb31 with SMTP id 31so5767388wwb.11
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 09:19:16 -0800 (PST)
Received: by 10.227.143.75 with SMTP id t11mr4394229wbu.87.1295284502978;
	Mon, 17 Jan 2011 09:15:02 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id
	o19sm2492833wee.26.2011.01.17.09.15.00
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 17 Jan 2011 09:15:00 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <cover.1295282922.git.paul.eggleton@linux.intel.com>
Date: Mon, 17 Jan 2011 18:14:59 +0100
Message-Id: <70F8AFBB-708E-44C2-8C07-BA394242B311@dominion.thruhere.net>
References: <cover.1295282922.git.paul.eggleton@linux.intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.1082)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/8] Add meta-toolchain-qte from OE
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
X-List-Received-Date: Mon, 17 Jan 2011 17:20:14 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 17 jan 2011, om 17:54 heeft Paul Eggleton het volgende geschreven:

> These patches make the necessary changes to add meta-toolchain-qte =
from
> OpenEmbedded (and make it build successfully). Amongst other things =
this=20
> required some tweaking of avahi to avoid dependency of avahi-dev /=20
> avahi-utils on gtk+, which in turn required the addition of a flag to=20=

> control automatic RRECOMMENDS_ generation in package.bbclass.

FWIW, there's a more comprehensive integration for qt 4.6.3 and qt 4.7.1 =
available at http://cgit.openembedded.org/cgit.cgi/meta-openembedded/ . =
It's far from perfect, but it has the following advantages:

1) Working toolchain for usage on the target. For beagleboard.org =
workshops we hand people a beagle + sd card and that's all they need to =
create and QT apps.
2) Switching qt/e to qt/x11 is a matter of inheriting classes (recipe =
builds) or sourcing a different file (target toolchain)
3) full set of plugins. Some buildtime is traded to enable a "full" set =
of qt plugins people can optionally install. This saves =
customers^H^H^H^H users from a few hours of rebuilding just to get mysql =
bindings.

It would be nice to get the feature rich QT stuff from OE into yocto =
instead of something that lacks features. With my TI hat on: I have =
customers using the mysql bindings. With my Koen hat on: I use the =
postgres bindings :)

That being said, I like the poky qt-tools integration of qmake a bit =
better, but I haven't found the time to integrate the mkspecs feature =
into that yet.

regards,

Koen

>=20
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>  Branch: paule/qt-fixes2
>  Browse: =
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dpaule/qt-fixes2
>=20
> Thanks,
>    Paul Eggleton <paul.eggleton@linux.intel.com>
> ---
>=20
>=20
> Paul Eggleton (8):
>  Add directfb 1.4.6 from OpenEmbedded
>  qt4: add qt4-embedded 4.6.3 from OpenEmbedded
>  glib-2.0: extend to nativesdk
>  dbus: extend to nativesdk
>  Add qt4-tools-nativesdk 4.6.3 based on qt4-tools-sdk from
>    OpenEmbedded
>  package.bbclass: add nodeprrecs flag to RRECOMMENDS_pkgname
>  avahi: prevent unnecessary runtime dependency on gtk+
>  Add meta-toolchain-qte and dependent tasks from OpenEmbedded
>=20
> meta/classes/package.bbclass                       |    2 +
> meta/classes/qt4e.bbclass                          |   17 +++
> meta/recipes-connectivity/avahi/avahi.inc          |    9 ++-
> meta/recipes-connectivity/avahi/avahi_0.6.28.bb    |    2 +-
> meta/recipes-core/dbus/dbus.inc                    |    3 +-
> meta/recipes-core/glib-2.0/glib-2.0_2.27.5.bb      |    2 +-
> meta/recipes-core/glib-2.0/glib.inc                |    1 +
> .../directfb/directfb-1.4.6/mkdfiff.patch          |   24 ++++
> meta/recipes-graphics/directfb/directfb.inc        |   71 ++++++++++++
> meta/recipes-graphics/directfb/directfb_1.4.6.bb   |   29 +++++
> .../directfb-1.2.x-fix-pkgconfig-cflags.patch      |   47 ++++++++
> .../directfb/files/dont-use-linux-config.patch     |   12 ++
> meta/recipes-qt/meta/meta-toolchain-qte.bb         |   32 ++++++
> .../recipes-qt/qt4/files/compile.test-lflags.patch |   13 +++
> meta/recipes-qt/qt4/files/configure-lflags.patch   |   13 +++
> meta/recipes-qt/qt4/files/configure-paths.patch    |   21 ++++
> meta/recipes-qt/qt4/files/qmake-exists-check.patch |   18 +++
> .../qt4/files/qthelp-lib-qtclucene.patch           |   86 =
+++++++++++++++
> meta/recipes-qt/qt4/qt4-embedded-4.6.3/qte.sh      |    7 ++
> meta/recipes-qt/qt4/qt4-embedded.inc               |   53 +++++++++
> meta/recipes-qt/qt4/qt4-embedded_4.6.3.bb          |    6 +
> meta/recipes-qt/qt4/qt4-tools-nativesdk_4.6.3.bb   |  112 =
++++++++++++++++++++
> meta/recipes-qt/tasks/task-qte-toolchain-host.bb   |    7 ++
> meta/recipes-qt/tasks/task-qte-toolchain-target.bb |   39 +++++++
> 24 files changed, 622 insertions(+), 4 deletions(-)
> create mode 100644 meta/classes/qt4e.bbclass
> create mode 100644 =
meta/recipes-graphics/directfb/directfb-1.4.6/mkdfiff.patch
> create mode 100644 meta/recipes-graphics/directfb/directfb.inc
> create mode 100644 meta/recipes-graphics/directfb/directfb_1.4.6.bb
> create mode 100644 =
meta/recipes-graphics/directfb/files/directfb-1.2.x-fix-pkgconfig-cflags.p=
atch
> create mode 100644 =
meta/recipes-graphics/directfb/files/dont-use-linux-config.patch
> create mode 100644 meta/recipes-qt/meta/meta-toolchain-qte.bb
> create mode 100644 meta/recipes-qt/qt4/files/compile.test-lflags.patch
> create mode 100644 meta/recipes-qt/qt4/files/configure-lflags.patch
> create mode 100644 meta/recipes-qt/qt4/files/configure-paths.patch
> create mode 100644 meta/recipes-qt/qt4/files/qmake-exists-check.patch
> create mode 100644 =
meta/recipes-qt/qt4/files/qthelp-lib-qtclucene.patch
> create mode 100644 meta/recipes-qt/qt4/qt4-embedded-4.6.3/qte.sh
> create mode 100644 meta/recipes-qt/qt4/qt4-embedded.inc
> create mode 100644 meta/recipes-qt/qt4/qt4-embedded_4.6.3.bb
> create mode 100644 meta/recipes-qt/qt4/qt4-tools-nativesdk_4.6.3.bb
> create mode 100644 meta/recipes-qt/tasks/task-qte-toolchain-host.bb
> create mode 100644 meta/recipes-qt/tasks/task-qte-toolchain-target.bb
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


