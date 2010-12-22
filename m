Return-Path: <edwin.zhai@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id E8FD14C811DD
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 07:32:11 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 22 Dec 2010 05:32:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,213,1291622400"; d="scan'208";a="365241716"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.31])
	by azsmga001.ch.intel.com with ESMTP; 22 Dec 2010 05:32:10 -0800
Message-Id: <3860b3a60b3656ed8feeb5e3654c56559683fccd.1293024880.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1293024880.git.edwin.zhai@intel.com>
References: <cover.1293024880.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Wed, 22 Dec 2010 21:04:31 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 2/3] matchbox-stroke: Make as singleton
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
X-List-Received-Date: Wed, 22 Dec 2010 13:32:12 -0000

Multiple matchbox-stroke instances would occupy whole screen and cause end user
confusing. Making matchbox-stroke singleton is one work around.

This patch allow only one instance of matchbox-stroke based on some mechanism
in matchbox-desktop.


Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../matchbox-stroke/files/single-instance.patch    |   19 +++++++++++++++++++
 .../matchbox-stroke/matchbox-stroke_svn.bb         |    1 +
 2 files changed, 20 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-sato/matchbox-stroke/files/single-instance.patch

diff --git a/meta/recipes-sato/matchbox-stroke/files/single-instance.patch b/meta/recipes-sato/matchbox-stroke/files/single-instance.patch
new file mode 100644
index 0000000..f4fec07
--- /dev/null
+++ b/meta/recipes-sato/matchbox-stroke/files/single-instance.patch
@@ -0,0 +1,19 @@
+Multiple matchbox-stroke instances would occupy whole screen and cause end user
+confusing. Making matchbox-stroke singleton is one work around.
+
+This patch allow only one instance of matchbox-stroke based on some mechanism
+in matchbox-desktop.
+
+Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
+
+
+Index: matchbox-stroke/matchbox-stroke.desktop
+===================================================================
+--- matchbox-stroke.orig/matchbox-stroke.desktop	2010-07-10 10:23:26.000000000 +0800
++++ matchbox-stroke/matchbox-stroke.desktop	2010-12-22 20:59:26.000000000 +0800
+@@ -6,3 +6,5 @@
+ Icon=matchbox-stroke.png
+ Categories=Panel;Utility;MB
+ X-MB-INPUT-MECHANSIM=True
++X-MB-SingleInstance=true
++StartupNotify=true
diff --git a/meta/recipes-sato/matchbox-stroke/matchbox-stroke_svn.bb b/meta/recipes-sato/matchbox-stroke/matchbox-stroke_svn.bb
index 1e25369..b0e77ac 100644
--- a/meta/recipes-sato/matchbox-stroke/matchbox-stroke_svn.bb
+++ b/meta/recipes-sato/matchbox-stroke/matchbox-stroke_svn.bb
@@ -10,6 +10,7 @@ SECTION = "x11/wm"
 PV = "0.0+svnr${SRCREV}"
 
 SRC_URI = "svn://svn.o-hand.com/repos/matchbox/trunk;module=${PN};proto=http \
+           file://single-instance.patch;patch=1 \
            file://configure_fix.patch;patch=1;maxrev=1819 "
 
 S = "${WORKDIR}/${PN}"
-- 
1.7.0.4


