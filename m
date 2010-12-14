Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 221574C80FA8
	for <poky@yoctoproject.org>; Thu, 16 Dec 2010 10:33:15 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 16 Dec 2010 08:33:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,356,1288594800"; d="scan'208";a="584369655"
Received: from unknown (HELO localhost) ([10.255.16.75])
	by orsmga002.jf.intel.com with ESMTP; 16 Dec 2010 08:33:05 -0800
Message-Id: <f247a793c140d7b8df4ad667de63ffbc00de8139.1292516982.git.josh@linux.intel.com>
In-Reply-To: <cover.1292516982.git.josh@linux.intel.com>
References: <cover.1292516982.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Date: Tue, 14 Dec 2010 15:39:42 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/8] gstreamer: fix to comply with make 3.82's stricter parser
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
X-List-Received-Date: Thu, 16 Dec 2010 16:33:15 -0000

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 .../gstreamer/gstreamer-0.10.30/make-382.patch     |   32 ++++++++++++++++++++
 .../gstreamer/gstreamer_0.10.30.bb                 |    7 ++--
 2 files changed, 36 insertions(+), 3 deletions(-)
 create mode 100644 meta/recipes-multimedia/gstreamer/gstreamer-0.10.30/make-382.patch

diff --git a/meta/recipes-multimedia/gstreamer/gstreamer-0.10.30/make-382.patch b/meta/recipes-multimedia/gstreamer/gstreamer-0.10.30/make-382.patch
new file mode 100644
index 0000000..1af2a81
--- /dev/null
+++ b/meta/recipes-multimedia/gstreamer/gstreamer-0.10.30/make-382.patch
@@ -0,0 +1,32 @@
+The whitespaces instead of tabs here cause the new, stricter, parser in make
+3.82 to barf on the doc makefiles.
+
+This patch should no longer be required in more recent gstreamer version
+
+JL - 14/12/10
+
+Index: gstreamer-0.10.29/common/gtk-doc.mak
+===================================================================
+--- gstreamer-0.10.29.orig/common/gtk-doc.mak
++++ gstreamer-0.10.29/common/gtk-doc.mak
+@@ -232,6 +232,6 @@ dist-hook: dist-check-gtkdoc dist-hook-l
+ 	-cp $(srcdir)/$(DOC_MODULE).types $(distdir)/
+ 	-cp $(srcdir)/$(DOC_MODULE)-sections.txt $(distdir)/
+ 	cd $(distdir) && rm -f $(DISTCLEANFILES)
+-        -gtkdoc-rebase --online --relative --html-dir=$(distdir)/html
++	-gtkdoc-rebase --online --relative --html-dir=$(distdir)/html
+ 
+ .PHONY : dist-hook-local docs
+Index: gstreamer-0.10.29/common/gtk-doc-plugins.mak
+===================================================================
+--- gstreamer-0.10.29.orig/common/gtk-doc-plugins.mak
++++ gstreamer-0.10.29/common/gtk-doc-plugins.mak
+@@ -352,7 +352,7 @@ dist-hook: dist-check-gtkdoc dist-hook-l
+ 	-cp $(srcdir)/$(DOC_MODULE).types $(distdir)/
+ 	-cp $(srcdir)/$(DOC_MODULE)-sections.txt $(distdir)/
+ 	cd $(distdir) && rm -f $(DISTCLEANFILES)
+-        -gtkdoc-rebase --online --relative --html-dir=$(distdir)/html
++	-gtkdoc-rebase --online --relative --html-dir=$(distdir)/html
+ 
+ .PHONY : dist-hook-local docs
+ 
diff --git a/meta/recipes-multimedia/gstreamer/gstreamer_0.10.30.bb b/meta/recipes-multimedia/gstreamer/gstreamer_0.10.30.bb
index 923365f..538884e 100644
--- a/meta/recipes-multimedia/gstreamer/gstreamer_0.10.30.bb
+++ b/meta/recipes-multimedia/gstreamer/gstreamer_0.10.30.bb
@@ -10,11 +10,12 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=55ca817ccb7d5b5b66355690e9abc605 \
                     file://gst/gst.h;beginline=1;endline=21;md5=8e5fe5e87d33a04479fde862e238eaa4"
 DEPENDS = "glib-2.0 gettext libxml2 bison-native flex-native"
 
-PR = "r0"
+PR = "r1"
 
 SRC_URI = "http://gstreamer.freedesktop.org/src/gstreamer/gstreamer-${PV}.tar.bz2 \
-           file://check_fix.patch;patch=1 \
-           file://gst-inspect-check-error.patch;patch=1"
+           file://check_fix.patch \
+           file://gst-inspect-check-error.patch \
+	   file://make-382.patch"
 
 SRC_URI[md5sum] = "de01f73f71d97c5854badd363ca06509"
 SRC_URI[sha256sum] = "e8ef301be423797ff36a0bb3615930b112b4175634051d19fd655e0ed974532a"
-- 
1.7.3.3


