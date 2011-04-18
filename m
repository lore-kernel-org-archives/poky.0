Return-Path: <edwin.zhai@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 34A5B4C80ACC
	for <poky@yoctoproject.org>; Mon, 18 Apr 2011 08:13:28 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 18 Apr 2011 06:13:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,232,1301900400"; d="scan'208";a="421193398"
Received: from yocto-build8.sh.intel.com (HELO localhost) ([10.239.48.1])
	by azsmga001.ch.intel.com with ESMTP; 18 Apr 2011 06:13:07 -0700
Message-Id: <30ed9fadaa6b342b23d908573c00adcf9405e828.1303131764.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1303131764.git.edwin.zhai@intel.com>
References: <cover.1303131764.git.edwin.zhai@intel.com>
Old-Date: Wed, 13 Apr 2011 13:24:22 +0800
Date: Mon, 18 Apr 2011 21:10:05 +0800
To: poky@yoctoproject.org
CC: 
From: Zhai Edwin <edwin.zhai@intel.com>
Subject: [PATCH 3/5] consolekit: Upgrade to 0.4.4 (from 0.4.3)
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
X-List-Received-Date: Mon, 18 Apr 2011 13:13:28 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../{consolekit_0.4.3.bb => consolekit_0.4.4.bb}   |   10 ++++++----
 .../consolekit/files/nopolkit.patch                |    2 ++
 2 files changed, 8 insertions(+), 4 deletions(-)
 rename meta/recipes-support/consolekit/{consolekit_0.4.3.bb => consolekit_0.4.4.bb} (75%)

diff --git a/meta/recipes-support/consolekit/consolekit_0.4.3.bb b/meta/recipes-support/consolekit/consolekit_0.4.4.bb
similarity index 75%
rename from meta/recipes-support/consolekit/consolekit_0.4.3.bb
rename to meta/recipes-support/consolekit/consolekit_0.4.4.bb
index 5bf4c52..0aec639 100644
--- a/meta/recipes-support/consolekit/consolekit_0.4.3.bb
+++ b/meta/recipes-support/consolekit/consolekit_0.4.4.bb
@@ -8,13 +8,15 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552 \
 
 DEPENDS = "dbus"
 
+PR = "r0"
+
 inherit gnome
 
-SRC_URI = "http://www.freedesktop.org/software/ConsoleKit/dist/ConsoleKit-0.4.3.tar.bz2 \
-           file://nopolkit.patch;patch=1"
+SRC_URI = "http://www.freedesktop.org/software/ConsoleKit/dist/ConsoleKit-${PV}.tar.bz2 \
+           file://nopolkit.patch"
 
-SRC_URI[md5sum] = "4c39c6eacc75334b890f21eead1d2945"
-SRC_URI[sha256sum] = "fe02aca2b4c21df59aa5fbe6f28ea3ea4b3c9dd64c48c50634e9a53cf9c0dcc5"
+SRC_URI[md5sum] = "b57eb18eae8c4d3631d5f4f030218a29"
+SRC_URI[sha256sum] = "f0c00969fb6fe7d628071f0f43ac0d411982a5e798d7dc31747caa772c9716ae"
 S = "${WORKDIR}/ConsoleKit-${PV}"
 
 FILES_${PN} += "${libdir}/ConsoleKit ${datadir}/dbus-1 ${datadir}/PolicyKit"
diff --git a/meta/recipes-support/consolekit/files/nopolkit.patch b/meta/recipes-support/consolekit/files/nopolkit.patch
index 7a1f02a..a0d9d06 100644
--- a/meta/recipes-support/consolekit/files/nopolkit.patch
+++ b/meta/recipes-support/consolekit/files/nopolkit.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 Index: ConsoleKit-0.4.3/configure.ac
 ===================================================================
 --- ConsoleKit-0.4.3.orig/configure.ac	2010-10-26 22:34:03.000000000 +0800
-- 
1.7.1


