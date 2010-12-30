Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id AF0074C811DD
	for <poky@yoctoproject.org>; Wed, 29 Dec 2010 20:29:34 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 29 Dec 2010 18:29:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,247,1291622400"; d="scan'208";a="367899940"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by azsmga001.ch.intel.com with ESMTP; 29 Dec 2010 18:29:33 -0800
Message-Id: <e057a4b3ecc7796ab36b2a329b01f423878ca12b.1293676328.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1293676328.git.dongxiao.xu@intel.com>
References: <cover.1293676328.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Old-Date: Thu, 30 Dec 2010 09:52:10 +0800
Date: Thu, 30 Dec 2010 10:39:19 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 18/19] connman-gnome: update service name
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
X-List-Received-Date: Thu, 30 Dec 2010 02:29:34 -0000

Since connman-0.64, the D-BUS service name changed from
"org.moblin.connman" domain to the "net.connman" one.

Thus change connman-gnome accordingly.

This fixes [BUGID #619].

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../connman-gnome/service_name_update.patch        |   36 ++++++++++++++++++++
 .../connman/connman-gnome_0.5.bb                   |    5 ++-
 2 files changed, 39 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-connectivity/connman/connman-gnome/service_name_update.patch

diff --git a/meta/recipes-connectivity/connman/connman-gnome/service_name_update.patch b/meta/recipes-connectivity/connman/connman-gnome/service_name_update.patch
new file mode 100644
index 0000000..942cfc8
--- /dev/null
+++ b/meta/recipes-connectivity/connman/connman-gnome/service_name_update.patch
@@ -0,0 +1,36 @@
+diff -ruN connman-gnome-0.5-orig/common/connman-dbus.h connman-gnome-0.5/common/connman-dbus.h
+--- connman-gnome-0.5-orig/common/connman-dbus.h	2010-12-30 09:45:03.312043457 +0800
++++ connman-gnome-0.5/common/connman-dbus.h	2010-12-30 09:45:33.978499439 +0800
+@@ -22,7 +22,7 @@
+ #include <dbus/dbus-glib.h>
+ #include <gtk/gtk.h>
+ 
+-#define CONNMAN_SERVICE			"org.moblin.connman"
++#define CONNMAN_SERVICE			"net.connman"
+ 
+ #define CONNMAN_ERROR_INTERFACE		CONNMAN_SERVICE ".Error"
+ #define CONNMAN_AGENT_INTERFACE		CONNMAN_SERVICE ".Agent"
+diff -ruN connman-gnome-0.5-orig/common/instance.c connman-gnome-0.5/common/instance.c
+--- connman-gnome-0.5-orig/common/instance.c	2010-12-30 09:45:03.316085542 +0800
++++ connman-gnome-0.5/common/instance.c	2010-12-30 09:46:01.654479049 +0800
+@@ -29,7 +29,7 @@
+ 
+ #include "instance.h"
+ 
+-#define CONNMAN_SERVICE    "org.moblin.connman"
++#define CONNMAN_SERVICE    "net.connman"
+ #define CONNMAN_INSTANCE   CONNMAN_SERVICE ".Instance"
+ 
+ static DBusGConnection *connection;
+diff -ruN connman-gnome-0.5-orig/common/instance.xml connman-gnome-0.5/common/instance.xml
+--- connman-gnome-0.5-orig/common/instance.xml	2010-12-30 09:45:03.312043457 +0800
++++ connman-gnome-0.5/common/instance.xml	2010-12-30 09:45:49.868372780 +0800
+@@ -1,7 +1,7 @@
+ <?xml version="1.0" encoding="UTF-8" ?>
+ 
+ <node name="/">
+-  <interface name="org.moblin.connman.Instance">
++  <interface name="net.connman.Instance">
+     <method name="Present">
+     </method>
+   </interface>
diff --git a/meta/recipes-connectivity/connman/connman-gnome_0.5.bb b/meta/recipes-connectivity/connman/connman-gnome_0.5.bb
index 9dd1b41..3b7d1b8 100644
--- a/meta/recipes-connectivity/connman/connman-gnome_0.5.bb
+++ b/meta/recipes-connectivity/connman/connman-gnome_0.5.bb
@@ -6,13 +6,14 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=eb723b61539feef013de476e68b5c50a \
                     file://properties/main.c;beginline=1;endline=20;md5=50c77c81871308b033ab7a1504626afb \
                     file://common/connman-dbus.c;beginline=1;endline=20;md5=de6b485c0e717a0236402d220187717a"
 DEPENDS = "gtk+ dbus"
-PR = "r2"
+PR = "r3"
 
 RRECOMMENDS_${PN} = "python python-dbus connman connman-plugin-ethernet connman-plugin-loopback connman-plugin-udhcp connman-plugin-wifi connman-plugin-fake connman-plugin-bluetooth connman-plugin-dnsproxy"
 
 SRC_URI = "http://www.kernel.org/pub/linux/network/connman/connman-gnome-${PV}.tar.gz \
            file://connman-gnome.patch \
-           file://remove-connman-property-desktop-file.patch"
+           file://remove-connman-property-desktop-file.patch \
+           file://service_name_update.patch"
 
 SRC_URI[md5sum] = "0e1c4c25d19cad9b08a216848a320716"
 SRC_URI[sha256sum] = "4d5fe481b444fc3e64fd9caa149dbcd76de166a25733f18fd93da01d2abf5d1c"
-- 
1.6.3.3


