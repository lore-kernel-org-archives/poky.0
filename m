Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B0CE74C81214
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 20:30:30 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 28 Jan 2011 18:30:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,395,1291622400"; d="scan'208";a="882142172"
Received: from unknown (HELO helios) ([10.255.16.169])
	by fmsmga001.fm.intel.com with SMTP; 28 Jan 2011 18:30:28 -0800
Received: by helios (sSMTP sendmail emulation); Sat, 29 Jan 2011 02:30:28 +0000
Message-Id: <6184677be0e44d76b634b611287dca567dfdd3bd.1296267951.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1296267951.git.paul.eggleton@linux.intel.com>
References: <cover.1296267951.git.paul.eggleton@linux.intel.com>
Old-Date: Fri, 14 Jan 2011 15:36:23 +0000
Date: Sat, 29 Jan 2011  2:30:28 +0000
To: poky@yoctoproject.org
CC: 
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 11/12] qt4: Add meta-toolchain-qte and dependent tasks from OpenEmbedded
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
X-List-Received-Date: Sat, 29 Jan 2011 02:30:30 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

Differences from OE versions:

task-qte-toolchain-target.bb:
 * Depend on task-poky-standalone-sdk-target instead of task-sdk-bare
 * Add LIC_FILES_CHKSUM
 * Correct libsqlite3-dev dependency for Poky
 * Remove dependency on libts-dev
 * Remove QtDeclarative as it does not build for 4.6.3. (This will need
   to be addressed in a future update.)

task-qte-toolchain-host.bb
 * Fix for Poky directory structure
 * qt4-tools-sdk -> qt4-tools-nativesdk

meta-toolchain-qte:
 * Fix for Poky directory structure
 * Use "tar --owner=root" instead of fakeroot
 * Remove angstrom-specific suffix

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta/recipes-qt/meta/meta-toolchain-qte.bb         |   32 ++++++++++++++++++
 meta/recipes-qt/tasks/task-qte-toolchain-host.bb   |    7 ++++
 meta/recipes-qt/tasks/task-qte-toolchain-target.bb |   35 ++++++++++++++++++++
 3 files changed, 74 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-qt/meta/meta-toolchain-qte.bb
 create mode 100644 meta/recipes-qt/tasks/task-qte-toolchain-host.bb
 create mode 100644 meta/recipes-qt/tasks/task-qte-toolchain-target.bb

diff --git a/meta/recipes-qt/meta/meta-toolchain-qte.bb b/meta/recipes-qt/meta/meta-toolchain-qte.bb
new file mode 100644
index 0000000..b57369a
--- /dev/null
+++ b/meta/recipes-qt/meta/meta-toolchain-qte.bb
@@ -0,0 +1,32 @@
+# Qt Embedded toolchain
+PR = "r5"
+TOOLCHAIN_HOST_TASK = "task-qte-toolchain-host"
+TOOLCHAIN_TARGET_TASK = "task-qte-toolchain-target"
+
+require recipes-core/meta/meta-toolchain.bb
+SDK_SUFFIX = "toolchain-qte"
+
+QT_DIR_NAME = "qtopia"
+
+do_populate_sdk_append() {
+    script="${SDK_OUTPUT}/${SDKPATH}/environment-setup"
+    touch $script
+    echo 'export OE_QMAKE_CC=${TARGET_SYS}-gcc' >> $script
+    echo 'export OE_QMAKE_CXX=${TARGET_SYS}-g++' >> $script
+    echo 'export OE_QMAKE_LINK=${TARGET_SYS}-g++' >> $script
+    echo 'export OE_QMAKE_AR=${TARGET_SYS}-ar' >> $script
+    echo 'export OE_QMAKE_LIBDIR_QT=${SDKPATH}/${TARGET_SYS}/${libdir}' >> $script
+    echo 'export OE_QMAKE_INCDIR_QT=${SDKPATH}/${TARGET_SYS}/${includedir}/${QT_DIR_NAME}' >> $script
+    echo 'export OE_QMAKE_MOC=${SDKPATH}/bin/moc4' >> $script
+    echo 'export OE_QMAKE_UIC=${SDKPATH}/bin/uic4' >> $script
+    echo 'export OE_QMAKE_UIC3=${SDKPATH}/bin/uic34' >> $script
+    echo 'export OE_QMAKE_RCC=${SDKPATH}/bin/rcc4' >> $script
+    echo 'export OE_QMAKE_QDBUSCPP2XML=${SDKPATH}/bin/qdbuscpp2xml4' >> $script
+    echo 'export OE_QMAKE_QDBUSXML2CPP=${SDKPATH}/bin/qdbusxml2cpp4' >> $script
+    echo 'export OE_QMAKE_QT_CONFIG=${SDKPATH}/${TARGET_SYS}/${datadir}/${QT_DIR_NAME}/mkspecs/qconfig.pri' >> $script
+    echo 'export QMAKESPEC=${SDKPATH}/${TARGET_SYS}/${datadir}/${QT_DIR_NAME}/mkspecs/linux-g++' >> $script
+
+    # Repack SDK with new environment-setup
+    cd ${SDK_OUTPUT}
+    tar --owner=root --group=root -cj --file=${SDK_DEPLOY}/${TOOLCHAIN_OUTPUTNAME}.tar.bz2 .
+}
diff --git a/meta/recipes-qt/tasks/task-qte-toolchain-host.bb b/meta/recipes-qt/tasks/task-qte-toolchain-host.bb
new file mode 100644
index 0000000..2ab6ccf
--- /dev/null
+++ b/meta/recipes-qt/tasks/task-qte-toolchain-host.bb
@@ -0,0 +1,7 @@
+require recipes-core/tasks/task-sdk-host.bb
+
+DESCRIPTION = "Host packages for Qt Embedded SDK"
+LICENSE = "MIT"
+ALLOW_EMPTY = "1"
+
+RDEPENDS_${PN} += "qt4-tools-nativesdk"
diff --git a/meta/recipes-qt/tasks/task-qte-toolchain-target.bb b/meta/recipes-qt/tasks/task-qte-toolchain-target.bb
new file mode 100644
index 0000000..98fe477
--- /dev/null
+++ b/meta/recipes-qt/tasks/task-qte-toolchain-target.bb
@@ -0,0 +1,35 @@
+DESCRIPTION = "Target packages for Qt Embedded SDK"
+LICENSE = "MIT"
+ALLOW_EMPTY = "1"
+
+PR = "r5"
+
+LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
+                    file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+
+RDEPENDS_${PN} += " \
+        task-poky-standalone-sdk-target \
+        qt4-embedded-mkspecs \
+        libqt-embeddedmultimedia4-dev \
+        libqt-embeddedphonon4-dev \
+        libqt-embedded3support4-dev \
+        libqt-embeddedclucene4-dev \
+        libqt-embeddedcore4-dev \
+        libqt-embeddeddbus4-dev \
+        libqt-embeddeddesignercomponents4-dev \
+        libqt-embeddeddesigner4-dev \
+        libqt-embeddeduitools4-dev \
+        libqt-embeddedgui4-dev \
+        libqt-embeddedhelp4-dev \
+        libqt-embeddednetwork4-dev \
+        libqt-embeddedscript4-dev \
+        libqt-embeddedscripttools4-dev \
+        libqt-embeddedsql4-dev \
+        libqt-embeddedsvg4-dev \
+        libqt-embeddedtest4-dev \
+        libqt-embeddedwebkit4-dev \
+        libqt-embeddedxml4-dev \
+        libsqlite3-dev \
+        expat-dev \
+        "
+
-- 
1.7.1


