Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 22DAF4C811E0
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 02:55:36 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0J8tZ1b021428
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 00:55:35 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 19 Jan 2011 00:55:35 -0800
Received: from localhost ([128.224.162.176]) by ala-mail06.corp.ad.wrs.com
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 19 Jan 2011 00:55:34 -0800
Message-Id: <320b31b79023fc634398b516451c6081f0da2ca9.1295426481.git.jingdong.lu@windriver.com>
In-Reply-To: <cover.1295426481.git.jingdong.lu@windriver.com>
References: <cover.1295426481.git.jingdong.lu@windriver.com>
From: Jingdong Lu <jingdong.lu@windriver.com>
Old-Date: Wed, 19 Jan 2011 16:19:05 +0800
Date: Wed, 19 Jan 2011 16:53:57 +0800
To: poky@yoctoproject.org
CC: 
X-OriginalArrivalTime: 19 Jan 2011 08:55:35.0484 (UTC)
	FILETIME=[A2E1F7C0:01CBB7B6]
Subject: [PATCH 1/4] qt4: Enable accessibility and sm option for LSB.
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
X-List-Received-Date: Wed, 19 Jan 2011 08:55:36 -0000

LSB library checks will look for some symbols of qt4 libraries. Enable "accessibility" and "sm" in order to pass the LSB test.

Signed-off-by: Jingdong Lu<jingdong.lu@windriver.com>
---
 meta/classes/qmake2.bbclass               |    1 +
 meta/recipes-qt/qt4/qt4-x11-free_4.6.3.bb |    2 +-
 meta/recipes-qt/qt4/qt4.inc               |   10 +++++++---
 3 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/meta/classes/qmake2.bbclass b/meta/classes/qmake2.bbclass
index 3772189..5eebd8e 100644
--- a/meta/classes/qmake2.bbclass
+++ b/meta/classes/qmake2.bbclass
@@ -19,5 +19,6 @@ export OE_QMAKE_INCDIR_QT = "${STAGING_INCDIR}/qt4"
 export OE_QMAKE_LIBDIR_QT = "${STAGING_LIBDIR}"
 export OE_QMAKE_LIBS_QT = "qt"
 export OE_QMAKE_LIBS_X11 = "-lXext -lX11 -lm"
+export OE_QMAKE_LIBS_X11SM = "-lSM -lICE"
 export OE_QMAKE_LRELEASE = "${STAGING_BINDIR_NATIVE}/lrelease4"
 export OE_QMAKE_LUPDATE = "${STAGING_BINDIR_NATIVE}/lupdate4"
diff --git a/meta/recipes-qt/qt4/qt4-x11-free_4.6.3.bb b/meta/recipes-qt/qt4/qt4-x11-free_4.6.3.bb
index 0a03e9b..f13b947 100644
--- a/meta/recipes-qt/qt4/qt4-x11-free_4.6.3.bb
+++ b/meta/recipes-qt/qt4/qt4-x11-free_4.6.3.bb
@@ -1,7 +1,7 @@
 require qt4-x11-free.inc
 require qt-4.6.3.inc
 
-PR = "r1"
+PR = "r2"
 
 QT_CONFIG_FLAGS += " -xrandr "
 
diff --git a/meta/recipes-qt/qt4/qt4.inc b/meta/recipes-qt/qt4/qt4.inc
index 16d5beb..3382445 100644
--- a/meta/recipes-qt/qt4/qt4.inc
+++ b/meta/recipes-qt/qt4/qt4.inc
@@ -5,11 +5,15 @@ DEPENDS += "qt4-tools-native freetype jpeg libpng zlib dbus openssl glib-2.0 gst
 
 inherit qmake_base
 
-QT_CONFIG_FLAGS += "-release -no-cups -no-accessibility -reduce-relocations \
-                    -shared -no-nas-sound -no-sm -no-nis \
+QT_DISTRO_FLAGS ?= "-no-accessibility -no-sm"
+QT_DISTRO_FLAGS_poky-lsb = "-sm"
+
+QT_CONFIG_FLAGS += "-release -no-cups -reduce-relocations \
+                    -shared -no-nas-sound -no-nis \
                     -qt-gif -system-libjpeg -system-libpng -system-zlib \
                     -no-sql-ibase -no-sql-mysql -no-sql-psql -no-sql-odbc -plugin-sql-sqlite \
-                    -no-pch -dbus -stl -glib -phonon -webkit"
+                    -no-pch -dbus -stl -glib -phonon -webkit \
+                    ${QT_DISTRO_FLAGS} "
 
 EXTRA_OEMAKE = "-e"
 
-- 
1.7.0.4


