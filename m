Return-Path: <edwin.zhai@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id C9FF04C811DD
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 10:08:17 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 26 Nov 2010 08:08:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,261,1288594800"; d="scan'208";a="353589754"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by azsmga001.ch.intel.com with ESMTP; 26 Nov 2010 08:08:16 -0800
Message-Id: <9a1a6ef25322f16164d3c17450537e17f21d67b1.1290787706.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1290787706.git.edwin.zhai@intel.com>
References: <cover.1290787706.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Fri, 26 Nov 2010 23:00:02 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 06/11] metacity: Add license checksum
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
X-List-Received-Date: Fri, 26 Nov 2010 16:08:18 -0000

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 meta/recipes-gnome/gnome/metacity_2.22.0.bb |    5 ++++-
 1 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-gnome/gnome/metacity_2.22.0.bb b/meta/recipes-gnome/gnome/metacity_2.22.0.bb
index 44a5f86..f0d6c89 100644
--- a/meta/recipes-gnome/gnome/metacity_2.22.0.bb
+++ b/meta/recipes-gnome/gnome/metacity_2.22.0.bb
@@ -1,6 +1,9 @@
 SECTION = "x11/wm"
 DESCRIPTION = "Metacity is the boring window manager for the adult in you."
-LICENSE = "GPL"
+LICENSE = "GPLv2+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
+                    file://src/include/main.h;endline=24;md5=c2242df552c880280315989bab626b90"
+
 DEPENDS = "startup-notification gtk+ gconf gdk-pixbuf-csource-native"
 PR = "r3"
 
-- 
1.7.0.4


