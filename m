Return-Path: <DFreitag@environics.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94CDCE00718; Wed,  5 Jul 2017 13:32:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Wed, 05 Jul 2017 13:32:30 PDT
Received: from remote.environics.com (remote.environics.com [74.95.20.229])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AA0DE00349
	for <poky@yoctoproject.org>; Wed,  5 Jul 2017 13:32:30 -0700 (PDT)
Received: from SATURN.env.local ([fe80::84be:b889:2f95:8bff]) by
	SATURN.env.local ([fe80::84be:b889:2f95:8bff%10]) with mapi id
	14.01.0438.000; Wed, 5 Jul 2017 16:31:26 -0400
From: David Freitag <DFreitag@environics.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [PATCH] meta: Add support for GTK+-3.0 static libraries
Thread-Index: AdL1xdwoiKMl1ecuTDmh/cBVcwLTRw==
Date: Wed, 5 Jul 2017 20:31:25 +0000
Message-ID: <A8809961EB141E4596386C258A901BD70299E8CD31@SATURN.env.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.0.36]
x-tm-as-product-ver: SMEX-11.1.0.1278-8.100.1062-23176.005
x-tm-as-result: No--12.336100-5.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: [PATCH] meta: Add support for GTK+-3.0 static libraries
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 05 Jul 2017 20:32:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Add necessary lines to gtk+3.inc file so that the static libs for GTK+3 are
shipped. Otherwise trying to statically-compile with --enable-static fails =
with
fatal QA errors (fatal: <lib>.a is present but not shipped).

This has the added benefit of being able to add=20

IMAGE_INSTALL_append =3D " gtk+3-staticdev"

to local.conf with no-static-libs.inc disabled instead of having to hack th=
e
gtk+3.inc file.=20

This is admittedly a little fragile due to the fact that disabling static
generation (the default) relies on the fact that no-static-libs.inc appends
--disable-static to the end of EXTRA_OECONF thus negating the --enable-stat=
ic
in this patch (eg you get configure ... --enable-static ... --disable-stati=
c).
Although to my (albeit limited) knowledge, there isn't a cleaner way to do =
this
without always forcing static generation.

If gtk+3-staticdev is appended to IMAGE_INSTALL while no-static-libs.inc is
included, bitbake will error because the gtk+3-staticdev rpm isn't generate=
d
because there were no static libs to be packaged.

Signed-off-by: David Freitag <dfreitag@environics.com>
---
 meta/recipes-gnome/gtk+/gtk+3.inc | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-gnome/gtk+/gtk+3.inc b/meta/recipes-gnome/gtk+/gt=
k+3.inc
index 27da844..3b23a2e 100644
--- a/meta/recipes-gnome/gtk+/gtk+3.inc
+++ b/meta/recipes-gnome/gtk+/gtk+3.inc
@@ -29,6 +29,7 @@ EXTRA_OECONF +=3D " \
                  --disable-glibtest \
                  --disable-xinerama \
                  --enable-modules \
+                 --enable-static \
                  --disable-cups \
                  --disable-colord \
                  WAYLAND_PROTOCOLS_SYSROOT_DIR=3D${RECIPE_SYSROOT} \
@@ -90,6 +91,11 @@ FILES_${PN}-dev +=3D " \
                     ${bindir}/gtk-query-settings \
                     "
=20
+FILES_${PN}-staticdev =3D " \
+                        ${libdir}/*.a \
+                        ${libdir}/gtk-3.0/${LIBV}/immodules/*.a \
+                        ${libdir}/gtk-3.0/${LIBV}/printbackends/*.a"
+
 GTKBASE_RRECOMMENDS ?=3D "liberation-fonts \
                         gdk-pixbuf-loader-png \
                         gdk-pixbuf-loader-jpeg \
@@ -117,11 +123,11 @@ python populate_packages_prepend () {
     immodules_root =3D os.path.join(gtk_libdir, 'immodules')
     printmodules_root =3D os.path.join(gtk_libdir, 'printbackends');
=20
-    immodules =3D do_split_packages(d, immodules_root, '^im-(.*)\.so$', 'g=
tk3-immodule-%s', 'GTK input module for %s')
+    immodules =3D do_split_packages(d, immodules_root, '^im-(.*)\.(?:so|a)=
$', 'gtk3-immodule-%s', 'GTK input module for %s')
     if immodules:
         d.setVar("GTKIMMODULES_PACKAGES", " ".join(immodules))
=20
-    do_split_packages(d, printmodules_root, '^libprintbackend-(.*)\.so$', =
'gtk3-printbackend-%s', 'GTK printbackend module for %s')
+    do_split_packages(d, printmodules_root, '^libprintbackend-(.*)\.(?:so|=
a)$', 'gtk3-printbackend-%s', 'GTK printbackend module for %s')
=20
     if (d.getVar('DEBIAN_NAMES')):
         d.setVar(d.expand('PKG_${PN}'), '${MLPREFIX}libgtk-3.0')
--=20
2.9.3


