Return-Path: <josh@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id C00B14C811E6
	for <poky@yoctoproject.org>; Thu, 16 Dec 2010 10:33:27 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 16 Dec 2010 08:33:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,355,1288594800"; d="scan'208";a="362653631"
Received: from unknown (HELO localhost) ([10.255.16.75])
	by azsmga001.ch.intel.com with ESMTP; 16 Dec 2010 08:33:26 -0800
Message-Id: <f1520759ac657e115cd51f6f817fadd1f65fb7e8.1292516982.git.josh@linux.intel.com>
In-Reply-To: <cover.1292516982.git.josh@linux.intel.com>
References: <cover.1292516982.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Date: Wed, 15 Dec 2010 14:31:21 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 4/8] web-webkit: fix for make 3.82
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
X-List-Received-Date: Thu, 16 Dec 2010 16:33:28 -0000

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


