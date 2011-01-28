Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7EA264C81285
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 18:36:52 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 27 Jan 2011 16:36:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,388,1291622400"; d="scan'208";a="597199445"
Received: from unknown (HELO helios) ([10.255.16.167])
	by orsmga002.jf.intel.com with SMTP; 27 Jan 2011 16:36:50 -0800
Received: by helios (sSMTP sendmail emulation); Fri, 28 Jan 2011 00:36:52 +0000
Message-Id: <74141e6fb3aece291357c79a4d855353b12874b4.1296174472.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1296174472.git.paul.eggleton@linux.intel.com>
References: <cover.1296174472.git.paul.eggleton@linux.intel.com>
Old-Date: Fri, 14 Jan 2011 15:36:23 +0000
Date: Fri, 28 Jan 2011  0:36:52 +0000
To: poky@yoctoproject.org
CC: 
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 11/11] qt4: Add meta-toolchain-qte and dependent tasks from OpenEmbedded
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
X-List-Received-Date: Fri, 28 Jan 2011 00:36:52 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

Differences from OE versions:

task-qte-toolchain-target.bb:
 * Depend on task-poky-standalone-sdk-target instead of task-sdk-bare
 * Add LIC_FILES_CHKSUM
 * Correct libsqlite3-dev dependency for Poky
 * Remove dependency on libts-dev

task-qte-toolchain-host.bb
 * Fix for Poky directory structure
 * qt4-tools-sdk -> qt4-tools-nativesdk

meta-toolchain-qte:
 * Fix for Poky directory structure
 * Use ${FAKEROOT} instead of fakeroot
 * Remove angstrom-specific suffix

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta/recipes-qt/meta/meta-toolchain-qte.bb         |   32 ++++++++++++++++
 meta/recipes-qt/tasks/task-qte-toolchain-host.bb   |    7 ++++
 meta/recipes-qt/tasks/task-qte-toolchain-target.bb |   39 ++++++++++++++++++++
 3 files changed, 78 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-qt/meta/meta-toolchain-qte.bb
 create mode 100644 meta/recipes-qt/tasks/task-qte-toolchain-host.bb
 create mode 100644 meta/recipes-qt/tasks/task-qte-toolchain-target.bb

diff --git a/meta/recipes-qt/meta/meta-toolchain-qte.bb b/meta/recipes-qt/meta/meta-toolchain-qte.bb
new file mode 100644
index 0000000..b29c5cf
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
+    ${FAKEROOT} tar cfj ${SDK_DEPLOY}/${TOOLCHAIN_OUTPUTNAME}.tar.bz2 .       
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
index 0000000..03e0e54
--- /dev/null
+++ b/meta/recipes-qt/tasks/task-qte-toolchain-target.bb
@@ -0,0 +1,39 @@
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
+#Qt Declarative is new in 4.7, try to include it like this.
+#RRECOMMENDS_${PN} += " \
+#        libqt-embeddeddeclarative4-dev \
+#        "
-- 
1.7.1


