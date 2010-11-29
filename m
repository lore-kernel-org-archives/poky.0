Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 762EC4C80039
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 20:57:45 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Dec 2010 18:57:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,291,1288594800"; d="scan'208";a="580102212"
Received: from mukti.sc.intel.com (HELO localhost) ([143.183.140.51])
	by orsmga002.jf.intel.com with ESMTP; 02 Dec 2010 18:57:45 -0800
Message-Id: <dcf0d0569a76c2ae2991c28a90469a3d16cc31cf.1291344572.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1291344572.git.nitin.a.kamble@intel.com>
References: <cover.1291344572.git.nitin.a.kamble@intel.com>
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Date: Mon, 29 Nov 2010 09:08:44 -0800
To: poky@yoctoproject.org
Subject: [PATCH 3/6] makedepend: upgrade from 1.0.2 to 1.0.3
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
X-List-Received-Date: Fri, 03 Dec 2010 02:57:45 -0000

And also update the recipe checksums.
Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 .../recipes-graphics/xorg-util/makedepend_1.0.2.bb |    8 --------
 .../recipes-graphics/xorg-util/makedepend_1.0.3.bb |   14 ++++++++++++++
 2 files changed, 14 insertions(+), 8 deletions(-)
 delete mode 100644 meta/recipes-graphics/xorg-util/makedepend_1.0.2.bb
 create mode 100644 meta/recipes-graphics/xorg-util/makedepend_1.0.3.bb

diff --git a/meta/recipes-graphics/xorg-util/makedepend_1.0.2.bb b/meta/recipes-graphics/xorg-util/makedepend_1.0.2.bb
deleted file mode 100644
index 0051f2c..0000000
--- a/meta/recipes-graphics/xorg-util/makedepend_1.0.2.bb
+++ /dev/null
@@ -1,8 +0,0 @@
-require xorg-util-common.inc
-
-DESCRIPTION = "create dependencies in makefiles"
-DEPENDS = "xproto util-macros"
-PR = "r2"
-PE = "1"
-LIC_FILES_CHKSUM = "file://COPYING;md5=43a6eda34b48ee821b3b66f4f753ce4f"
-BBCLASSEXTEND = "native"
diff --git a/meta/recipes-graphics/xorg-util/makedepend_1.0.3.bb b/meta/recipes-graphics/xorg-util/makedepend_1.0.3.bb
new file mode 100644
index 0000000..a103700
--- /dev/null
+++ b/meta/recipes-graphics/xorg-util/makedepend_1.0.3.bb
@@ -0,0 +1,14 @@
+require xorg-util-common.inc
+
+DESCRIPTION = "create dependencies in makefiles"
+DEPENDS = "xproto util-macros"
+PR = "r0"
+PE = "1"
+
+BBCLASSEXTEND = "native"
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=43a6eda34b48ee821b3b66f4f753ce4f"
+
+SRC_URI[md5sum] = "ec37ca8b810a40cdfb16a736b3360f6c"
+SRC_URI[sha256sum] = "2d3466acc29b382a4368b30371f17a4083933281b97f8ef67fc8b785a60d52dc"
+
-- 
1.7.2.2


