Return-Path: <dexuan.cui@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 767924C8123C
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 17:41:24 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 27 Jan 2011 15:41:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,387,1291622400"; d="scan'208";a="597180183"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by orsmga002.jf.intel.com with ESMTP; 27 Jan 2011 15:41:21 -0800
Message-Id: <7873c7cf07d3972602ad98f7db0ba4da3353402e.1296171288.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1296171287.git.dexuan.cui@intel.com>
References: <cover.1296171287.git.dexuan.cui@intel.com>
Old-Date: Tue, 25 Jan 2011 02:04:32 +0800
Date: Fri, 28 Jan 2011  7:40:40 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [Dexuan: Jan 28: PULL 01/16] gnome-doc-utils: upgrade from 0.20.2 to 0.20.4
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
X-List-Received-Date: Thu, 27 Jan 2011 23:41:24 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Also fix DEPENDS on gettext for native casea -- this is to fix the
following failure(that occasionally occurs in my local tests):
configure.in:44: warning: AM_NLS is m4_require'd but not m4_defun'd
| aclocal.m4:1826: IT_PROG_INTLTOOL is expanded from...
| configure.in:44: the top level
| configure:3327: error: possibly undefined macro: AM_NLS

Also remove a trailing space char in LIC_FILES_CHKSUM.

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 meta/recipes-gnome/gnome/gnome-doc-utils.inc       |    2 +-
 meta/recipes-gnome/gnome/gnome-doc-utils_0.20.2.bb |    7 -------
 meta/recipes-gnome/gnome/gnome-doc-utils_0.20.4.bb |    7 +++++++
 3 files changed, 8 insertions(+), 8 deletions(-)
 delete mode 100644 meta/recipes-gnome/gnome/gnome-doc-utils_0.20.2.bb
 create mode 100644 meta/recipes-gnome/gnome/gnome-doc-utils_0.20.4.bb

diff --git a/meta/recipes-gnome/gnome/gnome-doc-utils.inc b/meta/recipes-gnome/gnome/gnome-doc-utils.inc
index 7328c59..9f5a6ff 100644
--- a/meta/recipes-gnome/gnome/gnome-doc-utils.inc
+++ b/meta/recipes-gnome/gnome/gnome-doc-utils.inc
@@ -1,6 +1,6 @@
 LICENSE = "GPL LGPL"
 DEPENDS = "libxml2 libxslt libxslt-native gnome-doc-utils-native"
-DEPENDS_virtclass-native = "libxml2-native libxslt-native"
+DEPENDS_virtclass-native = "libxml2-native libxslt-native gettext-native"
 
 inherit gnome
 
diff --git a/meta/recipes-gnome/gnome/gnome-doc-utils_0.20.2.bb b/meta/recipes-gnome/gnome/gnome-doc-utils_0.20.2.bb
deleted file mode 100644
index 9bdcced..0000000
--- a/meta/recipes-gnome/gnome/gnome-doc-utils_0.20.2.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-require gnome-doc-utils.inc
-LIC_FILES_CHKSUM = "file://COPYING.GPL;md5=eb723b61539feef013de476e68b5c50a \
-		    file://COPYING.LGPL;md5=a6f89e2100d9b6cdffcea4f398e37343 "
-PR = "r1"
-
-SRC_URI[archive.md5sum] = "920914c13c57e67616c6ff8594579786"
-SRC_URI[archive.sha256sum] = "f6c0124f61b9400c63da630dd3a9ac1b738eac0058da245661ff699fad267aca"
diff --git a/meta/recipes-gnome/gnome/gnome-doc-utils_0.20.4.bb b/meta/recipes-gnome/gnome/gnome-doc-utils_0.20.4.bb
new file mode 100644
index 0000000..a8cbcf0
--- /dev/null
+++ b/meta/recipes-gnome/gnome/gnome-doc-utils_0.20.4.bb
@@ -0,0 +1,7 @@
+require gnome-doc-utils.inc
+LIC_FILES_CHKSUM = "file://COPYING.GPL;md5=eb723b61539feef013de476e68b5c50a \
+		    file://COPYING.LGPL;md5=a6f89e2100d9b6cdffcea4f398e37343"
+PR = "r0"
+
+SRC_URI[archive.md5sum] = "6872b68dd081fc033e07d5877b4c0645"
+SRC_URI[archive.sha256sum] = "97c6465ffb15969a9fe1761f16f30c1028977fb24ecda89a0b479170f6412e4d"
-- 
1.7.2


