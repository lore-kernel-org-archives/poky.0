Return-Path: <qing.he@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id AAB444C80FB6
	for <poky@yoctoproject.org>; Fri, 29 Apr 2011 04:43:28 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 29 Apr 2011 02:43:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,286,1301900400"; d="scan'208";a="635770193"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by orsmga002.jf.intel.com with ESMTP; 29 Apr 2011 02:43:27 -0700
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1QFk6t-0000GF-Id; Fri, 29 Apr 2011 17:35:39 +0800
Message-Id: <727a79bca6f96d727ce48f4f9edf2636c2b04966.1304069545.git.qing.he@intel.com>
In-Reply-To: <cover.1304069545.git.qing.he@intel.com>
References: <cover.1304069545.git.qing.he@intel.com>
Old-Date: Fri, 29 Apr 2011 10:55:05 +0800
Date: Fri, 29 Apr 2011 17:35:39 +0800
To: poky@yoctoproject.org
From: Qing He <qing.he@intel.com>
Subject: [PATCH 08/10] shared-mime-info: upgrade to version 0.90
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
X-List-Received-Date: Fri, 29 Apr 2011 09:43:28 -0000

From: Qing He <qing.he@intel.com>

from 0.80
 - parallel build with 0.9 is buggy, disable part of the check for now

Signed-off-by: Qing He <qing.he@intel.com>
---
 .../files/fix-parallel-build.patch                 |   33 ++++++++++++++++++++
 .../shared-mime-info/shared-mime-info_0.80.bb      |    5 ---
 .../shared-mime-info/shared-mime-info_0.90.bb      |    7 ++++
 3 files changed, 40 insertions(+), 5 deletions(-)
 create mode 100644 meta/recipes-support/shared-mime-info/files/fix-parallel-build.patch
 delete mode 100644 meta/recipes-support/shared-mime-info/shared-mime-info_0.80.bb
 create mode 100644 meta/recipes-support/shared-mime-info/shared-mime-info_0.90.bb

diff --git a/meta/recipes-support/shared-mime-info/files/fix-parallel-build.patch b/meta/recipes-support/shared-mime-info/files/fix-parallel-build.patch
new file mode 100644
index 0000000..ea8b05e
--- /dev/null
+++ b/meta/recipes-support/shared-mime-info/files/fix-parallel-build.patch
@@ -0,0 +1,33 @@
+the check rule will trigger a weird dependency issue in automake,
+it's possible that update-mime-database are invoked simultaneously in
+two different threads at the same time.
+
+As a workaround, revert it to the logic in 0.80
+
+Upstream-Status: Inappropriate [workaround]
+
+Signed-off-by: qing He <qing.he@intel.com>
+
+diff --git a/Makefile.am b/Makefile.am
+index 1a887bc..9df581e 100644
+--- a/Makefile.am
++++ b/Makefile.am
+@@ -72,7 +72,7 @@ uninstall-hook:
+ create-pot:
+ 	$(MAKE) -C po shared-mime-info.pot
+ 
+-check: freedesktop.org.xml update-mime-database check-translations
++check: freedesktop.org.xml check-translations
+ 	if test -n $(XMLLINT) ; then \
+ 		if test -e $(top_builddir)/freedesktop.org.xml; then \
+ 		xmllint --noout --valid $(top_builddir)/freedesktop.org.xml;	\
+@@ -80,9 +80,6 @@ check: freedesktop.org.xml update-mime-database check-translations
+ 		xmllint --noout --valid $(top_srcdir)/freedesktop.org.xml;	\
+ 		fi \
+ 	fi
+-	if test -d .git/ && test -x $(top_builddir)/update-mime-database && test -d $(top_srcdir)/mime-db-tests ; then \
+-		$(top_builddir)/update-mime-database mime-db-tests/ ; \
+-	fi
+ 	if test -d .git/ && test -x ../xdgmime/src/test-mime-data && test -x $(top_builddir)/test-tree-magic ; then \
+ 		mkdir -p $(top_builddir)/temp-mime-dir/mime/packages ; \
+ 		cp -a $(top_builddir)/freedesktop.org.xml $(top_builddir)/temp-mime-dir/mime/packages/ ; \
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
index 0000000..a806b36
--- /dev/null
+++ b/meta/recipes-support/shared-mime-info/shared-mime-info_0.90.bb
@@ -0,0 +1,7 @@
+require shared-mime-info.inc
+PR = "r0"
+
+SRC_URI += "file://fix-parallel-build.patch"
+
+SRC_URI[md5sum] = "967d68d3890ba3994cfce3adf5b8f15b"
+SRC_URI[sha256sum] = "52c9f84a8c72de631a0458542980b1728560f59845eb5e93e1dbe825f4b72304"
-- 
1.7.0


