Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8CF494C811F4
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 17:47:48 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Jan 2011 15:47:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,268,1291622400"; d="scan'208";a="589553066"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga002.jf.intel.com with ESMTP; 03 Jan 2011 15:47:47 -0800
Message-Id: <3e6f4341170515518908e76678481540aa866abb.1294099429.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1294099429.git.jessica.zhang@intel.com>
References: <cover.1294099429.git.jessica.zhang@intel.com>
From: Liping Ke <liping.ke@intel.com>
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 06/59] Change sdk version in configuration file to 0.9+snapshot
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
Date: Mon, 03 Jan 2011 23:47:48 -0000
X-Original-Date: Fri, 17 Dec 2010 02:15:07 +0800
X-List-Received-Date: Mon, 03 Jan 2011 23:47:48 -0000

Change sdk version in configuration files for testing

Signed-off-by: Liping Ke <liping.ke@intel.com>
---
 scripts/adt-installer/yocto_installer.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/scripts/adt-installer/yocto_installer.conf b/scripts/adt-installer/yocto_installer.conf
index 78bd392..da2449a 100644
--- a/scripts/adt-installer/yocto_installer.conf
+++ b/scripts/adt-installer/yocto_installer.conf
@@ -1,7 +1,7 @@
 # Target ROOTFS Download site Configuration, normally it will be
 # in the same repository with those ipks.
 YOCTOADT_ROOTFS_LOC="http://llu-piketon.sh.intel.com/rootfs"
-YOCTOADT_VERSION="0.9-post"
+YOCTOADT_VERSION="0.9+snapshot"
 
 #Host Area
 YOCTOADT_TARGETS="powerpc mips arm x86 x86_64"
-- 
1.7.0.4


