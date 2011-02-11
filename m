Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id BC06E4C800BE
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 02:52:12 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 11 Feb 2011 00:52:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,454,1291622400"; d="scan'208";a="387321600"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by azsmga001.ch.intel.com with ESMTP; 11 Feb 2011 00:52:11 -0800
Message-Id: <bc033083c0aba73d9f06e22b8028539631d62984.1297415188.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1297415188.git.dongxiao.xu@intel.com>
References: <cover.1297415188.git.dongxiao.xu@intel.com>
Old-Date: Fri, 11 Feb 2011 17:05:06 +0800
Date: Fri, 11 Feb 2011 17:11:39 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 2/2] dbus: change owner and mode for dbus-daemon-launch-helper in postinst
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
X-List-Received-Date: Fri, 11 Feb 2011 08:52:12 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Add code in dbus postinst to change owner and mode for
dbus-daemon-launch-helper.

[BUGID #603]

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/recipes-core/dbus/dbus.inc      |    4 +++-
 meta/recipes-core/dbus/dbus_1.4.1.bb |    2 +-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-core/dbus/dbus.inc b/meta/recipes-core/dbus/dbus.inc
index da77819..1ef0d8f 100644
--- a/meta/recipes-core/dbus/dbus.inc
+++ b/meta/recipes-core/dbus/dbus.inc
@@ -53,7 +53,9 @@ pkg_postinst_dbus() {
 			--ingroup "$MESSAGEUSER" "$MESSAGEUSER"
 
 	grep -q netdev: /etc/group || addgroup netdev
-	chmod u+s /usr/libexec/dbus-daemon-launch-helper
+
+	chown root:"$MESSAGEUSER" /usr/libexec/dbus-daemon-launch-helper
+	chmod 4754 /usr/libexec/dbus-daemon-launch-helper
 
 	# add volatile after new user/grp are created
 	echo "d messagebus messagebus 0755 /var/run/dbus none" > /etc/default/volatiles/99_dbus
diff --git a/meta/recipes-core/dbus/dbus_1.4.1.bb b/meta/recipes-core/dbus/dbus_1.4.1.bb
index 7c5627b..f16d9f2 100644
--- a/meta/recipes-core/dbus/dbus_1.4.1.bb
+++ b/meta/recipes-core/dbus/dbus_1.4.1.bb
@@ -1,6 +1,6 @@
 include dbus.inc
 
-PR = "r0"
+PR = "r1"
 
 SRC_URI[md5sum] = "99cb057700c0455fb68f8d57902f77ac"
 SRC_URI[sha256sum] = "caa1a0ded2d0f2e95c1d4ec7e3c8bd44834928c5b0ed41a7189963f3593983bd"
-- 
1.6.3.3


