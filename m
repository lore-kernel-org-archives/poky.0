Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 773034C80039
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 11:48:45 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 03 Jan 2011 09:48:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,267,1291622400"; d="scan'208";a="589451913"
Received: from doubt.jf.intel.com (HELO localhost) ([10.7.199.57])
	by orsmga002.jf.intel.com with ESMTP; 03 Jan 2011 09:48:44 -0800
Message-Id: <1c90adcbeb99c37e433a10592666ea9209d66f9c.1294076797.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1294076797.git.dvhart@linux.intel.com>
References: <cover.1294076797.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Date: Wed, 29 Dec 2010 10:10:15 -0800
To: poky@yoctoproject.org,sgw@linux.intel.com
Subject: [PATCH 3/4] glib-2.0: fix g_once_init_enter compile failure
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
X-List-Received-Date: Mon, 03 Jan 2011 17:48:45 -0000

Kernelshark trips over a compile bug in glib-2.0 addressed by Open Embedded
back in the 2.22 timeframe. It appears to still be present in 2.27.

http://www.mail-archive.com/openembedded-devel@lists.openembedded.org/msg00529.html

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Tom Zanussi <tom.zanussi@intel.com>
---
 .../glib-2.0-2.27.3/g_once_init_enter.patch        |   13 +++++++++++++
 meta/recipes-core/glib-2.0/glib-2.0_2.27.3.bb      |    6 ++++--
 2 files changed, 17 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-core/glib-2.0/glib-2.0-2.27.3/g_once_init_enter.patch

diff --git a/meta/recipes-core/glib-2.0/glib-2.0-2.27.3/g_once_init_enter.patch b/meta/recipes-core/glib-2.0/glib-2.0-2.27.3/g_once_init_enter.patch
new file mode 100644
index 0000000..1c4ce50
--- /dev/null
+++ b/meta/recipes-core/glib-2.0/glib-2.0-2.27.3/g_once_init_enter.patch
@@ -0,0 +1,13 @@
+Index: glib-2.27.3/glib/gthread.h
+===================================================================
+--- glib-2.27.3.orig/glib/gthread.h
++++ glib-2.27.3/glib/gthread.h
+@@ -344,7 +344,7 @@ void                    g_once_init_leav
+ G_INLINE_FUNC gboolean
+ g_once_init_enter (volatile gsize *value_location)
+ {
+-  if G_LIKELY ((gpointer) g_atomic_pointer_get (value_location) != NULL)
++  if G_LIKELY ((gpointer) g_atomic_pointer_get ((volatile gpointer *)value_location) != NULL)
+     return FALSE;
+   else
+     return g_once_init_enter_impl (value_location);
diff --git a/meta/recipes-core/glib-2.0/glib-2.0_2.27.3.bb b/meta/recipes-core/glib-2.0/glib-2.0_2.27.3.bb
index 30e208a..a9ff3ec 100644
--- a/meta/recipes-core/glib-2.0/glib-2.0_2.27.3.bb
+++ b/meta/recipes-core/glib-2.0/glib-2.0_2.27.3.bb
@@ -1,10 +1,12 @@
 require glib.inc
 
-PR = "r0"
+PR = "r1"
 
 SRC_URI = "http://ftp.gnome.org/pub/GNOME/sources/glib/2.27/glib-${PV}.tar.bz2 \
            file://configure-libtool.patch \
-           file://60_wait-longer-for-threads-to-die.patch"
+           file://60_wait-longer-for-threads-to-die.patch \
+           file://g_once_init_enter.patch \
+          "
 
 SRC_URI[md5sum] = "d3e976ff92b55b6064a0eb3110f36158"
 SRC_URI[sha256sum] = "c44177b635e88639361eb1daf7aaa33315a00aaf46db5accf2f11920c7ff1919"
-- 
1.7.1


