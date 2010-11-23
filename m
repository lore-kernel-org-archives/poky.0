Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id B09184C8112F
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 00:53:33 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 25 Nov 2010 22:53:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,259,1288594800"; d="scan'208";a="353434684"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by azsmga001.ch.intel.com with ESMTP; 25 Nov 2010 22:53:32 -0800
Message-Id: <5df379f0e76068044da6a7f129093c714c0183ff.1290736298.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1290736297.git.dongxiao.xu@intel.com>
References: <cover.1290736297.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Tue, 23 Nov 2010 14:49:55 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 03/14] telepathy-python: Upgrade to version 0.15.18
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
X-List-Received-Date: Fri, 26 Nov 2010 06:53:33 -0000

The new version uses autotool, therefore inherit autotools.bbclass.

Fixed recipe metadata

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../telepathy/telepathy-python_0.15.1.bb           |    8 --------
 .../telepathy/telepathy-python_0.15.18.bb          |   16 ++++++++++++++++
 2 files changed, 16 insertions(+), 8 deletions(-)
 delete mode 100644 meta/recipes-connectivity/telepathy/telepathy-python_0.15.1.bb
 create mode 100644 meta/recipes-connectivity/telepathy/telepathy-python_0.15.18.bb

diff --git a/meta/recipes-connectivity/telepathy/telepathy-python_0.15.1.bb b/meta/recipes-connectivity/telepathy/telepathy-python_0.15.1.bb
deleted file mode 100644
index 0898b32..0000000
--- a/meta/recipes-connectivity/telepathy/telepathy-python_0.15.1.bb
+++ /dev/null
@@ -1,8 +0,0 @@
-DESCRIPTION = "Telepathy framework - Python package"
-HOMEPAGE = "http://telepathy.freedesktop.org/wiki/"
-LICENSE = "LGPL"
-RDEPENDS_${PN} += "python-dbus"
-
-SRC_URI = "http://telepathy.freedesktop.org/releases/${PN}/${P}.tar.gz "
-
-inherit distutils
diff --git a/meta/recipes-connectivity/telepathy/telepathy-python_0.15.18.bb b/meta/recipes-connectivity/telepathy/telepathy-python_0.15.18.bb
new file mode 100644
index 0000000..a5705e2
--- /dev/null
+++ b/meta/recipes-connectivity/telepathy/telepathy-python_0.15.18.bb
@@ -0,0 +1,16 @@
+DESCRIPTION = "Telepathy framework - Python package"
+HOMEPAGE = "http://telepathy.freedesktop.org/wiki/"
+LICENSE = "LGPLv2.1+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=2d5025d4aa3495befef8f17206a5b0a1 \
+                    file://src/utils.py;beginline=1;endline=17;md5=9a07d1a9791a7429a14e7b25c6c86822"
+
+RDEPENDS_${PN} += "python-dbus"
+
+SRC_URI = "http://telepathy.freedesktop.org/releases/${PN}/${P}.tar.gz "
+
+PR = "r0"
+
+inherit autotools
+
+SRC_URI[md5sum] = "51da78a77681b0652d9b4ca941da0658"
+SRC_URI[sha256sum] = "f9f5c260188e9e27af9152bfc6d622cc5c0ea48d63d5fa9985abbdd69fda0e87"
-- 
1.6.3.3


