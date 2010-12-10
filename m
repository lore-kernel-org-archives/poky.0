Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id C57C94C81021
	for <poky@yoctoproject.org>; Fri, 17 Dec 2010 18:20:23 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 17 Dec 2010 16:20:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,190,1291622400"; d="scan'208";a="688334747"
Received: from unknown (HELO localhost) ([10.255.14.50])
	by orsmga001.jf.intel.com with ESMTP; 17 Dec 2010 16:20:23 -0800
Message-Id: <1f59eb94ce4d4c90ca91b91c1a72a2a313d254e9.1292630935.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1292630935.git.dvhart@linux.intel.com>
References: <cover.1292630935.git.dvhart@linux.intel.com>
From: Darren Hart <dvhart@linux.intel.com>
Date: Fri, 10 Dec 2010 15:33:42 -0800
To: poky@yoctoproject.org,tom.zanussi@intel.com,bruce.ashfield@intel.com
Subject: [PATCH 3/4] poky-image-minimal-rt*: Add initial real-time image recipes
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
X-List-Received-Date: Sat, 18 Dec 2010 00:20:24 -0000

Add poky-image-minimal-rt* image recipes. They are based on the minimal recipe
and add rt-tests for basic evaluation of a board with a PREEMPT_RT kernel.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../images/poky-image-minimal-rt-directdisk.bb     |   15 +++++++++++++++
 .../images/poky-image-minimal-rt-live.bb           |   15 +++++++++++++++
 meta/recipes-core/images/poky-image-minimal-rt.bb  |   15 +++++++++++++++
 3 files changed, 45 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-core/images/poky-image-minimal-rt-directdisk.bb
 create mode 100644 meta/recipes-core/images/poky-image-minimal-rt-live.bb
 create mode 100644 meta/recipes-core/images/poky-image-minimal-rt.bb

diff --git a/meta/recipes-core/images/poky-image-minimal-rt-directdisk.bb b/meta/recipes-core/images/poky-image-minimal-rt-directdisk.bb
new file mode 100644
index 0000000..8f276d4
--- /dev/null
+++ b/meta/recipes-core/images/poky-image-minimal-rt-directdisk.bb
@@ -0,0 +1,15 @@
+#
+# Copyright (C) 2010 Intel Corporation.
+#
+
+require poky-image-directdisk.inc
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
diff --git a/meta/recipes-core/images/poky-image-minimal-rt-live.bb b/meta/recipes-core/images/poky-image-minimal-rt-live.bb
new file mode 100644
index 0000000..988c270
--- /dev/null
+++ b/meta/recipes-core/images/poky-image-minimal-rt-live.bb
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
diff --git a/meta/recipes-core/images/poky-image-minimal-rt.bb b/meta/recipes-core/images/poky-image-minimal-rt.bb
new file mode 100644
index 0000000..cbc69c4
--- /dev/null
+++ b/meta/recipes-core/images/poky-image-minimal-rt.bb
@@ -0,0 +1,15 @@
+#
+# Copyright (C) 2010 Intel Corporation.
+#
+
+# For best results, be sure to select a PREEMPT_RT kernel in your machine
+# config or in your local.conf. For example:
+# PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto-rt"
+
+DESCRIPTION = "Minimal Real-Time Linux Image"
+
+require recipes-core/images/poky-image-minimal.bb
+
+IMAGE_INSTALL += "rt-tests"
+
+LICENSE = "MIT"
-- 
1.7.2.3


