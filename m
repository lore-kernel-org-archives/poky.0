Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40758E0075D
	for <poky@yoctoproject.org>; Wed, 14 Sep 2011 13:46:03 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 14 Sep 2011 13:45:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="48488657"
Received: from unknown (HELO swold-mobl.bigsur.com) ([10.255.14.252])
	by orsmga001.jf.intel.com with ESMTP; 14 Sep 2011 13:45:48 -0700
From: Saul Wold <sgw@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 14 Sep 2011 13:45:43 -0700
Message-Id: <0e9784d26df51bd564b8f23bd40a6c36969abd5c.1316033090.git.sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.6
In-Reply-To: <cover.1316033090.git.sgw@linux.intel.com>
References: <cover.1316033090.git.sgw@linux.intel.com>
In-Reply-To: <cover.1316033090.git.sgw@linux.intel.com>
References: <cover.1316033090.git.sgw@linux.intel.com>
Subject: [PATCH 2/2] qt-x11-free-native: fix where qmake gets linked
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
X-List-Received-Date: Thu, 15 Sep 2011 03:55:27 -0000

[YOCTO #1484]

qmake was getting linked in the sysroot directory to the build area
and this was being picked up by sstate.  Change how the symbolic link
is created

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb b/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb
index e64256f..779513e 100644
--- a/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb
+++ b/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb
@@ -4,7 +4,7 @@ PRIORITY = "optional"
 LICENSE = "GPL | QPL"
 DEPENDS = "xmu-native"
 HOMEPAGE = "http://www.trolltech.com"
-PR = "r0"
+PR = "r1"
 
 PROVIDES += "qt-x11-free-native"
 FILESDIR = "${@os.path.dirname(bb.data.getVar('FILE',d,1))}/qt-x11-free"
@@ -58,7 +58,7 @@ do_install() {
     install -d ${D}${datadir}/qt3/
     cp -PfR mkspecs ${D}${datadir}/qt3/
     ln -sf linux-g++ ${D}${datadir}/qt3/mkspecs/${TARGET_OS}-oe-g++
-    ln -s ${D}${datadir}/qt3/mkspecs/ ${D}${datadir}/qmake
+    ln -sf qt3/mkspecs ${D}${datadir}/qmake
     install -d ${D}${libdir}/
     oe_soinstall lib/libqt-mt.so.${PV} ${D}${libdir}/
     cd ${D}${bindir}
-- 
1.7.6


