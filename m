Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id F1DF74C808E7
	for <poky@yoctoproject.org>; Mon, 14 Feb 2011 01:29:38 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 13 Feb 2011 23:29:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,468,1291622400"; d="scan'208";a="887209018"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by fmsmga001.fm.intel.com with ESMTP; 13 Feb 2011 23:29:38 -0800
Message-Id: <074f9d7f5742fcc50ce0f3aa8da2f9ebc17b389c.1297669560.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1297669560.git.dongxiao.xu@intel.com>
References: <cover.1297669560.git.dongxiao.xu@intel.com>
Old-Date: Fri, 11 Feb 2011 17:05:06 +0800
Date: Mon, 14 Feb 2011 15:49:45 +0800
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
X-List-Received-Date: Mon, 14 Feb 2011 07:29:39 -0000

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


