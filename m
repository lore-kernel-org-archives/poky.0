Return-Path: <josh@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 52F314C811EA
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 10:29:14 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 15 Dec 2010 08:29:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,349,1288594800"; d="scan'208";a="868560844"
Received: from unknown (HELO localhost) ([10.255.16.78])
	by fmsmga001.fm.intel.com with ESMTP; 15 Dec 2010 08:29:12 -0800
Message-Id: <290280b332570ec73301f76765b1c5f2de20a9fd.1292430240.git.josh@linux.intel.com>
In-Reply-To: <cover.1292430240.git.josh@linux.intel.com>
References: <cover.1292430240.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Date: Tue, 14 Dec 2010 17:56:53 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 09/14] gst-plugins: fix for make 3.82
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
X-List-Received-Date: Wed, 15 Dec 2010 16:29:14 -0000

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 .../gstreamer/gst-plugins-bad_0.10.19.bb           |    2 +-
 .../gstreamer/gst-plugins-base_0.10.29.bb          |    2 +-
 .../gstreamer/gst-plugins-good_0.10.23.bb          |    2 +-
 .../gstreamer/gst-plugins-ugly_0.10.15.bb          |    2 +-
 meta/recipes-multimedia/gstreamer/gst-plugins.inc  |    5 +++-
 .../gstreamer/gst-plugins/make-382.patch           |   25 ++++++++++++++++++++
 6 files changed, 33 insertions(+), 5 deletions(-)
 create mode 100644 meta/recipes-multimedia/gstreamer/gst-plugins/make-382.patch

diff --git a/meta/recipes-multimedia/gstreamer/gst-plugins-bad_0.10.19.bb b/meta/recipes-multimedia/gstreamer/gst-plugins-bad_0.10.19.bb
index 1a58668..1960dd9 100644
--- a/meta/recipes-multimedia/gstreamer/gst-plugins-bad_0.10.19.bb
+++ b/meta/recipes-multimedia/gstreamer/gst-plugins-bad_0.10.19.bb
@@ -9,7 +9,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3 \
 
 DEPENDS += "gst-plugins-base libmusicbrainz tremor"
 
-PR = "r2"
+PR = "r3"
 
 inherit gettext
 
diff --git a/meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.29.bb b/meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.29.bb
index c1d2f1e..1945da0 100644
--- a/meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.29.bb
+++ b/meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.29.bb
@@ -10,7 +10,7 @@ DEPENDS += "virtual/libx11 alsa-lib freetype gnome-vfs liboil libogg libvorbis l
 RDEPENDS += "gnome-vfs-plugin-file gnome-vfs-plugin-http gnome-vfs-plugin-ftp \
              gnome-vfs-plugin-sftp"
 
-PR = "r1"
+PR = "r2"
 
 inherit gettext
 
diff --git a/meta/recipes-multimedia/gstreamer/gst-plugins-good_0.10.23.bb b/meta/recipes-multimedia/gstreamer/gst-plugins-good_0.10.23.bb
index 528dcbf..784ba77 100644
--- a/meta/recipes-multimedia/gstreamer/gst-plugins-good_0.10.23.bb
+++ b/meta/recipes-multimedia/gstreamer/gst-plugins-good_0.10.23.bb
@@ -7,7 +7,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343 \
 
 DEPENDS += "gst-plugins-base gconf cairo jpeg libpng gtk+ zlib libid3tag flac \
 	    speex"
-PR = "r0"
+PR = "r1"
 
 inherit gettext
 
diff --git a/meta/recipes-multimedia/gstreamer/gst-plugins-ugly_0.10.15.bb b/meta/recipes-multimedia/gstreamer/gst-plugins-ugly_0.10.15.bb
index 7dda685..aa0ef9f 100644
--- a/meta/recipes-multimedia/gstreamer/gst-plugins-ugly_0.10.15.bb
+++ b/meta/recipes-multimedia/gstreamer/gst-plugins-ugly_0.10.15.bb
@@ -7,7 +7,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343 \
                     file://gst/mpegstream/gstmpegparse.h;beginline=1;endline=18;md5=ff65467b0c53cdfa98d0684c1bc240a9"
 
 DEPENDS += "gst-plugins-base libid3tag libmad mpeg2dec liba52 lame"
-PR = "r0"
+PR = "r1"
 
 inherit gettext
 
diff --git a/meta/recipes-multimedia/gstreamer/gst-plugins.inc b/meta/recipes-multimedia/gstreamer/gst-plugins.inc
index cd3e0a0..644a78e 100644
--- a/meta/recipes-multimedia/gstreamer/gst-plugins.inc
+++ b/meta/recipes-multimedia/gstreamer/gst-plugins.inc
@@ -7,7 +7,10 @@ DEPENDS = "gstreamer"
 
 inherit autotools pkgconfig
 
-SRC_URI = "http://gstreamer.freedesktop.org/src/${PN}/${PN}-${PV}.tar.bz2"
+FILESPATH =. "${FILE_DIRNAME}/gst-plugins:"
+
+SRC_URI = "http://gstreamer.freedesktop.org/src/${PN}/${PN}-${PV}.tar.bz2 \
+	   file://make-382.patch"
 
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


