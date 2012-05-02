Return-Path: <edwin.zhai@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C85EE00723
	for <poky@yoctoproject.org>; Wed,  2 May 2012 00:40:12 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 02 May 2012 00:40:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="160816278"
Received: from yocto-build3.sh.intel.com ([10.239.48.15])
	by fmsmga002.fm.intel.com with ESMTP; 02 May 2012 00:40:11 -0700
From: edwin.zhai@intel.com
To: poky@yoctoproject.org
Date: Wed,  2 May 2012 15:43:59 +0800
Message-Id: <1555a6151b58fb142606f7e6cda23f0c95ac0c87.1335944480.git.edwin.zhai@intel.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <cover.1335944480.git.edwin.zhai@intel.com>
References: <cover.1335944480.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1335944480.git.edwin.zhai@intel.com>
References: <cover.1335944480.git.edwin.zhai@intel.com>
Subject: [PATCH 1/1] pango: Fix modules load failure in multilib environment
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
X-List-Received-Date: Wed, 02 May 2012 07:40:12 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

Multi-libs of Pango need different modules, thus different config files and
utils. This patch separate config file and utils into different directory to
avoid conflict.

[YOCTO #2356] got fixed.

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../pango/pango-1.28.4/multilib-fix.patch          |   90 ++++++++++++++++++++
 meta/recipes-graphics/pango/pango.inc              |   12 ++-
 meta/recipes-graphics/pango/pango_1.28.4.bb        |    7 +-
 3 files changed, 101 insertions(+), 8 deletions(-)
 create mode 100644 meta/recipes-graphics/pango/pango-1.28.4/multilib-fix.patch

diff --git a/meta/recipes-graphics/pango/pango-1.28.4/multilib-fix.patch b/meta/recipes-graphics/pango/pango-1.28.4/multilib-fix.patch
new file mode 100644
index 0000000..87d7a0a
--- /dev/null
+++ b/meta/recipes-graphics/pango/pango-1.28.4/multilib-fix.patch
@@ -0,0 +1,90 @@
+Fix modules load failure in multilib environment.
+
+Multi-lib need different configs produced by different utils, so need keep both
+of them by putting them in different directory.
+
+Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
+
+Upstream-Status: Inappropriate [other] - Upstream may have nice fix in future
+
+Index: pango-1.28.4/pango/pango-utils.c
+===================================================================
+--- pango-1.28.4.orig/pango/pango-utils.c	2012-04-28 16:23:48.000000000 +0800
++++ pango-1.28.4/pango/pango-utils.c	2012-05-02 10:19:14.000000000 +0800
+@@ -678,6 +678,19 @@
+ 
+ #endif
+ 
++#ifndef G_OS_WIN32
++/* return the relative baselib dir */
++const char *
++pango_get_baselib_directory (void)
++{
++  char *libdir = g_strdup(LIBDIR);
++  char *baselib = g_strdup( g_strrstr(libdir, "lib"));
++  g_free(libdir);
++
++  return baselib;
++}
++#endif
++
+ /**
+  * pango_get_sysconf_subdirectory:
+  *
+Index: pango-1.28.4/pango/modules.c
+===================================================================
+--- pango-1.28.4.orig/pango/modules.c	2010-09-22 03:37:01.000000000 +0800
++++ pango-1.28.4/pango/modules.c	2012-05-02 10:42:57.000000000 +0800
+@@ -523,12 +523,17 @@
+ 
+   char *file_str =  pango_config_key_get ("Pango/ModuleFiles");
+   char **files;
++  char *baselib = pango_get_baselib_directory();
+   int n;
+ 
+   dlloaded_modules = g_hash_table_new (g_str_hash, g_str_equal);
+ 
+   if (!file_str)
+     file_str = g_build_filename (pango_get_sysconf_subdirectory (),
++#ifndef G_OS_WIN32
++/* For multilib case, keep multiple config file for different libs */
++				 baselib,
++#endif
+ 				 "pango.modules",
+ 				 NULL);
+ 
+@@ -550,6 +555,7 @@
+ 
+   g_strfreev (files);
+   g_free (file_str);
++  g_free (baselib);
+ 
+   dlloaded_engines = g_slist_reverse (dlloaded_engines);
+ }
+@@ -631,6 +637,7 @@
+ {
+   const char *engine_type = g_quark_to_string (info->engine_type_id);
+   const char *render_type = g_quark_to_string (info->render_type_id);
++  char *baselib = pango_get_baselib_directory();
+ 
+   init_modules();
+ 
+@@ -640,6 +647,10 @@
+       if (!no_module_warning)
+ 	{
+ 	  gchar *filename = g_build_filename (pango_get_sysconf_subdirectory (),
++#ifndef G_OS_WIN32
++/* For multilib case, keep multiple config file for different libs */
++					      baselib,
++#endif
+ 					      "pango.modules",
+ 					      NULL);
+ 	  g_critical ("No modules found:\n"
+@@ -652,6 +663,7 @@
+ 		     filename,
+ 		     filename);
+ 	  g_free (filename);
++	  g_free (baselib);
+ 
+ 	  no_module_warning = TRUE;
+ 	}
diff --git a/meta/recipes-graphics/pango/pango.inc b/meta/recipes-graphics/pango/pango.inc
index a2d5dc3..2184da3 100644
--- a/meta/recipes-graphics/pango/pango.inc
+++ b/meta/recipes-graphics/pango/pango.inc
@@ -32,9 +32,11 @@ EXTRA_AUTORECONF = ""
 # seems to go wrong with default cflags
 FULL_OPTIMIZATION_arm = "-O2"
 
+# keep multiple version of utils under ${bindir} in multilib environment
 EXTRA_OECONF = "--disable-glibtest \
 		--enable-explicit-deps=no \
-	        --disable-debug"
+	        --disable-debug \
+	        --bindir=${bindir}/${baselib}"
 
 LEAD_SONAME = "libpango-1.0*"
 LIBV = "1.6.0"
@@ -44,8 +46,8 @@ if [ "x$D" != "x" ]; then
   exit 1
 fi
 
-if ! [ -e $D${sysconfdir}/pango ] ; then
-	mkdir -p $D${sysconfdir}/pango
+if ! [ -e $D${sysconfdir}/pango/${baselib} ] ; then
+	mkdir -p $D${sysconfdir}/pango/${baselib}
 fi
 }
 
@@ -54,9 +56,9 @@ python populate_packages_prepend () {
 
 	modules_root = d.expand('${libdir}/pango/${LIBV}/modules')
 
-	do_split_packages(d, modules_root, '^pango-(.*)\.so$', 'pango-module-%s', 'Pango module %s', prologue + 'pango-querymodules > /etc/pango/pango.modules')
+	do_split_packages(d, modules_root, '^pango-(.*)\.so$', 'pango-module-%s', 'Pango module %s', prologue + '${bindir}/${baselib}/pango-querymodules > /etc/pango/${baselib}/pango.modules')
 }
 
-FILES_${PN} = "${sysconfdir}/pango/* ${bindir}/* ${libdir}/libpango*${SOLIBS}"
+FILES_${PN} = "${sysconfdir}/pango/* ${bindir}/${baselib}/* ${libdir}/libpango*${SOLIBS}"
 FILES_${PN}-dbg += "${libdir}/pango/${LIBV}/modules/.debug"
 FILES_${PN}-dev += "${libdir}/pango/${LIBV}/modules/*.la"
diff --git a/meta/recipes-graphics/pango/pango_1.28.4.bb b/meta/recipes-graphics/pango/pango_1.28.4.bb
index 8d71de0..e72e8a2 100644
--- a/meta/recipes-graphics/pango/pango_1.28.4.bb
+++ b/meta/recipes-graphics/pango/pango_1.28.4.bb
@@ -2,10 +2,11 @@ require pango.inc
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=3bf50002aefd002f49e7bb854063f7e7"
 
-PR = "r7"
+PR = "r8"
 
-SRC_URI += "file://no-tests.patch"
-SRC_URI += "file://noconst.patch"
+SRC_URI += "file://no-tests.patch \
+            file://noconst.patch \
+            file://multilib-fix.patch"
 
 SRC_URI[archive.md5sum] = "3f3989700f04e9117d30544a9078b3a0"
 SRC_URI[archive.sha256sum] = "7eb035bcc10dd01569a214d5e2bc3437de95d9ac1cfa9f50035a687c45f05a9f"
-- 
1.7.1


