Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id C0E7D4C80FBE
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 12:01:59 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 30 Dec 2010 10:01:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,251,1291622400"; d="scan'208";a="368157837"
Received: from unknown (HELO localhost) ([10.255.13.238])
	by azsmga001.ch.intel.com with ESMTP; 30 Dec 2010 10:01:59 -0800
Message-Id: <cccbddda394ceb12ef99db5561216535ccca4abd.1293731824.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1293731824.git.dvhart@linux.intel.com>
References: <cover.1293731824.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Date: Wed, 29 Dec 2010 10:10:15 -0800
To: poky@yoctoproject.org
Subject: [PATCH 2/3] glib-2.0: fix g_once_init_enter compile failure
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
X-List-Received-Date: Thu, 30 Dec 2010 18:02:00 -0000

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


