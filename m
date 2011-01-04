Return-Path: <edwin.zhai@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 84BB54C811ED
	for <poky@yoctoproject.org>; Tue,  4 Jan 2011 07:45:34 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 04 Jan 2011 05:45:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,272,1291622400"; d="scan'208";a="369839517"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.31])
	by azsmga001.ch.intel.com with ESMTP; 04 Jan 2011 05:45:12 -0800
Message-Id: <2d2be40ccc39aff42bdbe6beb2d2818fe02bcf6f.1294148490.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1294148490.git.edwin.zhai@intel.com>
References: <cover.1294148490.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Old-Date: Fri, 31 Dec 2010 09:18:30 +0800
Date: Tue, 04 Jan 2011 21:50:20 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 5/7] libcanberra: Upgrade to 0.26
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
X-List-Received-Date: Tue, 04 Jan 2011 13:45:34 -0000

Remove nofallbackfix.patch it as already in upstream. Remove
autoconf_version.patch as already have new version of autoconf and no inbuild
libltdl now.

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../pulseaudio/libcanberra/autoconf_version.patch  |   38 --------------------
 .../pulseaudio/libcanberra/nofallbackfix.patch     |   16 --------
 .../{libcanberra_0.10.bb => libcanberra_0.26.bb}   |   10 ++---
 3 files changed, 4 insertions(+), 60 deletions(-)
 delete mode 100644 meta/recipes-multimedia/pulseaudio/libcanberra/autoconf_version.patch
 delete mode 100644 meta/recipes-multimedia/pulseaudio/libcanberra/nofallbackfix.patch
 rename meta/recipes-multimedia/pulseaudio/{libcanberra_0.10.bb => libcanberra_0.26.bb} (73%)

diff --git a/meta/recipes-multimedia/pulseaudio/libcanberra/autoconf_version.patch b/meta/recipes-multimedia/pulseaudio/libcanberra/autoconf_version.patch
deleted file mode 100644
index 73a2ea6..0000000
--- a/meta/recipes-multimedia/pulseaudio/libcanberra/autoconf_version.patch
+++ /dev/null
@@ -1,38 +0,0 @@
-Allow a slightly older autoconf and disable the inbuild libltdl
-
-RP - 16/4/09
-
-Index: libcanberra-0.10/Makefile.am
-===================================================================
---- libcanberra-0.10.orig/Makefile.am	2009-04-16 14:38:53.000000000 +0100
-+++ libcanberra-0.10/Makefile.am	2009-04-16 14:39:04.000000000 +0100
-@@ -19,7 +19,7 @@
- dist_doc_DATA = README
- 
- EXTRA_DIST = bootstrap.sh autogen.sh LGPL libcanberra.schemas
--SUBDIRS = src gtkdoc libltdl doc
-+SUBDIRS = src gtkdoc doc
- 
- MAINTAINERCLEANFILES = README
- noinst_DATA = README
-Index: libcanberra-0.10/configure.ac
-===================================================================
---- libcanberra-0.10.orig/configure.ac	2009-04-16 14:32:33.000000000 +0100
-+++ libcanberra-0.10/configure.ac	2009-04-16 14:37:50.000000000 +0100
-@@ -19,7 +19,7 @@
- # License along with libcanberra. If not, see
- # <http://www.gnu.org/licenses/>.
- 
--AC_PREREQ(2.62)
-+AC_PREREQ(2.61)
- 
- AC_INIT([libcanberra], 0.10, [mzyvopnaoreen (at) 0pointer (dot) de])
- AC_CONFIG_SRCDIR([src/common.c])
-@@ -70,7 +70,6 @@
- AC_PROG_LIBTOOL
- AC_SUBST(LTDLINCL)
- AC_SUBST(LIBLTDL)
--AC_CONFIG_SUBDIRS(libltdl)
- 
- #### Determine build environment ####
- 
diff --git a/meta/recipes-multimedia/pulseaudio/libcanberra/nofallbackfix.patch b/meta/recipes-multimedia/pulseaudio/libcanberra/nofallbackfix.patch
deleted file mode 100644
index 89a4fbf..0000000
--- a/meta/recipes-multimedia/pulseaudio/libcanberra/nofallbackfix.patch
+++ /dev/null
@@ -1,16 +0,0 @@
-Index: libcanberra-0.10/src/sound-theme-spec.c
-===================================================================
---- libcanberra-0.10.orig/src/sound-theme-spec.c	2009-05-22 17:08:23.000000000 +0100
-+++ libcanberra-0.10/src/sound-theme-spec.c	2009-05-22 17:12:50.000000000 +0100
-@@ -398,9 +398,9 @@
-     if ((ret = load_theme_dir(t, name)) < 0)
-         goto fail;
- 
-+    /* The fallback theme may intentionally not exist so ignore failure */
-     if (!t->loaded_fallback_theme)
--        if ((ret = load_theme_dir(t, FALLBACK_THEME)) < 0)
--            goto fail;
-+        load_theme_dir(t, FALLBACK_THEME);
- 
-     if (*_t)
-         ca_theme_data_free(*_t);
diff --git a/meta/recipes-multimedia/pulseaudio/libcanberra_0.10.bb b/meta/recipes-multimedia/pulseaudio/libcanberra_0.26.bb
similarity index 73%
rename from meta/recipes-multimedia/pulseaudio/libcanberra_0.10.bb
rename to meta/recipes-multimedia/pulseaudio/libcanberra_0.26.bb
index a94be20..7f91bdc 100644
--- a/meta/recipes-multimedia/pulseaudio/libcanberra_0.10.bb
+++ b/meta/recipes-multimedia/pulseaudio/libcanberra_0.26.bb
@@ -5,16 +5,14 @@ LIC_FILES_CHKSUM = "file://LGPL;md5=2d5025d4aa3495befef8f17206a5b0a1 \
                     file://src/canberra.h;endline=24;md5=8dd99ba690687f5816f711d9313c8967"
 
 DEPENDS = "gtk+ pulseaudio alsa-lib libtool"
-PR = "r3"
+PR = "r0"
 
 inherit gconf autotools
 
-SRC_URI = "http://0pointer.de/lennart/projects/libcanberra/libcanberra-${PV}.tar.gz \
-           file://nofallbackfix.patch;patch=1 \
-           file://autoconf_version.patch;patch=1"
+SRC_URI = "http://0pointer.de/lennart/projects/libcanberra/libcanberra-${PV}.tar.gz"
 
-SRC_URI[md5sum] = "2623370bfcecaeecaeb85e5ec445f340"
-SRC_URI[sha256sum] = "b0e3cb59e605412a52352cf9cf36344b165463d4e65916c95deb73fc51838272"
+SRC_URI[md5sum] = "ee2c66ada7c851a4e7b6eb1682285a24"
+SRC_URI[sha256sum] = "4b5d8d2c2835133620adbc53745dd107b6e58b9a2963059e8f457143fee00982"
 
 EXTRA_OECONF = " --disable-oss --disable-ltdl-install" 
 
-- 
1.7.0.4


