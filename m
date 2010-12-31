Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id AFAB74C811E5
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 18:40:41 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 30 Dec 2010 16:40:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,252,1291622400"; d="scan'208";a="368273106"
Received: from unknown (HELO localhost) ([10.255.13.230])
	by azsmga001.ch.intel.com with ESMTP; 30 Dec 2010 16:40:41 -0800
Message-Id: <880cd3fa1f61cef2f5e24122d476af871d6101aa.1293755504.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1293755504.git.dvhart@linux.intel.com>
References: <cover.1293755504.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Old-Date: Mon, 20 Dec 2010 15:05:33 -0800
Date: Thu, 30 Dec 2010 16:40:40 -0800
To: poky@yoctoproject.org
Subject: [PATCH 3/5] meta-rt/poky-image-*rt: Add initial PREEMPT_RT image recipes
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
X-List-Received-Date: Fri, 31 Dec 2010 00:40:41 -0000

Add poky-image-minimal-rt* image recipes. They are based on the minimal recipe
and add rt-tests for basic evaluation of a board with a PREEMPT_RT kernel.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@intel.com>
Cc: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-rt/images/poky-image-minimal-rt-directdisk.bb |   15 +++++++++++++++
 meta-rt/images/poky-image-minimal-rt-live.bb       |   15 +++++++++++++++
 meta-rt/images/poky-image-minimal-rt.bb            |   12 ++++++++++++
 3 files changed, 42 insertions(+), 0 deletions(-)
 create mode 100644 meta-rt/images/poky-image-minimal-rt-directdisk.bb
 create mode 100644 meta-rt/images/poky-image-minimal-rt-live.bb
 create mode 100644 meta-rt/images/poky-image-minimal-rt.bb

diff --git a/meta-rt/images/poky-image-minimal-rt-directdisk.bb b/meta-rt/images/poky-image-minimal-rt-directdisk.bb
new file mode 100644
index 0000000..b68fe56
--- /dev/null
+++ b/meta-rt/images/poky-image-minimal-rt-directdisk.bb
@@ -0,0 +1,15 @@
+#
+# Copyright (C) 2010 Intel Corporation.
+#
+
+require recipes-core/images/poky-image-directdisk.inc
+
+DESCRIPTION = "Bootable Minimal Real-Time Direct Disk Image"
+
+ROOTFS = "${DEPLOY_DIR_IMAGE}/poky-image-minimal-rt-${MACHINE}.ext3"
+
+LICENSE = "MIT"
+
+do_bootdirectdisk[depends] += "poky-image-minimal-rt:do_rootfs"
+
+
diff --git a/meta-rt/images/poky-image-minimal-rt-live.bb b/meta-rt/images/poky-image-minimal-rt-live.bb
new file mode 100644
index 0000000..988c270
--- /dev/null
+++ b/meta-rt/images/poky-image-minimal-rt-live.bb
@@ -0,0 +1,15 @@
+#
+# Copyright (C) 2010 Intel Corporation.
+#
+
+DESCRIPTION = "Bootable Live Minimal Real-Time Linux Image"
+
+require recipes-core/images/poky-image-live.inc
+
+LABELS += "boot install"
+
+ROOTFS = "${DEPLOY_DIR_IMAGE}/poky-image-rt-${MACHINE}.ext3"
+
+LICENSE = "MIT"
+
+do_bootimg[depends] += "poky-image-minimal-rt:do_rootfs"
diff --git a/meta-rt/images/poky-image-minimal-rt.bb b/meta-rt/images/poky-image-minimal-rt.bb
new file mode 100644
index 0000000..6f5700c
--- /dev/null
+++ b/meta-rt/images/poky-image-minimal-rt.bb
@@ -0,0 +1,12 @@
+#
+# Copyright (C) 2010 Intel Corporation.
+#
+
+DESCRIPTION = "Minimal Real-Time Linux Image"
+DEPENDS = "linux-yocto-rt"
+
+require recipes-core/images/poky-image-minimal.bb
+
+IMAGE_INSTALL += "rt-tests"
+
+LICENSE = "MIT"
-- 
1.7.1


