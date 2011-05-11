Return-Path: <dexuan.cui@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6BE964C80AC6
	for <poky@yoctoproject.org>; Wed, 11 May 2011 01:29:33 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 10 May 2011 23:29:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,350,1301900400"; d="scan'208";a="745544715"
Received: from dcui-desktop.sh.intel.com (HELO localhost) ([10.239.13.51])
	by orsmga001.jf.intel.com with ESMTP; 10 May 2011 23:29:32 -0700
Message-Id: <95f2086ccdab1b03c6b09e35d0ed5bffa62aae36.1305094351.git.dexuan.cui@intel.com>
In-Reply-To: <cover.1305094351.git.dexuan.cui@intel.com>
References: <cover.1305094351.git.dexuan.cui@intel.com>
Old-Date: Wed, 11 May 2011 11:47:18 +0800
Date: Wed, 11 May 2011 14:26:56 +0800
To: poky@yoctoproject.org
CC: 
From: Dexuan Cui <dexuan.cui@intel.com>
Subject: [PATCH 09/24] libxsettings-client: update its patch's Upstream-Status
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
X-List-Received-Date: Wed, 11 May 2011 06:29:33 -0000

From: Dexuan Cui <dexuan.cui@intel.com>

Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
---
 .../libxsettings-client/disable_Os_option.patch    |    2 ++
 .../libxsettings-client/link-x11.patch             |    2 ++
 2 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-graphics/libxsettings-client/libxsettings-client/disable_Os_option.patch b/meta/recipes-graphics/libxsettings-client/libxsettings-client/disable_Os_option.patch
index 716f562..64b7efa 100644
--- a/meta/recipes-graphics/libxsettings-client/libxsettings-client/disable_Os_option.patch
+++ b/meta/recipes-graphics/libxsettings-client/libxsettings-client/disable_Os_option.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 Do not set Os optimization in target APP CFLAGS, since it may have potential
 error if "--enable-target-optspace" is not set when configuring GCC.
 
diff --git a/meta/recipes-graphics/libxsettings-client/libxsettings-client/link-x11.patch b/meta/recipes-graphics/libxsettings-client/libxsettings-client/link-x11.patch
index ee12f0a..d08d0d5 100644
--- a/meta/recipes-graphics/libxsettings-client/libxsettings-client/link-x11.patch
+++ b/meta/recipes-graphics/libxsettings-client/libxsettings-client/link-x11.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [configuration]
+
 Index: Xsettings-client-0.10/Makefile.am
 ===================================================================
 --- Xsettings-client-0.10.orig/Makefile.am	2008-02-07 14:49:54.000000000 +0000
-- 
1.7.2


