Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7F9E84C811EC
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 17:47:52 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Jan 2011 15:47:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,268,1291622400"; d="scan'208";a="693216399"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga001.jf.intel.com with ESMTP; 03 Jan 2011 15:47:48 -0800
Message-Id: <acd2888068835a4540efff728b0b455a2396dbbd.1294099430.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1294099429.git.jessica.zhang@intel.com>
References: <cover.1294099429.git.jessica.zhang@intel.com>
From: Liping Ke <liping.ke@intel.com>
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 35/59] Update user configuration file for testing
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
Date: Mon, 03 Jan 2011 23:47:52 -0000
X-Original-Date: Fri, 17 Dec 2010 03:02:29 +0800
X-List-Received-Date: Mon, 03 Jan 2011 23:47:52 -0000

Add minial and sato images for testing since they're now in repository

Signed-off-by: Liping Ke <liping.ke@intel.com>
---
 scripts/adt-installer/yocto_installer.conf |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/adt-installer/yocto_installer.conf b/scripts/adt-installer/yocto_installer.conf
index da2449a..3d17764 100644
--- a/scripts/adt-installer/yocto_installer.conf
+++ b/scripts/adt-installer/yocto_installer.conf
@@ -12,8 +12,8 @@ YOCTOADT_METADATA="Y"
 
 #Target Area
 YOCTOADT_TARGET_arm="Y"
-YOCTOADT_ROOTFS_arm="sdk"
-YOCTOADT_TARGET_SYSROOT_IMAGE_arm="sdk"
+YOCTOADT_ROOTFS_arm="minimal sato"
+YOCTOADT_TARGET_SYSROOT_IMAGE_arm="minimal"
 YOCTOADT_TARGET_SYSROOT_arm="$HOME/test-yocto/arm"
 
 YOCTOADT_TARGET_x86="Y"
-- 
1.7.0.4


