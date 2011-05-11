Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0C5044C80A98
	for <poky@yoctoproject.org>; Wed, 11 May 2011 04:13:49 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 11 May 2011 02:13:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,352,1301900400"; d="scan'208";a="745606030"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.187])
	by orsmga001.jf.intel.com with ESMTP; 11 May 2011 02:13:49 -0700
Message-Id: <4e83c657d89d964cab5a6558fed505f7e3071d48.1305105317.git.ke.yu@intel.com>
In-Reply-To: <cover.1305105317.git.ke.yu@intel.com>
References: <cover.1305105317.git.ke.yu@intel.com>
Old-Date: Wed, 11 May 2011 15:17:39 +0800
Date: Wed, 11 May 2011 17:20:05 +0800
To: poky@yoctoproject.org
CC: 
From: Yu Ke <ke.yu@intel.com>
Subject: [PATCH 5/8] qemugl: update patch Upstream-Status
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
X-List-Received-Date: Wed, 11 May 2011 09:13:50 -0000

From: Yu Ke <ke.yu@intel.com>

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 .../mesa/qemugl/remove-x11r6-lib-dir.patch         |    2 ++
 meta/recipes-graphics/mesa/qemugl/versionfix.patch |    2 ++
 2 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-graphics/mesa/qemugl/remove-x11r6-lib-dir.patch b/meta/recipes-graphics/mesa/qemugl/remove-x11r6-lib-dir.patch
index d14ce89..d24d045 100644
--- a/meta/recipes-graphics/mesa/qemugl/remove-x11r6-lib-dir.patch
+++ b/meta/recipes-graphics/mesa/qemugl/remove-x11r6-lib-dir.patch
@@ -2,6 +2,8 @@ Remove X11R6 lib directory
 
 "-L/usr/X11R6/lib" is obsolate in poky. Poky currently use Xserver from X.org (X11R7.x), which puts lib in standard /usr/lib, so no need to specify the extra -L/usr/X11R6/lib. Meanwhile, the -L/usr/X11R6/lib will cause warning: library search path "/usr/X11R6/lib" is unsafe for cross-compilation. so better to remove it.
 
+Upstream-Status: Pending
+
 Signed-off-by: Yu Ke <ke.yu@intel.com>
 
 diff --git a/Makefile b/Makefile
diff --git a/meta/recipes-graphics/mesa/qemugl/versionfix.patch b/meta/recipes-graphics/mesa/qemugl/versionfix.patch
index a3d33e8..614b816 100644
--- a/meta/recipes-graphics/mesa/qemugl/versionfix.patch
+++ b/meta/recipes-graphics/mesa/qemugl/versionfix.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 Index: git/Makefile
 ===================================================================
 --- git.orig/Makefile	2009-01-19 23:37:36.000000000 +0000
-- 
1.7.0.4


