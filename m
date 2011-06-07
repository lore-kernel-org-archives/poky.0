Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4660A4C80AAE
	for <poky@yoctoproject.org>; Tue,  7 Jun 2011 03:41:48 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 07 Jun 2011 01:41:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,331,1304319600"; d="scan'208";a="14839109"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by fmsmga001.fm.intel.com with ESMTP; 07 Jun 2011 01:41:47 -0700
From: y
To: poky@yoctoproject.org
Date: Tue,  7 Jun 2011 16:52:04 +0800
Message-Id: <ad653a2eecb7ec8ce662067f342f3a07792c5c86.1307436402.git.dongxiao.xu@intel.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <cover.1307436402.git.dongxiao.xu@intel.com>
References: <cover.1307436402.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1307436402.git.dongxiao.xu@intel.com>
References: <cover.1307436402.git.dongxiao.xu@intel.com>
Subject: [PATCH 2/5] connman: Upgrade to version 0.73
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
X-List-Received-Date: Tue, 07 Jun 2011 08:41:48 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Enable ofono plugin into sato image.
Remove the fix-shutdown-ap-disconnect.patch since the original logic no longer exists.
Add Upstream-Status information for patches.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../connman-0.65/fix-shutdown-ap-disconnect.patch  |   42 --------------------
 .../add_xuser_dbus_permission.patch                |    2 +
 .../connman/{connman-0.65 => connman-0.73}/connman |    0
 .../{connman-0.65 => connman-0.73}/dbusperms.patch |    2 +
 meta/recipes-connectivity/connman/connman.inc      |    2 +-
 .../connman/{connman_0.65.bb => connman_0.73.bb}   |    8 ++--
 6 files changed, 9 insertions(+), 47 deletions(-)
 delete mode 100644 meta/recipes-connectivity/connman/connman-0.65/fix-shutdown-ap-disconnect.patch
 rename meta/recipes-connectivity/connman/{connman-0.65 => connman-0.73}/add_xuser_dbus_permission.patch (94%)
 rename meta/recipes-connectivity/connman/{connman-0.65 => connman-0.73}/connman (100%)
 rename meta/recipes-connectivity/connman/{connman-0.65 => connman-0.73}/dbusperms.patch (91%)
 rename meta/recipes-connectivity/connman/{connman_0.65.bb => connman_0.73.bb} (74%)

diff --git a/meta/recipes-connectivity/connman/connman-0.65/fix-shutdown-ap-disconnect.patch b/meta/recipes-connectivity/connman/connman-0.65/fix-shutdown-ap-disconnect.patch
deleted file mode 100644
index a0ad099..0000000
--- a/meta/recipes-connectivity/connman/connman-0.65/fix-shutdown-ap-disconnect.patch
+++ /dev/null
@@ -1,42 +0,0 @@
-Schedule delayed scan when being disconnected from an AP
-
-When being disconnected from an AP, a delayed scan is scheduled to make
-sure the AP is still there. wpa_supplicant removes a BSS from its bss list
-when it disappears from the scan results twice in a row.
-
-Author: Samuel Ortiz <sameo@linux.intel.com>
-Ported by Dongxiao Xu <dongxiao.xu@intel.com>
-
-diff -ruN connman-0.56-orig/plugins/supplicant.c connman-0.56/plugins/supplicant.c
---- connman-0.56-orig/plugins/supplicant.c	2010-09-25 15:08:21.242927383 +0800
-+++ connman-0.56/plugins/supplicant.c	2010-09-25 15:12:46.346136858 +0800
-@@ -2184,6 +2184,15 @@
- 				scanning == TRUE ? "started" : "finished");
- }
- 
-+static gboolean delayed_scan(gpointer user_data)
-+{
-+	struct supplicant_task *task = user_data;
-+
-+	supplicant_scan(task->device);
-+
-+	return FALSE;
-+}
-+
- static void state_change(struct supplicant_task *task, DBusMessage *msg)
- {
- 	DBusError error;
-@@ -2277,7 +2286,13 @@
- 				task_connect(task);
- 			} else
- 				task->network = NULL;
-+		} else {
-+			if (task->state == WPA_DISCONNECTED)
-+				g_timeout_add_seconds(10, delayed_scan, task);
-+
-+			remove_network(task);
- 		}
-+
- 		break;
- 
- 	default:
diff --git a/meta/recipes-connectivity/connman/connman-0.65/add_xuser_dbus_permission.patch b/meta/recipes-connectivity/connman/connman-0.73/add_xuser_dbus_permission.patch
similarity index 94%
rename from meta/recipes-connectivity/connman/connman-0.65/add_xuser_dbus_permission.patch
rename to meta/recipes-connectivity/connman/connman-0.73/add_xuser_dbus_permission.patch
index 787d49b..764c689 100644
--- a/meta/recipes-connectivity/connman/connman-0.65/add_xuser_dbus_permission.patch
+++ b/meta/recipes-connectivity/connman/connman-0.73/add_xuser_dbus_permission.patch
@@ -1,6 +1,8 @@
 Some platform (like atom-pc) enables rootless X,
 thus we need to add the xuser in the list.
 
+Upstream-Status: Inappropriate [configuration]
+
 Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
 
 diff -ruN connman-0.65-orig/src/connman-dbus.conf connman-0.65/src/connman-dbus.conf
diff --git a/meta/recipes-connectivity/connman/connman-0.65/connman b/meta/recipes-connectivity/connman/connman-0.73/connman
similarity index 100%
rename from meta/recipes-connectivity/connman/connman-0.65/connman
rename to meta/recipes-connectivity/connman/connman-0.73/connman
diff --git a/meta/recipes-connectivity/connman/connman-0.65/dbusperms.patch b/meta/recipes-connectivity/connman/connman-0.73/dbusperms.patch
similarity index 91%
rename from meta/recipes-connectivity/connman/connman-0.65/dbusperms.patch
rename to meta/recipes-connectivity/connman/connman-0.73/dbusperms.patch
index 100af03..c331654 100644
--- a/meta/recipes-connectivity/connman/connman-0.65/dbusperms.patch
+++ b/meta/recipes-connectivity/connman/connman-0.73/dbusperms.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 Index: git/src/connman-dbus.conf
 ===================================================================
 --- git.orig/src/connman-dbus.conf	2009-05-26 00:34:35.000000000 +0100
diff --git a/meta/recipes-connectivity/connman/connman.inc b/meta/recipes-connectivity/connman/connman.inc
index fb970ed..f6565a5 100644
--- a/meta/recipes-connectivity/connman/connman.inc
+++ b/meta/recipes-connectivity/connman/connman.inc
@@ -14,7 +14,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=12f884d2ae1ff87c09e5b7ccc2c4ca7e \
                     file://src/main.c;beginline=1;endline=20;md5=4b55b550fa6b33cc2055ef30dd262b3e"
 
 DEPENDS  = "libgdbus dbus glib-2.0 hal iptables"
-RDEPENDS_${PN} = "wpa-supplicant resolvconf"
+RDEPENDS_${PN} = "wpa-supplicant resolvconf ofono"
 
 INITSCRIPT_NAME = "connman"
 INITSCRIPT_PARAMS = "start 05 5 2 3 . stop 22 0 1 6 ."
diff --git a/meta/recipes-connectivity/connman/connman_0.65.bb b/meta/recipes-connectivity/connman/connman_0.73.bb
similarity index 74%
rename from meta/recipes-connectivity/connman/connman_0.65.bb
rename to meta/recipes-connectivity/connman/connman_0.73.bb
index 852f8dc..ffe0074 100644
--- a/meta/recipes-connectivity/connman/connman_0.65.bb
+++ b/meta/recipes-connectivity/connman/connman_0.73.bb
@@ -1,5 +1,5 @@
 require connman.inc
-PR = "r1"
+PR = "r0"
 
 EXTRA_OECONF += "\
   ac_cv_path_WPASUPPLICANT=/usr/sbin/wpa_supplicant \
@@ -16,14 +16,14 @@ EXTRA_OECONF += "\
   --disable-udev \
   --disable-polkit \
   --enable-client \
+  --enable-ofono \
   --prefix=/usr --sysconfdir=/etc --localstatedir=/var"
 
 SRC_URI  = "\
   ${KERNELORG_MIRROR}/linux/network/connman/connman-${PV}.tar.gz \
-  file://fix-shutdown-ap-disconnect.patch \
   file://add_xuser_dbus_permission.patch \
   file://connman \
 "
 
-SRC_URI[md5sum] = "bd714da295ed2d2d91a49539f4c4fa3a"
-SRC_URI[sha256sum] = "a1c1d93da6bb4c2d8ae53293b06f237e02f5e796d2bba73ec639a466d05259c3"
+SRC_URI[md5sum] = "01085b2ed8f7b11a41724f1528720cc7"
+SRC_URI[sha256sum] = "b71ff2c3925ea82a7ebf818685f809e595d5c47d767005dfb149c6264b098417"
-- 
1.7.1


