Subject: [PATCH] [honister][PATCH]weston-init: when x11 is enabled set xwayland=true
To: poky@lists.yoctoproject.org
From: =?UTF-8?B?U8O8c2VucywgU2ViYXN0aWFu?= <Sebastian.Suesens@baslerweb.com>
X-Originating-Location: Hogersdorf, Schleswig-Holstein, DE (185.12.91.67)
X-Originating-Platform: Linux Chrome 101
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 07 Jun 2022 04:54:46 -0700
Message-ID: <l7UT.1654602886134438232.UjUB@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="sDh31brfa6IdwTtmiMDc"

--sDh31brfa6IdwTtmiMDc
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

When weston is build with x11 support xwayland is also build.
To get xwayland support in weston xwayland has to be enabled via weston.ini=
 file.

This patch enable xwayland support in weston.

From 583bce5a1f5de91306bee5dbd914de577519247a Mon Sep 17 00:00:00 2001
From: ssuesens <sebastian.suesens@baslerweb.com>
Date: Tue, 7 Jun 2022 11:47:27 +0000
Subject: [PATCH] [honister][PATCH]weston-init: when x11 is enabled set
xwayland=3Dtrue

Signed-off-by: ssuesens <sebastian.suesens@baslerweb.com>
---
meta/recipes-graphics/wayland/weston-init.bb | 4 ++++
1 file changed, 4 insertions(+)

diff --git a/meta/recipes-graphics/wayland/weston-init.bb b/meta/recipes-gr=
aphics/wayland/weston-init.bb
index e02da0c358..51b634cb5c 100644
--- a/meta/recipes-graphics/wayland/weston-init.bb
+++ b/meta/recipes-graphics/wayland/weston-init.bb
@@ -57,6 +57,10 @@ do_install() {
sed -i -e "/^\[core\]/a idle-time=3D0" ${D}${sysconfdir}/xdg/weston/weston.=
ini
fi

+ if [ "${@bb.utils.contains('DISTRO_FEATURES', 'x11', 'yes', 'no', d)}" =
=3D "yes" ]; then
+ sed -i -e "/^\[core\]/a xwayland=3Dtrue" ${D}${sysconfdir}/xdg/weston/wes=
ton.ini
+ fi
+
install -dm 755 -o weston -g weston ${D}/home/weston
}

--
2.25.1

--sDh31brfa6IdwTtmiMDc
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>When weston is build with x11 support xwayland is also build.<br />To =
get xwayland support in weston xwayland has to be enabled via weston.ini fi=
le.<br /><br />This patch enable xwayland support in weston.<br /><br />Fro=
m 583bce5a1f5de91306bee5dbd914de577519247a Mon Sep 17 00:00:00 2001</div>
<div>From: ssuesens &lt;sebastian.suesens@baslerweb.com&gt;</div>
<div>Date: Tue, 7 Jun 2022 11:47:27 +0000</div>
<div>Subject: [PATCH] [honister][PATCH]weston-init: when x11 is enabled set=
</div>
<div>&nbsp;xwayland=3Dtrue</div>
<div>&nbsp;</div>
<div>Signed-off-by: ssuesens &lt;sebastian.suesens@baslerweb.com&gt;</div>
<div>---</div>
<div>&nbsp;meta/recipes-graphics/wayland/weston-init.bb | 4 ++++</div>
<div>&nbsp;1 file changed, 4 insertions(+)</div>
<div>&nbsp;</div>
<div>diff --git a/meta/recipes-graphics/wayland/weston-init.bb b/meta/recip=
es-graphics/wayland/weston-init.bb</div>
<div>index e02da0c358..51b634cb5c 100644</div>
<div>--- a/meta/recipes-graphics/wayland/weston-init.bb</div>
<div>+++ b/meta/recipes-graphics/wayland/weston-init.bb</div>
<div>@@ -57,6 +57,10 @@ do_install() {</div>
<div>&nbsp;<span style=3D"white-space: pre;"> </span>sed -i -e "/^\[core\]/=
a idle-time=3D0" ${D}${sysconfdir}/xdg/weston/weston.ini</div>
<div>&nbsp;<span style=3D"white-space: pre;"> </span>fi</div>
<div>&nbsp;</div>
<div>+<span style=3D"white-space: pre;"> </span>if [ "${@bb.utils.contains(=
'DISTRO_FEATURES', 'x11', 'yes', 'no', d)}" =3D "yes" ]; then</div>
<div>+<span style=3D"white-space: pre;"> </span>sed -i -e "/^\[core\]/a xwa=
yland=3Dtrue" ${D}${sysconfdir}/xdg/weston/weston.ini</div>
<div>+<span style=3D"white-space: pre;"> </span>fi</div>
<div>+</div>
<div>&nbsp;<span style=3D"white-space: pre;"> </span>install -dm 755 -o wes=
ton -g weston ${D}/home/weston</div>
<div>&nbsp;}</div>
<div>&nbsp;</div>
<div>--&nbsp;</div>
<div>2.25.1</div>

--sDh31brfa6IdwTtmiMDc--
