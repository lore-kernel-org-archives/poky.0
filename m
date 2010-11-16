Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 50ED74C81002
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 07:42:52 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 16 Nov 2010 05:42:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,206,1288594800"; d="scan'208";a="574291315"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.22])
	by orsmga002.jf.intel.com with ESMTP; 16 Nov 2010 05:42:51 -0800
Message-Id: <bec06fabcbc254dcb9c3db33d9920dbae54d74b3.1289914983.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1289914982.git.dongxiao.xu@intel.com>
References: <cover.1289914982.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Tue, 16 Nov 2010 13:10:06 +0800
To: poky@yoctoproject.org
Subject: [PATCH 11/14] glib-2.0: Upgraded to version 2.27.3
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
X-List-Received-Date: Tue, 16 Nov 2010 13:42:52 -0000

Remove gatomic-proper-pointer-get-cast.patch since the logic
is already in latest upstream.
Rebase other patches to fit the latest code.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../gatomic-proper-pointer-get-cast.patch          |   37 --------------------
 .../60_wait-longer-for-threads-to-die.patch        |   12 ++++---
 .../configure-libtool.patch                        |   16 +++++----
 .../glib-gettextize-dir.patch                      |   13 ++++---
 .../{glib-2.0_2.24.1.bb => glib-2.0_2.27.3.bb}     |    3 +-
 5 files changed, 25 insertions(+), 56 deletions(-)
 delete mode 100644 meta/recipes-core/glib-2.0/glib-2.0-2.24.1/gatomic-proper-pointer-get-cast.patch
 rename meta/recipes-core/glib-2.0/{glib-2.0-2.24.1 => glib-2.0-2.27.3}/60_wait-longer-for-threads-to-die.patch (63%)
 rename meta/recipes-core/glib-2.0/{glib-2.0-2.24.1 => glib-2.0-2.27.3}/configure-libtool.patch (73%)
 rename meta/recipes-core/glib-2.0/{glib-2.0-2.24.1 => glib-2.0-2.27.3}/glib-gettextize-dir.patch (62%)
 rename meta/recipes-core/glib-2.0/{glib-2.0_2.24.1.bb => glib-2.0_2.27.3.bb} (66%)

diff --git a/meta/recipes-core/glib-2.0/glib-2.0-2.24.1/gatomic-proper-pointer-get-cast.patch b/meta/recipes-core/glib-2.0/glib-2.0-2.24.1/gatomic-proper-pointer-get-cast.patch
deleted file mode 100644
index 1f3920f..0000000
--- a/meta/recipes-core/glib-2.0/glib-2.0-2.24.1/gatomic-proper-pointer-get-cast.patch
+++ /dev/null
@@ -1,37 +0,0 @@
-# handle cast warning. borrow from OE, but updated with a better fix from glib 
-# developing tree.
-#
-# by Kevin Tian <kevin.tian@intel.com>, 06/25/2010
-commit bf2719c815d719d1899b4bdb1b81ff6798471094
-Author: Lars Ellenberg <lars.ellenberg@linbit.com>
-Date:   Thu Apr 15 19:03:05 2010 +0200
-
-    Cast to volatile to avoid warnings from -Wcast-qual
-    
-    https://bugzilla.gnome.org/show_bug.cgi?id=457641
-
-diff --git a/glib/gatomic.h b/glib/gatomic.h
-index 7d9c318..22b28d9 100644
---- a/glib/gatomic.h
-+++ b/glib/gatomic.h
-@@ -64,16 +64,16 @@ void     g_atomic_pointer_set                  (volatile gpointer G_GNUC_MAY_ALI
- #else
- # define g_atomic_int_get(atomic) \
-  ((void) sizeof (gchar [sizeof (*(atomic)) == sizeof (gint) ? 1 : -1]), \
--  (g_atomic_int_get) ((volatile gint G_GNUC_MAY_ALIAS *) (void *) (atomic)))
-+  (g_atomic_int_get) ((volatile gint G_GNUC_MAY_ALIAS *) (volatile void *) (atomic)))
- # define g_atomic_int_set(atomic, newval) \
-  ((void) sizeof (gchar [sizeof (*(atomic)) == sizeof (gint) ? 1 : -1]), \
--  (g_atomic_int_set) ((volatile gint G_GNUC_MAY_ALIAS *) (void *) (atomic), (newval)))
-+  (g_atomic_int_set) ((volatile gint G_GNUC_MAY_ALIAS *) (volatile void *) (atomic), (newval)))
- # define g_atomic_pointer_get(atomic) \
-  ((void) sizeof (gchar [sizeof (*(atomic)) == sizeof (gpointer) ? 1 : -1]), \
--  (g_atomic_pointer_get) ((volatile gpointer G_GNUC_MAY_ALIAS *) (void *) (atomic)))
-+  (g_atomic_pointer_get) ((volatile gpointer G_GNUC_MAY_ALIAS *) (volatile void *) (atomic)))
- # define g_atomic_pointer_set(atomic, newval) \
-  ((void) sizeof (gchar [sizeof (*(atomic)) == sizeof (gpointer) ? 1 : -1]), \
--  (g_atomic_pointer_set) ((volatile gpointer G_GNUC_MAY_ALIAS *) (void *) (atomic), (newval)))
-+  (g_atomic_pointer_set) ((volatile gpointer G_GNUC_MAY_ALIAS *) (volatile void *) (atomic), (newval)))
- #endif /* G_ATOMIC_OP_MEMORY_BARRIER_NEEDED */
- 
- #define g_atomic_int_inc(atomic) (g_atomic_int_add ((atomic), 1))
diff --git a/meta/recipes-core/glib-2.0/glib-2.0-2.24.1/60_wait-longer-for-threads-to-die.patch b/meta/recipes-core/glib-2.0/glib-2.0-2.27.3/60_wait-longer-for-threads-to-die.patch
similarity index 63%
rename from meta/recipes-core/glib-2.0/glib-2.0-2.24.1/60_wait-longer-for-threads-to-die.patch
rename to meta/recipes-core/glib-2.0/glib-2.0-2.27.3/60_wait-longer-for-threads-to-die.patch
index 1676b3e..8195bd4 100644
--- a/meta/recipes-core/glib-2.0/glib-2.0-2.24.1/60_wait-longer-for-threads-to-die.patch
+++ b/meta/recipes-core/glib-2.0/glib-2.0-2.27.3/60_wait-longer-for-threads-to-die.patch
@@ -1,8 +1,10 @@
-# copy from OE, said to borrow from Ubuntu. Not in glib-2.0 upstream yet. Add for sanity.
-#
-# by Kevin Tian <kevin.tian@intel.com>, 06/25/2010
---- glib/tests/threadpool-test.c.old	2008-02-12 06:11:21.000000000 +0100
-+++ glib/tests/threadpool-test.c	2008-02-12 06:11:52.000000000 +0100
+copy from OE, said to borrow from Ubuntu. Not in glib-2.0 upstream yet. Add for sanity.
+Added to poky by Kevin Tian <kevin.tian@intel.com>, 06/25/2010
+Rebased for glib-2.27.3 by Dongxiao Xu <dongxiao.xu@intel.com>, 11/16/2010
+
+diff -ruN glib-2.27.3-orig/tests/threadpool-test.c glib-2.27.3/tests/threadpool-test.c
+--- glib-2.27.3-orig/tests/threadpool-test.c	2009-04-01 07:04:21.000000000 +0800
++++ glib-2.27.3/tests/threadpool-test.c	2010-11-16 12:28:09.002172678 +0800
 @@ -5,8 +5,8 @@
  
  #include <glib.h>
diff --git a/meta/recipes-core/glib-2.0/glib-2.0-2.24.1/configure-libtool.patch b/meta/recipes-core/glib-2.0/glib-2.0-2.27.3/configure-libtool.patch
similarity index 73%
rename from meta/recipes-core/glib-2.0/glib-2.0-2.24.1/configure-libtool.patch
rename to meta/recipes-core/glib-2.0/glib-2.0-2.27.3/configure-libtool.patch
index 3ba79b8..a5dd4f2 100644
--- a/meta/recipes-core/glib-2.0/glib-2.0-2.24.1/configure-libtool.patch
+++ b/meta/recipes-core/glib-2.0/glib-2.0-2.27.3/configure-libtool.patch
@@ -1,11 +1,13 @@
 # Poky renames libtool to $host_alias-libtool.
 # ./$host_alias-libtool isn't created until after configure runs with libtool >= 2.2.2
-# so we can't call # it at this point. We can safely assume a version is available 
+# so we can't call # it at this point. We can safely assume a version is available
 # from PATH though
+# Rebased to glib-2.27.3 by Dongxiao Xu <dongxiao.xu@intel.com>
 
---- glib-2.12.10/configure.in.orig	2006-06-05 13:34:08.000000000 +0100
-+++ glib-2.12.10/configure.in	2006-06-05 13:34:36.000000000 +0100
-@@ -1174,7 +1174,7 @@
+diff -ruN glib-2.27.3-orig/configure.ac glib-2.27.3/configure.ac
+--- glib-2.27.3-orig/configure.ac	2010-11-03 11:02:05.000000000 +0800
++++ glib-2.27.3/configure.ac	2010-11-16 12:38:12.610485990 +0800
+@@ -1385,7 +1385,7 @@
    G_MODULE_LDFLAGS=
  else
    export SED
@@ -14,7 +16,7 @@
  fi
  dnl G_MODULE_IMPL= don't reset, so cmd-line can override
  G_MODULE_NEED_USCORE=0
-@@ -1265,7 +1265,7 @@
+@@ -1450,7 +1450,7 @@
  	LDFLAGS="$LDFLAGS $G_MODULE_LDFLAGS"
  dnl *** check for OSF1/5.0 RTLD_GLOBAL brokenness
  	echo "void glib_plugin_test(void) { }" > plugin.c
@@ -23,9 +25,9 @@
  		-export-dynamic -o plugin.o plugin.c 2>&1 >/dev/null
  	AC_CACHE_CHECK([for RTLD_GLOBAL brokenness],
  		glib_cv_rtldglobal_broken,[
-@@ -1339,7 +1339,7 @@
+@@ -1524,7 +1524,7 @@
  
- AC_MSG_CHECKING(for the suffix of shared libraries)
+ AC_MSG_CHECKING(for the suffix of module shared libraries)
  export SED
 -shrext_cmds=`./libtool --config | grep '^shrext_cmds='`
 +shrext_cmds=`$host_alias-libtool --config | grep '^shrext_cmds='`
diff --git a/meta/recipes-core/glib-2.0/glib-2.0-2.24.1/glib-gettextize-dir.patch b/meta/recipes-core/glib-2.0/glib-2.0-2.27.3/glib-gettextize-dir.patch
similarity index 62%
rename from meta/recipes-core/glib-2.0/glib-2.0-2.24.1/glib-gettextize-dir.patch
rename to meta/recipes-core/glib-2.0/glib-2.0-2.27.3/glib-gettextize-dir.patch
index c44e491..e54a8e5 100644
--- a/meta/recipes-core/glib-2.0/glib-2.0-2.24.1/glib-gettextize-dir.patch
+++ b/meta/recipes-core/glib-2.0/glib-2.0-2.27.3/glib-gettextize-dir.patch
@@ -6,11 +6,14 @@
 # portable here. mark for upstream
 #
 # by Kevin Tian <kevin.tian@intel.com>, 06/25/2010
---- glib-2.10.3/glib-gettextize.in.old	2006-06-21 12:46:45.000000000 +0100
-+++ glib-2.10.3/glib-gettextize.in	2006-06-21 12:48:14.000000000 +0100
-@@ -49,7 +49,7 @@
-     ;;
- esac
+# Rebased by Dongxiao Xu <dongxiao.xu@intel.com>, 11/16/2010
+
+diff -ruN glib-2.27.3-orig/glib-gettextize.in glib-2.27.3/glib-gettextize.in
+--- glib-2.27.3-orig/glib-gettextize.in	2009-04-01 07:04:20.000000000 +0800
++++ glib-2.27.3/glib-gettextize.in	2010-11-16 12:55:06.874605916 +0800
+@@ -52,7 +52,7 @@
+ datadir=@datadir@
+ datarootdir=@datarootdir@
  
 -gettext_dir=$prefix/share/glib-2.0/gettext
 +gettext_dir=@datadir@/glib-2.0/gettext
diff --git a/meta/recipes-core/glib-2.0/glib-2.0_2.24.1.bb b/meta/recipes-core/glib-2.0/glib-2.0_2.27.3.bb
similarity index 66%
rename from meta/recipes-core/glib-2.0/glib-2.0_2.24.1.bb
rename to meta/recipes-core/glib-2.0/glib-2.0_2.27.3.bb
index d8d1cc5..229012b 100644
--- a/meta/recipes-core/glib-2.0/glib-2.0_2.24.1.bb
+++ b/meta/recipes-core/glib-2.0/glib-2.0_2.27.3.bb
@@ -2,9 +2,8 @@ require glib.inc
 
 PR = "r0"
 
-SRC_URI = "http://ftp.gnome.org/pub/GNOME/sources/glib/2.24/glib-${PV}.tar.bz2 \
+SRC_URI = "http://ftp.gnome.org/pub/GNOME/sources/glib/2.27/glib-${PV}.tar.bz2 \
            file://configure-libtool.patch \
-           file://gatomic-proper-pointer-get-cast.patch \
            file://60_wait-longer-for-threads-to-die.patch"
 
 SRC_URI_append_virtclass-native = " file://glib-gettextize-dir.patch"
-- 
1.6.3.3


