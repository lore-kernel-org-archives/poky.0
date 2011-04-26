Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id D40E94C80ADD
	for <poky@yoctoproject.org>; Tue, 26 Apr 2011 01:43:11 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 25 Apr 2011 23:43:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,267,1301900400"; d="scan'208";a="425501333"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by azsmga001.ch.intel.com with ESMTP; 25 Apr 2011 23:43:11 -0700
Message-Id: <9906727ebb970cebbe115725b854405d593ac2e1.1303798223.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1303798223.git.dongxiao.xu@intel.com>
References: <cover.1303798223.git.dongxiao.xu@intel.com>
Old-Date: Tue, 26 Apr 2011 10:26:40 +0800
Date: Tue, 26 Apr 2011 14:46:06 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 07/13] libfm: Remove the flag of G_DISABLE_DEPRECATED
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
X-List-Received-Date: Tue, 26 Apr 2011 06:43:12 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Latest glib-2.0 changes some macros and function definitions to be
deprecated. However libfm still uses them. Therefore the flag
G_DISABLE_DEPRECATED should be removed in libfm's Makefile.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../libfm/libfm-0.1.14/use_deprecate_func.patch    |   11 +++++++++++
 meta/recipes-support/libfm/libfm_0.1.14.bb         |    5 +++--
 2 files changed, 14 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-support/libfm/libfm-0.1.14/use_deprecate_func.patch

diff --git a/meta/recipes-support/libfm/libfm-0.1.14/use_deprecate_func.patch b/meta/recipes-support/libfm/libfm-0.1.14/use_deprecate_func.patch
new file mode 100644
index 0000000..fade195
--- /dev/null
+++ b/meta/recipes-support/libfm/libfm-0.1.14/use_deprecate_func.patch
@@ -0,0 +1,11 @@
+diff -ruN libfm-0.1.14-orig//src/Makefile.am libfm-0.1.14/src/Makefile.am
+--- libfm-0.1.14-orig//src/Makefile.am	2011-04-26 10:01:44.297664993 +0800
++++ libfm-0.1.14/src/Makefile.am	2011-04-26 10:02:10.637665004 +0800
+@@ -285,7 +285,6 @@
+ 	$(GIO_CFLAGS) \
+ 	-DGIO_MODULE_DIR=\"$(giomodulesdir)\"	\
+ 	-DGVFS_LOCALEDIR=\""$(localedir)"\"	\
+-	-DG_DISABLE_DEPRECATED \
+ 	$(NULL)
+ 
+ libgiofm_la_LDFLAGS = 	\
diff --git a/meta/recipes-support/libfm/libfm_0.1.14.bb b/meta/recipes-support/libfm/libfm_0.1.14.bb
index c56ad33..5c7e95c 100644
--- a/meta/recipes-support/libfm/libfm_0.1.14.bb
+++ b/meta/recipes-support/libfm/libfm_0.1.14.bb
@@ -10,9 +10,10 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552 \
 SECTION = "x11/libs"
 DEPENDS = "gtk+ menu-cache intltool"
 
-PR = "r2"
+PR = "r3"
 
-SRC_URI = "${SOURCEFORGE_MIRROR}/pcmanfm/libfm-${PV}.tar.gz"
+SRC_URI = "${SOURCEFORGE_MIRROR}/pcmanfm/libfm-${PV}.tar.gz \
+           file://use_deprecate_func.patch"
 
 SRC_URI[md5sum] = "d55e51dced6bb9ef46665243b079761f"
 SRC_URI[sha256sum] = "e97bf3f9ed4f33b9f0be73e67d360b89337cccf816361faacd8422722269806b"
-- 
1.7.1


