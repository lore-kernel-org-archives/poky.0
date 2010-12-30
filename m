Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 68E064C811EA
	for <poky@yoctoproject.org>; Wed, 29 Dec 2010 20:29:26 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 29 Dec 2010 18:28:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,247,1291622400"; d="scan'208";a="872900677"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by fmsmga001.fm.intel.com with ESMTP; 29 Dec 2010 18:28:59 -0800
Message-Id: <cc6896e488156e4d300b0bf593cdc0c275827c60.1293676328.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1293676328.git.dongxiao.xu@intel.com>
References: <cover.1293676328.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Old-Date: Tue, 28 Dec 2010 10:53:36 +0800
Date: Thu, 30 Dec 2010 10:38:44 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 06/19] gst-plugins-base: upgrade to version 0.10.31
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
X-List-Received-Date: Thu, 30 Dec 2010 02:29:26 -0000

upgrade from 0.10.30 to 0.10.31
Remove make-382.patch since the fix is already in upstream

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../gst-plugins-base-tremor.patch                  |    0
 ...base_0.10.30.bb => gst-plugins-base_0.10.31.bb} |    9 +++----
 .../gstreamer/gst-plugins/make-382.patch           |   25 --------------------
 3 files changed, 4 insertions(+), 30 deletions(-)
 rename meta/recipes-multimedia/gstreamer/{gst-plugins-base-0.10.30 => gst-plugins-base-0.10.31}/gst-plugins-base-tremor.patch (100%)
 rename meta/recipes-multimedia/gstreamer/{gst-plugins-base_0.10.30.bb => gst-plugins-base_0.10.31.bb} (78%)
 delete mode 100644 meta/recipes-multimedia/gstreamer/gst-plugins/make-382.patch

diff --git a/meta/recipes-multimedia/gstreamer/gst-plugins-base-0.10.30/gst-plugins-base-tremor.patch b/meta/recipes-multimedia/gstreamer/gst-plugins-base-0.10.31/gst-plugins-base-tremor.patch
similarity index 100%
rename from meta/recipes-multimedia/gstreamer/gst-plugins-base-0.10.30/gst-plugins-base-tremor.patch
rename to meta/recipes-multimedia/gstreamer/gst-plugins-base-0.10.31/gst-plugins-base-tremor.patch
diff --git a/meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.30.bb b/meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.31.bb
similarity index 78%
rename from meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.30.bb
rename to meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.31.bb
index 006efdf..980fac9 100644
--- a/meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.30.bb
+++ b/meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.31.bb
@@ -10,13 +10,12 @@ DEPENDS += "virtual/libx11 alsa-lib freetype gnome-vfs liboil libogg libvorbis l
 RDEPENDS += "gnome-vfs-plugin-file gnome-vfs-plugin-http gnome-vfs-plugin-ftp \
              gnome-vfs-plugin-sftp"
 
-SRC_URI += " file://gst-plugins-base-tremor.patch \
-	     file://make-382.patch"
+SRC_URI += " file://gst-plugins-base-tremor.patch"
 
-SRC_URI[md5sum] = "3ad90152b58563e1314af26c263f3c4c"
-SRC_URI[sha256sum] = "63938641380be9935c804ae8d55acdcfd93920ed2deb72dcf70f027a78b085d7"
+SRC_URI[md5sum] = "9baa0d87e81c88b2477a3554ab629c46"
+SRC_URI[sha256sum] = "abb006c78222cfb69d31e983268d1d5219e9d4e0da24c6c4cd687968af7a33bd"
 
-PR = "r2"
+PR = "r0"
 
 inherit gettext
 
diff --git a/meta/recipes-multimedia/gstreamer/gst-plugins/make-382.patch b/meta/recipes-multimedia/gstreamer/gst-plugins/make-382.patch
deleted file mode 100644
index 28caf07..0000000
--- a/meta/recipes-multimedia/gstreamer/gst-plugins/make-382.patch
+++ /dev/null
@@ -1,25 +0,0 @@
-Index: gst-plugins-base-0.10.29/common/gtk-doc-plugins.mak
-===================================================================
---- gst-plugins-base-0.10.29.orig/common/gtk-doc-plugins.mak
-+++ gst-plugins-base-0.10.29/common/gtk-doc-plugins.mak
-@@ -352,7 +352,7 @@ dist-hook: dist-check-gtkdoc dist-hook-l
- 	-cp $(srcdir)/$(DOC_MODULE).types $(distdir)/
- 	-cp $(srcdir)/$(DOC_MODULE)-sections.txt $(distdir)/
- 	cd $(distdir) && rm -f $(DISTCLEANFILES)
--        -gtkdoc-rebase --online --relative --html-dir=$(distdir)/html
-+	-gtkdoc-rebase --online --relative --html-dir=$(distdir)/html
- 
- .PHONY : dist-hook-local docs
- 
-Index: gst-plugins-base-0.10.29/common/gtk-doc.mak
-===================================================================
---- gst-plugins-base-0.10.29.orig/common/gtk-doc.mak
-+++ gst-plugins-base-0.10.29/common/gtk-doc.mak
-@@ -232,6 +232,6 @@ dist-hook: dist-check-gtkdoc dist-hook-l
- 	-cp $(srcdir)/$(DOC_MODULE).types $(distdir)/
- 	-cp $(srcdir)/$(DOC_MODULE)-sections.txt $(distdir)/
- 	cd $(distdir) && rm -f $(DISTCLEANFILES)
--        -gtkdoc-rebase --online --relative --html-dir=$(distdir)/html
-+	-gtkdoc-rebase --online --relative --html-dir=$(distdir)/html
- 
- .PHONY : dist-hook-local docs
-- 
1.6.3.3


