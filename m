Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id AA39D4C811CB
	for <poky@yoctoproject.org>; Thu, 18 Nov 2010 08:48:34 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Nov 2010 06:48:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,217,1288594800"; d="scan'208";a="678754616"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by orsmga001.jf.intel.com with ESMTP; 18 Nov 2010 06:48:34 -0800
Message-Id: <460abc6a41c07a12e9e3af90c9c46c93e4e6b582.1290091760.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1290091759.git.dongxiao.xu@intel.com>
References: <cover.1290091759.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Thu, 18 Nov 2010 13:38:30 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 4/7] msynctool: Upgrade to version 0.38
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
X-List-Received-Date: Thu, 18 Nov 2010 14:48:34 -0000

Fixed its metadata

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../opensync/msynctool_0.37.bb                     |   14 --------------
 .../opensync/msynctool_0.38.bb                     |   20 ++++++++++++++++++++
 2 files changed, 20 insertions(+), 14 deletions(-)
 delete mode 100644 meta/recipes-connectivity/opensync/msynctool_0.37.bb
 create mode 100644 meta/recipes-connectivity/opensync/msynctool_0.38.bb

diff --git a/meta/recipes-connectivity/opensync/msynctool_0.37.bb b/meta/recipes-connectivity/opensync/msynctool_0.37.bb
deleted file mode 100644
index aa5b598..0000000
--- a/meta/recipes-connectivity/opensync/msynctool_0.37.bb
+++ /dev/null
@@ -1,14 +0,0 @@
-SRC_URI = "http://www.opensync.org/download/releases/${PV}/msynctool-${PV}.tar.bz2"
-
-SUMMARY = "Calendar (and other PIM data) synchronization program"
-
-DESCRIPTION = "msynctool is a program to synchronize calendars, \
-addressbooks and other PIM data between programs on your computer and \
-other computers, mobile devices, PDAs or cell phones.  It uses the \
-OpenSync plugins when synchronizing data."
-
-LICENSE = "GPL"
-DEPENDS = "libopensync glib-2.0"
-HOMEPAGE = "http://www.opensync.org/"
-
-inherit cmake pkgconfig
diff --git a/meta/recipes-connectivity/opensync/msynctool_0.38.bb b/meta/recipes-connectivity/opensync/msynctool_0.38.bb
new file mode 100644
index 0000000..ff86a0b
--- /dev/null
+++ b/meta/recipes-connectivity/opensync/msynctool_0.38.bb
@@ -0,0 +1,20 @@
+SUMMARY = "Calendar (and other PIM data) synchronization program"
+DESCRIPTION = "msynctool is a program to synchronize calendars, \
+addressbooks and other PIM data between programs on your computer and \
+other computers, mobile devices, PDAs or cell phones.  It uses the \
+OpenSync plugins when synchronizing data."
+HOMEPAGE = "http://www.opensync.org/"
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
+                    file://tools/msynctool.c;beginline=1;endline=20;md5=0b71ef245b75c74bff7d7ec58b9b4527"
+
+DEPENDS = "libopensync glib-2.0"
+
+SRC_URI = "http://www.opensync.org/download/releases/${PV}/msynctool-${PV}.tar.bz2"
+
+inherit cmake pkgconfig
+
+PR = "r0"
+
+SRC_URI[md5sum] = "495c45d6f12d3523a736864b0ced6ce5"
+SRC_URI[sha256sum] = "4a903d4db05bf2f677a675ec47e9791da9b1752c9feda0026157e82aa97e372b"
-- 
1.7.0.4


