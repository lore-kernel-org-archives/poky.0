Return-Path: <yanok@emcraft.com>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id 490A14C8024E
	for <poky@pokylinux.org>; Mon,  9 May 2011 16:13:00 -0500 (CDT)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 943131C0F578;
	Mon,  9 May 2011 23:12:58 +0200 (CEST)
X-Auth-Info: V8T+xpP13oeq6iEldTHnFsEaqe+rQZD+/biY99V+iJg=
Received: from mail.denx.de (host-82-135-33-74.customer.m-online.net
	[82.135.33.74])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 8EA161C00093;
	Mon,  9 May 2011 23:12:58 +0200 (CEST)
Received: from pollux.denx.de (pollux [192.168.1.1])
	by mail.denx.de (Postfix) with ESMTP id 3B2D142FDAD6;
	Mon,  9 May 2011 23:12:58 +0200 (CEST)
Received: by pollux.denx.de (Postfix, from userid 547)
	id C3F6818015018; Mon,  9 May 2011 23:12:57 +0200 (CEST)
From: Ilya Yanok <yanok@emcraft.com>
To: poky@pokylinux.org
Date: Mon,  9 May 2011 23:12:55 +0200
Message-Id: <1304975575-5189-1-git-send-email-yanok@emcraft.com>
X-Mailer: git-send-email 1.7.4.4
Cc: Ilya Yanok <yanok@emcraft.com>
Subject: [PATCH] toolchain-qte: include cross-compiler and fix env script
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
X-List-Received-Date: Mon, 09 May 2011 21:13:01 -0000

This patch fixes the meta-toolchain-qte recipe:
 1. cross-compiler added to the TOOLCHAIN_HOST_TASK.
 2. Corrected paths in the environment script.
 3. TOOLCHAIN_OUTPUTNAME used instead of SDK_SUFFIX.

Signed-off-by: Ilya Yanok <yanok@emcraft.com>
---
 meta/recipes-qt/meta/meta-toolchain-qte.bb |   33 ++++++++++++++-------------
 1 files changed, 17 insertions(+), 16 deletions(-)

diff --git a/meta/recipes-qt/meta/meta-toolchain-qte.bb b/meta/recipes-qt/meta/meta-toolchain-qte.bb
index da0dda7..72fa702 100644
--- a/meta/recipes-qt/meta/meta-toolchain-qte.bb
+++ b/meta/recipes-qt/meta/meta-toolchain-qte.bb
@@ -1,26 +1,27 @@
 # Qt Embedded toolchain
 PR = "r5"
-TOOLCHAIN_HOST_TASK = "task-qte-toolchain-host"
+TOOLCHAIN_HOST_TASK = "task-qte-toolchain-host task-cross-canadian-${TRANSLATED_TARGET_ARCH}"
 TOOLCHAIN_TARGET_TASK = "task-qte-toolchain-target"
+TOOLCHAIN_OUTPUTNAME = "${SDK_NAME}-toolchain-qte-${DISTRO_VERSION}"
 
 require recipes-core/meta/meta-toolchain.bb
-SDK_SUFFIX = "toolchain-qte"
 
 QT_DIR_NAME = "qtopia"
+QT_TOOLS_PREFIX = "${SDKPATHNATIVE}${bindir_nativesdk}"
 
 toolchain_create_sdk_env_script_append() {
-    echo 'export OE_QMAKE_CC=${TARGET_SYS}-gcc' >> $script
-    echo 'export OE_QMAKE_CXX=${TARGET_SYS}-g++' >> $script
-    echo 'export OE_QMAKE_LINK=${TARGET_SYS}-g++' >> $script
-    echo 'export OE_QMAKE_AR=${TARGET_SYS}-ar' >> $script
-    echo 'export OE_QMAKE_LIBDIR_QT=${SDKPATH}/${TARGET_SYS}/${libdir}' >> $script
-    echo 'export OE_QMAKE_INCDIR_QT=${SDKPATH}/${TARGET_SYS}/${includedir}/${QT_DIR_NAME}' >> $script
-    echo 'export OE_QMAKE_MOC=${SDKPATH}/bin/moc4' >> $script
-    echo 'export OE_QMAKE_UIC=${SDKPATH}/bin/uic4' >> $script
-    echo 'export OE_QMAKE_UIC3=${SDKPATH}/bin/uic34' >> $script
-    echo 'export OE_QMAKE_RCC=${SDKPATH}/bin/rcc4' >> $script
-    echo 'export OE_QMAKE_QDBUSCPP2XML=${SDKPATH}/bin/qdbuscpp2xml4' >> $script
-    echo 'export OE_QMAKE_QDBUSXML2CPP=${SDKPATH}/bin/qdbusxml2cpp4' >> $script
-    echo 'export OE_QMAKE_QT_CONFIG=${SDKPATH}/${TARGET_SYS}/${datadir}/${QT_DIR_NAME}/mkspecs/qconfig.pri' >> $script
-    echo 'export QMAKESPEC=${SDKPATH}/${TARGET_SYS}/${datadir}/${QT_DIR_NAME}/mkspecs/linux-g++' >> $script
+    echo 'export OE_QMAKE_CC=${TARGET_PREFIX}gcc' >> $script
+    echo 'export OE_QMAKE_CXX=${TARGET_PREFIX}g++' >> $script
+    echo 'export OE_QMAKE_LINK=${TARGET_PREFIX}g++' >> $script
+    echo 'export OE_QMAKE_AR=${TARGET_PREFIX}ar' >> $script
+    echo 'export OE_QMAKE_LIBDIR_QT=${SDKTARGETSYSROOT}/${libdir}' >> $script
+    echo 'export OE_QMAKE_INCDIR_QT=${SDKTARGETSYSROOT}/${includedir}/${QT_DIR_NAME}' >> $script
+    echo 'export OE_QMAKE_MOC=${QT_TOOLS_PREFIX}/moc4' >> $script
+    echo 'export OE_QMAKE_UIC=${QT_TOOLS_PREFIX}/uic4' >> $script
+    echo 'export OE_QMAKE_UIC3=${QT_TOOLS_PREFIX}/uic34' >> $script
+    echo 'export OE_QMAKE_RCC=${QT_TOOLS_PREFIX}/rcc4' >> $script
+    echo 'export OE_QMAKE_QDBUSCPP2XML=${QT_TOOLS_PREFIX}/qdbuscpp2xml4' >> $script
+    echo 'export OE_QMAKE_QDBUSXML2CPP=${QT_TOOLS_PREFIX}/qdbusxml2cpp4' >> $script
+    echo 'export OE_QMAKE_QT_CONFIG=${SDKTARGETSYSROOT}/${datadir}/${QT_DIR_NAME}/mkspecs/qconfig.pri' >> $script
+    echo 'export QMAKESPEC=${SDKTARGETSYSROOT}/${datadir}/${QT_DIR_NAME}/mkspecs/linux-g++' >> $script
 }
-- 
1.7.4.4


