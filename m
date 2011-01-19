Return-Path: <edwin.zhai@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id DB0724C811E0
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 18:41:35 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Jan 2011 16:41:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,341,1291622400"; d="scan'208";a="698166852"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.31])
	by orsmga001.jf.intel.com with ESMTP; 18 Jan 2011 16:41:34 -0800
Message-Id: <1900b0ecc4d4c74dd608f690e733c5d6e94ab1ec.1295397702.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1295397702.git.edwin.zhai@intel.com>
References: <cover.1295397702.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Old-Date: Thu, 16 Dec 2010 10:32:41 +0800
Date: Wed, 19 Jan 2011  8:46:06 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 3/6] eds-dbus: Do not disable old API after upgrading gtk+
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
X-List-Received-Date: Wed, 19 Jan 2011 00:41:36 -0000

This avoid build error due to defination missing.

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 meta/recipes-sato/eds/eds-dbus/old-gdk-api.patch |   17 +++++++++++++++++
 meta/recipes-sato/eds/eds-dbus_git.bb            |    1 +
 2 files changed, 18 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-sato/eds/eds-dbus/old-gdk-api.patch

diff --git a/meta/recipes-sato/eds/eds-dbus/old-gdk-api.patch b/meta/recipes-sato/eds/eds-dbus/old-gdk-api.patch
new file mode 100644
index 0000000..8b60069
--- /dev/null
+++ b/meta/recipes-sato/eds/eds-dbus/old-gdk-api.patch
@@ -0,0 +1,17 @@
+Do not disable old API after upgrading gtk+.
+This avoid build error due to defination missing.
+
+Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
+
+Index: git/configure.ac
+===================================================================
+--- git.orig/configure.ac	2010-12-16 10:25:24.000000000 +0800
++++ git/configure.ac	2010-12-16 10:25:58.000000000 +0800
+@@ -147,7 +147,6 @@
+ AS_COMPILER_FLAGS(WARNING_FLAGS,
+ 	"-DG_DISABLE_DEPRECATED
+ 	-DPANGO_DISABLE_DEPRECATED
+-	-DGDK_DISABLE_DEPRECATED
+ 	-DGDK_PIXBUF_DISABLE_DEPRECATED
+ 	-DG_DISABLE_SINGLE_INCLUDES
+ 	-DGTK_DISABLE_SINGLE_INCLUDES
diff --git a/meta/recipes-sato/eds/eds-dbus_git.bb b/meta/recipes-sato/eds/eds-dbus_git.bb
index e5b7e15..5ab96a7 100644
--- a/meta/recipes-sato/eds/eds-dbus_git.bb
+++ b/meta/recipes-sato/eds/eds-dbus_git.bb
@@ -18,6 +18,7 @@ SRC_URI = "git://git.gnome.org/evolution-data-server;protocol=git \
            file://nossl.patch;patch=1 \
            file://optional_imapx_provider.patch;patch=1 \
            file://new-contact-fix.patch;patch=1 \
+           file://old-gdk-api.patch;patch=1 \
            file://iconv-detect.h"
 
 S = "${WORKDIR}/git"
-- 
1.7.0.4


