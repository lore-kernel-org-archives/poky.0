Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id A3ADB4C80050
	for <poky@yoctoproject.org>; Sat, 29 Jan 2011 18:36:51 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 29 Jan 2011 16:36:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,398,1291622400"; d="scan'208";a="597703132"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by orsmga002.jf.intel.com with ESMTP; 29 Jan 2011 16:36:50 -0800
Message-Id: <d8ad7efbba5aac7ddb1f9094a60ddc38dc2446e2.1296348480.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1296348480.git.dongxiao.xu@intel.com>
References: <cover.1296348480.git.dongxiao.xu@intel.com>
Old-Date: Tue, 25 Jan 2011 15:24:06 +0800
Date: Sun, 30 Jan 2011  8:53:32 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 1/2] glib-2.0: Add stable vesion 2.26.1
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
X-List-Received-Date: Sun, 30 Jan 2011 00:36:52 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Move patches into a common directory to be shared by both recipes.

Remove the libfm patch which is no longer needed. Or else it will
have re-definition error along with glib 2.26.1.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../60_wait-longer-for-threads-to-die.patch        |    0
 .../configure-libtool.patch                        |    0
 .../g_once_init_enter.patch                        |    0
 .../glib-gettextize-dir.patch                      |    0
 meta/recipes-core/glib-2.0/glib-2.0_2.26.1.bb      |   16 ++++++
 meta/recipes-core/glib-2.0/glib-2.0_2.27.5.bb      |    1 +
 .../libfm/libfm-0.1.14/add_missing.patch           |   50 --------------------
 meta/recipes-support/libfm/libfm_0.1.14.bb         |    5 +-
 8 files changed, 19 insertions(+), 53 deletions(-)
 rename meta/recipes-core/glib-2.0/{glib-2.0-2.27.5 => glib-2.0}/60_wait-longer-for-threads-to-die.patch (100%)
 rename meta/recipes-core/glib-2.0/{glib-2.0-2.27.5 => glib-2.0}/configure-libtool.patch (100%)
 rename meta/recipes-core/glib-2.0/{glib-2.0-2.27.5 => glib-2.0}/g_once_init_enter.patch (100%)
 rename meta/recipes-core/glib-2.0/{glib-2.0-2.27.5 => glib-2.0}/glib-gettextize-dir.patch (100%)
 create mode 100644 meta/recipes-core/glib-2.0/glib-2.0_2.26.1.bb
 delete mode 100644 meta/recipes-support/libfm/libfm-0.1.14/add_missing.patch

diff --git a/meta/recipes-core/glib-2.0/glib-2.0-2.27.5/60_wait-longer-for-threads-to-die.patch b/meta/recipes-core/glib-2.0/glib-2.0/60_wait-longer-for-threads-to-die.patch
similarity index 100%
rename from meta/recipes-core/glib-2.0/glib-2.0-2.27.5/60_wait-longer-for-threads-to-die.patch
rename to meta/recipes-core/glib-2.0/glib-2.0/60_wait-longer-for-threads-to-die.patch
diff --git a/meta/recipes-core/glib-2.0/glib-2.0-2.27.5/configure-libtool.patch b/meta/recipes-core/glib-2.0/glib-2.0/configure-libtool.patch
similarity index 100%
rename from meta/recipes-core/glib-2.0/glib-2.0-2.27.5/configure-libtool.patch
rename to meta/recipes-core/glib-2.0/glib-2.0/configure-libtool.patch
diff --git a/meta/recipes-core/glib-2.0/glib-2.0-2.27.5/g_once_init_enter.patch b/meta/recipes-core/glib-2.0/glib-2.0/g_once_init_enter.patch
similarity index 100%
rename from meta/recipes-core/glib-2.0/glib-2.0-2.27.5/g_once_init_enter.patch
rename to meta/recipes-core/glib-2.0/glib-2.0/g_once_init_enter.patch
diff --git a/meta/recipes-core/glib-2.0/glib-2.0-2.27.5/glib-gettextize-dir.patch b/meta/recipes-core/glib-2.0/glib-2.0/glib-gettextize-dir.patch
similarity index 100%
rename from meta/recipes-core/glib-2.0/glib-2.0-2.27.5/glib-gettextize-dir.patch
rename to meta/recipes-core/glib-2.0/glib-2.0/glib-gettextize-dir.patch
diff --git a/meta/recipes-core/glib-2.0/glib-2.0_2.26.1.bb b/meta/recipes-core/glib-2.0/glib-2.0_2.26.1.bb
new file mode 100644
index 0000000..eace71a
--- /dev/null
+++ b/meta/recipes-core/glib-2.0/glib-2.0_2.26.1.bb
@@ -0,0 +1,16 @@
+require glib.inc
+
+PE = "1"
+PR = "r0"
+
+SRC_URI = "http://ftp.gnome.org/pub/GNOME/sources/glib/2.26/glib-${PV}.tar.bz2 \
+           file://configure-libtool.patch \
+           file://60_wait-longer-for-threads-to-die.patch \
+           file://g_once_init_enter.patch \
+          "
+
+SRC_URI[md5sum] = "17535accceef55bcb17a74d73f9c2aef"
+SRC_URI[sha256sum] = "7a74ff12b6b9dee1f2d0e520b56b68b621920c4f4250bdf23468e515625c28d5"
+
+SRC_URI_append_virtclass-native = " file://glib-gettextize-dir.patch"
+BBCLASSEXTEND = "native"
diff --git a/meta/recipes-core/glib-2.0/glib-2.0_2.27.5.bb b/meta/recipes-core/glib-2.0/glib-2.0_2.27.5.bb
index b26da7b..92566c1 100644
--- a/meta/recipes-core/glib-2.0/glib-2.0_2.27.5.bb
+++ b/meta/recipes-core/glib-2.0/glib-2.0_2.27.5.bb
@@ -12,4 +12,5 @@ SRC_URI[md5sum] = "b7025b581bf78fcd656117bfc113f21f"
 SRC_URI[sha256sum] = "aad3038db865b762e01b1dc455ffd601b4083c069018d290e5fdfe1a61d328dc"
 
 SRC_URI_append_virtclass-native = " file://glib-gettextize-dir.patch"
+DEFAULT_PREFERENCE = "-1"
 BBCLASSEXTEND = "native"
diff --git a/meta/recipes-support/libfm/libfm-0.1.14/add_missing.patch b/meta/recipes-support/libfm/libfm-0.1.14/add_missing.patch
deleted file mode 100644
index 3739d80..0000000
--- a/meta/recipes-support/libfm/libfm-0.1.14/add_missing.patch
+++ /dev/null
@@ -1,50 +0,0 @@
-Add missing definitions and declarations for libfm which are
-needed by libfm.
-
-Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
-
-diff -ruN libfm-0.1.12-orig/src/gio/fm-app-lookup.h libfm-0.1.12/src/gio/fm-app-lookup.h
---- libfm-0.1.12-orig/src/gio/fm-app-lookup.h	2010-11-17 22:00:48.000000000 +0800
-+++ libfm-0.1.12/src/gio/fm-app-lookup.h	2010-11-17 22:01:13.000000000 +0800
-@@ -53,6 +53,41 @@
- GType fm_app_lookup_get_type(void);
- void fm_app_lookup_register(GIOModule *module);
- 
-+#define G_TYPE_DESKTOP_APP_INFO_LOOKUP           (g_desktop_app_info_lookup_get_type ())
-+#define G_DESKTOP_APP_INFO_LOOKUP(obj)           (G_TYPE_CHECK_INSTANCE_CAST ((obj), G_TYPE_DESKTOP_APP_INFO_LOOKUP, GDesktopAppInfoLookup))
-+#define G_IS_DESKTOP_APP_INFO_LOOKUP(obj)	 (G_TYPE_CHECK_INSTANCE_TYPE ((obj), G_TYPE_DESKTOP_APP_INFO_LOOKUP))
-+#define G_DESKTOP_APP_INFO_LOOKUP_GET_IFACE(obj) (G_TYPE_INSTANCE_GET_INTERFACE ((obj), G_TYPE_DESKTOP_APP_INFO_LOOKUP, GDesktopAppInfoLookupIface))
-+
-+/**
-+ * G_DESKTOP_APP_INFO_LOOKUP_EXTENSION_POINT_NAME:
-+ *
-+ * Extension point for default handler to URI association. See
-+ * <link linkend="extending-gio">Extending GIO</link>.
-+ */
-+#define G_DESKTOP_APP_INFO_LOOKUP_EXTENSION_POINT_NAME "gio-desktop-app-info-lookup"
-+
-+/**
-+ * GDesktopAppInfoLookup:
-+ *
-+ * Interface that is used by backends to associate default
-+ * handlers with URI schemes.
-+ */
-+typedef struct _GDesktopAppInfoLookup GDesktopAppInfoLookup;
-+typedef struct _GDesktopAppInfoLookupIface GDesktopAppInfoLookupIface;
-+
-+struct _GDesktopAppInfoLookupIface
-+{
-+  GTypeInterface g_iface;
-+
-+  GAppInfo * (* get_default_for_uri_scheme) (GDesktopAppInfoLookup *lookup,
-+                                             const char            *uri_scheme);
-+};
-+
-+GType     g_desktop_app_info_lookup_get_type                   (void) G_GNUC_CONST;
-+
-+GAppInfo *g_desktop_app_info_lookup_get_default_for_uri_scheme (GDesktopAppInfoLookup *lookup,
-+                                                                const char            *uri_scheme);
-+
- G_END_DECLS
- 
- #endif /* __FM_APP_LOOKUP_H__ */
diff --git a/meta/recipes-support/libfm/libfm_0.1.14.bb b/meta/recipes-support/libfm/libfm_0.1.14.bb
index e8e672c..c56ad33 100644
--- a/meta/recipes-support/libfm/libfm_0.1.14.bb
+++ b/meta/recipes-support/libfm/libfm_0.1.14.bb
@@ -10,10 +10,9 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552 \
 SECTION = "x11/libs"
 DEPENDS = "gtk+ menu-cache intltool"
 
-PR = "r1"
+PR = "r2"
 
-SRC_URI = "${SOURCEFORGE_MIRROR}/pcmanfm/libfm-${PV}.tar.gz \
-           file://add_missing.patch"
+SRC_URI = "${SOURCEFORGE_MIRROR}/pcmanfm/libfm-${PV}.tar.gz"
 
 SRC_URI[md5sum] = "d55e51dced6bb9ef46665243b079761f"
 SRC_URI[sha256sum] = "e97bf3f9ed4f33b9f0be73e67d360b89337cccf816361faacd8422722269806b"
-- 
1.6.3.3


