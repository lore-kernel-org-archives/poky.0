Return-Path: <josh@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 731994C811ED
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 10:28:53 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 15 Dec 2010 08:28:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,349,1288594800"; d="scan'208";a="868560696"
Received: from unknown (HELO localhost) ([10.255.16.78])
	by fmsmga001.fm.intel.com with ESMTP; 15 Dec 2010 08:28:47 -0800
Message-Id: <9e11fbf9048b17526ca8160d82b69f386595c9a7.1292430240.git.josh@linux.intel.com>
In-Reply-To: <cover.1292430240.git.josh@linux.intel.com>
References: <cover.1292430240.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Date: Tue, 14 Dec 2010 15:39:42 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 08/14] gstreamer: fix to comply with make 3.82's stricter parser
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
X-List-Received-Date: Wed, 15 Dec 2010 16:28:53 -0000

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 .../gstreamer/gstreamer-0.10.29/make-382.patch     |   32 ++++++++++++++++++++
 .../gstreamer/gstreamer_0.10.29.bb                 |    7 ++--
 2 files changed, 36 insertions(+), 3 deletions(-)
 create mode 100644 meta/recipes-multimedia/gstreamer/gstreamer-0.10.29/make-382.patch

diff --git a/meta/recipes-multimedia/gstreamer/gstreamer-0.10.29/make-382.patch b/meta/recipes-multimedia/gstreamer/gstreamer-0.10.29/make-382.patch
new file mode 100644
index 0000000..1af2a81
--- /dev/null
+++ b/meta/recipes-multimedia/gstreamer/gstreamer-0.10.29/make-382.patch
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
diff --git a/meta/recipes-multimedia/gstreamer/gstreamer_0.10.29.bb b/meta/recipes-multimedia/gstreamer/gstreamer_0.10.29.bb
index 38e28fa..9b7185a 100644
--- a/meta/recipes-multimedia/gstreamer/gstreamer_0.10.29.bb
+++ b/meta/recipes-multimedia/gstreamer/gstreamer_0.10.29.bb
@@ -9,11 +9,12 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=55ca817ccb7d5b5b66355690e9abc605 \
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
 
 inherit autotools pkgconfig
 
-- 
1.7.3.3


