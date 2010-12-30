Return-Path: <dongxiao.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id BB2D34C811DE
	for <poky@yoctoproject.org>; Wed, 29 Dec 2010 20:28:34 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 29 Dec 2010 18:28:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,247,1291622400"; d="scan'208";a="588237148"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.32])
	by orsmga002.jf.intel.com with ESMTP; 29 Dec 2010 18:28:34 -0800
Message-Id: <46f0ba85766a55b473da46ec0ece5ca939a4122e.1293676328.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1293676328.git.dongxiao.xu@intel.com>
References: <cover.1293676328.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Old-Date: Tue, 28 Dec 2010 08:09:13 +0800
Date: Thu, 30 Dec 2010 10:38:19 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 02/19] ofono: upgrade to version 0.37
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
X-List-Received-Date: Thu, 30 Dec 2010 02:28:34 -0000

upgrade from 0.33 to 0.37

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/recipes-connectivity/ofono/ofono_0.33.bb |    9 ---------
 meta/recipes-connectivity/ofono/ofono_0.37.bb |    9 +++++++++
 2 files changed, 9 insertions(+), 9 deletions(-)
 delete mode 100644 meta/recipes-connectivity/ofono/ofono_0.33.bb
 create mode 100644 meta/recipes-connectivity/ofono/ofono_0.37.bb

diff --git a/meta/recipes-connectivity/ofono/ofono_0.33.bb b/meta/recipes-connectivity/ofono/ofono_0.33.bb
deleted file mode 100644
index 1d9a8af..0000000
--- a/meta/recipes-connectivity/ofono/ofono_0.33.bb
+++ /dev/null
@@ -1,9 +0,0 @@
-require ofono.inc
-
-PR = "r0"
-
-SRC_URI  = "http://www.kernel.org/pub/linux/network/ofono/${P}.tar.bz2 \
-	          file://ofono"
-
-SRC_URI[md5sum] = "001160996d0c00e7b8da575e1fff1bd1"
-SRC_URI[sha256sum] = "1b7ce568e32518f404231389150cea5d4abfb19e09eaa6e7a280be2e5186c82f"
diff --git a/meta/recipes-connectivity/ofono/ofono_0.37.bb b/meta/recipes-connectivity/ofono/ofono_0.37.bb
new file mode 100644
index 0000000..1c1c501
--- /dev/null
+++ b/meta/recipes-connectivity/ofono/ofono_0.37.bb
@@ -0,0 +1,9 @@
+require ofono.inc
+
+PR = "r0"
+
+SRC_URI  = "http://www.kernel.org/pub/linux/network/ofono/${P}.tar.bz2 \
+	          file://ofono"
+
+SRC_URI[md5sum] = "fa9a6f91506db2ac5bf313ff0bde65f3"
+SRC_URI[sha256sum] = "0ac71d8a846d564ef6940c47bcc410b76df750aadf7903cb56876d991275f6db"
-- 
1.6.3.3


