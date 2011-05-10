Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id D03534C80AC5
	for <poky@yoctoproject.org>; Tue, 10 May 2011 03:56:42 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 10 May 2011 01:56:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,345,1301900400"; d="scan'208";a="433485511"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.20])
	by azsmga001.ch.intel.com with ESMTP; 10 May 2011 01:56:22 -0700
Message-Id: <c0ce536f28659cb6d120ef1a507c059150289602.1305017818.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1305017818.git.dongxiao.xu@intel.com>
References: <cover.1305017818.git.dongxiao.xu@intel.com>
Old-Date: Tue, 10 May 2011 15:38:27 +0800
Date: Tue, 10 May 2011 17:01:50 +0800
To: poky@yoctoproject.org
CC: 
From: Dongxiao Xu <dongxiao.xu@intel.com>
Subject: [PATCH 22/39] clutter-gst: add upstream status for clutter-gst's patches
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
X-List-Received-Date: Tue, 10 May 2011 08:56:43 -0000

From: Dongxiao Xu <dongxiao.xu@intel.com>

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../clutter/clutter-gst/autofoo-0.4.patch          |    2 ++
 ...-9db4a61a25677764bb927369c5c68ada958fb65c.patch |    2 ++
 .../clutter/clutter-gst/autofoo.patch              |    2 ++
 .../clutter/clutter-gst/enable_tests-1.4.patch     |    3 +++
 .../clutter/clutter-gst/enable_tests.patch         |    3 +++
 5 files changed, 12 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-graphics/clutter/clutter-gst/autofoo-0.4.patch b/meta/recipes-graphics/clutter/clutter-gst/autofoo-0.4.patch
index 54df63d..4f2d50c 100644
--- a/meta/recipes-graphics/clutter/clutter-gst/autofoo-0.4.patch
+++ b/meta/recipes-graphics/clutter/clutter-gst/autofoo-0.4.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [not used]
+
 ---
  doc/reference/Makefile.am |    2 +-
  examples/Makefile.am      |    2 +-
diff --git a/meta/recipes-graphics/clutter/clutter-gst/autofoo-9db4a61a25677764bb927369c5c68ada958fb65c.patch b/meta/recipes-graphics/clutter/clutter-gst/autofoo-9db4a61a25677764bb927369c5c68ada958fb65c.patch
index 569b0d8..2b43c80 100644
--- a/meta/recipes-graphics/clutter/clutter-gst/autofoo-9db4a61a25677764bb927369c5c68ada958fb65c.patch
+++ b/meta/recipes-graphics/clutter/clutter-gst/autofoo-9db4a61a25677764bb927369c5c68ada958fb65c.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [not used]
+
 ---
  doc/reference/Makefile.am |    2 +-
  examples/Makefile.am      |    2 +-
diff --git a/meta/recipes-graphics/clutter/clutter-gst/autofoo.patch b/meta/recipes-graphics/clutter/clutter-gst/autofoo.patch
index ad77d63..7d50624 100644
--- a/meta/recipes-graphics/clutter/clutter-gst/autofoo.patch
+++ b/meta/recipes-graphics/clutter/clutter-gst/autofoo.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [not used]
+
 ---
  doc/reference/Makefile.am |    2 +-
  examples/Makefile.am      |    2 +-
diff --git a/meta/recipes-graphics/clutter/clutter-gst/enable_tests-1.4.patch b/meta/recipes-graphics/clutter/clutter-gst/enable_tests-1.4.patch
index f1f68ac..3fc1378 100644
--- a/meta/recipes-graphics/clutter/clutter-gst/enable_tests-1.4.patch
+++ b/meta/recipes-graphics/clutter/clutter-gst/enable_tests-1.4.patch
@@ -1,6 +1,9 @@
 Install example binary needed for core-image-clutter
 
 Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
+
+Upstream-Status: Inappropriate [configuration]
+
 Index: git/examples/Makefile.am
 ===================================================================
 --- git.orig/examples/Makefile.am	2011-05-04 14:07:21.000000000 -0700
diff --git a/meta/recipes-graphics/clutter/clutter-gst/enable_tests.patch b/meta/recipes-graphics/clutter/clutter-gst/enable_tests.patch
index e9dc8a2..6175a52 100644
--- a/meta/recipes-graphics/clutter/clutter-gst/enable_tests.patch
+++ b/meta/recipes-graphics/clutter/clutter-gst/enable_tests.patch
@@ -1,6 +1,9 @@
 Install example binary needed for core-image-clutter
 
 Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
+
+Upstream-Status: Inappropriate [configuration]
+
 Index: git/examples/Makefile.am
 ===================================================================
 --- git.orig/examples/Makefile.am	2011-01-31 10:14:23.000000000 +0800
-- 
1.7.1


