Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 319254C811DD
	for <poky@yoctoproject.org>; Wed, 29 Dec 2010 20:29:12 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 29 Dec 2010 18:29:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,247,1291622400"; d="scan'208";a="588237212"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by orsmga002.jf.intel.com with ESMTP; 29 Dec 2010 18:28:57 -0800
Message-Id: <e11ac328720436b98f3e8253fe25b98da203212c.1293676328.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1293676328.git.dongxiao.xu@intel.com>
References: <cover.1293676328.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Old-Date: Tue, 28 Dec 2010 10:09:17 +0800
Date: Thu, 30 Dec 2010 10:38:43 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 05/19] gstreamer: upgrade to version 0.10.31
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
X-List-Received-Date: Thu, 30 Dec 2010 02:29:12 -0000

upgrade from 0.10.30.
Remove make-382.patch since the fix is already in upstream.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../gstreamer/gstreamer-0.10.30/make-382.patch     |   32 --------------------
 .../check_fix.patch                                |    0
 .../gst-inspect-check-error.patch                  |    0
 .../gstregistrybinary.c                            |    0
 .../gstregistrybinary.h                            |    0
 .../{gstreamer_0.10.30.bb => gstreamer_0.10.31.bb} |    9 ++---
 6 files changed, 4 insertions(+), 37 deletions(-)
 delete mode 100644 meta/recipes-multimedia/gstreamer/gstreamer-0.10.30/make-382.patch
 rename meta/recipes-multimedia/gstreamer/{gstreamer-0.10.30 => gstreamer-0.10.31}/check_fix.patch (100%)
 rename meta/recipes-multimedia/gstreamer/{gstreamer-0.10.30 => gstreamer-0.10.31}/gst-inspect-check-error.patch (100%)
 rename meta/recipes-multimedia/gstreamer/{gstreamer-0.10.30 => gstreamer-0.10.31}/gstregistrybinary.c (100%)
 rename meta/recipes-multimedia/gstreamer/{gstreamer-0.10.30 => gstreamer-0.10.31}/gstregistrybinary.h (100%)
 rename meta/recipes-multimedia/gstreamer/{gstreamer_0.10.30.bb => gstreamer_0.10.31.bb} (84%)

diff --git a/meta/recipes-multimedia/gstreamer/gstreamer-0.10.30/make-382.patch b/meta/recipes-multimedia/gstreamer/gstreamer-0.10.30/make-382.patch
deleted file mode 100644
index 1af2a81..0000000
--- a/meta/recipes-multimedia/gstreamer/gstreamer-0.10.30/make-382.patch
+++ /dev/null
@@ -1,32 +0,0 @@
-The whitespaces instead of tabs here cause the new, stricter, parser in make
-3.82 to barf on the doc makefiles.
-
-This patch should no longer be required in more recent gstreamer version
-
-JL - 14/12/10
-
-Index: gstreamer-0.10.29/common/gtk-doc.mak
-===================================================================
---- gstreamer-0.10.29.orig/common/gtk-doc.mak
-+++ gstreamer-0.10.29/common/gtk-doc.mak
-@@ -232,6 +232,6 @@ dist-hook: dist-check-gtkdoc dist-hook-l
- 	-cp $(srcdir)/$(DOC_MODULE).types $(distdir)/
- 	-cp $(srcdir)/$(DOC_MODULE)-sections.txt $(distdir)/
- 	cd $(distdir) && rm -f $(DISTCLEANFILES)
--        -gtkdoc-rebase --online --relative --html-dir=$(distdir)/html
-+	-gtkdoc-rebase --online --relative --html-dir=$(distdir)/html
- 
- .PHONY : dist-hook-local docs
-Index: gstreamer-0.10.29/common/gtk-doc-plugins.mak
-===================================================================
---- gstreamer-0.10.29.orig/common/gtk-doc-plugins.mak
-+++ gstreamer-0.10.29/common/gtk-doc-plugins.mak
-@@ -352,7 +352,7 @@ dist-hook: dist-check-gtkdoc dist-hook-l
- 	-cp $(srcdir)/$(DOC_MODULE).types $(distdir)/
- 	-cp $(srcdir)/$(DOC_MODULE)-sections.txt $(distdir)/
- 	cd $(distdir) && rm -f $(DISTCLEANFILES)
--        -gtkdoc-rebase --online --relative --html-dir=$(distdir)/html
-+	-gtkdoc-rebase --online --relative --html-dir=$(distdir)/html
- 
- .PHONY : dist-hook-local docs
- 
diff --git a/meta/recipes-multimedia/gstreamer/gstreamer-0.10.30/check_fix.patch b/meta/recipes-multimedia/gstreamer/gstreamer-0.10.31/check_fix.patch
similarity index 100%
rename from meta/recipes-multimedia/gstreamer/gstreamer-0.10.30/check_fix.patch
rename to meta/recipes-multimedia/gstreamer/gstreamer-0.10.31/check_fix.patch
diff --git a/meta/recipes-multimedia/gstreamer/gstreamer-0.10.30/gst-inspect-check-error.patch b/meta/recipes-multimedia/gstreamer/gstreamer-0.10.31/gst-inspect-check-error.patch
similarity index 100%
rename from meta/recipes-multimedia/gstreamer/gstreamer-0.10.30/gst-inspect-check-error.patch
rename to meta/recipes-multimedia/gstreamer/gstreamer-0.10.31/gst-inspect-check-error.patch
diff --git a/meta/recipes-multimedia/gstreamer/gstreamer-0.10.30/gstregistrybinary.c b/meta/recipes-multimedia/gstreamer/gstreamer-0.10.31/gstregistrybinary.c
similarity index 100%
rename from meta/recipes-multimedia/gstreamer/gstreamer-0.10.30/gstregistrybinary.c
rename to meta/recipes-multimedia/gstreamer/gstreamer-0.10.31/gstregistrybinary.c
diff --git a/meta/recipes-multimedia/gstreamer/gstreamer-0.10.30/gstregistrybinary.h b/meta/recipes-multimedia/gstreamer/gstreamer-0.10.31/gstregistrybinary.h
similarity index 100%
rename from meta/recipes-multimedia/gstreamer/gstreamer-0.10.30/gstregistrybinary.h
rename to meta/recipes-multimedia/gstreamer/gstreamer-0.10.31/gstregistrybinary.h
diff --git a/meta/recipes-multimedia/gstreamer/gstreamer_0.10.30.bb b/meta/recipes-multimedia/gstreamer/gstreamer_0.10.31.bb
similarity index 84%
rename from meta/recipes-multimedia/gstreamer/gstreamer_0.10.30.bb
rename to meta/recipes-multimedia/gstreamer/gstreamer_0.10.31.bb
index 538884e..e7b00ad 100644
--- a/meta/recipes-multimedia/gstreamer/gstreamer_0.10.30.bb
+++ b/meta/recipes-multimedia/gstreamer/gstreamer_0.10.31.bb
@@ -10,15 +10,14 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=55ca817ccb7d5b5b66355690e9abc605 \
                     file://gst/gst.h;beginline=1;endline=21;md5=8e5fe5e87d33a04479fde862e238eaa4"
 DEPENDS = "glib-2.0 gettext libxml2 bison-native flex-native"
 
-PR = "r1"
+PR = "r0"
 
 SRC_URI = "http://gstreamer.freedesktop.org/src/gstreamer/gstreamer-${PV}.tar.bz2 \
            file://check_fix.patch \
-           file://gst-inspect-check-error.patch \
-	   file://make-382.patch"
+           file://gst-inspect-check-error.patch"
 
-SRC_URI[md5sum] = "de01f73f71d97c5854badd363ca06509"
-SRC_URI[sha256sum] = "e8ef301be423797ff36a0bb3615930b112b4175634051d19fd655e0ed974532a"
+SRC_URI[md5sum] = "a21fb08bdb578d972c7c14e77da8fbb6"
+SRC_URI[sha256sum] = "7f737e6d047c1ebeb4e1e0725fc377c5d9f12ee89186de7960be3cbba709ab84"
 
 inherit autotools pkgconfig
 
-- 
1.6.3.3


