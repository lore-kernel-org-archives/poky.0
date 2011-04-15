Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id B97AA4C80BBC
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 00:35:55 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 14 Apr 2011 22:35:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,216,1301900400"; d="scan'208";a="629026140"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by orsmga002.jf.intel.com with ESMTP; 14 Apr 2011 22:35:55 -0700
Message-Id: <5e13fc6e82af909b2d537b09f3372525e9b609d9.1302845703.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1302845703.git.dongxiao.xu@intel.com>
References: <cover.1302845703.git.dongxiao.xu@intel.com>
Old-Date: Wed, 13 Apr 2011 10:24:13 +0800
Date: Fri, 15 Apr 2011 13:36:49 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 06/14] ofono: upgrade to version 0.45
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
X-List-Received-Date: Fri, 15 Apr 2011 05:35:55 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/recipes-connectivity/ofono/ofono_0.37.bb |    9 ---------
 meta/recipes-connectivity/ofono/ofono_0.45.bb |    9 +++++++++
 2 files changed, 9 insertions(+), 9 deletions(-)
 delete mode 100644 meta/recipes-connectivity/ofono/ofono_0.37.bb
 create mode 100644 meta/recipes-connectivity/ofono/ofono_0.45.bb

diff --git a/meta/recipes-connectivity/ofono/ofono_0.37.bb b/meta/recipes-connectivity/ofono/ofono_0.37.bb
deleted file mode 100644
index aea4e98..0000000
--- a/meta/recipes-connectivity/ofono/ofono_0.37.bb
+++ /dev/null
@@ -1,9 +0,0 @@
-require ofono.inc
-
-PR = "r0"
-
-SRC_URI  = "${KERNELORG_MIRROR}/linux/network/ofono/${P}.tar.bz2 \
-	          file://ofono"
-
-SRC_URI[md5sum] = "fa9a6f91506db2ac5bf313ff0bde65f3"
-SRC_URI[sha256sum] = "0ac71d8a846d564ef6940c47bcc410b76df750aadf7903cb56876d991275f6db"
diff --git a/meta/recipes-connectivity/ofono/ofono_0.45.bb b/meta/recipes-connectivity/ofono/ofono_0.45.bb
new file mode 100644
index 0000000..4a8950f
--- /dev/null
+++ b/meta/recipes-connectivity/ofono/ofono_0.45.bb
@@ -0,0 +1,9 @@
+require ofono.inc
+
+PR = "r0"
+
+SRC_URI  = "${KERNELORG_MIRROR}/linux/network/ofono/${P}.tar.bz2 \
+	          file://ofono"
+
+SRC_URI[md5sum] = "31dabb077e7592ba36913bd9d0c76b94"
+SRC_URI[sha256sum] = "5541e832fb72c6c647b663e5ee55384a33efaee5a34c4544e3a16af94892f47e"
-- 
1.7.1


