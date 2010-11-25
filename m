Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0CBFD4C811CD
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 00:53:43 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 25 Nov 2010 22:53:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,259,1288594800"; d="scan'208";a="353434710"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by azsmga001.ch.intel.com with ESMTP; 25 Nov 2010 22:53:42 -0800
Message-Id: <570d7203d7151c981ee805582f53c78334950f66.1290736298.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1290736297.git.dongxiao.xu@intel.com>
References: <cover.1290736297.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Thu, 25 Nov 2010 13:52:23 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 11/14] ofono: Upgrade to version 0.33
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
X-List-Received-Date: Fri, 26 Nov 2010 06:53:44 -0000

Fixed recipe metadata.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta/recipes-connectivity/ofono/ofono.inc          |    4 +++-
 .../ofono/{files => ofono}/ofono                   |    0
 meta/recipes-connectivity/ofono/ofono_0.17.bb      |    7 -------
 meta/recipes-connectivity/ofono/ofono_0.33.bb      |    9 +++++++++
 4 files changed, 12 insertions(+), 8 deletions(-)
 rename meta/recipes-connectivity/ofono/{files => ofono}/ofono (100%)
 delete mode 100644 meta/recipes-connectivity/ofono/ofono_0.17.bb
 create mode 100644 meta/recipes-connectivity/ofono/ofono_0.33.bb

diff --git a/meta/recipes-connectivity/ofono/ofono.inc b/meta/recipes-connectivity/ofono/ofono.inc
index eddfa47..5abc92e 100644
--- a/meta/recipes-connectivity/ofono/ofono.inc
+++ b/meta/recipes-connectivity/ofono/ofono.inc
@@ -1,7 +1,9 @@
 HOMEPAGE = "http://www.ofono.org"
 SUMMARY  = "open source telephony"
 DESCRIPTION = "oFono is a stack for mobile telephony devices on Linux. oFono supports speaking to telephony devices through specific drivers, or with generic AT commands."
-LICENSE  = "GPL"
+LICENSE  = "GPLv2"
+LIC_FILES_CHKSUM = "file://COPYING;md5=eb723b61539feef013de476e68b5c50a \
+                    file://src/ofono.h;beginline=1;endline=20;md5=85d349dd8ec342c8f40d90e520f22779"
 
 inherit autotools pkgconfig update-rc.d
 
diff --git a/meta/recipes-connectivity/ofono/files/ofono b/meta/recipes-connectivity/ofono/ofono/ofono
similarity index 100%
rename from meta/recipes-connectivity/ofono/files/ofono
rename to meta/recipes-connectivity/ofono/ofono/ofono
diff --git a/meta/recipes-connectivity/ofono/ofono_0.17.bb b/meta/recipes-connectivity/ofono/ofono_0.17.bb
deleted file mode 100644
index 02b64e5..0000000
--- a/meta/recipes-connectivity/ofono/ofono_0.17.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-require ofono.inc
-
-PR = "r0"
-
-SRC_URI  = "http://www.kernel.org/pub/linux/network/ofono/${P}.tar.bz2 \
-	          file://ofono"
-
diff --git a/meta/recipes-connectivity/ofono/ofono_0.33.bb b/meta/recipes-connectivity/ofono/ofono_0.33.bb
new file mode 100644
index 0000000..1d9a8af
--- /dev/null
+++ b/meta/recipes-connectivity/ofono/ofono_0.33.bb
@@ -0,0 +1,9 @@
+require ofono.inc
+
+PR = "r0"
+
+SRC_URI  = "http://www.kernel.org/pub/linux/network/ofono/${P}.tar.bz2 \
+	          file://ofono"
+
+SRC_URI[md5sum] = "001160996d0c00e7b8da575e1fff1bd1"
+SRC_URI[sha256sum] = "1b7ce568e32518f404231389150cea5d4abfb19e09eaa6e7a280be2e5186c82f"
-- 
1.6.3.3


