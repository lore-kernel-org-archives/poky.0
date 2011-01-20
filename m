Return-Path: <qing.he@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9ACF94C810B6
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 03:30:27 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Jan 2011 01:30:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,350,1291622400"; d="scan'208";a="698713650"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by orsmga001.jf.intel.com with ESMTP; 20 Jan 2011 01:30:26 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1Pfqko-0001yA-QT; Thu, 20 Jan 2011 17:24:30 +0800
Message-Id: <85f7ea2efeca4cc2dcbfeeb6adbfe29aa584bf64.1295515302.git.qing.he@intel.com>
In-Reply-To: <cover.1295515302.git.qing.he@intel.com>
References: <cover.1295515302.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Old-Date: Thu, 20 Jan 2011 14:14:09 +0800
Date: Thu, 20 Jan 2011 17:24:30 +0800
To: poky@yoctoproject.org
Subject: [PATCH 4/7] shared-mime-info: upgrade to version 0.90
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
X-List-Received-Date: Thu, 20 Jan 2011 09:30:27 -0000

from 0.80

The patch is to fix the build for 0.90 and is expected to be removed
in the next version

Signed-off-by: Qing He <qing.he@intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |    4 +-
 .../shared-mime-info/fix-parallel-build.patch      |   21 ++++++++++++++++++++
 .../shared-mime-info/shared-mime-info_0.80.bb      |    5 ----
 .../shared-mime-info/shared-mime-info_0.90.bb      |    7 ++++++
 4 files changed, 30 insertions(+), 7 deletions(-)
 create mode 100644 meta/recipes-support/shared-mime-info/shared-mime-info/fix-parallel-build.patch
 delete mode 100644 meta/recipes-support/shared-mime-info/shared-mime-info_0.80.bb
 create mode 100644 meta/recipes-support/shared-mime-info/shared-mime-info_0.90.bb

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index 37f0650..abc723d 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -1688,11 +1688,11 @@ RECIPE_LATEST_RELEASE_DATE_pn-rpm = "01/2010"
 RECIPE_COMMENTS_pn-rpm = "the library alone is under dual license"
 
 RECIPE_STATUS_pn-shared-mime-info = "green"
-RECIPE_LAST_UPDATE_pn-shared-mime-info = "Nov 9, 2010"
+RECIPE_LAST_UPDATE_pn-shared-mime-info = "Jan 20, 2011"
 RECIPE_MAINTAINER_pn-shared-mime-info = "Qing He <qing.he@intel.com>"
 RECIPE_LATEST_VERSION_pn-shared-mime-info = "0.90"
 RECIPE_INTEL_SECTION_pn-shared-mime-info = "base utils"
-RECIPE_LATEST_RELEASE_DATE_pn-shared-mime-info = "02/2010"
+RECIPE_LATEST_RELEASE_DATE_pn-shared-mime-info = "12/2010"
 
 RECIPE_STATUS_pn-util-linux = "green"
 RECIPE_LAST_UPDATE_pn-util-linux = "Jul 21, 2010"
diff --git a/meta/recipes-support/shared-mime-info/shared-mime-info/fix-parallel-build.patch b/meta/recipes-support/shared-mime-info/shared-mime-info/fix-parallel-build.patch
new file mode 100644
index 0000000..6c5a968
--- /dev/null
+++ b/meta/recipes-support/shared-mime-info/shared-mime-info/fix-parallel-build.patch
@@ -0,0 +1,21 @@
+From 68e31f61f5e50e5222bc05437d1123e932922796 Mon Sep 17 00:00:00 2001
+From: Samuli Suominen <ssuominen@gentoo.org>
+Date: Mon, 06 Dec 2010 19:46:57 +0000
+Subject: Fix parallel build
+
+https://bugs.freedesktop.org/show_bug.cgi?id=32127
+---
+diff --git a/Makefile.am b/Makefile.am
+index ea4829b..5d0ea65 100644
+--- a/Makefile.am
++++ b/Makefile.am
+@@ -72,7 +72,7 @@ all: check create-pot
+ create-pot:
+ 	$(MAKE) -C po shared-mime-info.pot
+ 
+-check: freedesktop.org.xml update-mime-database check-translations
++check: create-pot freedesktop.org.xml update-mime-database check-translations
+ 	if test -n $(XMLLINT) ; then \
+ 		if test -e $(top_builddir)/freedesktop.org.xml; then \
+ 		xmllint --noout --valid $(top_builddir)/freedesktop.org.xml;	\
+--
diff --git a/meta/recipes-support/shared-mime-info/shared-mime-info_0.80.bb b/meta/recipes-support/shared-mime-info/shared-mime-info_0.80.bb
deleted file mode 100644
index f809923..0000000
--- a/meta/recipes-support/shared-mime-info/shared-mime-info_0.80.bb
+++ /dev/null
@@ -1,5 +0,0 @@
-require shared-mime-info.inc
-PR = "r0"
-
-SRC_URI[md5sum] = "eb8d24a6a80888849c9db7f30232ba6a"
-SRC_URI[sha256sum] = "80857ba19f8066bfc8d998bfc72b492e241ebd52d49c245aae9fd5b3d233b024"
diff --git a/meta/recipes-support/shared-mime-info/shared-mime-info_0.90.bb b/meta/recipes-support/shared-mime-info/shared-mime-info_0.90.bb
new file mode 100644
index 0000000..d296880
--- /dev/null
+++ b/meta/recipes-support/shared-mime-info/shared-mime-info_0.90.bb
@@ -0,0 +1,7 @@
+require shared-mime-info.inc
+PR = "r0"
+
+SRC_URI =+ "file://fix-parallel-build.patch"
+
+SRC_URI[md5sum] = "967d68d3890ba3994cfce3adf5b8f15b"
+SRC_URI[sha256sum] = "52c9f84a8c72de631a0458542980b1728560f59845eb5e93e1dbe825f4b72304"
-- 
1.7.0


