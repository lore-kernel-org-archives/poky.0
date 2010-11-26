Return-Path: <edwin.zhai@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0DFFD4C810C0
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 10:08:14 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 26 Nov 2010 08:08:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,261,1288594800"; d="scan'208";a="577900952"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by orsmga002.jf.intel.com with ESMTP; 26 Nov 2010 08:08:14 -0800
Message-Id: <47b2e9d084b0167170a32201ef9f37f22d5042d8.1290787706.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1290787706.git.edwin.zhai@intel.com>
References: <cover.1290787706.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Fri, 26 Nov 2010 22:44:47 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 04/11] libgalago: Add license checksum
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
X-List-Received-Date: Fri, 26 Nov 2010 16:08:15 -0000

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../recipes-connectivity/galago/libgalago_0.5.2.bb |    5 ++++-
 1 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-connectivity/galago/libgalago_0.5.2.bb b/meta/recipes-connectivity/galago/libgalago_0.5.2.bb
index 3c4412d..f9bb7b3 100644
--- a/meta/recipes-connectivity/galago/libgalago_0.5.2.bb
+++ b/meta/recipes-connectivity/galago/libgalago_0.5.2.bb
@@ -1,7 +1,10 @@
 SUMMARY =       "Desktop presence framework"
 DESCRIPTION =	"Galago is a desktop presence framework, designed to transmit presence information between programs."
 HOMEPAGE =	"http://www.galago-project.org/"
-LICENSE =	"LGPL"
+LICENSE =	"LGPLv2.1+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=7fbc338309ac38fefcd64b04bb903e34 \
+                    file://libgalago/galago.h;endline=21;md5=141785cb9ec62067398dda136a7bb401"
+
 DEPENDS = 	"gettext dbus glib-2.0 dbus-glib"
 
 SRC_URI =	"http://www.galago-project.org/files/releases/source/${PN}/${P}.tar.gz \
-- 
1.7.0.4


