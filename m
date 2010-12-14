Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8B3D44C80B71
	for <poky@yoctoproject.org>; Fri, 17 Dec 2010 09:47:26 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 17 Dec 2010 07:47:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,361,1288594800"; d="scan'208";a="584726597"
Received: from unknown (HELO localhost) ([10.255.16.45])
	by orsmga002.jf.intel.com with ESMTP; 17 Dec 2010 07:47:25 -0800
Message-Id: <2a9da3f354010f8cc9c84f17da4dda0ea8133ad4.1292600657.git.josh@linux.intel.com>
In-Reply-To: <cover.1292600657.git.josh@linux.intel.com>
References: <cover.1292600657.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Date: Tue, 14 Dec 2010 17:56:53 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/4] gst-plugins: fix for make 3.82
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
X-List-Received-Date: Fri, 17 Dec 2010 15:47:26 -0000

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 .../gstreamer/gst-plugins-base_0.10.30.bb          |    5 ++-
 meta/recipes-multimedia/gstreamer/gst-plugins.inc  |    2 +
 .../gstreamer/gst-plugins/make-382.patch           |   25 ++++++++++++++++++++
 3 files changed, 30 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-multimedia/gstreamer/gst-plugins/make-382.patch

diff --git a/meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.30.bb b/meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.30.bb
index aac6302..006efdf 100644
--- a/meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.30.bb
+++ b/meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.30.bb
@@ -10,12 +10,13 @@ DEPENDS += "virtual/libx11 alsa-lib freetype gnome-vfs liboil libogg libvorbis l
 RDEPENDS += "gnome-vfs-plugin-file gnome-vfs-plugin-http gnome-vfs-plugin-ftp \
              gnome-vfs-plugin-sftp"
 
-SRC_URI += " file://gst-plugins-base-tremor.patch"
+SRC_URI += " file://gst-plugins-base-tremor.patch \
+	     file://make-382.patch"
 
 SRC_URI[md5sum] = "3ad90152b58563e1314af26c263f3c4c"
 SRC_URI[sha256sum] = "63938641380be9935c804ae8d55acdcfd93920ed2deb72dcf70f027a78b085d7"
 
-PR = "r1"
+PR = "r2"
 
 inherit gettext
 
diff --git a/meta/recipes-multimedia/gstreamer/gst-plugins.inc b/meta/recipes-multimedia/gstreamer/gst-plugins.inc
index cd3e0a0..4edca95 100644
--- a/meta/recipes-multimedia/gstreamer/gst-plugins.inc
+++ b/meta/recipes-multimedia/gstreamer/gst-plugins.inc
@@ -7,6 +7,8 @@ DEPENDS = "gstreamer"
 
 inherit autotools pkgconfig
 
+FILESPATH =. "${FILE_DIRNAME}/gst-plugins:"
+
 SRC_URI = "http://gstreamer.freedesktop.org/src/${PN}/${PN}-${PV}.tar.bz2"
 
 EXTRA_OECONF = "--disable-valgrind --disable-debug --disable-examples "
diff --git a/meta/recipes-multimedia/gstreamer/gst-plugins/make-382.patch b/meta/recipes-multimedia/gstreamer/gst-plugins/make-382.patch
new file mode 100644
index 0000000..28caf07
--- /dev/null
+++ b/meta/recipes-multimedia/gstreamer/gst-plugins/make-382.patch
@@ -0,0 +1,25 @@
+Index: gst-plugins-base-0.10.29/common/gtk-doc-plugins.mak
+===================================================================
+--- gst-plugins-base-0.10.29.orig/common/gtk-doc-plugins.mak
++++ gst-plugins-base-0.10.29/common/gtk-doc-plugins.mak
+@@ -352,7 +352,7 @@ dist-hook: dist-check-gtkdoc dist-hook-l
+ 	-cp $(srcdir)/$(DOC_MODULE).types $(distdir)/
+ 	-cp $(srcdir)/$(DOC_MODULE)-sections.txt $(distdir)/
+ 	cd $(distdir) && rm -f $(DISTCLEANFILES)
+-        -gtkdoc-rebase --online --relative --html-dir=$(distdir)/html
++	-gtkdoc-rebase --online --relative --html-dir=$(distdir)/html
+ 
+ .PHONY : dist-hook-local docs
+ 
+Index: gst-plugins-base-0.10.29/common/gtk-doc.mak
+===================================================================
+--- gst-plugins-base-0.10.29.orig/common/gtk-doc.mak
++++ gst-plugins-base-0.10.29/common/gtk-doc.mak
+@@ -232,6 +232,6 @@ dist-hook: dist-check-gtkdoc dist-hook-l
+ 	-cp $(srcdir)/$(DOC_MODULE).types $(distdir)/
+ 	-cp $(srcdir)/$(DOC_MODULE)-sections.txt $(distdir)/
+ 	cd $(distdir) && rm -f $(DISTCLEANFILES)
+-        -gtkdoc-rebase --online --relative --html-dir=$(distdir)/html
++	-gtkdoc-rebase --online --relative --html-dir=$(distdir)/html
+ 
+ .PHONY : dist-hook-local docs
-- 
1.7.3.3


