Return-Path: <edwin.zhai@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 034BD4C80ACE
	for <poky@yoctoproject.org>; Wed, 13 Apr 2011 19:16:05 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 13 Apr 2011 17:16:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,207,1301900400"; d="scan'208";a="909258377"
Received: from yocto-build8.sh.intel.com (HELO localhost) ([10.239.48.1])
	by fmsmga001.fm.intel.com with ESMTP; 13 Apr 2011 17:16:00 -0700
Message-Id: <ab9a87c78f65154dade278bbf1bbf091cd245be2.1302739788.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1302739788.git.edwin.zhai@intel.com>
References: <cover.1302739788.git.edwin.zhai@intel.com>
Old-Date: Wed, 13 Apr 2011 13:24:22 +0800
Date: Thu, 14 Apr 2011  8:13:27 +0800
To: poky@yoctoproject.org
CC: 
From: Zhai Edwin <edwin.zhai@intel.com>
Subject: [PATCH 7/9] consolekit: Upgrade to 0.4.4 (from 0.4.3)
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
X-List-Received-Date: Thu, 14 Apr 2011 00:16:06 -0000

From: Zhai Edwin <edwin.zhai@intel.com>

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../{consolekit_0.4.3.bb => consolekit_0.4.4.bb}   |    8 +++++---
 1 files changed, 5 insertions(+), 3 deletions(-)
 rename meta/recipes-support/consolekit/{consolekit_0.4.3.bb => consolekit_0.4.4.bb} (79%)

diff --git a/meta/recipes-support/consolekit/consolekit_0.4.3.bb b/meta/recipes-support/consolekit/consolekit_0.4.4.bb
similarity index 79%
rename from meta/recipes-support/consolekit/consolekit_0.4.3.bb
rename to meta/recipes-support/consolekit/consolekit_0.4.4.bb
index 5bf4c52..4609e2a 100644
--- a/meta/recipes-support/consolekit/consolekit_0.4.3.bb
+++ b/meta/recipes-support/consolekit/consolekit_0.4.4.bb
@@ -8,13 +8,15 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552 \
 
 DEPENDS = "dbus"
 
+PR = "r0"
+
 inherit gnome
 
-SRC_URI = "http://www.freedesktop.org/software/ConsoleKit/dist/ConsoleKit-0.4.3.tar.bz2 \
+SRC_URI = "http://www.freedesktop.org/software/ConsoleKit/dist/ConsoleKit-${PV}.tar.bz2 \
            file://nopolkit.patch;patch=1"
 
-SRC_URI[md5sum] = "4c39c6eacc75334b890f21eead1d2945"
-SRC_URI[sha256sum] = "fe02aca2b4c21df59aa5fbe6f28ea3ea4b3c9dd64c48c50634e9a53cf9c0dcc5"
+SRC_URI[md5sum] = "b57eb18eae8c4d3631d5f4f030218a29"
+SRC_URI[sha256sum] = "f0c00969fb6fe7d628071f0f43ac0d411982a5e798d7dc31747caa772c9716ae"
 S = "${WORKDIR}/ConsoleKit-${PV}"
 
 FILES_${PN} += "${libdir}/ConsoleKit ${datadir}/dbus-1 ${datadir}/PolicyKit"
-- 
1.7.1


