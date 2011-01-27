Return-Path: <lianhao.lu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id BDDEF4C811F3
	for <poky@yoctoproject.org>; Wed, 26 Jan 2011 20:50:44 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 26 Jan 2011 18:50:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,383,1291622400"; d="scan'208";a="380489611"
Received: from llu-piketon.sh.intel.com ([10.239.36.141])
	by azsmga001.ch.intel.com with ESMTP; 26 Jan 2011 18:50:43 -0800
Received: from lulianhao by llu-piketon.sh.intel.com with local (Exim 4.71)
	(envelope-from <lianhao.lu@intel.com>)
	id 1PiHxL-00078E-Te; Thu, 27 Jan 2011 10:51:32 +0800
Message-Id: <05b4554fa01169237bf8f55e2b6a5de5e64ab32a.1296095614.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1296095614.git.lianhao.lu@intel.com>
References: <cover.1296095614.git.lianhao.lu@intel.com>
Old-Date: Wed, 26 Jan 2011 21:05:28 +0800
Date: Thu, 27 Jan 2011 10:51:31 +0800
To: poky@yoctoproject.org
From: Lianhao Lu <lianhao.lu@intel.com>
Subject: [PATCH 1/6] cross-canadian/apt-native: support for debian package.
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
X-List-Received-Date: Thu, 27 Jan 2011 02:50:45 -0000

From: Lianhao Lu <lianhao.lu@intel.com>

1. Set DPKG_ARCH in cross-canadian.bbclass to make debian package to be
generated with correct architecture.

2. Added licence checksum for apt-native.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 meta/classes/cross-canadian.bbclass            |    3 +++
 meta/recipes-devtools/apt/apt-native_0.7.14.bb |    2 ++
 2 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/meta/classes/cross-canadian.bbclass b/meta/classes/cross-canadian.bbclass
index 993f831..1a045ba 100644
--- a/meta/classes/cross-canadian.bbclass
+++ b/meta/classes/cross-canadian.bbclass
@@ -43,6 +43,9 @@ HOST_OS = "${SDK_OS}"
 HOST_PREFIX = "${SDK_PREFIX}"
 HOST_CC_ARCH = "${SDK_CC_ARCH}"
 
+#assign DPKG_ARCH
+DPKG_ARCH = "${SDK_ARCH}"
+
 CPPFLAGS = "${BUILDSDK_CPPFLAGS}"
 CFLAGS = "${BUILDSDK_CFLAGS}"
 CXXFLAGS = "${BUILDSDK_CFLAGS}"
diff --git a/meta/recipes-devtools/apt/apt-native_0.7.14.bb b/meta/recipes-devtools/apt/apt-native_0.7.14.bb
index f77f817..b1bd55b 100644
--- a/meta/recipes-devtools/apt/apt-native_0.7.14.bb
+++ b/meta/recipes-devtools/apt/apt-native_0.7.14.bb
@@ -9,3 +9,5 @@ SRC_URI += "file://nodoc.patch \
 
 SRC_URI[md5sum] = "19efa18fb1ef20c58b9b44e94258b814"
 SRC_URI[sha256sum] = "8fc06effaf8a4e4333308eedcdc6840f1c8056f2e924210f151dfc076bcd4045"
+
+LIC_FILES_CHKSUM = "file://COPYING.GPL;md5=0636e73ff0215e8d672dc4c32c317bb3"
-- 
1.7.0.4


