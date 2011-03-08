Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id BF7344C8016A
	for <poky@yoctoproject.org>; Mon,  7 Mar 2011 18:29:33 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 07 Mar 2011 16:29:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,280,1297065600"; d="scan'208";a="610129652"
Received: from unknown (HELO localhost) ([10.255.12.99])
	by orsmga002.jf.intel.com with ESMTP; 07 Mar 2011 16:29:32 -0800
Message-Id: <7ba79b4c25126b42d3697cec9ecdf8d688d6da54.1299544029.git.sgw@linux.intel.com>
In-Reply-To: <cover.1299544029.git.sgw@linux.intel.com>
References: <cover.1299544029.git.sgw@linux.intel.com>
Old-Date: Mon, 7 Mar 2011 09:52:41 -0800
Date: Mon, 07 Mar 2011 16:29:32 -0800
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Saul Wold <sgw@linux.intel.com>
X-Mailman-Approved-At: Mon, 07 Mar 2011 18:30:15 -0600
Subject: [PATCH 3/8] lsb-live image: add lsb-live and lsb-sdk-live image types
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
X-List-Received-Date: Tue, 08 Mar 2011 00:29:33 -0000

From: Saul Wold <sgw@linux.intel.com>

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 .../recipes-extended/images/poky-image-lsb-live.bb |   11 +++++++++++
 .../images/poky-image-lsb-sdk-live.bb              |   11 +++++++++++
 2 files changed, 22 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-extended/images/poky-image-lsb-live.bb
 create mode 100644 meta/recipes-extended/images/poky-image-lsb-sdk-live.bb

diff --git a/meta/recipes-extended/images/poky-image-lsb-live.bb b/meta/recipes-extended/images/poky-image-lsb-live.bb
new file mode 100644
index 0000000..baa9ea0
--- /dev/null
+++ b/meta/recipes-extended/images/poky-image-lsb-live.bb
@@ -0,0 +1,11 @@
+DESCRIPTION = "LSB Bootable Live Image"
+
+require recipes-core/images/poky-image-live.inc
+
+LABELS += "boot install"
+
+ROOTFS = "${DEPLOY_DIR_IMAGE}/poky-image-lsb-${MACHINE}.ext3"
+
+LICENSE = "MIT"
+
+do_bootimg[depends] += "poky-image-lsb:do_rootfs"
diff --git a/meta/recipes-extended/images/poky-image-lsb-sdk-live.bb b/meta/recipes-extended/images/poky-image-lsb-sdk-live.bb
new file mode 100644
index 0000000..370780a
--- /dev/null
+++ b/meta/recipes-extended/images/poky-image-lsb-sdk-live.bb
@@ -0,0 +1,11 @@
+DESCRIPTION = "LSB SDK Bootable Live Image"
+
+require recipes-core/images/poky-image-live.inc
+
+LABELS += "boot install"
+
+ROOTFS = "${DEPLOY_DIR_IMAGE}/poky-image-lsb-sdk-${MACHINE}.ext3"
+
+LICENSE = "MIT"
+
+do_bootimg[depends] += "poky-image-lsb-sdk:do_rootfs"
-- 
1.7.1.1


