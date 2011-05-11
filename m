Return-Path: <dexuan.cui@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id E88794C80FA7
	for <poky@yoctoproject.org>; Wed, 11 May 2011 01:29:36 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 10 May 2011 23:29:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,350,1301900400"; d="scan'208";a="745544729"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.51])
	by orsmga001.jf.intel.com with ESMTP; 10 May 2011 23:29:36 -0700
Message-Id: <6ffb6fad75e83f9c080533646d376ad1a7d7cc05.1305094351.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1305094351.git.dexuan.cui@intel.com>
References: <cover.1305094351.git.dexuan.cui@intel.com>
Old-Date: Wed, 11 May 2011 12:00:50 +0800
Date: Wed, 11 May 2011 14:27:00 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [PATCH 12/24] libx11-trim: update its patch's Upstream-Status
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
X-List-Received-Date: Wed, 11 May 2011 06:29:37 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../xorg-lib/libx11-trim/include_fix.patch         |    2 ++
 .../xorg-lib/libx11-trim/nodolt.patch              |    2 ++
 .../libx11-trim/x11_disable_makekeys.patch         |    2 ++
 3 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-graphics/xorg-lib/libx11-trim/include_fix.patch b/meta/recipes-graphics/xorg-lib/libx11-trim/include_fix.patch
index 99ed571..b3bcbab 100644
--- a/meta/recipes-graphics/xorg-lib/libx11-trim/include_fix.patch
+++ b/meta/recipes-graphics/xorg-lib/libx11-trim/include_fix.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 ---
  configure.ac |    6 +++---
  1 file changed, 3 insertions(+), 3 deletions(-)
diff --git a/meta/recipes-graphics/xorg-lib/libx11-trim/nodolt.patch b/meta/recipes-graphics/xorg-lib/libx11-trim/nodolt.patch
index ecf9625..cc05fdc 100644
--- a/meta/recipes-graphics/xorg-lib/libx11-trim/nodolt.patch
+++ b/meta/recipes-graphics/xorg-lib/libx11-trim/nodolt.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 Index: libX11-1.2.1/configure.ac
 ===================================================================
 --- libX11-1.2.1.orig/configure.ac	2009-07-02 14:07:54.000000000 +0100
diff --git a/meta/recipes-graphics/xorg-lib/libx11-trim/x11_disable_makekeys.patch b/meta/recipes-graphics/xorg-lib/libx11-trim/x11_disable_makekeys.patch
index 6705782..0445835 100644
--- a/meta/recipes-graphics/xorg-lib/libx11-trim/x11_disable_makekeys.patch
+++ b/meta/recipes-graphics/xorg-lib/libx11-trim/x11_disable_makekeys.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 ---
  src/util/Makefile.am |   17 -----------------
  1 file changed, 17 deletions(-)
-- 
1.7.2


