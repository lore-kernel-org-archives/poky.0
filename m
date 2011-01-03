Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 45AC34C811EB
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 17:47:48 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Jan 2011 15:47:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,268,1291622400"; d="scan'208";a="693216380"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga001.jf.intel.com with ESMTP; 03 Jan 2011 15:47:47 -0800
Message-Id: <bf4244d39b7d25254cc4183a59167f09cc866d1f.1294099429.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1294099429.git.jessica.zhang@intel.com>
References: <cover.1294099429.git.jessica.zhang@intel.com>
From: Liping Ke <liping.ke@intel.com>
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 08/59] Make bar viewing for showing download progress instead of dot view
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
X-Original-Date: Fri, 17 Dec 2010 02:37:42 +0800
X-List-Received-Date: Mon, 03 Jan 2011 23:47:48 -0000

After redirect stderr to stdout, the dot view is used. It is quite
boring for users. So I make it to bar view by force.

Signed-off-by: Liping Ke <liping.ke@intel.com>
---
 scripts/adt-installer/yocto_installer |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/adt-installer/yocto_installer b/scripts/adt-installer/yocto_installer
index b97d70d..ba6e054 100755
--- a/scripts/adt-installer/yocto_installer
+++ b/scripts/adt-installer/yocto_installer
@@ -167,12 +167,12 @@ get_qemu_image()
   fi
 
   echo_info "[ADT_INST] Downloading qemu kernel binary: $qemu_kernel"
-  wget "$YOCTOADT_ROOTFS_LOC/$qemu_kernel" -P $LOCAL_DOWNLOAD -nv 2>&1 | tee -a "$YOCTOADT_INSTALL_LOG_FILE" 
+  wget "$YOCTOADT_ROOTFS_LOC/$qemu_kernel" -P $LOCAL_DOWNLOAD --progress=bar:force 2>&1 | tee -a "$YOCTOADT_INSTALL_LOG_FILE" 
   check_result
   
   for image_type in $select_rootfs; do
     echo_info "[ADT_INST] Downloading rootfs file: poky-image-$image_type-qemu$1.tar.bz2"
-    wget "$YOCTOADT_ROOTFS_LOC/poky-image-$image_type-qemu$1.tar.bz2" -P $LOCAL_DOWNLOAD 2>&1 | tee -a "$YOCTOADT_INSTALL_LOG_FILE"
+    wget "$YOCTOADT_ROOTFS_LOC/poky-image-$image_type-qemu$1.tar.bz2" -P $LOCAL_DOWNLOAD --progress=bar:force 2>&1 | tee -a "$YOCTOADT_INSTALL_LOG_FILE"
     check_result
   done
 }
-- 
1.7.0.4


