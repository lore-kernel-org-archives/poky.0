Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id D36EC4C811EF
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 08:27:07 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 23 Dec 2010 06:27:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,219,1291622400"; d="scan'208";a="365818488"
Received: from unknown (HELO localhost) ([10.255.14.90])
	by azsmga001.ch.intel.com with ESMTP; 23 Dec 2010 06:27:06 -0800
Message-Id: <975d44996d2bb1b604b2470c0810aa668b018a3d.1293114004.git.sgw@linux.intel.com>
In-Reply-To: <cover.1293114003.git.sgw@linux.intel.com>
References: <cover.1293114003.git.sgw@linux.intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Old-Date: Wed, 22 Dec 2010 21:04:31 +0800
Date: Thu, 23 Dec 2010  6:27:06 -0800
To: poky@yoctoproject.org
Subject: [PATCH 07/28] matchbox-stroke: Make as singleton
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
X-List-Received-Date: Thu, 23 Dec 2010 14:27:08 -0000

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
1.7.2.3


