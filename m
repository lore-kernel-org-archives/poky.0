Return-Path: <yanok@emcraft.com>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0970A4C81067
	for <poky@pokylinux.org>; Thu, 12 May 2011 13:11:41 -0500 (CDT)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 92F641C021F4;
	Thu, 12 May 2011 20:11:40 +0200 (CEST)
X-Auth-Info: l3wl1dCkS/0ymybVQ38y59LaZWne+H/Ukx7Y8kK1IKE=
Received: from mail.denx.de (host-82-135-33-74.customer.m-online.net
	[82.135.33.74])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 8E8E71C000A5;
	Thu, 12 May 2011 20:11:40 +0200 (CEST)
Received: from pollux.denx.de (pollux [192.168.1.1])
	by mail.denx.de (Postfix) with ESMTP id 41A8942FDAE7;
	Thu, 12 May 2011 20:11:40 +0200 (CEST)
Received: by pollux.denx.de (Postfix, from userid 547)
	id 73661185C897C; Thu, 12 May 2011 20:11:39 +0200 (CEST)
From: Ilya Yanok <yanok@emcraft.com>
To: poky@pokylinux.org
Date: Thu, 12 May 2011 20:11:37 +0200
Message-Id: <1305223897-12934-1-git-send-email-yanok@emcraft.com>
X-Mailer: git-send-email 1.7.4.4
Cc: Ilya Yanok <yanok@emcraft.com>
Subject: [PATCH] qt4-tools-nativesdk: -arch is required for nativesdk build
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
X-List-Received-Date: Thu, 12 May 2011 18:11:43 -0000

We need to pass correct -arch option to configure to fix building in
case of SDK_ARCH != BUILD_ARCH.

Signed-off-by: Ilya Yanok <yanok@emcraft.com>
---
 meta/recipes-qt/qt4/qt4-tools-nativesdk.inc |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-qt/qt4/qt4-tools-nativesdk.inc b/meta/recipes-qt/qt4/qt4-tools-nativesdk.inc
index f273c9f..5faf40c 100644
--- a/meta/recipes-qt/qt4/qt4-tools-nativesdk.inc
+++ b/meta/recipes-qt/qt4/qt4-tools-nativesdk.inc
@@ -25,6 +25,8 @@ LIC_FILES_CHKSUM = "file://LICENSE.LGPL;md5=fbc093901857fcd118f065f900982c24 \
                     file://LICENSE.GPL3;md5=babc5b6b77441da277f5c06b2e547720 \
                     file://LGPL_EXCEPTION.txt;md5=411080a56ff917a5a1aa08c98acae354"
 
+require qt4_arch.inc
+
 # FIXME: make it work with "${STAGING_BINDIR_NATIVE}/pkg-config --cflags dbus-1"
 EXTRA_OECONF = "-prefix ${prefix} \
                 -qt-libjpeg -qt-gif -system-zlib \
@@ -37,6 +39,7 @@ EXTRA_OECONF = "-prefix ${prefix} \
                 -verbose -release -fast -static \
                 -platform ${TARGET_OS}-oe-g++ \
                 -xplatform ${TARGET_OS}-oe-g++ \
+                -arch ${@qt_arch(d)} \
                 -embedded -no-freetype -no-glib -no-iconv \
                 -qt3support \
                 -I${STAGING_DIR_HOST}${SDKPATHNATIVE}/usr/include \
-- 
1.7.4.4


