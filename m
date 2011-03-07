Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 839594C800A7
	for <poky@yoctoproject.org>; Mon,  7 Mar 2011 02:00:57 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 07 Mar 2011 00:00:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,276,1297065600"; d="scan'208";a="664544584"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.64])
	by fmsmga002.fm.intel.com with ESMTP; 07 Mar 2011 00:00:34 -0800
Message-Id: <11d60c5b1494c8c796d5e5020bcbb1285c769a73.1299254646.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1299254646.git.dongxiao.xu@intel.com>
References: <cover.1299254646.git.dongxiao.xu@intel.com>
Old-Date: Sat, 5 Mar 2011 00:02:14 +0800
Date: Mon, 07 Mar 2011 16:00:24 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 1/1] connman: add xuser to the dbus permission list
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
X-List-Received-Date: Mon, 07 Mar 2011 08:00:57 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Some platform (like atom-pc) enables rootless X,
thus the connman frontend run on it need the
permission to connect with connman by dbus.
This commit grants permission to xuser.

This fixes [BUGID #779]

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../connman-0.65/add_xuser_dbus_permission.patch   |   21 ++++++++++++++++++++
 meta/recipes-connectivity/connman/connman_0.65.bb  |    3 +-
 2 files changed, 23 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-connectivity/connman/connman-0.65/add_xuser_dbus_permission.patch

diff --git a/meta/recipes-connectivity/connman/connman-0.65/add_xuser_dbus_permission.patch b/meta/recipes-connectivity/connman/connman-0.65/add_xuser_dbus_permission.patch
new file mode 100644
index 0000000..787d49b
--- /dev/null
+++ b/meta/recipes-connectivity/connman/connman-0.65/add_xuser_dbus_permission.patch
@@ -0,0 +1,21 @@
+Some platform (like atom-pc) enables rootless X,
+thus we need to add the xuser in the list.
+
+Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
+
+diff -ruN connman-0.65-orig/src/connman-dbus.conf connman-0.65/src/connman-dbus.conf
+--- connman-0.65-orig/src/connman-dbus.conf	2011-03-04 09:34:49.000000000 +0800
++++ connman-0.65/src/connman-dbus.conf	2011-03-04 09:35:21.000000000 +0800
+@@ -7,6 +7,12 @@
+         <allow send_interface="net.connman.Agent"/>
+         <allow send_interface="net.connman.Counter"/>
+     </policy>
++    <policy user="xuser">
++        <allow own="net.connman"/>
++        <allow send_destination="net.connman"/>
++        <allow send_interface="net.connman.Agent"/>
++        <allow send_interface="net.connman.Counter"/>
++    </policy>
+     <policy at_console="true">
+         <allow send_destination="net.connman"/>
+     </policy>
diff --git a/meta/recipes-connectivity/connman/connman_0.65.bb b/meta/recipes-connectivity/connman/connman_0.65.bb
index 0b077e1..8bb84a1 100644
--- a/meta/recipes-connectivity/connman/connman_0.65.bb
+++ b/meta/recipes-connectivity/connman/connman_0.65.bb
@@ -1,5 +1,5 @@
 require connman.inc
-PR = "r0"
+PR = "r1"
 
 EXTRA_OECONF += "\
   ac_cv_path_WPASUPPLICANT=/usr/sbin/wpa_supplicant \
@@ -21,6 +21,7 @@ EXTRA_OECONF += "\
 SRC_URI  = "\
   http://www.kernel.org/pub/linux/network/connman/connman-${PV}.tar.gz \
   file://fix-shutdown-ap-disconnect.patch \
+  file://add_xuser_dbus_permission.patch \
   file://connman \
 "
 
-- 
1.7.1


