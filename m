Return-Path: <dexuan.cui@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 435C44C8127E
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 17:41:40 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 27 Jan 2011 15:41:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,387,1291622400"; d="scan'208";a="597180285"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.108])
	by orsmga002.jf.intel.com with ESMTP; 27 Jan 2011 15:41:39 -0800
Message-Id: <1ad70e540b6f073dfb07dee81a82f74f93c9b366.1296171289.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1296171287.git.dexuan.cui@intel.com>
References: <cover.1296171287.git.dexuan.cui@intel.com>
Old-Date: Fri, 28 Jan 2011 02:37:40 +0800
Date: Fri, 28 Jan 2011  7:40:58 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [Dexuan: Jan 28: PULL 14/16] libunique: update DESCRIPTION, HOMEPAGE, BUGTRACKER
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
X-List-Received-Date: Thu, 27 Jan 2011 23:41:40 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 meta/recipes-gnome/libunique/libunique_1.1.6.bb |    7 ++++++-
 1 files changed, 6 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-gnome/libunique/libunique_1.1.6.bb b/meta/recipes-gnome/libunique/libunique_1.1.6.bb
index 7eb64e0..dcc6555 100644
--- a/meta/recipes-gnome/libunique/libunique_1.1.6.bb
+++ b/meta/recipes-gnome/libunique/libunique_1.1.6.bb
@@ -1,8 +1,13 @@
+DESCRIPTION = "Unique is a library for writing single instance application. If you launch a single instance application twice, the second instance will either just quit or will send a message to the running instance."
+HOMEPAGE = "http://live.gnome.org/LibUnique"
+BUGTRACKER = "https://bugzilla.gnome.org/enter_bug.cgi?product=libunique"
+
 SRC_URI = "http://ftp.gnome.org/pub/GNOME/sources/libunique/1.1/libunique-${PV}.tar.bz2"
 
 SRC_URI[md5sum] = "7955769ef31f1bc4f83446dbb3625e6d"
 SRC_URI[sha256sum] = "e5c8041cef8e33c55732f06a292381cb345db946cf792a4ae18aa5c66cdd4fbb"
-PR = "r1"
+
+PR = "r2"
 
 DEPENDS = "glib-2.0 gtk+ dbus"
 
-- 
1.7.2


