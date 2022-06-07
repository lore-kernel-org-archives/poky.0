Subject: [PATCH] [honister][PATCH] weston: added runtime dependency to xkbcomp on PACKAGECONFIG[xwayland]
To: poky@lists.yoctoproject.org
From: =?UTF-8?B?U8O8c2VucywgU2ViYXN0aWFu?= <Sebastian.Suesens@baslerweb.com>
X-Originating-Location: Hogersdorf, Schleswig-Holstein, DE (185.12.91.67)
X-Originating-Platform: Linux Chrome 101
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 07 Jun 2022 02:57:30 -0700
Message-ID: <Rue6.1654595850603062382.gdLQ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="BiRpl07KTVGyM11EFphk"

--BiRpl07KTVGyM11EFphk
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

When xkbcomp is not installed on the image you will get the error "XKB: Fai=
led to compile keymap"

From 05dea85d31c0f750706fdee244ae46c13ef33004 Mon Sep 17 00:00:00 2001
From: ssuesens <sebastian.suesens@baslerweb.com>
Date: Tue, 7 Jun 2022 08:27:18 +0000
Subject: [PATCH] [honister][PATCH] weston: added runtime dependency to xkbc=
omp
on PACKAGECONFIG[xwayland]

Signed-off-by: ssuesens <sebastian.suesens@baslerweb.com>
---
meta/recipes-graphics/wayland/weston_9.0.0.bb | 2 +-
1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/recipes-graphics/wayland/weston_9.0.0.bb b/meta/recipes-g=
raphics/wayland/weston_9.0.0.bb
index 1f1d62ea7c..23529663c5 100644
--- a/meta/recipes-graphics/wayland/weston_9.0.0.bb
+++ b/meta/recipes-graphics/wayland/weston_9.0.0.bb
@@ -74,7 +74,7 @@ PACKAGECONFIG[webp] =3D "-Dimage-webp=3Dtrue,-Dimage-webp=
=3Dfalse,libwebp"
# Weston with systemd-login support
PACKAGECONFIG[systemd] =3D "-Dsystemd=3Dtrue -Dlauncher-logind=3Dtrue,-Dsys=
temd=3Dfalse -Dlauncher-logind=3Dfalse,systemd dbus"
# Weston with Xwayland support (requires X11 and Wayland)
-PACKAGECONFIG[xwayland] =3D "-Dxwayland=3Dtrue,-Dxwayland=3Dfalse"
+PACKAGECONFIG[xwayland] =3D "-Dxwayland=3Dtrue,-Dxwayland=3Dfalse, ,xkbcom=
p"
# colord CMS support
PACKAGECONFIG[colord] =3D "-Dcolor-management-colord=3Dtrue,-Dcolor-managem=
ent-colord=3Dfalse,colord"
# Clients support
--
2.25.1

--BiRpl07KTVGyM11EFphk
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>When xkbcomp is not installed on the image you will get the error "XKB=
: Failed to compile keymap"<br /><br />From 05dea85d31c0f750706fdee244ae46c=
13ef33004 Mon Sep 17 00:00:00 2001</div>
<div>From: ssuesens &lt;sebastian.suesens@baslerweb.com&gt;</div>
<div>Date: Tue, 7 Jun 2022 08:27:18 +0000</div>
<div>Subject: [PATCH] [honister][PATCH] weston: added runtime dependency to=
 xkbcomp</div>
<div>&nbsp;on PACKAGECONFIG[xwayland]</div>
<div>&nbsp;</div>
<div>Signed-off-by: ssuesens &lt;sebastian.suesens@baslerweb.com&gt;</div>
<div>---</div>
<div>&nbsp;meta/recipes-graphics/wayland/weston_9.0.0.bb | 2 +-</div>
<div>&nbsp;1 file changed, 1 insertion(+), 1 deletion(-)</div>
<div>&nbsp;</div>
<div>diff --git a/meta/recipes-graphics/wayland/weston_9.0.0.bb b/meta/reci=
pes-graphics/wayland/weston_9.0.0.bb</div>
<div>index 1f1d62ea7c..23529663c5 100644</div>
<div>--- a/meta/recipes-graphics/wayland/weston_9.0.0.bb</div>
<div>+++ b/meta/recipes-graphics/wayland/weston_9.0.0.bb</div>
<div>@@ -74,7 +74,7 @@ PACKAGECONFIG[webp] =3D "-Dimage-webp=3Dtrue,-Dimage=
-webp=3Dfalse,libwebp"</div>
<div>&nbsp;# Weston with systemd-login support</div>
<div>&nbsp;PACKAGECONFIG[systemd] =3D "-Dsystemd=3Dtrue -Dlauncher-logind=
=3Dtrue,-Dsystemd=3Dfalse -Dlauncher-logind=3Dfalse,systemd dbus"</div>
<div>&nbsp;# Weston with Xwayland support (requires X11 and Wayland)</div>
<div>-PACKAGECONFIG[xwayland] =3D "-Dxwayland=3Dtrue,-Dxwayland=3Dfalse"</d=
iv>
<div>+PACKAGECONFIG[xwayland] =3D "-Dxwayland=3Dtrue,-Dxwayland=3Dfalse, ,x=
kbcomp"</div>
<div>&nbsp;# colord CMS support</div>
<div>&nbsp;PACKAGECONFIG[colord] =3D "-Dcolor-management-colord=3Dtrue,-Dco=
lor-management-colord=3Dfalse,colord"</div>
<div>&nbsp;# Clients support</div>
<div>--&nbsp;</div>
<div>2.25.1</div>
<div>&nbsp;</div>

--BiRpl07KTVGyM11EFphk--
