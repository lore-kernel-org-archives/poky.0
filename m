Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id CA0014C811AA
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 17:47:54 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Jan 2011 15:47:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,268,1291622400"; d="scan'208";a="589553097"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga002.jf.intel.com with ESMTP; 03 Jan 2011 15:47:48 -0800
Message-Id: <b6ccd28b5477187b4e00fce85346df46a015d536.1294099430.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1294099429.git.jessica.zhang@intel.com>
References: <cover.1294099429.git.jessica.zhang@intel.com>
From: Liping Ke <liping.ke@intel.com>
Date: Tue, 28 Dec 2010 09:10:04 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 51/59] Link ld.so.cache file into the host filesystem
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
X-List-Received-Date: Mon, 03 Jan 2011 23:47:55 -0000

Signed-off-by: Liping Ke <liping.ke@intel.com>
---
 .../adt-installer/scripts/yocto_installer_internal |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/installer/adt-installer/scripts/yocto_installer_internal b/meta/recipes-devtools/installer/adt-installer/scripts/yocto_installer_internal
index eec6f5f..9cad757 100755
--- a/meta/recipes-devtools/installer/adt-installer/scripts/yocto_installer_internal
+++ b/meta/recipes-devtools/installer/adt-installer/scripts/yocto_installer_internal
@@ -116,6 +116,11 @@ for native_target_type in $YOCTOADT_TARGETS; do
 
 done
 
+# Link the ld.so.cache file into the hosts filesystem
+echo_info "[ADT_INST] Link the ld.so.cache file into the host filesystem"
+sudo ln -s /etc/ld.so.cache $POKY_NATIVE_SYSROOT/etc/ld.so.cache
+check_result
+
 if [ "$YOCTOADT_QEMU" == "Y" ] || [ "$YOCTOADT_QEMU" = "y" ]; then
   echo_info "\n[ADT_INST] Installing qemu native ..."
   $OPKG_INSTALL_NATIVE_CMD qemu-nativesdk &>> $YOCTOADT_INSTALL_LOG_FILE
-- 
1.7.0.4


