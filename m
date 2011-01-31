Return-Path: <qing.he@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8619B4C8006D
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 02:58:38 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 31 Jan 2011 00:58:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,403,1291622400"; d="scan'208";a="652778536"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by fmsmga002.fm.intel.com with ESMTP; 31 Jan 2011 00:58:37 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PjpUs-0000Dz-2u; Mon, 31 Jan 2011 16:52:30 +0800
Message-Id: <7ffac4587151d4842b05b316a0270f4625cd39fb.1296463869.git.qing.he@intel.com>
In-Reply-To: <cover.1296463869.git.qing.he@intel.com>
References: <cover.1296463869.git.qing.he@intel.com>
Old-Date: Mon, 31 Jan 2011 16:49:39 +0800
Date: Mon, 31 Jan 2011 16:52:30 +0800
To: poky@yoctoproject.org
From: Qing He <qing.he@intel.com>
Subject: [PATCH 1/1] createrepo: fix native binary
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
X-List-Received-Date: Mon, 31 Jan 2011 08:58:38 -0000

From: Qing He <qing.he@intel.com>

Signed-off-by: Qing He <qing.he@intel.com>
---
 .../createrepo/createrepo/fix-native-install.patch |   40 +++++++++++++++++++-
 .../createrepo/createrepo_0.4.11.bb                |    2 +-
 2 files changed, 40 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-support/createrepo/createrepo/fix-native-install.patch b/meta/recipes-support/createrepo/createrepo/fix-native-install.patch
index f17d224..2ed2202 100644
--- a/meta/recipes-support/createrepo/createrepo/fix-native-install.patch
+++ b/meta/recipes-support/createrepo/createrepo/fix-native-install.patch
@@ -1,3 +1,11 @@
+Date: Jan 31, 2011
+
+There are two fixes:
+  1. -native needs to customize prefix
+  2. needs to change python reference in binaries
+
+Signed-off-by: Qing He <qing.he@intel.com>
+
 diff --git a/Makefile b/Makefile
 index b2d1a32..3c3639f 100644
 --- a/Makefile
@@ -40,7 +48,7 @@ index b2d1a32..3c3639f 100644
  pkgdatadir = $(datadir)/$(PACKAGE)
  pkglibdir = $(libdir)/$(PACKAGE)
 diff --git a/bin/Makefile b/bin/Makefile
-index 52c1f50..abef96a 100644
+index 52c1f50..e30610e 100644
 --- a/bin/Makefile
 +++ b/bin/Makefile
 @@ -1,22 +1,22 @@
@@ -80,6 +88,36 @@ index 52c1f50..abef96a 100644
  
  pkgdatadir = $(datadir)/$(PACKAGE)
  pkglibdir = $(libdir)/$(PACKAGE)
+@@ -40,8 +40,11 @@ all: $(srcdir)/$(PACKAGE)
+ 
+ 
+ install: all installdirs
+-	$(INSTALL_BIN) $(srcdir)/$(PACKAGE) $(DESTDIR)$(bindir)/$(PACKAGE)
+-	$(INSTALL_BIN) $(srcdir)/modifyrepo $(DESTDIR)$(bindir)/modifyrepo
++	sed -e "s|@DATADIR@|$(datadir)|" $(srcdir)/$(PACKAGE) > $(srcdir)/$(PACKAGE).tmp
++	sed -e "s|@DATADIR@|$(datadir)|" $(srcdir)/modifyrepo > $(srcdir)/modifyrepo.tmp
++	$(INSTALL_BIN) $(srcdir)/$(PACKAGE).tmp $(DESTDIR)$(bindir)/$(PACKAGE)
++	$(INSTALL_BIN) $(srcdir)/modifyrepo.tmp $(DESTDIR)$(bindir)/modifyrepo
++	rm -f $(srcdir)/$(PACKAGE).tmp $(srcdir)/modifyrepo.tmp
+ 
+ 
+ uninstall:
+diff --git a/bin/createrepo b/bin/createrepo
+index b0de515..eaacb39 100755
+--- a/bin/createrepo
++++ b/bin/createrepo
+@@ -1,2 +1,2 @@
+ #!/bin/sh
+-exec /usr/share/createrepo/genpkgmetadata.py "$@"
++exec @DATADIR@/createrepo/genpkgmetadata.py "$@"
+diff --git a/bin/modifyrepo b/bin/modifyrepo
+index c9732d8..6f7c1d4 100755
+--- a/bin/modifyrepo
++++ b/bin/modifyrepo
+@@ -1,2 +1,2 @@
+ #!/bin/sh
+-exec /usr/share/createrepo/modifyrepo.py "$@"
++exec @DATADIR@/createrepo/modifyrepo.py "$@"
 diff --git a/docs/Makefile b/docs/Makefile
 index 0a41179..e128c85 100644
 --- a/docs/Makefile
diff --git a/meta/recipes-support/createrepo/createrepo_0.4.11.bb b/meta/recipes-support/createrepo/createrepo_0.4.11.bb
index 62cf778..ba1d04b 100644
--- a/meta/recipes-support/createrepo/createrepo_0.4.11.bb
+++ b/meta/recipes-support/createrepo/createrepo_0.4.11.bb
@@ -4,7 +4,7 @@ HOMEPAGE = "http://createrepo.baseurl.org/"
 LICENSE = "GPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=18810669f13b87348459e611d31ab760"
 
-PR = "r0"
+PR = "r1"
 
 SRC_URI= "http://createrepo.baseurl.org/download/${BP}.tar.gz \
           file://fix-native-install.patch \
-- 
1.7.0


