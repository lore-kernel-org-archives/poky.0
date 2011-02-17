Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1129E4C800AC
	for <poky@yoctoproject.org>; Thu, 17 Feb 2011 01:05:05 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 16 Feb 2011 23:05:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,485,1291622400"; d="scan'208";a="603538172"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by orsmga002.jf.intel.com with ESMTP; 16 Feb 2011 23:05:05 -0800
Message-Id: <aab12998130f8776f753324a03db783a37a0aaf6.1297927348.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1297927348.git.dongxiao.xu@intel.com>
References: <cover.1297927348.git.dongxiao.xu@intel.com>
Old-Date: Thu, 17 Feb 2011 15:21:30 +0800
Date: Thu, 17 Feb 2011 15:25:21 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 1/1] connman-gnome: Enable config menu popup even services are not available
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
X-List-Received-Date: Thu, 17 Feb 2011 07:05:06 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

User may still want to configure networks even if current services are
not available, for example, set online/offline mode, etc.

Enable the popup menu even if the status is unavailable.

This fixes [BUGID #472]

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../connman-gnome/applet_menu_popup_fix.patch      |   19 +++++++++++++++++++
 .../connman/connman-gnome_0.5.bb                   |    5 +++--
 2 files changed, 22 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-connectivity/connman/connman-gnome/applet_menu_popup_fix.patch

diff --git a/meta/recipes-connectivity/connman/connman-gnome/applet_menu_popup_fix.patch b/meta/recipes-connectivity/connman/connman-gnome/applet_menu_popup_fix.patch
new file mode 100644
index 0000000..d34257b
--- /dev/null
+++ b/meta/recipes-connectivity/connman/connman-gnome/applet_menu_popup_fix.patch
@@ -0,0 +1,19 @@
+Even if all services are not available, we still need to let user have
+the ability to configure network, for example, online/offline, etc.
+Therefore enable the callback menu even when status is unavailable.
+
+Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
+
+diff --git a/applet/status.c b/applet/status.c
+index 13ec752..d817f22 100644
+--- a/applet/status.c
++++ b/applet/status.c
+@@ -231,8 +231,6 @@ void status_unavailable(void)
+ {
+ 	icon_animation_stop(animation);
+ 
+-	available = FALSE;
+-
+ 	gtk_status_icon_set_from_pixbuf(statusicon, pixbuf_notifier);
+ 	gtk_status_icon_set_tooltip(statusicon,
+ 				"Connection Manager daemon is not running");
diff --git a/meta/recipes-connectivity/connman/connman-gnome_0.5.bb b/meta/recipes-connectivity/connman/connman-gnome_0.5.bb
index 3b7d1b8..dc5527b 100644
--- a/meta/recipes-connectivity/connman/connman-gnome_0.5.bb
+++ b/meta/recipes-connectivity/connman/connman-gnome_0.5.bb
@@ -6,14 +6,15 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=eb723b61539feef013de476e68b5c50a \
                     file://properties/main.c;beginline=1;endline=20;md5=50c77c81871308b033ab7a1504626afb \
                     file://common/connman-dbus.c;beginline=1;endline=20;md5=de6b485c0e717a0236402d220187717a"
 DEPENDS = "gtk+ dbus"
-PR = "r3"
+PR = "r4"
 
 RRECOMMENDS_${PN} = "python python-dbus connman connman-plugin-ethernet connman-plugin-loopback connman-plugin-udhcp connman-plugin-wifi connman-plugin-fake connman-plugin-bluetooth connman-plugin-dnsproxy"
 
 SRC_URI = "http://www.kernel.org/pub/linux/network/connman/connman-gnome-${PV}.tar.gz \
            file://connman-gnome.patch \
            file://remove-connman-property-desktop-file.patch \
-           file://service_name_update.patch"
+           file://service_name_update.patch \
+           file://applet_menu_popup_fix.patch"
 
 SRC_URI[md5sum] = "0e1c4c25d19cad9b08a216848a320716"
 SRC_URI[sha256sum] = "4d5fe481b444fc3e64fd9caa149dbcd76de166a25733f18fd93da01d2abf5d1c"
-- 
1.6.3.3


