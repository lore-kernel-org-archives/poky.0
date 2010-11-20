Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id D6A234C80BD4
	for <poky@yoctoproject.org>; Sun, 21 Nov 2010 08:25:10 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 21 Nov 2010 06:25:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,231,1288594800"; d="scan'208";a="859907426"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by fmsmga001.fm.intel.com with ESMTP; 21 Nov 2010 06:25:10 -0800
Message-Id: <f7b78ab9d28c4dc712db0addf8ebd7a0729ce6bf.1290345671.git.ke.yu@intel.com>
In-Reply-To: <cover.1290345671.git.ke.yu@intel.com>
References: <cover.1290345671.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Sat, 20 Nov 2010 15:56:04 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/3] cairo: upgrade from 1.8.10 to 1.10.0
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
X-List-Received-Date: Sun, 21 Nov 2010 14:25:11 -0000

several chagnes are made:

- hardcoded_libtool.patch is removed, because the code (dolt logic) it
  applys to have been removed. dolt is originally introduced to
  accelerate libtool, it is later removed by commit 9de25a0297c due to
  libtool is fast enough. so this patch can be removed too.

- explicitly specify the package name as libcairo2. In 1.8.10, the debian
  rename hook (meta/classes/debian.bbclass:debian_package_name_hook )
  will automatically rename the package to libcairo2. When upgrade to
  1.10.0, the name changes to cairo, because the package contains not
  only library, but also bin executable. This name change will cause
  dependency  failure to thos package which depends on libcairo-1.8.10.
  so it is necessary to keep name as libcairo2 by explicitly specifing.

- specify extra package: libcairo-gobject2, libcairo-script-interpreter2
  and cairo-perf-utils. it is newly added in 1.10.0. The name schema is
  from Debian.

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../cairo/cairo-1.8.10/hardcoded_libtool.patch     |   17 ---------
 meta/recipes-graphics/cairo/cairo_1.10.0.bb        |   36 ++++++++++++++++++++
 meta/recipes-graphics/cairo/cairo_1.8.10.bb        |    8 ----
 3 files changed, 36 insertions(+), 25 deletions(-)
 delete mode 100644 meta/recipes-graphics/cairo/cairo-1.8.10/hardcoded_libtool.patch
 create mode 100644 meta/recipes-graphics/cairo/cairo_1.10.0.bb
 delete mode 100644 meta/recipes-graphics/cairo/cairo_1.8.10.bb

diff --git a/meta/recipes-graphics/cairo/cairo-1.8.10/hardcoded_libtool.patch b/meta/recipes-graphics/cairo/cairo-1.8.10/hardcoded_libtool.patch
deleted file mode 100644
index afdf2c8..0000000
--- a/meta/recipes-graphics/cairo/cairo-1.8.10/hardcoded_libtool.patch
+++ /dev/null
@@ -1,17 +0,0 @@
-Index: cairo-1.8.2/build/aclocal.dolt.m4
-===================================================================
---- cairo-1.8.2.orig/build/aclocal.dolt.m4
-+++ cairo-1.8.2/build/aclocal.dolt.m4
-@@ -163,7 +163,11 @@ done
- if $modeok && $tagok ; then
-     . ${top_builddir_slash}doltcompile "${args@<:@@@:>@}"
- else
--    exec ${top_builddir_slash}libtool "$[]@"
-+__DOLTLIBTOOL__EOF__
-+
-+echo '    exec ${top_builddir_slash}'${host_alias}-libtool' "$[]@"' >> doltlibtool
-+
-+    cat << '__DOLTLIBTOOL__EOF__' >> doltlibtool
- fi
- __DOLTLIBTOOL__EOF__
- 
diff --git a/meta/recipes-graphics/cairo/cairo_1.10.0.bb b/meta/recipes-graphics/cairo/cairo_1.10.0.bb
new file mode 100644
index 0000000..627de5e
--- /dev/null
+++ b/meta/recipes-graphics/cairo/cairo_1.10.0.bb
@@ -0,0 +1,36 @@
+require cairo.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=e73e999e0c72b5ac9012424fa157ad77"
+
+PR = "r0"
+
+SRC_URI = "http://cairographics.org/releases/cairo-${PV}.tar.gz"
+
+RDEPENDS += "libcairo2 libcairo-gobject2 libcairo-script-interpreter2 \
+		  cairo-perf-utils"
+
+ALLOW_EMPTY = "1"
+
+#
+# Old version (1.8.10 or below) is automatically named as libcairo2 by
+# debian_package_name_hook. To keep backword compatibility,
+# it is necessary to explicitly name the package as libcairo2 here
+#
+PACKAGES =+ "libcairo2 libcairo2-dev libcairo2-dbg \
+		     libcairo-gobject2 \
+			 libcairo-script-interpreter2 \
+		     cairo-perf-utils \
+			"
+
+DESCRIPTION_libcairo2 = "The Cairo 2D vector graphics library"
+DESCRIPTION_libcairo-gobject2 = "The Cairo library GObject wrapper library"
+DESCRIPTION_libcairo-script-interpreter2 = "The Cairo library script interpreter"
+DESCRIPTION_cairo-perf-utils = "The Cairo library performance utilities"
+
+FILES_libcairo2 = "${libdir}/libcairo.so*"
+FILES_libcairo2-dev = "${includedir} ${libdir}/*.la ${libdir}/*.a \
+					   ${libdir}/*.o ${libdir}/pkgconfig"
+FILES_libcairo2-dbg = "${libdir}/.debug ${libdir}/cairo/.debug"
+FILES_libcairo-gobject2 = "${libdir}/libcairo-gobject.so*"
+FILES_libcairo-script-interpreter2 = "${libdir}/libcairo-script-interpreter.so*"
+FILES_cairo-perf-utils = "${bindir}/cairo-trace ${libdir}/cairo/libcairo-trace.*"
diff --git a/meta/recipes-graphics/cairo/cairo_1.8.10.bb b/meta/recipes-graphics/cairo/cairo_1.8.10.bb
deleted file mode 100644
index 9e7e7a3..0000000
--- a/meta/recipes-graphics/cairo/cairo_1.8.10.bb
+++ /dev/null
@@ -1,8 +0,0 @@
-require cairo.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=7d7cc3410ae869ed913ebd30d7f45941"
-
-PR = "r0"
-
-SRC_URI = "http://cairographics.org/releases/cairo-${PV}.tar.gz \
-           file://hardcoded_libtool.patch"
-- 
1.7.0.4


