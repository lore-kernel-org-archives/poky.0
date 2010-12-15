Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6C0A64C811FA
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 10:29:50 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 15 Dec 2010 08:29:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,349,1288594800"; d="scan'208";a="687433470"
Received: from unknown (HELO localhost) ([10.255.16.78])
	by orsmga001.jf.intel.com with ESMTP; 15 Dec 2010 08:29:49 -0800
Message-Id: <6e71b0a012f0676c06b7b4788d932f320fca0b74.1292430240.git.josh@linux.intel.com>
In-Reply-To: <cover.1292430240.git.josh@linux.intel.com>
References: <cover.1292430240.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Date: Wed, 15 Dec 2010 14:31:21 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 14/14] web-webkit: fix for make 3.82
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
X-List-Received-Date: Wed, 15 Dec 2010 16:29:50 -0000

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 meta/recipes-sato/web/web-webkit/make-382.patch |   15 +++++++++++++++
 meta/recipes-sato/web/web-webkit_svn.bb         |    5 +++--
 2 files changed, 18 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-sato/web/web-webkit/make-382.patch

diff --git a/meta/recipes-sato/web/web-webkit/make-382.patch b/meta/recipes-sato/web/web-webkit/make-382.patch
new file mode 100644
index 0000000..253743d
--- /dev/null
+++ b/meta/recipes-sato/web/web-webkit/make-382.patch
@@ -0,0 +1,15 @@
+Make 3.82 does not allow 8 spaces instead of a tab
+
+JL - 15/12/10
+
+Index: webkit/Makefile.am
+===================================================================
+--- webkit.orig/Makefile.am
++++ webkit/Makefile.am
+@@ -5,5 +5,5 @@ SUBDIRS = src data
+ MAINTAINERCLEANFILES = aclocal.m4 compile config.guess config.sub configure depcomp install-sh ltmain.sh Makefile.in missing
+ 
+ snapshot:
+-        $(MAKE) dist distdir=$(PACKAGE)-snap`date +"%Y%m%d"`
++	$(MAKE) dist distdir=$(PACKAGE)-snap`date +"%Y%m%d"`
+ 
diff --git a/meta/recipes-sato/web/web-webkit_svn.bb b/meta/recipes-sato/web/web-webkit_svn.bb
index 9cdf1f9..895d49b 100644
--- a/meta/recipes-sato/web/web-webkit_svn.bb
+++ b/meta/recipes-sato/web/web-webkit_svn.bb
@@ -8,10 +8,11 @@ SECTION = "x11"
 DEPENDS = "libxml2 glib-2.0 gtk+ libglade webkit-gtk curl gconf js libowl"
 
 PV = "0.0+svnr${SRCREV}"
-PR = "r2"
+PR = "r3"
 
 SRC_URI = "svn://svn.o-hand.com/repos/web/branches;module=webkit;proto=http \
-           file://link-with-g++.patch;patch=1"
+           file://link-with-g++.patch \
+	   file://make-382.patch"
 
 S = "${WORKDIR}/webkit"
 
-- 
1.7.3.3


